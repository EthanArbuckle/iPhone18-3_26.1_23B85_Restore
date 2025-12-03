@interface _UIScrollViewScrollIndicatorFallbackVisualStyle
- ($600A803A2DA5524344F8C742CF1B11BB)valuesForLayoutSizeAnimationWhenExpanding:(SEL)expanding;
- (CGRect)hitTestingRectForIndicatorRect:(CGRect)rect;
- (UIEdgeInsets)cursorHitTestingInsets;
- (id)feedbackGeneratorWithView:(id)view;
- (id)fillView;
@end

@implementation _UIScrollViewScrollIndicatorFallbackVisualStyle

- (id)fillView
{
  v2 = objc_opt_new();

  return v2;
}

- (CGRect)hitTestingRectForIndicatorRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(_UIScrollViewScrollIndicatorFallbackVisualStyle *)self cursorHitTestingInsets];
  v8 = y + v7;
  v11 = width - (v9 + v10);
  v13 = height - (v7 + v12);
  v14 = x + v9;
  v15 = v8;
  v16 = v11;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (UIEdgeInsets)cursorHitTestingInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- ($600A803A2DA5524344F8C742CF1B11BB)valuesForLayoutSizeAnimationWhenExpanding:(SEL)expanding
{
  retstr->var4 = 0;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return self;
}

- (id)feedbackGeneratorWithView:(id)view
{
  viewCopy = view;
  v4 = [[_UIClickFeedbackGenerator alloc] initWithView:viewCopy];

  return v4;
}

@end