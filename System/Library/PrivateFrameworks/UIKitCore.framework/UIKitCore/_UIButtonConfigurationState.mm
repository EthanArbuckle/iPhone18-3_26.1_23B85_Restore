@interface _UIButtonConfigurationState
- (unint64_t)_controlState;
@end

@implementation _UIButtonConfigurationState

- (unint64_t)_controlState
{
  isHighlighted = [(UIViewConfigurationState *)self isHighlighted];
  if ([(UIViewConfigurationState *)self isDisabled])
  {
    isHighlighted |= 2uLL;
  }

  if ([(UIViewConfigurationState *)self isSelected])
  {
    isHighlighted |= 4uLL;
  }

  if ([(UIViewConfigurationState *)self isFocused])
  {
    return isHighlighted | 8;
  }

  else
  {
    return isHighlighted;
  }
}

@end