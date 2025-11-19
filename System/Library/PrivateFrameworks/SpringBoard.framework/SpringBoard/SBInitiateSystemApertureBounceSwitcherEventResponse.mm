@interface SBInitiateSystemApertureBounceSwitcherEventResponse
- (SBInitiateSystemApertureBounceSwitcherEventResponse)initWithAppLayout:(id)a3 suppressionIdentifierToInvalidate:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBInitiateSystemApertureBounceSwitcherEventResponse

- (SBInitiateSystemApertureBounceSwitcherEventResponse)initWithAppLayout:(id)a3 suppressionIdentifierToInvalidate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBInitiateSystemApertureBounceSwitcherEventResponse;
  v9 = [(SBChainableModifierEventResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appLayout, a3);
    objc_storeStrong(&v10->_suppressionIdentifierToInvalidate, a4);
  }

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBInitiateSystemApertureBounceSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:v5 withName:@"appLayout"];

  v7 = [(NSUUID *)self->_suppressionIdentifierToInvalidate UUIDString];
  v8 = [v4 appendObject:v7 withName:@"suppression id to invalidate"];

  return v4;
}

@end