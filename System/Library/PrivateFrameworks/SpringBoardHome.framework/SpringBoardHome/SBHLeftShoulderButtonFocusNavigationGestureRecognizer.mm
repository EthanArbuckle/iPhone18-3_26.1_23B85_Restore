@interface SBHLeftShoulderButtonFocusNavigationGestureRecognizer
- (SBHLeftShoulderButtonFocusNavigationGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (int64_t)preferredNavigationDirection;
@end

@implementation SBHLeftShoulderButtonFocusNavigationGestureRecognizer

- (SBHLeftShoulderButtonFocusNavigationGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = SBHLeftShoulderButtonFocusNavigationGestureRecognizer;
  v4 = [(SBHLeftShoulderButtonFocusNavigationGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(SBHFocusNavigationGestureRecognizer *)v4 setOnlyAcceptsGameControllerEvents:1];
    [(SBHFocusNavigationGestureRecognizer *)v5 setRequiresFailureOfBuiltInFocusGestureRecognizers:1];
    [(SBHLeftShoulderButtonFocusNavigationGestureRecognizer *)v5 setAllowedPressTypes:&unk_1F3DB2C60];
  }

  return v5;
}

- (int64_t)preferredNavigationDirection
{
  if ([(SBHFocusNavigationGestureRecognizer *)self _viewIsRTL])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end