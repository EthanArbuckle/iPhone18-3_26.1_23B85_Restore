@interface SBInjectVelocitySwitcherEventResponse
- (SBInjectVelocitySwitcherEventResponse)initWithVelocity:(id)a3 forKey:(id)a4 appLayout:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBInjectVelocitySwitcherEventResponse

- (SBInjectVelocitySwitcherEventResponse)initWithVelocity:(id)a3 forKey:(id)a4 appLayout:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SBInjectVelocitySwitcherEventResponse;
  v12 = [(SBChainableModifierEventResponse *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_velocity, a3);
    objc_storeStrong(&v13->_appLayout, a5);
    v14 = [v10 copy];
    key = v13->_key;
    v13->_key = v14;
  }

  return v13;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBInjectVelocitySwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v8 descriptionBuilderWithMultilinePrefix:a3];
  [v4 appendString:self->_key withName:@"key"];
  v5 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:v5 withName:@"appLayout"];

  return v4;
}

@end