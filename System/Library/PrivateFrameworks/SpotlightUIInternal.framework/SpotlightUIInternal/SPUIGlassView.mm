@interface SPUIGlassView
- (SPUIGlassView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SPUIGlassView

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SPUIGlassView;
  [(SPUIGlassView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SPUIGlassView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SPUIGlassView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SPUIGlassView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SPUIGlassView;
  [(SPUIGlassView *)&v3 didMoveToWindow];
  [(SPUIGlassView *)self tlk_updateWithCurrentAppearance];
}

- (SPUIGlassView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SPUIGlassView;
  v3 = [(SPUIGlassView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    [SPUIViewUtilities setGlassForView:v3 style:0];
  }

  return v3;
}

@end