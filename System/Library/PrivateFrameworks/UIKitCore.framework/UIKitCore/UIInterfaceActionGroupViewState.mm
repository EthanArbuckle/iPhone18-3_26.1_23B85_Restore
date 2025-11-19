@interface UIInterfaceActionGroupViewState
- (BOOL)_stateEqualToGroupViewState:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UIInterfaceActionGroupViewState)init;
- (id)copyWithResolvedPresentationStyle:(int64_t)a3;
- (id)copyWithVerticalLayoutAxis:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_collectStateFromGroupViewState:(id)a3;
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

- (id)copyWithVerticalLayoutAxis:(BOOL)a3
{
  result = [(UIInterfaceActionGroupViewState *)self copy];
  *(result + 32) = a3;
  return result;
}

- (id)copyWithResolvedPresentationStyle:(int64_t)a3
{
  result = [(UIInterfaceActionGroupViewState *)self copy];
  *(result + 5) = a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionGroupViewState;
  v4 = [(UIInterfaceActionVisualStyleViewState *)&v6 copyWithZone:a3];
  [v4 _collectStateFromGroupViewState:self];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(UIInterfaceActionGroupViewState *)self _stateEqualToGroupViewState:v4];

  return v5;
}

- (void)_collectStateFromGroupViewState:(id)a3
{
  v4 = a3;
  self->_isVerticalLayoutAxis = [v4 isVerticalLayoutAxis];
  v5 = [v4 resolvedPresentationStyle];

  self->_resolvedPresentationStyle = v5;
}

- (BOOL)_stateEqualToGroupViewState:(id)a3
{
  v4 = a3;
  isVerticalLayoutAxis = self->_isVerticalLayoutAxis;
  if (isVerticalLayoutAxis == [v4 isVerticalLayoutAxis])
  {
    resolvedPresentationStyle = self->_resolvedPresentationStyle;
    v7 = resolvedPresentationStyle == [v4 resolvedPresentationStyle];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end