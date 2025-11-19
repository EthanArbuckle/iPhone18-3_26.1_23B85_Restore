@interface PawuKFL8icsLHMZd
- (PawuKFL8icsLHMZd)initWithEmailAddress:(id)a3 source:(unint64_t)a4;
- (PawuKFL8icsLHMZd)initWithFirstName:(id)a3 lastName:(id)a4 source:(unint64_t)a5;
- (PawuKFL8icsLHMZd)initWithFullName:(id)a3 source:(unint64_t)a4;
- (PawuKFL8icsLHMZd)initWithPhoneNumber:(id)a3 source:(unint64_t)a4;
- (PawuKFL8icsLHMZd)initWithSource:(unint64_t)a3;
@end

@implementation PawuKFL8icsLHMZd

- (PawuKFL8icsLHMZd)initWithSource:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PawuKFL8icsLHMZd;
  result = [(PawuKFL8icsLHMZd *)&v5 init];
  result->_source = a3;
  return result;
}

- (PawuKFL8icsLHMZd)initWithEmailAddress:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PawuKFL8icsLHMZd *)self initWithSource:a4];
  emailAddress = v7->_emailAddress;
  v7->_emailAddress = v6;

  return v7;
}

- (PawuKFL8icsLHMZd)initWithPhoneNumber:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PawuKFL8icsLHMZd *)self initWithSource:a4];
  phoneNumber = v7->_phoneNumber;
  v7->_phoneNumber = v6;

  return v7;
}

- (PawuKFL8icsLHMZd)initWithFullName:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PawuKFL8icsLHMZd *)self initWithSource:a4];
  fullName = v7->_fullName;
  v7->_fullName = v6;

  return v7;
}

- (PawuKFL8icsLHMZd)initWithFirstName:(id)a3 lastName:(id)a4 source:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PawuKFL8icsLHMZd *)self initWithSource:a5];
  firstName = v10->_firstName;
  v10->_firstName = v8;
  v12 = v8;

  lastName = v10->_lastName;
  v10->_lastName = v9;

  return v10;
}

@end