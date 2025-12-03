@interface SBLockScreenPluginContext
+ (id)contextWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLockScreenPluginContext

+ (id)contextWithName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(SBLockScreenPluginContext);
  [(SBLockScreenPluginContext *)v4 setName:nameCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SBLockScreenPluginContext);
  [(SBLockScreenPluginContext *)v4 setName:self->_name];
  [(SBLockScreenPluginContext *)v4 setUserInfo:self->_userInfo];
  [(SBLockScreenPluginContext *)v4 setProcess:self->_process];
  [(SBLockScreenPluginContext *)v4 setAuxiliaryAnimation:self->_auxiliaryAnimation];
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBLockScreenPluginContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:@"name"];
  process = self->_process;
  v6 = FBSProcessPrettyDescription();
  v7 = [v3 appendObject:v6 withName:@"process"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBLockScreenPluginContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBLockScreenPluginContext *)self succinctDescriptionBuilder];
  v6 = succinctDescriptionBuilder;
  if (self->_userInfo)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__SBLockScreenPluginContext_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_27836AE50;
    v9 = succinctDescriptionBuilder;
    selfCopy = self;
    [v9 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];
  }

  return v6;
}

@end