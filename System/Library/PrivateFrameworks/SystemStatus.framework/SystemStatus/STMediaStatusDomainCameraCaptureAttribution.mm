@interface STMediaStatusDomainCameraCaptureAttribution
- (BOOL)isEqual:(id)equal;
- (STMediaStatusDomainCameraCaptureAttribution)initWithCameraDescriptor:(id)descriptor activityAttribution:(id)attribution;
- (STMediaStatusDomainCameraCaptureAttribution)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMediaStatusDomainCameraCaptureAttribution

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  cameraDescriptor = [(STMediaStatusDomainCameraCaptureAttribution *)self cameraDescriptor];
  v5 = [builder appendObject:cameraDescriptor];

  activityAttribution = [(STMediaStatusDomainCameraCaptureAttribution *)self activityAttribution];
  v7 = [builder appendObject:activityAttribution];

  v8 = [builder hash];
  return v8;
}

- (STMediaStatusDomainCameraCaptureAttribution)initWithCameraDescriptor:(id)descriptor activityAttribution:(id)attribution
{
  descriptorCopy = descriptor;
  attributionCopy = attribution;
  v14.receiver = self;
  v14.super_class = STMediaStatusDomainCameraCaptureAttribution;
  v8 = [(STMediaStatusDomainCameraCaptureAttribution *)&v14 init];
  if (v8)
  {
    v9 = [descriptorCopy copy];
    cameraDescriptor = v8->_cameraDescriptor;
    v8->_cameraDescriptor = v9;

    v11 = [attributionCopy copy];
    activityAttribution = v8->_activityAttribution;
    v8->_activityAttribution = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  cameraDescriptor = [(STMediaStatusDomainCameraCaptureAttribution *)self cameraDescriptor];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__STMediaStatusDomainCameraCaptureAttribution_isEqual___block_invoke;
  v18[3] = &unk_1E85DDCD8;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:cameraDescriptor counterpart:v18];

  activityAttribution = [(STMediaStatusDomainCameraCaptureAttribution *)self activityAttribution];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __55__STMediaStatusDomainCameraCaptureAttribution_isEqual___block_invoke_2;
  v16 = &unk_1E85DDCD8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:activityAttribution counterpart:&v13];

  LOBYTE(activityAttribution) = [v5 isEqual];
  return activityAttribution;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STMediaStatusDomainCameraCaptureAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STMediaStatusDomainCameraCaptureAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STMediaStatusDomainCameraCaptureAttribution *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__STMediaStatusDomainCameraCaptureAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E85DDD00;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __85__STMediaStatusDomainCameraCaptureAttribution_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cameraDescriptor];
  v4 = [v2 appendObject:v3 withName:@"cameraDescriptor"];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) activityAttribution];
  v6 = [v5 appendObject:v7 withName:@"activityAttribution"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cameraDescriptor = [(STMediaStatusDomainCameraCaptureAttribution *)self cameraDescriptor];
  [coderCopy encodeObject:cameraDescriptor forKey:@"cameraDescriptor"];

  activityAttribution = [(STMediaStatusDomainCameraCaptureAttribution *)self activityAttribution];
  [coderCopy encodeObject:activityAttribution forKey:@"activityAttribution"];
}

- (STMediaStatusDomainCameraCaptureAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cameraDescriptor"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STMediaStatusDomainCameraCaptureAttribution *)self initWithCameraDescriptor:v5 activityAttribution:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end