@interface REMTTHashtag
+ (BOOL)attributeValue:(id)a3 hasEqualHashtagObjectIdentifierIn:(id)a4;
+ (id)attributeFromHashtag:(id)a3;
- (REMTTHashtag)initWithObjectIdentifier:(id)a3;
- (id)description;
@end

@implementation REMTTHashtag

- (REMTTHashtag)initWithObjectIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMTTHashtag;
  v6 = [(REMTTHashtag *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectIdentifier, a3);
  }

  return v7;
}

+ (id)attributeFromHashtag:(id)a3
{
  v3 = a3;
  v4 = [REMTTHashtag alloc];
  v5 = [v3 objectIdentifier];

  v6 = [(REMTTHashtag *)v4 initWithObjectIdentifier:v5];

  return v6;
}

+ (BOOL)attributeValue:(id)a3 hasEqualHashtagObjectIdentifierIn:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = REMDynamicCast(v7, v6);

  if (v8)
  {
    v9 = [v8 objectIdentifier];
    v10 = [v5 containsObject:v9];
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
  v5 = [(REMTTHashtag *)self objectIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p objectIdentifier: %@>", v4, self, v5];

  return v6;
}

@end