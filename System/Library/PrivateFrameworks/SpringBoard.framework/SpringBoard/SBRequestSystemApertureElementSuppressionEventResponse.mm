@interface SBRequestSystemApertureElementSuppressionEventResponse
- (SBRequestSystemApertureElementSuppressionEventResponse)initWithAppLayout:(id)layout wantsGlobalSuppression:(BOOL)suppression wantsKeyLineEnabled:(BOOL)enabled invalidationIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBRequestSystemApertureElementSuppressionEventResponse

- (SBRequestSystemApertureElementSuppressionEventResponse)initWithAppLayout:(id)layout wantsGlobalSuppression:(BOOL)suppression wantsKeyLineEnabled:(BOOL)enabled invalidationIdentifier:(id)identifier
{
  layoutCopy = layout;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = SBRequestSystemApertureElementSuppressionEventResponse;
  v13 = [(SBChainableModifierEventResponse *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_appLayout, layout);
    objc_storeStrong(&v14->_invalidationIdentifier, identifier);
    v14->_wantsGlobalSuppression = suppression;
    v14->_wantsKeyLineEnabled = enabled;
  }

  return v14;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = SBRequestSystemApertureElementSuppressionEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v12 descriptionBuilderWithMultilinePrefix:prefix];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:succinctDescription withName:@"appLayout"];

  v7 = [v4 appendBool:self->_wantsGlobalSuppression withName:@"wantsGlobalSuppression"];
  v8 = [v4 appendBool:self->_wantsKeyLineEnabled withName:@"wantsKeyLineEnabled"];
  uUIDString = [(NSUUID *)self->_invalidationIdentifier UUIDString];
  v10 = [v4 appendObject:uUIDString withName:@"invalidationIdentifier"];

  return v4;
}

@end