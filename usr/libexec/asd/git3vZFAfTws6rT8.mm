@interface git3vZFAfTws6rT8
- (git3vZFAfTws6rT8)initWithDictionary:(id)dictionary;
- (id)description;
- (id)toDictionary;
@end

@implementation git3vZFAfTws6rT8

- (git3vZFAfTws6rT8)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"_classType"];
  v6 = [v5 isEqualToString:@"settings"];

  if (v6)
  {
    v20.receiver = self;
    v20.super_class = git3vZFAfTws6rT8;
    v7 = [(git3vZFAfTws6rT8 *)&v20 init];
    if (v7)
    {
      v8 = [dictionaryCopy objectForKey:@"endpointIdentifier"];
      [(git3vZFAfTws6rT8 *)v7 setEndpointIdentifier:v8];

      v9 = [dictionaryCopy objectForKey:@"endpointID"];
      -[git3vZFAfTws6rT8 setEndpointID:](v7, "setEndpointID:", [v9 intValue]);

      v10 = [dictionaryCopy objectForKey:@"settingsType"];
      -[git3vZFAfTws6rT8 setSettingsType:](v7, "setSettingsType:", [v10 intValue]);

      v11 = [dictionaryCopy objectForKey:@"pEmail"];
      [(git3vZFAfTws6rT8 *)v7 setPEmail:v11];

      v12 = [dictionaryCopy objectForKey:@"pPhone"];
      [(git3vZFAfTws6rT8 *)v7 setPPhone:v12];

      v13 = [dictionaryCopy objectForKey:@"phone"];
      [(git3vZFAfTws6rT8 *)v7 setPhone:v13];

      v14 = [dictionaryCopy objectForKey:@"email"];
      [(git3vZFAfTws6rT8 *)v7 setEmail:v14];

      v15 = [pnVJs93OcjCilNjA alloc];
      v16 = [dictionaryCopy objectForKey:@"name"];
      v17 = [(pnVJs93OcjCilNjA *)v15 initWithDictionary:v16];
      [(git3vZFAfTws6rT8 *)v7 setName:v17];
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
  [v3 setObject:@"settings" forKeyedSubscript:@"_classType"];
  v4 = [NSNumber numberWithInt:[(git3vZFAfTws6rT8 *)self endpointID]];
  [v3 setObject:v4 forKeyedSubscript:@"endpointID"];

  v5 = [NSNumber numberWithUnsignedInteger:[(git3vZFAfTws6rT8 *)self settingsType]];
  [v3 setObject:v5 forKeyedSubscript:@"settingsType"];

  endpointIdentifier = [(git3vZFAfTws6rT8 *)self endpointIdentifier];

  if (endpointIdentifier)
  {
    endpointIdentifier2 = [(git3vZFAfTws6rT8 *)self endpointIdentifier];
    [v3 setObject:endpointIdentifier2 forKeyedSubscript:@"endpointIdentifier"];
  }

  pEmail = [(git3vZFAfTws6rT8 *)self pEmail];

  if (pEmail)
  {
    pEmail2 = [(git3vZFAfTws6rT8 *)self pEmail];
    [v3 setObject:pEmail2 forKeyedSubscript:@"pEmail"];
  }

  pPhone = [(git3vZFAfTws6rT8 *)self pPhone];

  if (pPhone)
  {
    pPhone2 = [(git3vZFAfTws6rT8 *)self pPhone];
    [v3 setObject:pPhone2 forKeyedSubscript:@"pPhone"];
  }

  phone = [(git3vZFAfTws6rT8 *)self phone];

  if (phone)
  {
    phone2 = [(git3vZFAfTws6rT8 *)self phone];
    [v3 setObject:phone2 forKeyedSubscript:@"phone"];
  }

  email = [(git3vZFAfTws6rT8 *)self email];

  if (email)
  {
    email2 = [(git3vZFAfTws6rT8 *)self email];
    [v3 setObject:email2 forKeyedSubscript:@"email"];
  }

  name = [(git3vZFAfTws6rT8 *)self name];
  toDictionary = [name toDictionary];

  if (toDictionary)
  {
    name2 = [(git3vZFAfTws6rT8 *)self name];
    toDictionary2 = [name2 toDictionary];
    [v3 setObject:toDictionary2 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"<%@, %p> {\n", objc_opt_class(), self];
  endpointIdentifier = [(git3vZFAfTws6rT8 *)self endpointIdentifier];
  [v3 appendFormat:@"\tendpointID: %@\n", endpointIdentifier];

  [v3 appendFormat:@"}"];

  return v3;
}

@end