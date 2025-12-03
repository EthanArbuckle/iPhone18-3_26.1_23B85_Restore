@interface _UIPanelControllerMeshAnimatingTransitionView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_UIPanelControllerMeshAnimatingTransitionView)initWithView:(id)view;
@end

@implementation _UIPanelControllerMeshAnimatingTransitionView

- (_UIPanelControllerMeshAnimatingTransitionView)initWithView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v8.receiver = self;
  v8.super_class = _UIPanelControllerMeshAnimatingTransitionView;
  v5 = [(UIView *)&v8 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setAutoresizesSubviews:1];
    [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v6 setClipsToBounds:1];
    [viewCopy setAutoresizingMask:18];
    [(UIView *)v6 bounds];
    [viewCopy setFrame:?];
    [(UIView *)v6 addSubview:viewCopy];
  }

  return v6;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"meshTransform"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIPanelControllerMeshAnimatingTransitionView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end