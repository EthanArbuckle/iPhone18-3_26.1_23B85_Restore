@interface _UIScrollViewScrollIndicatorVisualStyle_iOS
- ($600A803A2DA5524344F8C742CF1B11BB)valuesForLayoutSizeAnimationWhenExpanding:(SEL)expanding;
- (CGRect)hitTestingRectForIndicatorRect:(CGRect)rect;
- (UIEdgeInsets)cursorHitTestingInsets;
- (id)colorForIndicatorStyle:(int64_t)style expanded:(BOOL)expanded;
- (id)feedbackGeneratorWithView:(id)view;
- (id)fillView;
@end

@implementation _UIScrollViewScrollIndicatorVisualStyle_iOS

- (id)fillView
{
  v2 = objc_opt_new();
  v3 = *MEMORY[0x1E69796E8];
  layer = [v2 layer];
  [layer setCornerCurve:v3];

  return v2;
}

- (UIEdgeInsets)cursorHitTestingInsets
{
  v2 = -5.0;
  v3 = -10.0;
  v4 = -5.0;
  v5 = -10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)hitTestingRectForIndicatorRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(_UIScrollViewScrollIndicatorVisualStyle_iOS *)self cursorHitTestingInsets];
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

- (id)colorForIndicatorStyle:(int64_t)style expanded:(BOOL)expanded
{
  switch(style)
  {
    case 0:
      v5 = 0.35;
      v4 = 0.0;
      goto LABEL_8;
    case 2:
      v4 = 1.0;
      goto LABEL_6;
    case 1:
      v4 = 0.0;
LABEL_6:
      v5 = 0.5;
LABEL_8:
      v6 = [UIColor colorWithWhite:v4 alpha:v5];
      goto LABEL_10;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- ($600A803A2DA5524344F8C742CF1B11BB)valuesForLayoutSizeAnimationWhenExpanding:(SEL)expanding
{
  v4 = 0.3;
  if (a4)
  {
    v4 = 0.2;
  }

  retstr->var0 = v4;
  *&retstr->var1 = xmmword_18A64B720;
  retstr->var3 = 0.0;
  retstr->var4 = 0;
  return self;
}

- (id)feedbackGeneratorWithView:(id)view
{
  viewCopy = view;
  v4 = [[_UIClickFeedbackGenerator alloc] initWithView:viewCopy];

  return v4;
}

@end