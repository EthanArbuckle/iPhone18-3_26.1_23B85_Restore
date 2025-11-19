@interface pnVJs93OcjCilNjA
- (id)toDictionary;
- (pnVJs93OcjCilNjA)initWithDictionary:(id)a3;
@end

@implementation pnVJs93OcjCilNjA

- (pnVJs93OcjCilNjA)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"_classType"];
  v6 = [v5 isEqualToString:@"name"];

  if (v6)
  {
    v13.receiver = self;
    v13.super_class = pnVJs93OcjCilNjA;
    v7 = [(pnVJs93OcjCilNjA *)&v13 init];
    if (v7)
    {
      v8 = [v4 objectForKey:@"firstName"];
      [(pnVJs93OcjCilNjA *)v7 setFirstName:v8];

      v9 = [v4 objectForKey:@"lastName"];
      [(pnVJs93OcjCilNjA *)v7 setLastName:v9];

      v10 = [v4 objectForKey:@"fullName"];
      [(pnVJs93OcjCilNjA *)v7 setFullName:v10];
    }

    self = v7;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)toDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:@"name" forKeyedSubscript:@"_classType"];
  firstName = self->_firstName;
  if (firstName)
  {
    [v3 setObject:firstName forKeyedSubscript:@"firstName"];
  }

  lastName = self->_lastName;
  if (lastName)
  {
    [v3 setObject:lastName forKeyedSubscript:@"lastName"];
  }

  fullName = self->_fullName;
  if (fullName)
  {
    [v3 setObject:fullName forKeyedSubscript:@"fullName"];
  }

  return v3;
}

@end