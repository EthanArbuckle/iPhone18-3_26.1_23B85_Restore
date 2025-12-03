@interface TTREMHashtag
+ (BOOL)isHashtag:(id)hashtag equalToModelComparable:(id)comparable;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TTREMHashtag)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TTREMHashtag

+ (BOOL)isHashtag:(id)hashtag equalToModelComparable:(id)comparable
{
  comparableCopy = comparable;
  objectIdentifier = [hashtag objectIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectIdentifier2 = [comparableCopy objectIdentifier];
    v8 = objectIdentifier2;
    v9 = 0;
    if (objectIdentifier && objectIdentifier2)
    {
      v9 = [objectIdentifier isEqualToString:objectIdentifier2];
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
  objectIdentifier = [(TTREMHashtag *)self objectIdentifier];
  v3 = [objectIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [TTREMHashtag isHashtag:self equalToModelComparable:equalCopy];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectIdentifier = [(TTREMHashtag *)self objectIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p objectIdentifier: %@>", v4, self, objectIdentifier];

  return v6;
}

- (TTREMHashtag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TTREMHashtag;
  v5 = [(TTREMHashtag *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectIdentifier"];
    objectIdentifier = v5->_objectIdentifier;
    v5->_objectIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectIdentifier = [(TTREMHashtag *)self objectIdentifier];
  [coderCopy encodeObject:objectIdentifier forKey:@"objectIdentifier"];
}

@end