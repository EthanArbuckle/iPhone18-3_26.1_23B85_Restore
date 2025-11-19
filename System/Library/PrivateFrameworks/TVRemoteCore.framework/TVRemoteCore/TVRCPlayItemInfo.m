@interface TVRCPlayItemInfo
+ (id)playItemWithDictionary:(id)a3;
+ (id)playItemWithMediaIdentifier:(id)a3 kind:(unint64_t)a4;
+ (id)playItemWithURL:(id)a3;
- (BOOL)hasMediaIdentifierAndKind;
- (BOOL)hasURL;
- (BOOL)isValid;
- (TVRCPlayItemInfo)initWithCoder:(id)a3;
- (TVRCPlayItemInfo)initWithMediaIdentifier:(id)a3 kind:(id)a4 url:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCPlayItemInfo

+ (id)playItemWithMediaIdentifier:(id)a3 kind:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v9 = [v7 initWithMediaIdentifier:v6 kind:v8 url:0];

  return v9;
}

+ (id)playItemWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMediaIdentifier:0 kind:0 url:v4];

  return v5;
}

+ (id)playItemWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"IdentifierKey"];
  v6 = [v4 objectForKeyedSubscript:@"KindKey"];
  v7 = [v4 objectForKeyedSubscript:@"TVRCURLKey"];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  v9 = [[a1 alloc] initWithMediaIdentifier:v5 kind:v6 url:v8];

  return v9;
}

- (id)dictionaryRepresentation
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([(TVRCPlayItemInfo *)self hasMediaIdentifierAndKind])
  {
    v14[0] = @"IdentifierKey";
    v3 = [(TVRCPlayItemInfo *)self mediaIdentifier];
    v15[0] = v3;
    v14[1] = @"KindKey";
    v4 = [(TVRCPlayItemInfo *)self kind];
    v15[1] = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v15;
    v7 = v14;
    v8 = 2;
LABEL_5:
    v9 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:v8];

    goto LABEL_7;
  }

  if ([(TVRCPlayItemInfo *)self hasURL])
  {
    v12 = @"TVRCURLKey";
    v3 = [(TVRCPlayItemInfo *)self url];
    v4 = [v3 absoluteString];
    v13 = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = &v13;
    v7 = &v12;
    v8 = 1;
    goto LABEL_5;
  }

  v9 = MEMORY[0x277CBEC10];
LABEL_7:
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isValid
{
  if ([(TVRCPlayItemInfo *)self hasMediaIdentifierAndKind])
  {
    return 1;
  }

  return [(TVRCPlayItemInfo *)self hasURL];
}

- (BOOL)hasMediaIdentifierAndKind
{
  v3 = [(TVRCPlayItemInfo *)self mediaIdentifier];
  if (v3)
  {
    v4 = [(TVRCPlayItemInfo *)self kind];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasURL
{
  v2 = [(TVRCPlayItemInfo *)self url];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TVRCPlayItemInfo *)self mediaIdentifier];
  v7 = [(TVRCPlayItemInfo *)self kind];
  v8 = [(TVRCPlayItemInfo *)self url];
  v9 = [v3 stringWithFormat:@"<%@ %p: mediaIdentifier: %@ kind: %@ url: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TVRCPlayItemInfo *)self mediaIdentifier];
  v6 = [(TVRCPlayItemInfo *)self kind];
  v7 = [(TVRCPlayItemInfo *)self url];
  v8 = [v4 initWithMediaIdentifier:v5 kind:v6 url:v7];

  return v8;
}

- (TVRCPlayItemInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TVRCPlayItemInfo;
  v5 = [(TVRCPlayItemInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaIdentifier"];
    mediaIdentifier = v5->_mediaIdentifier;
    v5->_mediaIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  mediaIdentifier = self->_mediaIdentifier;
  v5 = a3;
  [v5 encodeObject:mediaIdentifier forKey:@"mediaIdentifier"];
  [v5 encodeObject:self->_kind forKey:@"kind"];
  [v5 encodeObject:self->_url forKey:@"url"];
}

- (TVRCPlayItemInfo)initWithMediaIdentifier:(id)a3 kind:(id)a4 url:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TVRCPlayItemInfo;
  v12 = [(TVRCPlayItemInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mediaIdentifier, a3);
    objc_storeStrong(&v13->_kind, a4);
    objc_storeStrong(&v13->_url, a5);
  }

  return v13;
}

@end