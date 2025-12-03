@interface RTContact
- (RTContact)initWithIdentifier:(id)identifier givenName:(id)name middleName:(id)middleName familyName:(id)familyName postalAddresses:(id)addresses;
- (RTContact)initWithIdentifier:(id)identifier givenName:(id)name middleName:(id)middleName familyName:(id)familyName postalAddresses:(id)addresses phoneNumbers:(id)numbers emailAddresses:(id)emailAddresses;
- (id)description;
@end

@implementation RTContact

- (RTContact)initWithIdentifier:(id)identifier givenName:(id)name middleName:(id)middleName familyName:(id)familyName postalAddresses:(id)addresses
{
  identifierCopy = identifier;
  nameCopy = name;
  middleNameCopy = middleName;
  familyNameCopy = familyName;
  addressesCopy = addresses;
  v29.receiver = self;
  v29.super_class = RTContact;
  v17 = [(RTContact *)&v29 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [nameCopy copy];
    givenName = v17->_givenName;
    v17->_givenName = v20;

    v22 = [middleNameCopy copy];
    middleName = v17->_middleName;
    v17->_middleName = v22;

    v24 = [familyNameCopy copy];
    familyName = v17->_familyName;
    v17->_familyName = v24;

    v26 = [addressesCopy copy];
    postalAddresses = v17->_postalAddresses;
    v17->_postalAddresses = v26;
  }

  return v17;
}

- (RTContact)initWithIdentifier:(id)identifier givenName:(id)name middleName:(id)middleName familyName:(id)familyName postalAddresses:(id)addresses phoneNumbers:(id)numbers emailAddresses:(id)emailAddresses
{
  numbersCopy = numbers;
  emailAddressesCopy = emailAddresses;
  v17 = [(RTContact *)self initWithIdentifier:identifier givenName:name middleName:middleName familyName:familyName postalAddresses:addresses];
  if (v17)
  {
    v18 = [numbersCopy copy];
    phoneNumbers = v17->_phoneNumbers;
    v17->_phoneNumbers = v18;

    v20 = [emailAddressesCopy copy];
    emailAddresses = v17->_emailAddresses;
    v17->_emailAddresses = v20;
  }

  return v17;
}

- (id)description
{
  v3 = objc_opt_new();
  identifier = [(RTContact *)self identifier];
  givenName = [(RTContact *)self givenName];
  middleName = [(RTContact *)self middleName];
  familyName = [(RTContact *)self familyName];
  postalAddresses = [(RTContact *)self postalAddresses];
  v8 = [postalAddresses count];
  phoneNumbers = [(RTContact *)self phoneNumbers];
  v10 = [phoneNumbers count];
  emailAddresses = [(RTContact *)self emailAddresses];
  [v3 appendFormat:@"identifier, %@, givenName, %@, middleName, %@, familyName, %@, postalAddresses count, %lu, phoneNumbers count, %lu, emailAddresses count, %lu, ", identifier, givenName, middleName, familyName, v8, v10, objc_msgSend(emailAddresses, "count")];

  postalAddresses2 = [(RTContact *)self postalAddresses];
  v13 = [postalAddresses2 count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v14 + 1;
      postalAddresses3 = [(RTContact *)self postalAddresses];
      v18 = [postalAddresses3 objectAtIndexedSubscript:v14];
      v19 = +[RTContactPostalAddress labelTypeToString:](RTContactPostalAddress, "labelTypeToString:", [v18 labelType]);
      postalAddresses4 = [(RTContact *)self postalAddresses];
      v21 = [postalAddresses4 objectAtIndexedSubscript:v14];
      thoroughfare = [v21 thoroughfare];
      [v3 appendFormat:@"postalAddress %lu, labelType, %@, thoroughfare, %@, ", v16, v19, thoroughfare];

      objc_autoreleasePoolPop(v15);
      postalAddresses5 = [(RTContact *)self postalAddresses];
      v24 = [postalAddresses5 count];

      v14 = v16;
    }

    while (v24 > v16);
  }

  phoneNumbers2 = [(RTContact *)self phoneNumbers];
  v26 = [phoneNumbers2 count];

  if (v26)
  {
    v27 = 0;
    do
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v27 + 1;
      phoneNumbers3 = [(RTContact *)self phoneNumbers];
      v31 = [phoneNumbers3 objectAtIndexedSubscript:v27];
      [v3 appendFormat:@"phoneNumber %lu, %@, ", v29, v31];

      objc_autoreleasePoolPop(v28);
      phoneNumbers4 = [(RTContact *)self phoneNumbers];
      v33 = [phoneNumbers4 count];

      v27 = v29;
    }

    while (v33 > v29);
  }

  emailAddresses2 = [(RTContact *)self emailAddresses];
  v35 = [emailAddresses2 count];

  if (v35)
  {
    v36 = 0;
    do
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v36 + 1;
      emailAddresses3 = [(RTContact *)self emailAddresses];
      v40 = [emailAddresses3 objectAtIndexedSubscript:v36];
      [v3 appendFormat:@"emailAddress %lu, %@, ", v38, v40];

      objc_autoreleasePoolPop(v37);
      emailAddresses4 = [(RTContact *)self emailAddresses];
      v42 = [emailAddresses4 count];

      v36 = v38;
    }

    while (v42 > v38);
  }

  return v3;
}

@end