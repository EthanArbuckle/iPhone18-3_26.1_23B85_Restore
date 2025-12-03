@interface SBLockScreenPluginApplicationAction
+ (id)actionWithBundleID:(id)d;
+ (id)actionWithURL:(id)l;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLockScreenPluginApplicationAction

+ (id)actionWithURL:(id)l
{
  lCopy = l;
  action = [self action];
  [action setURL:lCopy];

  [action setAuthenticationPolicy:0];

  return action;
}

+ (id)actionWithBundleID:(id)d
{
  dCopy = d;
  action = [self action];
  [action setBundleID:dCopy];

  [action setAuthenticationPolicy:0];

  return action;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBLockScreenPluginApplicationAction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  label = [(SBLockScreenPluginAction *)self label];
  v5 = [v3 appendObject:label withName:@"label" skipIfNil:1];

  v6 = [v3 appendObject:self->_bundleID withName:@"bundleID" skipIfNil:1];
  v7 = [v3 appendObject:self->_url withName:@"URL" skipIfNil:1];
  v8 = [v3 appendInteger:self->_transitionStyle withName:@"transitionStyle"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBLockScreenPluginApplicationAction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end