@interface git3vZFAfTws6rT8
- (git3vZFAfTws6rT8)initWithDictionary:(id)a3;
- (id)description;
- (id)toDictionary;
@end

@implementation git3vZFAfTws6rT8

- (git3vZFAfTws6rT8)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"_classType"];
  v6 = [v5 isEqualToString:@"settings"];

  if (v6)
  {
    v20.receiver = self;
    v20.super_class = git3vZFAfTws6rT8;
    v7 = [(git3vZFAfTws6rT8 *)&v20 init];
    if (v7)
    {
      v8 = [v4 objectForKey:@"endpointIdentifier"];
      [(git3vZFAfTws6rT8 *)v7 setEndpointIdentifier:v8];

      v9 = [v4 objectForKey:@"endpointID"];
      -[git3vZFAfTws6rT8 setEndpointID:](v7, "setEndpointID:", [v9 intValue]);

      v10 = [v4 objectForKey:@"settingsType"];
      -[git3vZFAfTws6rT8 setSettingsType:](v7, "setSettingsType:", [v10 intValue]);

      v11 = [v4 objectForKey:@"pEmail"];
      [(git3vZFAfTws6rT8 *)v7 setPEmail:v11];

      v12 = [v4 objectForKey:@"pPhone"];
      [(git3vZFAfTws6rT8 *)v7 setPPhone:v12];

      v13 = [v4 objectForKey:@"phone"];
      [(git3vZFAfTws6rT8 *)v7 setPhone:v13];

      v14 = [v4 objectForKey:@"email"];
      [(git3vZFAfTws6rT8 *)v7 setEmail:v14];

      v15 = [pnVJs93OcjCilNjA alloc];
      v16 = [v4 objectForKey:@"name"];
      v17 = [(pnVJs93OcjCilNjA *)v15 initWithDictionary:v16];
      [(git3vZFAfTws6rT8 *)v7 setName:v17];
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
  v4 = [NSNumber numberWithInt:[(git3vZFAfTws6rT8 *)self endpointID]];
  [v3 setObject:v4 forKeyedSubscript:@"endpointID"];

  v5 = [NSNumber numberWithUnsignedInteger:[(git3vZFAfTws6rT8 *)self settingsType]];
  [v3 setObject:v5 forKeyedSubscript:@"settingsType"];

  v6 = [(git3vZFAfTws6rT8 *)self endpointIdentifier];

  if (v6)
  {
    v7 = [(git3vZFAfTws6rT8 *)self endpointIdentifier];
    [v3 setObject:v7 forKeyedSubscript:@"endpointIdentifier"];
  }

  v8 = [(git3vZFAfTws6rT8 *)self pEmail];

  if (v8)
  {
    v9 = [(git3vZFAfTws6rT8 *)self pEmail];
    [v3 setObject:v9 forKeyedSubscript:@"pEmail"];
  }

  v10 = [(git3vZFAfTws6rT8 *)self pPhone];

  if (v10)
  {
    v11 = [(git3vZFAfTws6rT8 *)self pPhone];
    [v3 setObject:v11 forKeyedSubscript:@"pPhone"];
  }

  v12 = [(git3vZFAfTws6rT8 *)self phone];

  if (v12)
  {
    v13 = [(git3vZFAfTws6rT8 *)self phone];
    [v3 setObject:v13 forKeyedSubscript:@"phone"];
  }

  v14 = [(git3vZFAfTws6rT8 *)self email];

  if (v14)
  {
    v15 = [(git3vZFAfTws6rT8 *)self email];
    [v3 setObject:v15 forKeyedSubscript:@"email"];
  }

  v16 = [(git3vZFAfTws6rT8 *)self name];
  v17 = [v16 toDictionary];

  if (v17)
  {
    v18 = [(git3vZFAfTws6rT8 *)self name];
    v19 = [v18 toDictionary];
    [v3 setObject:v19 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"<%@, %p> {\n", objc_opt_class(), self];
  v4 = [(git3vZFAfTws6rT8 *)self endpointIdentifier];
  [v3 appendFormat:@"\tendpointID: %@\n", v4];

  [v3 appendFormat:@"}"];

  return v3;
}

@end