@interface STMediaStatusDomainScreenCaptureAttribution
- (BOOL)isEqual:(id)a3;
- (STMediaStatusDomainScreenCaptureAttribution)initWithActivityAttribution:(id)a3;
- (STMediaStatusDomainScreenCaptureAttribution)initWithCoder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMediaStatusDomainScreenCaptureAttribution

- (STMediaStatusDomainScreenCaptureAttribution)initWithActivityAttribution:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STMediaStatusDomainScreenCaptureAttribution;
  v5 = [(STMediaStatusDomainScreenCaptureAttribution *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    activityAttribution = v5->_activityAttribution;
    v5->_activityAttribution = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STMediaStatusDomainScreenCaptureAttribution *)self activityAttribution];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__STMediaStatusDomainScreenCaptureAttribution_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendObject:v6 counterpart:v10];

  LOBYTE(v6) = [v5 isEqual];
  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STMediaStatusDomainScreenCaptureAttribution *)self activityAttribution];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

- (id)succinctDescription
{
  v2 = [(STMediaStatusDomainScreenCaptureAttribution *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STMediaStatusDomainScreenCaptureAttribution *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STMediaStatusDomainScreenCaptureAttribution *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__STMediaStatusDomainScreenCaptureAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E85DDD00;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __85__STMediaStatusDomainScreenCaptureAttribution_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) activityAttribution];
  v2 = [v1 appendObject:v3 withName:@"activityAttribution"];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STMediaStatusDomainScreenCaptureAttribution *)self activityAttribution];
  [v4 encodeObject:v5 forKey:@"activityAttribution"];
}

- (STMediaStatusDomainScreenCaptureAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];

  if (v5)
  {
    self = [(STMediaStatusDomainScreenCaptureAttribution *)self initWithActivityAttribution:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end