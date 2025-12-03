@interface _UIDocumentUnavailablePageView
- (_UIDocumentUnavailablePageView)initWithFrame:(CGRect)frame;
@end

@implementation _UIDocumentUnavailablePageView

- (_UIDocumentUnavailablePageView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = _UIDocumentUnavailablePageView;
  v3 = [(UIView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor tertiarySystemBackgroundColor];
    v5 = [v4 colorWithAlphaComponent:0.8];
    [(UIView *)v3 setBackgroundColor:v5];

    [(UIView *)v3 setMaximumContentSizeCategory:@"UICTContentSizeCategoryAccessibilityL"];
    v6 = *MEMORY[0x1E69796E8];
    layer = [(UIView *)v3 layer];
    [layer setCornerCurve:v6];

    layer2 = [(UIView *)v3 layer];
    LODWORD(v9) = 1028443341;
    [layer2 setShadowOpacity:v9];

    layer3 = [(UIView *)v3 layer];
    [layer3 setShadowRadius:20.0];

    layer4 = [(UIView *)v3 layer];
    [layer4 setShadowOffset:{0.0, 4.0}];

    v12 = +[UIColor blackColor];
    cGColor = [v12 CGColor];
    layer5 = [(UIView *)v3 layer];
    [layer5 setShadowColor:cGColor];

    LODWORD(v12) = _UISolariumEnabled();
    layer6 = [(UIView *)v3 layer];
    v16 = layer6;
    v17 = 32.0;
    if (!v12)
    {
      v17 = 13.0;
    }

    [layer6 setCornerRadius:v17];
  }

  return v3;
}

@end