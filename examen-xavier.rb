class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
    end

    def talk
        # Método por defecto, puede ser sobrescrito en las subclases
        puts "¡Hola! Soy una persona."
    end

    def introduce
        puts "Hola, mi nombre es #{@first_name} #{@last_name}."
    end
end







class Student < Person
    def talk
        puts "¡Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end




class Teacher < Person
    def talk
        puts "¡Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end




class Parent < Person
    def talk
        puts "¡Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end


student = Student.new("Thomas", "Shelby", 20)
teacher = Teacher.new("Bruce", "Wayne", 35)
parent = Parent.new("Vito", "Andolini", 45)

student.talk
student.introduce
teacher.introduce
teacher.talk
parent.introduce
parent.talk
