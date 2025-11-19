@interface SBRequestSystemApertureElementSuppressionEventResponse
- (SBRequestSystemApertureElementSuppressionEventResponse)initWithAppLayout:(id)a3 wantsGlobalSuppression:(BOOL)a4 wantsKeyLineEnabled:(BOOL)a5 invalidationIdentifier:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBRequestSystemApertureElementSuppressionEventResponse

- (SBRequestSystemApertureElementSuppressionEventResponse)initWithAppLayout:(id)a3 wantsGlobalSuppression:(BOOL)a4 wantsKeyLineEnabled:(BOOL)a5 invalidationIdentifier:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = SBRequestSystemApertureElementSuppressionEventResponse;
  v13 = [(SBChainableModifierEventResponse *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_appLayout, a3);
    objc_storeStrong(&v14->_invalidationIdentifier, a6);
    v14->_wantsGlobalSuppression = a4;
    v14->_wantsKeyLineEnabled = a5;
  }

  return v14;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBRequestSystemApertureElementSuppressionEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v12 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:v5 withName:@"appLayout"];

  v7 = [v4 appendBool:self->_wantsGlobalSuppression withName:@"wantsGlobalSuppression"];
  v8 = [v4 appendBool:self->_wantsKeyLineEnabled withName:@"wantsKeyLineEnabled"];
  v9 = [(NSUUID *)self->_invalidationIdentifier UUIDString];
  v10 = [v4 appendObject:v9 withName:@"invalidationIdentifier"];

  return v4;
}

@end