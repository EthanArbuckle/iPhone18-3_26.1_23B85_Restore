@interface STMediaStatusDomainCameraCaptureAttribution
- (BOOL)isEqual:(id)a3;
- (STMediaStatusDomainCameraCaptureAttribution)initWithCameraDescriptor:(id)a3 activityAttribution:(id)a4;
- (STMediaStatusDomainCameraCaptureAttribution)initWithCoder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMediaStatusDomainCameraCaptureAttribution

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STMediaStatusDomainCameraCaptureAttribution *)self cameraDescriptor];
  v5 = [v3 appendObject:v4];

  v6 = [(STMediaStatusDomainCameraCaptureAttribution *)self activityAttribution];
  v7 = [v3 appendObject:v6];

  v8 = [v3 hash];
  return v8;
}

- (STMediaStatusDomainCameraCaptureAttribution)initWithCameraDescriptor:(id)a3 activityAttribution:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = STMediaStatusDomainCameraCaptureAttribution;
  v8 = [(STMediaStatusDomainCameraCaptureAttribution *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    cameraDescriptor = v8->_cameraDescriptor;
    v8->_cameraDescriptor = v9;

    v11 = [v7 copy];
    activityAttribution = v8->_activityAttribution;
    v8->_activityAttribution = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STMediaStatusDomainCameraCaptureAttribution *)self cameraDescriptor];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__STMediaStatusDomainCameraCaptureAttribution_isEqual___block_invoke;
  v18[3] = &unk_1E85DDCD8;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:v6 counterpart:v18];

  v9 = [(STMediaStatusDomainCameraCaptureAttribution *)self activityAttribution];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __55__STMediaStatusDomainCameraCaptureAttribution_isEqual___block_invoke_2;
  v16 = &unk_1E85DDCD8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:v9 counterpart:&v13];

  LOBYTE(v9) = [v5 isEqual];
  return v9;
}

- (id)succinctDescription
{
  v2 = [(STMediaStatusDomainCameraCaptureAttribution *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STMediaStatusDomainCameraCaptureAttribution *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STMediaStatusDomainCameraCaptureAttribution *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__STMediaStatusDomainCameraCaptureAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E85DDD00;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STMediaStatusDomainCameraCaptureAttribution *)self cameraDescriptor];
  [v4 encodeObject:v5 forKey:@"cameraDescriptor"];

  v6 = [(STMediaStatusDomainCameraCaptureAttribution *)self activityAttribution];
  [v4 encodeObject:v6 forKey:@"activityAttribution"];
}

- (STMediaStatusDomainCameraCaptureAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cameraDescriptor"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];

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
    v8 = 0;
  }

  else
  {
    self = [(STMediaStatusDomainCameraCaptureAttribution *)self initWithCameraDescriptor:v5 activityAttribution:v6];
    v8 = self;
  }

  return v8;
}

@end