@interface STMediaStatusDomainCameraDescriptor
- (BOOL)isEqual:(id)a3;
- (STMediaStatusDomainCameraDescriptor)initWithCameraIdentifier:(id)a3;
- (STMediaStatusDomainCameraDescriptor)initWithCameraIdentifier:(id)a3 eligibleForPrivacyIndicator:(BOOL)a4;
- (STMediaStatusDomainCameraDescriptor)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMediaStatusDomainCameraDescriptor

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STMediaStatusDomainCameraDescriptor *)self cameraIdentifier];
  v5 = [v3 appendString:v4];

  v6 = [v3 appendBool:{-[STMediaStatusDomainCameraDescriptor isEligibleForPrivacyIndicator](self, "isEligibleForPrivacyIndicator")}];
  v7 = [v3 hash];

  return v7;
}

- (STMediaStatusDomainCameraDescriptor)initWithCameraIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_self();
  v5 = [(STMediaStatusDomainCameraDescriptor *)self initWithCameraIdentifier:v4 eligibleForPrivacyIndicator:1];

  return v5;
}

- (STMediaStatusDomainCameraDescriptor)initWithCameraIdentifier:(id)a3 eligibleForPrivacyIndicator:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = STMediaStatusDomainCameraDescriptor;
  v7 = [(STMediaStatusDomainCameraDescriptor *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    cameraIdentifier = v7->_cameraIdentifier;
    v7->_cameraIdentifier = v8;

    v7->_eligibleForPrivacyIndicator = a4;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STMediaStatusDomainCameraDescriptor *)self cameraIdentifier];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__STMediaStatusDomainCameraDescriptor_isEqual___block_invoke;
  v18[3] = &unk_1E85DDD28;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendString:v6 counterpart:v18];

  v9 = [(STMediaStatusDomainCameraDescriptor *)self isEligibleForPrivacyIndicator];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __47__STMediaStatusDomainCameraDescriptor_isEqual___block_invoke_2;
  v16 = &unk_1E85DDD50;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendBool:v9 counterpart:&v13];
  LOBYTE(v9) = [v5 isEqual];

  return v9;
}

- (id)succinctDescription
{
  v2 = [(STMediaStatusDomainCameraDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STMediaStatusDomainCameraDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STMediaStatusDomainCameraDescriptor *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  if (a1)
  {
    v5 = a2;
    v6 = [a1 succinctDescriptionBuilder];
    [v6 setUseDebugDescription:a3];
    [v6 setActiveMultilinePrefix:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__STMediaStatusDomainCameraDescriptor__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v7 = v6;
    v11 = v7;
    v12 = a1;
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(STMediaStatusDomainCameraDescriptor *)self cameraIdentifier];
  [v5 encodeObject:v4 forKey:@"cameraIdentifier"];

  [v5 encodeBool:-[STMediaStatusDomainCameraDescriptor isEligibleForPrivacyIndicator](self forKey:{"isEligibleForPrivacyIndicator"), @"eligibleForPrivacyIndicator"}];
}

- (STMediaStatusDomainCameraDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cameraIdentifier"];
  v6 = [v4 decodeBoolForKey:@"eligibleForPrivacyIndicator"];

  v7 = [(STMediaStatusDomainCameraDescriptor *)self initWithCameraIdentifier:v5 eligibleForPrivacyIndicator:v6];
  return v7;
}

@end