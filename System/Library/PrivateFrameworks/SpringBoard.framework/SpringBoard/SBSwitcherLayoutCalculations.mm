@interface SBSwitcherLayoutCalculations
- (CGRect)frame;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBSwitcherLayoutCalculations

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSwitcherLayoutCalculations *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSwitcherLayoutCalculations *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSwitcherLayoutCalculations *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendRect:@"frame" withName:{self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height}];
  v6 = [succinctDescriptionBuilder appendFloat:@"scale" withName:3 decimalPrecision:self->_scale];

  return succinctDescriptionBuilder;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end