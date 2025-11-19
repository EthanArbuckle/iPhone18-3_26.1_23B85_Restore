@interface UIView(StatusBarAdditions_Internal)
- (void)_ui_addToView:()StatusBarAdditions_Internal atIndex:;
@end

@implementation UIView(StatusBarAdditions_Internal)

- (void)_ui_addToView:()StatusBarAdditions_Internal atIndex:
{
  v8 = a3;
  if (a4 < 0)
  {
    v6 = [a1 superview];

    v7 = v8;
    if (v6 == v8)
    {
      goto LABEL_6;
    }

    [v8 addSubview:a1];
  }

  else
  {
    [v8 insertSubview:a1 atIndex:a4];
  }

  v7 = v8;
LABEL_6:
}

@end