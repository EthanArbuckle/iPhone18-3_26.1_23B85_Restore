@interface SBScrollToAppLayoutSwitcherEventResponse
- (SBScrollToAppLayoutSwitcherEventResponse)initWithAppLayout:(id)layout alignment:(int64_t)alignment animated:(BOOL)animated;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBScrollToAppLayoutSwitcherEventResponse

- (SBScrollToAppLayoutSwitcherEventResponse)initWithAppLayout:(id)layout alignment:(int64_t)alignment animated:(BOOL)animated
{
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = SBScrollToAppLayoutSwitcherEventResponse;
  v10 = [(SBChainableModifierEventResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appLayout, layout);
    v11->_alignment = alignment;
    v11->_animated = animated;
  }

  return v11;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBScrollToAppLayoutSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  [v4 appendString:succinctDescription withName:@"appLayout"];

  return v4;
}

@end