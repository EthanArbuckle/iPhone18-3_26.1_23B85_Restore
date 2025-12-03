@interface REMTTHashtag
+ (BOOL)attributeValue:(id)value hasEqualHashtagObjectIdentifierIn:(id)in;
+ (id)attributeFromHashtag:(id)hashtag;
- (REMTTHashtag)initWithObjectIdentifier:(id)identifier;
- (id)description;
@end

@implementation REMTTHashtag

- (REMTTHashtag)initWithObjectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = REMTTHashtag;
  v6 = [(REMTTHashtag *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectIdentifier, identifier);
  }

  return v7;
}

+ (id)attributeFromHashtag:(id)hashtag
{
  hashtagCopy = hashtag;
  v4 = [REMTTHashtag alloc];
  objectIdentifier = [hashtagCopy objectIdentifier];

  v6 = [(REMTTHashtag *)v4 initWithObjectIdentifier:objectIdentifier];

  return v6;
}

+ (BOOL)attributeValue:(id)value hasEqualHashtagObjectIdentifierIn:(id)in
{
  inCopy = in;
  valueCopy = value;
  v7 = objc_opt_class();
  v8 = REMDynamicCast(v7, valueCopy);

  if (v8)
  {
    objectIdentifier = [v8 objectIdentifier];
    v10 = [inCopy containsObject:objectIdentifier];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectIdentifier = [(REMTTHashtag *)self objectIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p objectIdentifier: %@>", v4, self, objectIdentifier];

  return v6;
}

@end