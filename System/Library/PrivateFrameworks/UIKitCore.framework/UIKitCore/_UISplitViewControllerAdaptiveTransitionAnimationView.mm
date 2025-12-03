@interface _UISplitViewControllerAdaptiveTransitionAnimationView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (void)initWithContentView:(void *)view;
@end

@implementation _UISplitViewControllerAdaptiveTransitionAnimationView

- (void)initWithContentView:(void *)view
{
  viewCopy = view;
  if (view)
  {
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
    [a2 bounds];
    v8.receiver = viewCopy;
    v8.super_class = _UISplitViewControllerAdaptiveTransitionAnimationView;
    v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, v4, v5);
    viewCopy = v6;
    if (v6)
    {
      [v6 setClipsToBounds:1];
      [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
      [viewCopy bounds];
      [a2 setFrame:?];
      [a2 setAutoresizingMask:18];
      [viewCopy addSubview:a2];
    }
  }

  return viewCopy;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if ([key isEqualToString:@"meshTransform"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = _UISplitViewControllerAdaptiveTransitionAnimationView;
  return [(UIView *)&v6 _shouldAnimatePropertyWithKey:key];
}

@end