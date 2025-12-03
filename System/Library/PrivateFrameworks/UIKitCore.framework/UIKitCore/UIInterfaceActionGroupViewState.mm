@interface UIInterfaceActionGroupViewState
- (BOOL)_stateEqualToGroupViewState:(id)state;
- (BOOL)isEqual:(id)equal;
- (UIInterfaceActionGroupViewState)init;
- (id)copyWithResolvedPresentationStyle:(int64_t)style;
- (id)copyWithVerticalLayoutAxis:(BOOL)axis;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_collectStateFromGroupViewState:(id)state;
@end

@implementation UIInterfaceActionGroupViewState

- (UIInterfaceActionGroupViewState)init
{
  v3.receiver = self;
  v3.super_class = UIInterfaceActionGroupViewState;
  result = [(UIInterfaceActionVisualStyleViewState *)&v3 init];
  if (result)
  {
    result->_isVerticalLayoutAxis = 1;
    result->_resolvedPresentationStyle = 0;
  }

  return result;
}

- (id)copyWithVerticalLayoutAxis:(BOOL)axis
{
  result = [(UIInterfaceActionGroupViewState *)self copy];
  *(result + 32) = axis;
  return result;
}

- (id)copyWithResolvedPresentationStyle:(int64_t)style
{
  result = [(UIInterfaceActionGroupViewState *)self copy];
  *(result + 5) = style;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = UIInterfaceActionGroupViewState;
  v4 = [(UIInterfaceActionVisualStyleViewState *)&v9 description];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVerticalLayoutAxis];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resolvedPresentationStyle];
  v7 = [v3 stringWithFormat:@"%@ vertical = %@, resolvedPresentationStyle = %@", v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionGroupViewState;
  v4 = [(UIInterfaceActionVisualStyleViewState *)&v6 copyWithZone:zone];
  [v4 _collectStateFromGroupViewState:self];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(UIInterfaceActionGroupViewState *)self _stateEqualToGroupViewState:equalCopy];

  return v5;
}

- (void)_collectStateFromGroupViewState:(id)state
{
  stateCopy = state;
  self->_isVerticalLayoutAxis = [stateCopy isVerticalLayoutAxis];
  resolvedPresentationStyle = [stateCopy resolvedPresentationStyle];

  self->_resolvedPresentationStyle = resolvedPresentationStyle;
}

- (BOOL)_stateEqualToGroupViewState:(id)state
{
  stateCopy = state;
  isVerticalLayoutAxis = self->_isVerticalLayoutAxis;
  if (isVerticalLayoutAxis == [stateCopy isVerticalLayoutAxis])
  {
    resolvedPresentationStyle = self->_resolvedPresentationStyle;
    v7 = resolvedPresentationStyle == [stateCopy resolvedPresentationStyle];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end