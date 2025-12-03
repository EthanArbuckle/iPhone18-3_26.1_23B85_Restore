@interface STMediaStatusDomainScreenCaptureAttribution
- (BOOL)isEqual:(id)equal;
- (STMediaStatusDomainScreenCaptureAttribution)initWithActivityAttribution:(id)attribution;
- (STMediaStatusDomainScreenCaptureAttribution)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMediaStatusDomainScreenCaptureAttribution

- (STMediaStatusDomainScreenCaptureAttribution)initWithActivityAttribution:(id)attribution
{
  attributionCopy = attribution;
  v9.receiver = self;
  v9.super_class = STMediaStatusDomainScreenCaptureAttribution;
  v5 = [(STMediaStatusDomainScreenCaptureAttribution *)&v9 init];
  if (v5)
  {
    v6 = [attributionCopy copy];
    activityAttribution = v5->_activityAttribution;
    v5->_activityAttribution = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  activityAttribution = [(STMediaStatusDomainScreenCaptureAttribution *)self activityAttribution];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__STMediaStatusDomainScreenCaptureAttribution_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:activityAttribution counterpart:v10];

  LOBYTE(activityAttribution) = [v5 isEqual];
  return activityAttribution;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  activityAttribution = [(STMediaStatusDomainScreenCaptureAttribution *)self activityAttribution];
  v5 = [builder appendObject:activityAttribution];

  v6 = [builder hash];
  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STMediaStatusDomainScreenCaptureAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STMediaStatusDomainScreenCaptureAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STMediaStatusDomainScreenCaptureAttribution *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__STMediaStatusDomainScreenCaptureAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E85DDD00;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __85__STMediaStatusDomainScreenCaptureAttribution_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) activityAttribution];
  v2 = [v1 appendObject:v3 withName:@"activityAttribution"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityAttribution = [(STMediaStatusDomainScreenCaptureAttribution *)self activityAttribution];
  [coderCopy encodeObject:activityAttribution forKey:@"activityAttribution"];
}

- (STMediaStatusDomainScreenCaptureAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];

  if (v5)
  {
    self = [(STMediaStatusDomainScreenCaptureAttribution *)self initWithActivityAttribution:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end