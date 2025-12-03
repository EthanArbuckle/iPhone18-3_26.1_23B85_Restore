@interface VD9LmqazgfzMqjuy
- (VD9LmqazgfzMqjuy)initWithDictionary:(id)dictionary;
- (id)description;
- (id)toDictionary;
@end

@implementation VD9LmqazgfzMqjuy

- (VD9LmqazgfzMqjuy)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"_classType"];
  v6 = [v5 isEqualToString:@"settings"];

  if (v6)
  {
    v20.receiver = self;
    v20.super_class = VD9LmqazgfzMqjuy;
    v7 = [(VD9LmqazgfzMqjuy *)&v20 init];
    if (v7)
    {
      v8 = [dictionaryCopy objectForKey:@"endpointIdentifier"];
      [(VD9LmqazgfzMqjuy *)v7 setEndpointIdentifier:v8];

      v9 = [dictionaryCopy objectForKey:@"endpointID"];
      -[VD9LmqazgfzMqjuy setEndpointID:](v7, "setEndpointID:", [v9 intValue]);

      v10 = [dictionaryCopy objectForKey:@"settingsType"];
      -[VD9LmqazgfzMqjuy setSettingsType:](v7, "setSettingsType:", [v10 intValue]);

      v11 = [dictionaryCopy objectForKey:@"pEmail"];
      [(VD9LmqazgfzMqjuy *)v7 setPEmail:v11];

      v12 = [dictionaryCopy objectForKey:@"pPhone"];
      [(VD9LmqazgfzMqjuy *)v7 setPPhone:v12];

      v13 = [dictionaryCopy objectForKey:@"phone"];
      [(VD9LmqazgfzMqjuy *)v7 setPhone:v13];

      v14 = [dictionaryCopy objectForKey:@"email"];
      [(VD9LmqazgfzMqjuy *)v7 setEmail:v14];

      v15 = [ODEF66BPvkL9lz2w alloc];
      v16 = [dictionaryCopy objectForKey:@"name"];
      v17 = [(ODEF66BPvkL9lz2w *)v15 initWithDictionary:v16];
      [(VD9LmqazgfzMqjuy *)v7 setName:v17];
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
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[VD9LmqazgfzMqjuy endpointID](self, "endpointID")}];
  [v3 setObject:v4 forKeyedSubscript:@"endpointID"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VD9LmqazgfzMqjuy settingsType](self, "settingsType")}];
  [v3 setObject:v5 forKeyedSubscript:@"settingsType"];

  endpointIdentifier = [(VD9LmqazgfzMqjuy *)self endpointIdentifier];

  if (endpointIdentifier)
  {
    endpointIdentifier2 = [(VD9LmqazgfzMqjuy *)self endpointIdentifier];
    [v3 setObject:endpointIdentifier2 forKeyedSubscript:@"endpointIdentifier"];
  }

  pEmail = [(VD9LmqazgfzMqjuy *)self pEmail];

  if (pEmail)
  {
    pEmail2 = [(VD9LmqazgfzMqjuy *)self pEmail];
    [v3 setObject:pEmail2 forKeyedSubscript:@"pEmail"];
  }

  pPhone = [(VD9LmqazgfzMqjuy *)self pPhone];

  if (pPhone)
  {
    pPhone2 = [(VD9LmqazgfzMqjuy *)self pPhone];
    [v3 setObject:pPhone2 forKeyedSubscript:@"pPhone"];
  }

  phone = [(VD9LmqazgfzMqjuy *)self phone];

  if (phone)
  {
    phone2 = [(VD9LmqazgfzMqjuy *)self phone];
    [v3 setObject:phone2 forKeyedSubscript:@"phone"];
  }

  email = [(VD9LmqazgfzMqjuy *)self email];

  if (email)
  {
    email2 = [(VD9LmqazgfzMqjuy *)self email];
    [v3 setObject:email2 forKeyedSubscript:@"email"];
  }

  name = [(VD9LmqazgfzMqjuy *)self name];
  toDictionary = [name toDictionary];

  if (toDictionary)
  {
    name2 = [(VD9LmqazgfzMqjuy *)self name];
    toDictionary2 = [name2 toDictionary];
    [v3 setObject:toDictionary2 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"<%@, %p> {\n", objc_opt_class(), self];
  endpointIdentifier = [(VD9LmqazgfzMqjuy *)self endpointIdentifier];
  [string appendFormat:@"\tendpointID: %@\n", endpointIdentifier];

  [string appendFormat:@"}"];

  return string;
}

@end