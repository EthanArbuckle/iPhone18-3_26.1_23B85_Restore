@interface STStatusItemsStatusDomainDataChangeContext
- (BOOL)isEqual:(id)equal;
- (STStatusItemsStatusDomainDataChangeContext)init;
- (STStatusItemsStatusDomainDataChangeContext)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusItemsStatusDomainDataChangeContext

- (STStatusItemsStatusDomainDataChangeContext)init
{
  if (self)
  {
    selfCopy = self;
    isUserInitiated = [0 isUserInitiated];
    v4.receiver = selfCopy;
    v4.super_class = STStatusItemsStatusDomainDataChangeContext;
    self = [(STStatusItemsStatusDomainDataChangeContext *)&v4 init];
    if (self)
    {
      self->_userInitiated = isUserInitiated;
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  isUserInitiated = [(STStatusItemsStatusDomainDataChangeContext *)self isUserInitiated];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__STStatusItemsStatusDomainDataChangeContext_isEqual___block_invoke;
  v10[3] = &unk_1E85DDD50;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendBool:isUserInitiated counterpart:v10];
  LOBYTE(isUserInitiated) = [v5 isEqual];

  return isUserInitiated;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[STStatusItemsStatusDomainDataChangeContext isUserInitiated](self, "isUserInitiated")}];
  v5 = [builder hash];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  result = [STMutableStatusItemsStatusDomainDataChangeContext allocWithZone:zone];
  if (result)
  {
    v5 = result;
    isUserInitiated = [(STStatusItemsStatusDomainDataChangeContext *)self isUserInitiated];
    v7.receiver = v5;
    v7.super_class = STStatusItemsStatusDomainDataChangeContext;
    result = [(STStatusItemsStatusDomainDataChangeContext *)&v7 init];
    if (result)
    {
      *(result + 8) = isUserInitiated;
    }
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusItemsStatusDomainDataChangeContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemsStatusDomainDataChangeContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemsStatusDomainDataChangeContext *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __94__STStatusItemsStatusDomainDataChangeContext__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[STStatusItemsStatusDomainDataChangeContext isUserInitiated](self forKey:{"isUserInitiated"), @"userInitiated"}];
}

- (STStatusItemsStatusDomainDataChangeContext)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"userInitiated"];
  if (!self)
  {
    return 0;
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = STStatusItemsStatusDomainDataChangeContext;
  result = [(STStatusItemsStatusDomainDataChangeContext *)&v7 init];
  if (result)
  {
    result->_userInitiated = v5;
  }

  return result;
}

@end