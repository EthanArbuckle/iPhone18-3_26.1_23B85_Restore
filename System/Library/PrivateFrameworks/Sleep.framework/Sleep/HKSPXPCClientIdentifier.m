@interface HKSPXPCClientIdentifier
- (BOOL)isEqual:(id)a3;
- (HKSPXPCClientIdentifier)initWithCoder:(id)a3;
- (HKSPXPCClientIdentifier)initWithUniqueIdentifier:(id)a3 loggingIdentifier:(id)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPXPCClientIdentifier

- (HKSPXPCClientIdentifier)initWithUniqueIdentifier:(id)a3 loggingIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HKSPXPCClientIdentifier;
  v8 = [(HKSPXPCClientIdentifier *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    v11 = [v7 copy];
    loggingIdentifier = v8->_loggingIdentifier;
    v8->_loggingIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKSPXPCClientIdentifier *)self uniqueIdentifier];
  [v4 encodeObject:v5 forKey:@"uniqueIdentifier"];

  v6 = [(HKSPXPCClientIdentifier *)self loggingIdentifier];
  [v4 encodeObject:v6 forKey:@"loggingIdentifier"];
}

- (HKSPXPCClientIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loggingIdentifier"];

  v7 = [(HKSPXPCClientIdentifier *)self initWithUniqueIdentifier:v5 loggingIdentifier:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKSPXPCClientIdentifier *)self uniqueIdentifier];
      v7 = [(HKSPXPCClientIdentifier *)v5 uniqueIdentifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)succinctDescription
{
  v2 = [(HKSPXPCClientIdentifier *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HKSPXPCClientIdentifier *)self uniqueIdentifier];
  v5 = [v3 appendObject:v4 withName:@"uuid" skipIfNil:1];

  v6 = [(HKSPXPCClientIdentifier *)self loggingIdentifier];
  v7 = [v3 appendObject:v6 withName:@"id" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPXPCClientIdentifier *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end