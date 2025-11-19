@interface RTContact
- (RTContact)initWithIdentifier:(id)a3 givenName:(id)a4 middleName:(id)a5 familyName:(id)a6 postalAddresses:(id)a7;
- (RTContact)initWithIdentifier:(id)a3 givenName:(id)a4 middleName:(id)a5 familyName:(id)a6 postalAddresses:(id)a7 phoneNumbers:(id)a8 emailAddresses:(id)a9;
- (id)description;
@end

@implementation RTContact

- (RTContact)initWithIdentifier:(id)a3 givenName:(id)a4 middleName:(id)a5 familyName:(id)a6 postalAddresses:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = RTContact;
  v17 = [(RTContact *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v13 copy];
    givenName = v17->_givenName;
    v17->_givenName = v20;

    v22 = [v14 copy];
    middleName = v17->_middleName;
    v17->_middleName = v22;

    v24 = [v15 copy];
    familyName = v17->_familyName;
    v17->_familyName = v24;

    v26 = [v16 copy];
    postalAddresses = v17->_postalAddresses;
    v17->_postalAddresses = v26;
  }

  return v17;
}

- (RTContact)initWithIdentifier:(id)a3 givenName:(id)a4 middleName:(id)a5 familyName:(id)a6 postalAddresses:(id)a7 phoneNumbers:(id)a8 emailAddresses:(id)a9
{
  v15 = a8;
  v16 = a9;
  v17 = [(RTContact *)self initWithIdentifier:a3 givenName:a4 middleName:a5 familyName:a6 postalAddresses:a7];
  if (v17)
  {
    v18 = [v15 copy];
    phoneNumbers = v17->_phoneNumbers;
    v17->_phoneNumbers = v18;

    v20 = [v16 copy];
    emailAddresses = v17->_emailAddresses;
    v17->_emailAddresses = v20;
  }

  return v17;
}

- (id)description
{
  v3 = objc_opt_new();
  v44 = [(RTContact *)self identifier];
  v4 = [(RTContact *)self givenName];
  v5 = [(RTContact *)self middleName];
  v6 = [(RTContact *)self familyName];
  v7 = [(RTContact *)self postalAddresses];
  v8 = [v7 count];
  v9 = [(RTContact *)self phoneNumbers];
  v10 = [v9 count];
  v11 = [(RTContact *)self emailAddresses];
  [v3 appendFormat:@"identifier, %@, givenName, %@, middleName, %@, familyName, %@, postalAddresses count, %lu, phoneNumbers count, %lu, emailAddresses count, %lu, ", v44, v4, v5, v6, v8, v10, objc_msgSend(v11, "count")];

  v12 = [(RTContact *)self postalAddresses];
  v13 = [v12 count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v14 + 1;
      v17 = [(RTContact *)self postalAddresses];
      v18 = [v17 objectAtIndexedSubscript:v14];
      v19 = +[RTContactPostalAddress labelTypeToString:](RTContactPostalAddress, "labelTypeToString:", [v18 labelType]);
      v20 = [(RTContact *)self postalAddresses];
      v21 = [v20 objectAtIndexedSubscript:v14];
      v22 = [v21 thoroughfare];
      [v3 appendFormat:@"postalAddress %lu, labelType, %@, thoroughfare, %@, ", v16, v19, v22];

      objc_autoreleasePoolPop(v15);
      v23 = [(RTContact *)self postalAddresses];
      v24 = [v23 count];

      v14 = v16;
    }

    while (v24 > v16);
  }

  v25 = [(RTContact *)self phoneNumbers];
  v26 = [v25 count];

  if (v26)
  {
    v27 = 0;
    do
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v27 + 1;
      v30 = [(RTContact *)self phoneNumbers];
      v31 = [v30 objectAtIndexedSubscript:v27];
      [v3 appendFormat:@"phoneNumber %lu, %@, ", v29, v31];

      objc_autoreleasePoolPop(v28);
      v32 = [(RTContact *)self phoneNumbers];
      v33 = [v32 count];

      v27 = v29;
    }

    while (v33 > v29);
  }

  v34 = [(RTContact *)self emailAddresses];
  v35 = [v34 count];

  if (v35)
  {
    v36 = 0;
    do
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v36 + 1;
      v39 = [(RTContact *)self emailAddresses];
      v40 = [v39 objectAtIndexedSubscript:v36];
      [v3 appendFormat:@"emailAddress %lu, %@, ", v38, v40];

      objc_autoreleasePoolPop(v37);
      v41 = [(RTContact *)self emailAddresses];
      v42 = [v41 count];

      v36 = v38;
    }

    while (v42 > v38);
  }

  return v3;
}

@end