@interface PawuKFL8icsLHMZd
- (PawuKFL8icsLHMZd)initWithEmailAddress:(id)address source:(unint64_t)source;
- (PawuKFL8icsLHMZd)initWithFirstName:(id)name lastName:(id)lastName source:(unint64_t)source;
- (PawuKFL8icsLHMZd)initWithFullName:(id)name source:(unint64_t)source;
- (PawuKFL8icsLHMZd)initWithPhoneNumber:(id)number source:(unint64_t)source;
- (PawuKFL8icsLHMZd)initWithSource:(unint64_t)source;
@end

@implementation PawuKFL8icsLHMZd

- (PawuKFL8icsLHMZd)initWithSource:(unint64_t)source
{
  v5.receiver = self;
  v5.super_class = PawuKFL8icsLHMZd;
  result = [(PawuKFL8icsLHMZd *)&v5 init];
  result->_source = source;
  return result;
}

- (PawuKFL8icsLHMZd)initWithEmailAddress:(id)address source:(unint64_t)source
{
  addressCopy = address;
  v7 = [(PawuKFL8icsLHMZd *)self initWithSource:source];
  emailAddress = v7->_emailAddress;
  v7->_emailAddress = addressCopy;

  return v7;
}

- (PawuKFL8icsLHMZd)initWithPhoneNumber:(id)number source:(unint64_t)source
{
  numberCopy = number;
  v7 = [(PawuKFL8icsLHMZd *)self initWithSource:source];
  phoneNumber = v7->_phoneNumber;
  v7->_phoneNumber = numberCopy;

  return v7;
}

- (PawuKFL8icsLHMZd)initWithFullName:(id)name source:(unint64_t)source
{
  nameCopy = name;
  v7 = [(PawuKFL8icsLHMZd *)self initWithSource:source];
  fullName = v7->_fullName;
  v7->_fullName = nameCopy;

  return v7;
}

- (PawuKFL8icsLHMZd)initWithFirstName:(id)name lastName:(id)lastName source:(unint64_t)source
{
  nameCopy = name;
  lastNameCopy = lastName;
  v10 = [(PawuKFL8icsLHMZd *)self initWithSource:source];
  firstName = v10->_firstName;
  v10->_firstName = nameCopy;
  v12 = nameCopy;

  lastName = v10->_lastName;
  v10->_lastName = lastNameCopy;

  return v10;
}

@end