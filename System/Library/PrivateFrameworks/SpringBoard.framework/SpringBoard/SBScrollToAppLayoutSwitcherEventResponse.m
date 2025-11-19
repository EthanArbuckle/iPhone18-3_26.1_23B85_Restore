@interface SBScrollToAppLayoutSwitcherEventResponse
- (SBScrollToAppLayoutSwitcherEventResponse)initWithAppLayout:(id)a3 alignment:(int64_t)a4 animated:(BOOL)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBScrollToAppLayoutSwitcherEventResponse

- (SBScrollToAppLayoutSwitcherEventResponse)initWithAppLayout:(id)a3 alignment:(int64_t)a4 animated:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SBScrollToAppLayoutSwitcherEventResponse;
  v10 = [(SBChainableModifierEventResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appLayout, a3);
    v11->_alignment = a4;
    v11->_animated = a5;
  }

  return v11;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBScrollToAppLayoutSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBAppLayout *)self->_appLayout succinctDescription];
  [v4 appendString:v5 withName:@"appLayout"];

  return v4;
}

@end