@interface TVRCPlayItemInfo
+ (id)playItemWithDictionary:(id)dictionary;
+ (id)playItemWithMediaIdentifier:(id)identifier kind:(unint64_t)kind;
+ (id)playItemWithURL:(id)l;
- (BOOL)hasMediaIdentifierAndKind;
- (BOOL)hasURL;
- (BOOL)isValid;
- (TVRCPlayItemInfo)initWithCoder:(id)coder;
- (TVRCPlayItemInfo)initWithMediaIdentifier:(id)identifier kind:(id)kind url:(id)url;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCPlayItemInfo

+ (id)playItemWithMediaIdentifier:(id)identifier kind:(unint64_t)kind
{
  identifierCopy = identifier;
  v7 = [self alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:kind];
  v9 = [v7 initWithMediaIdentifier:identifierCopy kind:v8 url:0];

  return v9;
}

+ (id)playItemWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithMediaIdentifier:0 kind:0 url:lCopy];

  return v5;
}

+ (id)playItemWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"IdentifierKey"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"KindKey"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"TVRCURLKey"];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  v9 = [[self alloc] initWithMediaIdentifier:v5 kind:v6 url:v8];

  return v9;
}

- (id)dictionaryRepresentation
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([(TVRCPlayItemInfo *)self hasMediaIdentifierAndKind])
  {
    v14[0] = @"IdentifierKey";
    mediaIdentifier = [(TVRCPlayItemInfo *)self mediaIdentifier];
    v15[0] = mediaIdentifier;
    v14[1] = @"KindKey";
    kind = [(TVRCPlayItemInfo *)self kind];
    v15[1] = kind;
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
    mediaIdentifier = [(TVRCPlayItemInfo *)self url];
    kind = [mediaIdentifier absoluteString];
    v13 = kind;
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
  mediaIdentifier = [(TVRCPlayItemInfo *)self mediaIdentifier];
  if (mediaIdentifier)
  {
    kind = [(TVRCPlayItemInfo *)self kind];
    v5 = kind != 0;
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
  mediaIdentifier = [(TVRCPlayItemInfo *)self mediaIdentifier];
  kind = [(TVRCPlayItemInfo *)self kind];
  v8 = [(TVRCPlayItemInfo *)self url];
  v9 = [v3 stringWithFormat:@"<%@ %p: mediaIdentifier: %@ kind: %@ url: %@>", v5, self, mediaIdentifier, kind, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mediaIdentifier = [(TVRCPlayItemInfo *)self mediaIdentifier];
  kind = [(TVRCPlayItemInfo *)self kind];
  v7 = [(TVRCPlayItemInfo *)self url];
  v8 = [v4 initWithMediaIdentifier:mediaIdentifier kind:kind url:v7];

  return v8;
}

- (TVRCPlayItemInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TVRCPlayItemInfo;
  v5 = [(TVRCPlayItemInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaIdentifier"];
    mediaIdentifier = v5->_mediaIdentifier;
    v5->_mediaIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  mediaIdentifier = self->_mediaIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:mediaIdentifier forKey:@"mediaIdentifier"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_url forKey:@"url"];
}

- (TVRCPlayItemInfo)initWithMediaIdentifier:(id)identifier kind:(id)kind url:(id)url
{
  identifierCopy = identifier;
  kindCopy = kind;
  urlCopy = url;
  v15.receiver = self;
  v15.super_class = TVRCPlayItemInfo;
  v12 = [(TVRCPlayItemInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mediaIdentifier, identifier);
    objc_storeStrong(&v13->_kind, kind);
    objc_storeStrong(&v13->_url, url);
  }

  return v13;
}

@end