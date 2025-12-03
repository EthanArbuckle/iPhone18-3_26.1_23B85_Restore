@interface SBInjectVelocitySwitcherEventResponse
- (SBInjectVelocitySwitcherEventResponse)initWithVelocity:(id)velocity forKey:(id)key appLayout:(id)layout;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBInjectVelocitySwitcherEventResponse

- (SBInjectVelocitySwitcherEventResponse)initWithVelocity:(id)velocity forKey:(id)key appLayout:(id)layout
{
  velocityCopy = velocity;
  keyCopy = key;
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = SBInjectVelocitySwitcherEventResponse;
  v12 = [(SBChainableModifierEventResponse *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_velocity, velocity);
    objc_storeStrong(&v13->_appLayout, layout);
    v14 = [keyCopy copy];
    key = v13->_key;
    v13->_key = v14;
  }

  return v13;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v8.receiver = self;
  v8.super_class = SBInjectVelocitySwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v8 descriptionBuilderWithMultilinePrefix:prefix];
  [v4 appendString:self->_key withName:@"key"];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:succinctDescription withName:@"appLayout"];

  return v4;
}

@end