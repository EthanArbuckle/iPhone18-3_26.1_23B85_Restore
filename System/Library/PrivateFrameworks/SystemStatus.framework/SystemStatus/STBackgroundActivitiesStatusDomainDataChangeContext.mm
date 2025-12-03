@interface STBackgroundActivitiesStatusDomainDataChangeContext
- (BOOL)isEqual:(id)equal;
- (STBackgroundActivitiesStatusDomainDataChangeContext)init;
- (STBackgroundActivitiesStatusDomainDataChangeContext)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STBackgroundActivitiesStatusDomainDataChangeContext

- (STBackgroundActivitiesStatusDomainDataChangeContext)init
{
  if (self)
  {
    selfCopy = self;
    isUserInitiated = [0 isUserInitiated];
    v4.receiver = selfCopy;
    v4.super_class = STBackgroundActivitiesStatusDomainDataChangeContext;
    self = [(STBackgroundActivitiesStatusDomainDataChangeContext *)&v4 init];
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
  isUserInitiated = [(STBackgroundActivitiesStatusDomainDataChangeContext *)self isUserInitiated];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__STBackgroundActivitiesStatusDomainDataChangeContext_isEqual___block_invoke;
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
  v4 = [builder appendBool:{-[STBackgroundActivitiesStatusDomainDataChangeContext isUserInitiated](self, "isUserInitiated")}];
  v5 = [builder hash];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  result = [STMutableBackgroundActivitiesStatusDomainDataChangeContext allocWithZone:zone];
  if (result)
  {
    v5 = result;
    isUserInitiated = [(STBackgroundActivitiesStatusDomainDataChangeContext *)self isUserInitiated];
    v7.receiver = v5;
    v7.super_class = STBackgroundActivitiesStatusDomainDataChangeContext;
    result = [(STBackgroundActivitiesStatusDomainDataChangeContext *)&v7 init];
    if (result)
    {
      *(result + 8) = isUserInitiated;
    }
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STBackgroundActivitiesStatusDomainDataChangeContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivitiesStatusDomainDataChangeContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivitiesStatusDomainDataChangeContext *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __103__STBackgroundActivitiesStatusDomainDataChangeContext__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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
  [coderCopy encodeBool:-[STBackgroundActivitiesStatusDomainDataChangeContext isUserInitiated](self forKey:{"isUserInitiated"), @"userInitiated"}];
}

- (STBackgroundActivitiesStatusDomainDataChangeContext)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"userInitiated"];
  if (!self)
  {
    return 0;
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = STBackgroundActivitiesStatusDomainDataChangeContext;
  result = [(STBackgroundActivitiesStatusDomainDataChangeContext *)&v7 init];
  if (result)
  {
    result->_userInitiated = v5;
  }

  return result;
}

@end