@interface SBMatchMoveToIconViewSwitcherEventResponse
- (CGRect)iconFrame;
- (id)_initWithAppLayout:(id)a3 active:(BOOL)a4 iconFrame:(CGRect)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBMatchMoveToIconViewSwitcherEventResponse

- (id)_initWithAppLayout:(id)a3 active:(BOOL)a4 iconFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v16.receiver = self;
  v16.super_class = SBMatchMoveToIconViewSwitcherEventResponse;
  v13 = [(SBChainableModifierEventResponse *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_appLayout, a3);
    v14->_active = a4;
    v14->_iconFrame.origin.x = x;
    v14->_iconFrame.origin.y = y;
    v14->_iconFrame.size.width = width;
    v14->_iconFrame.size.height = height;
  }

  return v14;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBMatchMoveToIconViewSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendBool:self->_active withName:@"active"];
  v6 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v7 = [v4 appendObject:v6 withName:@"appLayout"];

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