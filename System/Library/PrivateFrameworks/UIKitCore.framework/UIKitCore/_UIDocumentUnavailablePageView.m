@interface _UIDocumentUnavailablePageView
- (_UIDocumentUnavailablePageView)initWithFrame:(CGRect)a3;
@end

@implementation _UIDocumentUnavailablePageView

- (_UIDocumentUnavailablePageView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = _UIDocumentUnavailablePageView;
  v3 = [(UIView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor tertiarySystemBackgroundColor];
    v5 = [v4 colorWithAlphaComponent:0.8];
    [(UIView *)v3 setBackgroundColor:v5];

    [(UIView *)v3 setMaximumContentSizeCategory:@"UICTContentSizeCategoryAccessibilityL"];
    v6 = *MEMORY[0x1E69796E8];
    v7 = [(UIView *)v3 layer];
    [v7 setCornerCurve:v6];

    v8 = [(UIView *)v3 layer];
    LODWORD(v9) = 1028443341;
    [v8 setShadowOpacity:v9];

    v10 = [(UIView *)v3 layer];
    [v10 setShadowRadius:20.0];

    v11 = [(UIView *)v3 layer];
    [v11 setShadowOffset:{0.0, 4.0}];

    v12 = +[UIColor blackColor];
    v13 = [v12 CGColor];
    v14 = [(UIView *)v3 layer];
    [v14 setShadowColor:v13];

    LODWORD(v12) = _UISolariumEnabled();
    v15 = [(UIView *)v3 layer];
    v16 = v15;
    v17 = 32.0;
    if (!v12)
    {
      v17 = 13.0;
    }

    [v15 setCornerRadius:v17];
  }

  return v3;
}

@end