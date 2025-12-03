@interface SBMatchMoveToIconViewSwitcherEventResponse
- (CGRect)iconFrame;
- (id)_initWithAppLayout:(id)layout active:(BOOL)active iconFrame:(CGRect)frame;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBMatchMoveToIconViewSwitcherEventResponse

- (id)_initWithAppLayout:(id)layout active:(BOOL)active iconFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  v16.receiver = self;
  v16.super_class = SBMatchMoveToIconViewSwitcherEventResponse;
  v13 = [(SBChainableModifierEventResponse *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_appLayout, layout);
    v14->_active = active;
    v14->_iconFrame.origin.x = x;
    v14->_iconFrame.origin.y = y;
    v14->_iconFrame.size.width = width;
    v14->_iconFrame.size.height = height;
  }

  return v14;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v10.receiver = self;
  v10.super_class = SBMatchMoveToIconViewSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendBool:self->_active withName:@"active"];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v7 = [v4 appendObject:succinctDescription withName:@"appLayout"];

  if (self->_active)
  {
    v8 = [v4 appendRect:@"iconFrame" withName:{self->_iconFrame.origin.x, self->_iconFrame.origin.y, self->_iconFrame.size.width, self->_iconFrame.size.height}];
  }

  return v4;
}

- (CGRect)iconFrame
{
  x = self->_iconFrame.origin.x;
  y = self->_iconFrame.origin.y;
  width = self->_iconFrame.size.width;
  height = self->_iconFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end