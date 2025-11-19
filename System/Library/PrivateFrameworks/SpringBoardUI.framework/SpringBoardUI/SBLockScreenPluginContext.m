@interface SBLockScreenPluginContext
+ (id)contextWithName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLockScreenPluginContext

+ (id)contextWithName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SBLockScreenPluginContext);
  [(SBLockScreenPluginContext *)v4 setName:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v2 = [(SBLockScreenPluginContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLockScreenPluginContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBLockScreenPluginContext *)self succinctDescriptionBuilder];
  v6 = v5;
  if (self->_userInfo)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__SBLockScreenPluginContext_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_27836AE50;
    v9 = v5;
    v10 = self;
    [v9 appendBodySectionWithName:0 multilinePrefix:v4 block:v8];
  }

  return v6;
}

@end