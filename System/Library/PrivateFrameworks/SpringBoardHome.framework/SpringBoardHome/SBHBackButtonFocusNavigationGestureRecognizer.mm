@interface SBHBackButtonFocusNavigationGestureRecognizer
- (SBHBackButtonFocusNavigationGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation SBHBackButtonFocusNavigationGestureRecognizer

- (SBHBackButtonFocusNavigationGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = SBHBackButtonFocusNavigationGestureRecognizer;
  v4 = [(SBHBackButtonFocusNavigationGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(SBHFocusNavigationGestureRecognizer *)v4 setOnlyAcceptsGameControllerEvents:1];
    [(SBHFocusNavigationGestureRecognizer *)v5 setRequiresFailureOfBuiltInFocusGestureRecognizers:1];
    [(SBHBackButtonFocusNavigationGestureRecognizer *)v5 setAllowedPressTypes:&unk_1F3DB2C48];
  }

  return v5;
}

@end