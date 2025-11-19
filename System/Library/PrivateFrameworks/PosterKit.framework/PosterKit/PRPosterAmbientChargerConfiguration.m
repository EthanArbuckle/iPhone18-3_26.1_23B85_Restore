@interface PRPosterAmbientChargerConfiguration
+ (id)decodeObjectWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChargerConfiguration:(id)a3;
- (NSString)description;
- (PRPosterAmbientChargerConfiguration)init;
- (PRPosterAmbientChargerConfiguration)initWithAssociatedChargerIdentifiers:(id)a3;
- (PRPosterAmbientChargerConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterAmbientChargerConfiguration)initWithCoder:(id)a3;
- (id)encodeJSON;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterAmbientChargerConfiguration

- (PRPosterAmbientChargerConfiguration)init
{
  v6.receiver = self;
  v6.super_class = PRPosterAmbientChargerConfiguration;
  v2 = [(PRPosterAmbientChargerConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    associatedChargerIdentifiers = v2->_associatedChargerIdentifiers;
    v2->_associatedChargerIdentifiers = v3;
  }

  return v2;
}

- (PRPosterAmbientChargerConfiguration)initWithAssociatedChargerIdentifiers:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PRPosterAmbientChargerConfiguration;
  v5 = [(PRPosterAmbientChargerConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFD8] set];
    }

    associatedChargerIdentifiers = v5->_associatedChargerIdentifiers;
    v5->_associatedChargerIdentifiers = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && [(PRPosterAmbientChargerConfiguration *)self isEqualToChargerConfiguration:v4];
  }

  return v7;
}

- (BOOL)isEqualToChargerConfiguration:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  else
  {
    return [*(a3 + 1) isEqualToSet:self->_associatedChargerIdentifiers];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(NSSet *)self->_associatedChargerIdentifiers allObjects];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

  [v3 appendArraySection:v5 withName:@"associatedChargerIdentifiers" skipIfEmpty:1];
  v6 = [v3 build];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PRMutablePosterAmbientChargerConfiguration allocWithZone:a3];
  associatedChargerIdentifiers = self->_associatedChargerIdentifiers;

  return [(PRPosterAmbientChargerConfiguration *)v4 initWithAssociatedChargerIdentifiers:associatedChargerIdentifiers];
}

- (PRPosterAmbientChargerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PRPosterAmbientChargerConfiguration;
  v5 = [(PRPosterAmbientChargerConfiguration *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_associatedChargerIdentifiers"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E695DFD8] set];
    }

    associatedChargerIdentifiers = v5->_associatedChargerIdentifiers;
    v5->_associatedChargerIdentifiers = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  associatedChargerIdentifiers = self->_associatedChargerIdentifiers;
  if (associatedChargerIdentifiers)
  {
    v6 = a3;
    [v6 encodeObject:associatedChargerIdentifiers forKey:@"_associatedChargerIdentifiers"];
  }

  else
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = a3;
    v6 = [v4 set];
    [v5 encodeObject:? forKey:?];
  }
}

- (PRPosterAmbientChargerConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PRPosterAmbientChargerConfiguration;
  v5 = [(PRPosterAmbientChargerConfiguration *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_associatedChargerIdentifiers"];
    associatedChargerIdentifiers = v5->_associatedChargerIdentifiers;
    v5->_associatedChargerIdentifiers = v7;
  }

  return v5;
}

- (id)encodeJSON
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PRPosterAmbientChargerConfiguration *)self associatedChargerIdentifiers];
  v5 = [v4 allObjects];
  [v3 bs_setSafeObject:v5 forKey:@"associatedChargerIdentifiers"];

  v6 = [(PRPosterAmbientChargerConfiguration *)self attributeType];
  [v3 bs_setSafeObject:v6 forKey:@"attributeType"];

  v11 = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = PRLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterMetadata *)self encodeJSON];
    }
  }

  return v7;
}

+ (id)decodeObjectWithJSON:(id)a3
{
  v10 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v10];
  v4 = v10;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !v4)
  {
    v5 = [v3 objectForKey:@"associatedChargerIdentifiers"];
    v6 = objc_alloc(objc_opt_class());
    v7 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    v8 = [v6 initWithAssociatedChargerIdentifiers:v7];
  }

  else
  {
    v5 = PRLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterMetadata *)v4 decodeObjectWithJSON:v5];
    }

    v8 = 0;
  }

  return v8;
}

@end