@interface RJ39VdykGnvJIRpv
- (RJ39VdykGnvJIRpv)initWithDictionary:(id)dictionary;
- (id)description;
- (id)toDictionary;
@end

@implementation RJ39VdykGnvJIRpv

- (RJ39VdykGnvJIRpv)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"_classType"];
  v6 = [v5 isEqualToString:@"settings"];

  if (v6)
  {
    v20.receiver = self;
    v20.super_class = RJ39VdykGnvJIRpv;
    v7 = [(RJ39VdykGnvJIRpv *)&v20 init];
    if (v7)
    {
      v8 = [dictionaryCopy objectForKey:@"endpointIdentifier"];
      [(RJ39VdykGnvJIRpv *)v7 setEndpointIdentifier:v8];

      v9 = [dictionaryCopy objectForKey:@"endpointID"];
      -[RJ39VdykGnvJIRpv setEndpointID:](v7, "setEndpointID:", [v9 intValue]);

      v10 = [dictionaryCopy objectForKey:@"settingsType"];
      -[RJ39VdykGnvJIRpv setSettingsType:](v7, "setSettingsType:", [v10 intValue]);

      v11 = [dictionaryCopy objectForKey:@"pEmail"];
      [(RJ39VdykGnvJIRpv *)v7 setPEmail:v11];

      v12 = [dictionaryCopy objectForKey:@"pPhone"];
      [(RJ39VdykGnvJIRpv *)v7 setPPhone:v12];

      v13 = [dictionaryCopy objectForKey:@"phone"];
      [(RJ39VdykGnvJIRpv *)v7 setPhone:v13];

      v14 = [dictionaryCopy objectForKey:@"email"];
      [(RJ39VdykGnvJIRpv *)v7 setEmail:v14];

      v15 = [n4cyKQis9m01XZsR alloc];
      v16 = [dictionaryCopy objectForKey:@"name"];
      v17 = [(n4cyKQis9m01XZsR *)v15 initWithDictionary:v16];
      [(RJ39VdykGnvJIRpv *)v7 setName:v17];
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
  v4 = [NSNumber numberWithInt:[(RJ39VdykGnvJIRpv *)self endpointID]];
  [v3 setObject:v4 forKeyedSubscript:@"endpointID"];

  v5 = [NSNumber numberWithUnsignedInteger:[(RJ39VdykGnvJIRpv *)self settingsType]];
  [v3 setObject:v5 forKeyedSubscript:@"settingsType"];

  endpointIdentifier = [(RJ39VdykGnvJIRpv *)self endpointIdentifier];

  if (endpointIdentifier)
  {
    endpointIdentifier2 = [(RJ39VdykGnvJIRpv *)self endpointIdentifier];
    [v3 setObject:endpointIdentifier2 forKeyedSubscript:@"endpointIdentifier"];
  }

  pEmail = [(RJ39VdykGnvJIRpv *)self pEmail];

  if (pEmail)
  {
    pEmail2 = [(RJ39VdykGnvJIRpv *)self pEmail];
    [v3 setObject:pEmail2 forKeyedSubscript:@"pEmail"];
  }

  pPhone = [(RJ39VdykGnvJIRpv *)self pPhone];

  if (pPhone)
  {
    pPhone2 = [(RJ39VdykGnvJIRpv *)self pPhone];
    [v3 setObject:pPhone2 forKeyedSubscript:@"pPhone"];
  }

  phone = [(RJ39VdykGnvJIRpv *)self phone];

  if (phone)
  {
    phone2 = [(RJ39VdykGnvJIRpv *)self phone];
    [v3 setObject:phone2 forKeyedSubscript:@"phone"];
  }

  email = [(RJ39VdykGnvJIRpv *)self email];

  if (email)
  {
    email2 = [(RJ39VdykGnvJIRpv *)self email];
    [v3 setObject:email2 forKeyedSubscript:@"email"];
  }

  name = [(RJ39VdykGnvJIRpv *)self name];
  toDictionary = [name toDictionary];

  if (toDictionary)
  {
    name2 = [(RJ39VdykGnvJIRpv *)self name];
    toDictionary2 = [name2 toDictionary];
    [v3 setObject:toDictionary2 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"<%@, %p> {\n", objc_opt_class(), self];
  endpointIdentifier = [(RJ39VdykGnvJIRpv *)self endpointIdentifier];
  [v3 appendFormat:@"\tendpointID: %@\n", endpointIdentifier];

  [v3 appendFormat:@"}"];

  return v3;
}

@end