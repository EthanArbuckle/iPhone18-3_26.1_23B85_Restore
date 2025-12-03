@interface pnVJs93OcjCilNjA
- (id)toDictionary;
- (pnVJs93OcjCilNjA)initWithDictionary:(id)dictionary;
@end

@implementation pnVJs93OcjCilNjA

- (pnVJs93OcjCilNjA)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"_classType"];
  v6 = [v5 isEqualToString:@"name"];

  if (v6)
  {
    v13.receiver = self;
    v13.super_class = pnVJs93OcjCilNjA;
    v7 = [(pnVJs93OcjCilNjA *)&v13 init];
    if (v7)
    {
      v8 = [dictionaryCopy objectForKey:@"firstName"];
      [(pnVJs93OcjCilNjA *)v7 setFirstName:v8];

      v9 = [dictionaryCopy objectForKey:@"lastName"];
      [(pnVJs93OcjCilNjA *)v7 setLastName:v9];

      v10 = [dictionaryCopy objectForKey:@"fullName"];
      [(pnVJs93OcjCilNjA *)v7 setFullName:v10];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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