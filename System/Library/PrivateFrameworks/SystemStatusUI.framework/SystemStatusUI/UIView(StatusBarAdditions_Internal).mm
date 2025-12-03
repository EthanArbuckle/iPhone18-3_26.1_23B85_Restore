@interface UIView(StatusBarAdditions_Internal)
- (void)_ui_addToView:()StatusBarAdditions_Internal atIndex:;
@end

@implementation UIView(StatusBarAdditions_Internal)

- (void)_ui_addToView:()StatusBarAdditions_Internal atIndex:
{
  v8 = a3;
  if (a4 < 0)
  {
    superview = [self superview];

    v7 = v8;
    if (superview == v8)
    {
      goto LABEL_6;
    }

    [v8 addSubview:self];
  }

  else
  {
    [v8 insertSubview:self atIndex:a4];
  }

  v7 = v8;
LABEL_6:
}

@end