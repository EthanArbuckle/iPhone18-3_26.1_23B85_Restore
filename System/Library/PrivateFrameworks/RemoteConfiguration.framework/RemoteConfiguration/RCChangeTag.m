@interface RCChangeTag
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RCChangeTag)initWithCoder:(id)a3;
- (RCChangeTag)initWithIdentifier:(id)a3 contentHash:(id)a4 lastModifiedString:(id)a5;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCChangeTag

- (RCChangeTag)initWithIdentifier:(id)a3 contentHash:(id)a4 lastModifiedString:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RCChangeTag;
  v12 = [(RCChangeTag *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_contentHash, a4);
    objc_storeStrong(&v13->_lastModifiedString, a5);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RCChangeTag *)self identifier];
    v7 = [v5 identifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(RCChangeTag *)self contentHash];
      v9 = [v5 contentHash];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(RCChangeTag *)self lastModifiedString];
        v11 = [v5 lastModifiedString];
        v12 = [v10 isEqualToString:v11];
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
  v3 = [(RCChangeTag *)self identifier];
  v4 = [v3 hash];
  v5 = [(RCChangeTag *)self contentHash];
  v6 = [v5 hash] ^ v4;
  v7 = [(RCChangeTag *)self lastModifiedString];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(RCChangeTag *)self identifier];
  v6 = [(RCChangeTag *)self contentHash];
  v7 = [(RCChangeTag *)self lastModifiedString];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier: %@\n contentHash: %@\n lastModified: %@", v4, self, v5, v6, v7];;

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(RCChangeTag *)self identifier];
  [v3 setObject:v4 forKey:@"id"];

  v5 = [(RCChangeTag *)self contentHash];
  [v3 setObject:v5 forKey:@"changeTag"];

  v6 = [(RCChangeTag *)self lastModifiedString];
  [v3 setObject:v6 forKey:@"lastModified"];

  v7 = [v3 copy];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RCChangeTag *)self identifier];
  [v4 encodeObject:v5 forKey:@"id"];

  v6 = [(RCChangeTag *)self contentHash];
  [v4 encodeObject:v6 forKey:@"changeTag"];

  v7 = [(RCChangeTag *)self lastModifiedString];
  [v4 encodeObject:v7 forKey:@"lastModified"];
}

- (RCChangeTag)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changeTag"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModified"];

  v8 = [(RCChangeTag *)self initWithIdentifier:v5 contentHash:v6 lastModifiedString:v7];
  return v8;
}

@end