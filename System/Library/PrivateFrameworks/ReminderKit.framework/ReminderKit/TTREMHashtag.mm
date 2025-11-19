@interface TTREMHashtag
+ (BOOL)isHashtag:(id)a3 equalToModelComparable:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TTREMHashtag)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TTREMHashtag

+ (BOOL)isHashtag:(id)a3 equalToModelComparable:(id)a4
{
  v5 = a4;
  v6 = [a3 objectIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectIdentifier];
    v8 = v7;
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(TTREMHashtag *)self objectIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [TTREMHashtag isHashtag:self equalToModelComparable:v4];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TTREMHashtag *)self objectIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p objectIdentifier: %@>", v4, self, v5];

  return v6;
}

- (TTREMHashtag)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TTREMHashtag;
  v5 = [(TTREMHashtag *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectIdentifier"];
    objectIdentifier = v5->_objectIdentifier;
    v5->_objectIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TTREMHashtag *)self objectIdentifier];
  [v4 encodeObject:v5 forKey:@"objectIdentifier"];
}

@end