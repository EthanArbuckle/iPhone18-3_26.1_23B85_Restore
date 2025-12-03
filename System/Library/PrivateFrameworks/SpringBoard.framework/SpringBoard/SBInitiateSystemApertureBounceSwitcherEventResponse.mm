@interface SBInitiateSystemApertureBounceSwitcherEventResponse
- (SBInitiateSystemApertureBounceSwitcherEventResponse)initWithAppLayout:(id)layout suppressionIdentifierToInvalidate:(id)invalidate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBInitiateSystemApertureBounceSwitcherEventResponse

- (SBInitiateSystemApertureBounceSwitcherEventResponse)initWithAppLayout:(id)layout suppressionIdentifierToInvalidate:(id)invalidate
{
  layoutCopy = layout;
  invalidateCopy = invalidate;
  v12.receiver = self;
  v12.super_class = SBInitiateSystemApertureBounceSwitcherEventResponse;
  v9 = [(SBChainableModifierEventResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appLayout, layout);
    objc_storeStrong(&v10->_suppressionIdentifierToInvalidate, invalidate);
  }

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v10.receiver = self;
  v10.super_class = SBInitiateSystemApertureBounceSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:prefix];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:succinctDescription withName:@"appLayout"];

  uUIDString = [(NSUUID *)self->_suppressionIdentifierToInvalidate UUIDString];
  v8 = [v4 appendObject:uUIDString withName:@"suppression id to invalidate"];

  return v4;
}

@end