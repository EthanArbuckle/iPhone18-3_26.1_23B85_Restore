@interface _UIStepperButton
- (id)_systemDefaultFocusGroupIdentifier;
@end

@implementation _UIStepperButton

- (id)_systemDefaultFocusGroupIdentifier
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  focusGroupContainmentBehavior = [_focusBehavior focusGroupContainmentBehavior];

  if ((focusGroupContainmentBehavior & 0x10) != 0)
  {
    _systemDefaultFocusGroupIdentifier = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIStepperButton;
    _systemDefaultFocusGroupIdentifier = [(UIControl *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
}

@end