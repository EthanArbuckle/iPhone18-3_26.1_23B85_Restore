@interface STLocationStatusDomainDataChangeContext
- (BOOL)isEqual:(id)equal;
- (STLocationStatusDomainDataChangeContext)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initWithChangeContext:(id)result;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STLocationStatusDomainDataChangeContext

- (id)initWithChangeContext:(id)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    isUserInitiated = [v3 isUserInitiated];
    wantsProminentIndication = [v3 wantsProminentIndication];

    v6.receiver = v2;
    v6.super_class = STLocationStatusDomainDataChangeContext;
    result = objc_msgSendSuper2(&v6, sel_init);
    if (result)
    {
      *(result + 8) = isUserInitiated;
      *(result + 9) = wantsProminentIndication;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  isUserInitiated = [(STLocationStatusDomainDataChangeContext *)self isUserInitiated];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__STLocationStatusDomainDataChangeContext_isEqual___block_invoke;
  v18[3] = &unk_1E85DDD50;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendBool:isUserInitiated counterpart:v18];
  wantsProminentIndication = [(STLocationStatusDomainDataChangeContext *)self wantsProminentIndication];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __51__STLocationStatusDomainDataChangeContext_isEqual___block_invoke_2;
  v16 = &unk_1E85DDD50;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendBool:wantsProminentIndication counterpart:&v13];
  LOBYTE(wantsProminentIndication) = [v5 isEqual];

  return wantsProminentIndication;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[STLocationStatusDomainDataChangeContext isUserInitiated](self, "isUserInitiated")}];
  v5 = [builder appendBool:{-[STLocationStatusDomainDataChangeContext wantsProminentIndication](self, "wantsProminentIndication")}];
  v6 = [builder hash];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableLocationStatusDomainDataChangeContext allocWithZone:zone];

  return [(STLocationStatusDomainDataChangeContext *)v4 initWithChangeContext:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STLocationStatusDomainDataChangeContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STLocationStatusDomainDataChangeContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  if (self)
  {
    prefixCopy = prefix;
    succinctDescriptionBuilder = [(STLocationStatusDomainDataChangeContext *)self succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:0];
    [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__STLocationStatusDomainDataChangeContext__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v9[3] = &unk_1E85DDD00;
    v6 = succinctDescriptionBuilder;
    v10 = v6;
    selfCopy = self;
    [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[STLocationStatusDomainDataChangeContext isUserInitiated](self forKey:{"isUserInitiated"), @"userInitiated"}];
  [coderCopy encodeBool:-[STLocationStatusDomainDataChangeContext wantsProminentIndication](self forKey:{"wantsProminentIndication"), @"wantsProminentIndication"}];
}

- (STLocationStatusDomainDataChangeContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"userInitiated"];
  v6 = [coderCopy decodeBoolForKey:@"wantsProminentIndication"];

  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = STLocationStatusDomainDataChangeContext;
  result = [(STLocationStatusDomainDataChangeContext *)&v8 init];
  if (result)
  {
    result->_userInitiated = v5;
    result->_wantsProminentIndication = v6;
  }

  return result;
}

@end