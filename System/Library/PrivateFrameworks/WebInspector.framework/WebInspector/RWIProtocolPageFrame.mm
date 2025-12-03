@interface RWIProtocolPageFrame
- (NSString)identifier;
- (NSString)loaderId;
- (NSString)mimeType;
- (NSString)name;
- (NSString)parentId;
- (NSString)securityOrigin;
- (NSString)url;
- (RWIProtocolPageFrame)initWithIdentifier:(id)identifier loaderId:(id)id url:(id)url securityOrigin:(id)origin mimeType:(id)type;
- (void)setIdentifier:(id)identifier;
- (void)setLoaderId:(id)id;
- (void)setMimeType:(id)type;
- (void)setName:(id)name;
- (void)setParentId:(id)id;
- (void)setSecurityOrigin:(id)origin;
- (void)setUrl:(id)url;
@end

@implementation RWIProtocolPageFrame

- (RWIProtocolPageFrame)initWithIdentifier:(id)identifier loaderId:(id)id url:(id)url securityOrigin:(id)origin mimeType:(id)type
{
  identifierCopy = identifier;
  idCopy = id;
  urlCopy = url;
  originCopy = origin;
  typeCopy = type;
  v20.receiver = self;
  v20.super_class = RWIProtocolPageFrame;
  v17 = [(RWIProtocolJSONObject *)&v20 init];
  if (v17)
  {
    if (!identifierCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"identifier"}];
    }

    if (!idCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"loaderId"}];
    }

    if (!urlCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"url"}];
    }

    if (!originCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"securityOrigin"}];
    }

    if (!typeCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"mimeType"}];
    }

    [(RWIProtocolPageFrame *)v17 setIdentifier:identifierCopy];
    [(RWIProtocolPageFrame *)v17 setLoaderId:idCopy];
    [(RWIProtocolPageFrame *)v17 setUrl:urlCopy];
    [(RWIProtocolPageFrame *)v17 setSecurityOrigin:originCopy];
    [(RWIProtocolPageFrame *)v17 setMimeType:typeCopy];
    v18 = v17;
  }

  return v17;
}

- (void)setIdentifier:(id)identifier
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:identifier forKey:@"id"];
}

- (NSString)identifier
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"id"];

  return v2;
}

- (void)setParentId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"parentId"];
}

- (NSString)parentId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"parentId"];

  return v2;
}

- (void)setLoaderId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"loaderId"];
}

- (NSString)loaderId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"loaderId"];

  return v2;
}

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setUrl:(id)url
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:url forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (void)setSecurityOrigin:(id)origin
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:origin forKey:@"securityOrigin"];
}

- (NSString)securityOrigin
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"securityOrigin"];

  return v2;
}

- (void)setMimeType:(id)type
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrame;
  [(RWIProtocolJSONObject *)&v3 setString:type forKey:@"mimeType"];
}

- (NSString)mimeType
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"mimeType"];

  return v2;
}

@end