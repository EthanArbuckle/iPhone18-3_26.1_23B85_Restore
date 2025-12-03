@interface SBHRightShoulderButtonFocusNavigationGestureRecognizer
- (SBHRightShoulderButtonFocusNavigationGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (int64_t)preferredNavigationDirection;
@end

@implementation SBHRightShoulderButtonFocusNavigationGestureRecognizer

- (SBHRightShoulderButtonFocusNavigationGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = SBHRightShoulderButtonFocusNavigationGestureRecognizer;
  v4 = [(SBHRightShoulderButtonFocusNavigationGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(SBHFocusNavigationGestureRecognizer *)v4 setOnlyAcceptsGameControllerEvents:1];
    [(SBHFocusNavigationGestureRecognizer *)v5 setRequiresFailureOfBuiltInFocusGestureRecognizers:1];
    [(SBHRightShoulderButtonFocusNavigationGestureRecognizer *)v5 setAllowedPressTypes:&unk_1F3DB2C78];
  }

  return v5;
}

- (int64_t)preferredNavigationDirection
{
  if ([(SBHFocusNavigationGestureRecognizer *)self _viewIsRTL])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end