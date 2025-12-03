@interface HKSPXPCClientIdentifier
- (BOOL)isEqual:(id)equal;
- (HKSPXPCClientIdentifier)initWithCoder:(id)coder;
- (HKSPXPCClientIdentifier)initWithUniqueIdentifier:(id)identifier loggingIdentifier:(id)loggingIdentifier;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPXPCClientIdentifier

- (HKSPXPCClientIdentifier)initWithUniqueIdentifier:(id)identifier loggingIdentifier:(id)loggingIdentifier
{
  identifierCopy = identifier;
  loggingIdentifierCopy = loggingIdentifier;
  v15.receiver = self;
  v15.super_class = HKSPXPCClientIdentifier;
  v8 = [(HKSPXPCClientIdentifier *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    v11 = [loggingIdentifierCopy copy];
    loggingIdentifier = v8->_loggingIdentifier;
    v8->_loggingIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(HKSPXPCClientIdentifier *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  loggingIdentifier = [(HKSPXPCClientIdentifier *)self loggingIdentifier];
  [coderCopy encodeObject:loggingIdentifier forKey:@"loggingIdentifier"];
}

- (HKSPXPCClientIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loggingIdentifier"];

  v7 = [(HKSPXPCClientIdentifier *)self initWithUniqueIdentifier:v5 loggingIdentifier:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uniqueIdentifier = [(HKSPXPCClientIdentifier *)self uniqueIdentifier];
      uniqueIdentifier2 = [(HKSPXPCClientIdentifier *)v5 uniqueIdentifier];

      v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];
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
  succinctDescriptionBuilder = [(HKSPXPCClientIdentifier *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  uniqueIdentifier = [(HKSPXPCClientIdentifier *)self uniqueIdentifier];
  v5 = [v3 appendObject:uniqueIdentifier withName:@"uuid" skipIfNil:1];

  loggingIdentifier = [(HKSPXPCClientIdentifier *)self loggingIdentifier];
  v7 = [v3 appendObject:loggingIdentifier withName:@"id" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPXPCClientIdentifier *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end