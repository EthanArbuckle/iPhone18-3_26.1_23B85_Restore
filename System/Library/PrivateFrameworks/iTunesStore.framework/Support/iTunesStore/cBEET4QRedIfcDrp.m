@interface cBEET4QRedIfcDrp
- (cBEET4QRedIfcDrp)initWithEmailAddress:(id)a3 source:(unint64_t)a4;
- (cBEET4QRedIfcDrp)initWithFirstName:(id)a3 lastName:(id)a4 source:(unint64_t)a5;
- (cBEET4QRedIfcDrp)initWithFullName:(id)a3 source:(unint64_t)a4;
- (cBEET4QRedIfcDrp)initWithPhoneNumber:(id)a3 source:(unint64_t)a4;
- (cBEET4QRedIfcDrp)initWithSource:(unint64_t)a3;
@end

@implementation cBEET4QRedIfcDrp

- (cBEET4QRedIfcDrp)initWithSource:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = cBEET4QRedIfcDrp;
  result = [(cBEET4QRedIfcDrp *)&v5 init];
  result->_source = a3;
  return result;
}

- (cBEET4QRedIfcDrp)initWithEmailAddress:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  v7 = [(cBEET4QRedIfcDrp *)self initWithSource:a4];
  emailAddress = v7->_emailAddress;
  v7->_emailAddress = v6;

  return v7;
}

- (cBEET4QRedIfcDrp)initWithPhoneNumber:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  v7 = [(cBEET4QRedIfcDrp *)self initWithSource:a4];
  phoneNumber = v7->_phoneNumber;
  v7->_phoneNumber = v6;

  return v7;
}

- (cBEET4QRedIfcDrp)initWithFullName:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  v7 = [(cBEET4QRedIfcDrp *)self initWithSource:a4];
  fullName = v7->_fullName;
  v7->_fullName = v6;

  return v7;
}

- (cBEET4QRedIfcDrp)initWithFirstName:(id)a3 lastName:(id)a4 source:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(cBEET4QRedIfcDrp *)self initWithSource:a5];
  firstName = v10->_firstName;
  v10->_firstName = v8;
  v12 = v8;

  lastName = v10->_lastName;
  v10->_lastName = v9;

  return v10;
}

@end