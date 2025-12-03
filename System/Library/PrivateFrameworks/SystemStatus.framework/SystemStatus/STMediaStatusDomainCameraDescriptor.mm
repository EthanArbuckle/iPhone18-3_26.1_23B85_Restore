@interface STMediaStatusDomainCameraDescriptor
- (BOOL)isEqual:(id)equal;
- (STMediaStatusDomainCameraDescriptor)initWithCameraIdentifier:(id)identifier;
- (STMediaStatusDomainCameraDescriptor)initWithCameraIdentifier:(id)identifier eligibleForPrivacyIndicator:(BOOL)indicator;
- (STMediaStatusDomainCameraDescriptor)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMediaStatusDomainCameraDescriptor

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  cameraIdentifier = [(STMediaStatusDomainCameraDescriptor *)self cameraIdentifier];
  v5 = [builder appendString:cameraIdentifier];

  v6 = [builder appendBool:{-[STMediaStatusDomainCameraDescriptor isEligibleForPrivacyIndicator](self, "isEligibleForPrivacyIndicator")}];
  v7 = [builder hash];

  return v7;
}

- (STMediaStatusDomainCameraDescriptor)initWithCameraIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_self();
  v5 = [(STMediaStatusDomainCameraDescriptor *)self initWithCameraIdentifier:identifierCopy eligibleForPrivacyIndicator:1];

  return v5;
}

- (STMediaStatusDomainCameraDescriptor)initWithCameraIdentifier:(id)identifier eligibleForPrivacyIndicator:(BOOL)indicator
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = STMediaStatusDomainCameraDescriptor;
  v7 = [(STMediaStatusDomainCameraDescriptor *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    cameraIdentifier = v7->_cameraIdentifier;
    v7->_cameraIdentifier = v8;

    v7->_eligibleForPrivacyIndicator = indicator;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  cameraIdentifier = [(STMediaStatusDomainCameraDescriptor *)self cameraIdentifier];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__STMediaStatusDomainCameraDescriptor_isEqual___block_invoke;
  v18[3] = &unk_1E85DDD28;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendString:cameraIdentifier counterpart:v18];

  isEligibleForPrivacyIndicator = [(STMediaStatusDomainCameraDescriptor *)self isEligibleForPrivacyIndicator];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __47__STMediaStatusDomainCameraDescriptor_isEqual___block_invoke_2;
  v16 = &unk_1E85DDD50;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendBool:isEligibleForPrivacyIndicator counterpart:&v13];
  LOBYTE(isEligibleForPrivacyIndicator) = [v5 isEqual];

  return isEligibleForPrivacyIndicator;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STMediaStatusDomainCameraDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STMediaStatusDomainCameraDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STMediaStatusDomainCameraDescriptor *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [self succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__STMediaStatusDomainCameraDescriptor__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v7 = succinctDescriptionBuilder;
    v11 = v7;
    selfCopy = self;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __87__STMediaStatusDomainCameraDescriptor__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cameraIdentifier];
  [v2 appendString:v3 withName:@"cameraIdentifier"];

  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isEligibleForPrivacyIndicator"), @"eligibleForPrivacyIndicator"}];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cameraIdentifier = [(STMediaStatusDomainCameraDescriptor *)self cameraIdentifier];
  [coderCopy encodeObject:cameraIdentifier forKey:@"cameraIdentifier"];

  [coderCopy encodeBool:-[STMediaStatusDomainCameraDescriptor isEligibleForPrivacyIndicator](self forKey:{"isEligibleForPrivacyIndicator"), @"eligibleForPrivacyIndicator"}];
}

- (STMediaStatusDomainCameraDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cameraIdentifier"];
  v6 = [coderCopy decodeBoolForKey:@"eligibleForPrivacyIndicator"];

  v7 = [(STMediaStatusDomainCameraDescriptor *)self initWithCameraIdentifier:v5 eligibleForPrivacyIndicator:v6];
  return v7;
}

@end