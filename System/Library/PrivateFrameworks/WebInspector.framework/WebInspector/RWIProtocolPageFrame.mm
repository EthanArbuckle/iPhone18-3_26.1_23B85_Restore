@interface RWIProtocolPageFrame
- (NSString)identifier;
- (NSString)loaderId;
- (NSString)mimeType;
- (NSString)name;
- (NSString)parentId;
- (NSString)securityOrigin;
- (NSString)url;
- (RWIProtocolPageFrame)initWithIdentifier:(id)a3 loaderId:(id)a4 url:(id)a5 securityOrigin:(id)a6 mimeType:(id)a7;
- (void)setIdentifier:(id)a3;
- (void)setLoaderId:(id)a3;
- (void)setMimeType:(id)a3;
- (void)setName:(id)a3;
- (void)setParentId:(id)a3;
- (void)setSecurityOrigin:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation RWIProtocolPageFrame

- (RWIProtocolPageFrame)initWithIdentifier:(id)a3 loaderId:(id)a4 url:(id)a5 securityOrigin:(id)a6 mimeType:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = RWIProtocolPageFrame;
  v17 = [(RWIProtocolJSONObject *)&v20 init];
  if (v17)
  {
    if (!v12)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"identifier"}];
    }

    if (!v13)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"loaderId"}];
    }

    if (!v14)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"url"}];
    }

    if (!v15)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"securityOrigin"}];
    }

    if (!v16)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"mimeType"}];
    }

    [(RWIProtocolPageFrame *)v17 setIdentifier:v12];
    [(RWIProtocolPageFrame *)v17 setLoaderId:v13];
    [(RWIProtocolPageFrame *)v17 setUrl:v14];
    [(RWIProtocolPageFrame *)v17 setSecurityOrigin:v15];
    [(RWIProtocolPageFrame *)v17 setMimeType:v16];
    v18 = v17;
  }

  return v17;
}

- (void)setIdentifier:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"id"];
}

- (NSString)identifier
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"id"];

  return v2;
}

- (void)setParentId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"parentId"];
}

- (NSString)parentId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"parentId"];

  return v2;
}

- (void)setLoaderId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"loaderId"];
}

- (NSString)loaderId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"loaderId"];

  return v2;
}

- (void)setName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setUrl:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (void)setSecurityOrigin:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"securityOrigin"];
}

- (NSString)securityOrigin
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"securityOrigin"];

  return v2;
}

- (void)setMimeType:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"mimeType"];
}

- (NSString)mimeType
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"mimeType"];

  return v2;
}

@end