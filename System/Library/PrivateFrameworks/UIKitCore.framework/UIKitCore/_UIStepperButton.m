@interface _UIStepperButton
- (id)_systemDefaultFocusGroupIdentifier;
@end

@implementation _UIStepperButton

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x10) != 0)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIStepperButton;
    v5 = [(UIControl *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

@end