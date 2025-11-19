@interface _UIButtonConfigurationState
- (unint64_t)_controlState;
@end

@implementation _UIButtonConfigurationState

- (unint64_t)_controlState
{
  v3 = [(UIViewConfigurationState *)self isHighlighted];
  if ([(UIViewConfigurationState *)self isDisabled])
  {
    v3 |= 2uLL;
  }

  if ([(UIViewConfigurationState *)self isSelected])
  {
    v3 |= 4uLL;
  }

  if ([(UIViewConfigurationState *)self isFocused])
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

@end