@interface VD9LmqazgfzMqjuy
- (VD9LmqazgfzMqjuy)initWithDictionary:(id)a3;
- (id)description;
- (id)toDictionary;
@end

@implementation VD9LmqazgfzMqjuy

- (VD9LmqazgfzMqjuy)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"_classType"];
  v6 = [v5 isEqualToString:@"settings"];

  if (v6)
  {
    v20.receiver = self;
    v20.super_class = VD9LmqazgfzMqjuy;
    v7 = [(VD9LmqazgfzMqjuy *)&v20 init];
    if (v7)
    {
      v8 = [v4 objectForKey:@"endpointIdentifier"];
      [(VD9LmqazgfzMqjuy *)v7 setEndpointIdentifier:v8];

      v9 = [v4 objectForKey:@"endpointID"];
      -[VD9LmqazgfzMqjuy setEndpointID:](v7, "setEndpointID:", [v9 intValue]);

      v10 = [v4 objectForKey:@"settingsType"];
      -[VD9LmqazgfzMqjuy setSettingsType:](v7, "setSettingsType:", [v10 intValue]);

      v11 = [v4 objectForKey:@"pEmail"];
      [(VD9LmqazgfzMqjuy *)v7 setPEmail:v11];

      v12 = [v4 objectForKey:@"pPhone"];
      [(VD9LmqazgfzMqjuy *)v7 setPPhone:v12];

      v13 = [v4 objectForKey:@"phone"];
      [(VD9LmqazgfzMqjuy *)v7 setPhone:v13];

      v14 = [v4 objectForKey:@"email"];
      [(VD9LmqazgfzMqjuy *)v7 setEmail:v14];

      v15 = [ODEF66BPvkL9lz2w alloc];
      v16 = [v4 objectForKey:@"name"];
      v17 = [(ODEF66BPvkL9lz2w *)v15 initWithDictionary:v16];
      [(VD9LmqazgfzMqjuy *)v7 setName:v17];
    }

    self = v7;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)toDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:@"settings" forKeyedSubscript:@"_classType"];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[VD9LmqazgfzMqjuy endpointID](self, "endpointID")}];
  [v3 setObject:v4 forKeyedSubscript:@"endpointID"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VD9LmqazgfzMqjuy settingsType](self, "settingsType")}];
  [v3 setObject:v5 forKeyedSubscript:@"settingsType"];

  v6 = [(VD9LmqazgfzMqjuy *)self endpointIdentifier];

  if (v6)
  {
    v7 = [(VD9LmqazgfzMqjuy *)self endpointIdentifier];
    [v3 setObject:v7 forKeyedSubscript:@"endpointIdentifier"];
  }

  v8 = [(VD9LmqazgfzMqjuy *)self pEmail];

  if (v8)
  {
    v9 = [(VD9LmqazgfzMqjuy *)self pEmail];
    [v3 setObject:v9 forKeyedSubscript:@"pEmail"];
  }

  v10 = [(VD9LmqazgfzMqjuy *)self pPhone];

  if (v10)
  {
    v11 = [(VD9LmqazgfzMqjuy *)self pPhone];
    [v3 setObject:v11 forKeyedSubscript:@"pPhone"];
  }

  v12 = [(VD9LmqazgfzMqjuy *)self phone];

  if (v12)
  {
    v13 = [(VD9LmqazgfzMqjuy *)self phone];
    [v3 setObject:v13 forKeyedSubscript:@"phone"];
  }

  v14 = [(VD9LmqazgfzMqjuy *)self email];

  if (v14)
  {
    v15 = [(VD9LmqazgfzMqjuy *)self email];
    [v3 setObject:v15 forKeyedSubscript:@"email"];
  }

  v16 = [(VD9LmqazgfzMqjuy *)self name];
  v17 = [v16 toDictionary];

  if (v17)
  {
    v18 = [(VD9LmqazgfzMqjuy *)self name];
    v19 = [v18 toDictionary];
    [v3 setObject:v19 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"<%@, %p> {\n", objc_opt_class(), self];
  v4 = [(VD9LmqazgfzMqjuy *)self endpointIdentifier];
  [v3 appendFormat:@"\tendpointID: %@\n", v4];

  [v3 appendFormat:@"}"];

  return v3;
}

@end