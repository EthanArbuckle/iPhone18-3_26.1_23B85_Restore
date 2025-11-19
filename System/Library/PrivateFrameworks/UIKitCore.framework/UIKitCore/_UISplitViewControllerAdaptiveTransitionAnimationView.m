@interface _UISplitViewControllerAdaptiveTransitionAnimationView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (void)initWithContentView:(void *)a1;
@end

@implementation _UISplitViewControllerAdaptiveTransitionAnimationView

- (void)initWithContentView:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
    [a2 bounds];
    v8.receiver = v2;
    v8.super_class = _UISplitViewControllerAdaptiveTransitionAnimationView;
    v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, v4, v5);
    v2 = v6;
    if (v6)
    {
      [v6 setClipsToBounds:1];
      [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v2 bounds];
      [a2 setFrame:?];
      [a2 setAutoresizingMask:18];
      [v2 addSubview:a2];
    }
  }

  return v2;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if ([a3 isEqualToString:@"meshTransform"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = _UISplitViewControllerAdaptiveTransitionAnimationView;
  return [(UIView *)&v6 _shouldAnimatePropertyWithKey:a3];
}

@end