@interface RCChangeTag
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RCChangeTag)initWithCoder:(id)coder;
- (RCChangeTag)initWithIdentifier:(id)identifier contentHash:(id)hash lastModifiedString:(id)string;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RCChangeTag

- (RCChangeTag)initWithIdentifier:(id)identifier contentHash:(id)hash lastModifiedString:(id)string
{
  identifierCopy = identifier;
  hashCopy = hash;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = RCChangeTag;
  v12 = [(RCChangeTag *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_contentHash, hash);
    objc_storeStrong(&v13->_lastModifiedString, string);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(RCChangeTag *)self identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      contentHash = [(RCChangeTag *)self contentHash];
      contentHash2 = [v5 contentHash];
      if ([contentHash isEqualToString:contentHash2])
      {
        lastModifiedString = [(RCChangeTag *)self lastModifiedString];
        lastModifiedString2 = [v5 lastModifiedString];
        v12 = [lastModifiedString isEqualToString:lastModifiedString2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  identifier = [(RCChangeTag *)self identifier];
  v4 = [identifier hash];
  contentHash = [(RCChangeTag *)self contentHash];
  v6 = [contentHash hash] ^ v4;
  lastModifiedString = [(RCChangeTag *)self lastModifiedString];
  v8 = [lastModifiedString hash];

  return v6 ^ v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(RCChangeTag *)self identifier];
  contentHash = [(RCChangeTag *)self contentHash];
  lastModifiedString = [(RCChangeTag *)self lastModifiedString];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier: %@\n contentHash: %@\n lastModified: %@", v4, self, identifier, contentHash, lastModifiedString];;

  return v8;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [(RCChangeTag *)self identifier];
  [dictionary setObject:identifier forKey:@"id"];

  contentHash = [(RCChangeTag *)self contentHash];
  [dictionary setObject:contentHash forKey:@"changeTag"];

  lastModifiedString = [(RCChangeTag *)self lastModifiedString];
  [dictionary setObject:lastModifiedString forKey:@"lastModified"];

  v7 = [dictionary copy];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(RCChangeTag *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"id"];

  contentHash = [(RCChangeTag *)self contentHash];
  [coderCopy encodeObject:contentHash forKey:@"changeTag"];

  lastModifiedString = [(RCChangeTag *)self lastModifiedString];
  [coderCopy encodeObject:lastModifiedString forKey:@"lastModified"];
}

- (RCChangeTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changeTag"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModified"];

  v8 = [(RCChangeTag *)self initWithIdentifier:v5 contentHash:v6 lastModifiedString:v7];
  return v8;
}

@end