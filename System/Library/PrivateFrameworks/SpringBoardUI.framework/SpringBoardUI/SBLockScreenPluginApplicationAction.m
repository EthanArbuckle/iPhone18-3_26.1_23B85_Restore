@interface SBLockScreenPluginApplicationAction
+ (id)actionWithBundleID:(id)a3;
+ (id)actionWithURL:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLockScreenPluginApplicationAction

+ (id)actionWithURL:(id)a3
{
  v4 = a3;
  v5 = [a1 action];
  [v5 setURL:v4];

  [v5 setAuthenticationPolicy:0];

  return v5;
}

+ (id)actionWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [a1 action];
  [v5 setBundleID:v4];

  [v5 setAuthenticationPolicy:0];

  return v5;
}

- (id)succinctDescription
{
  v2 = [(SBLockScreenPluginApplicationAction *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBLockScreenPluginAction *)self label];
  v5 = [v3 appendObject:v4 withName:@"label" skipIfNil:1];

  v6 = [v3 appendObject:self->_bundleID withName:@"bundleID" skipIfNil:1];
  v7 = [v3 appendObject:self->_url withName:@"URL" skipIfNil:1];
  v8 = [v3 appendInteger:self->_transitionStyle withName:@"transitionStyle"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLockScreenPluginApplicationAction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end