@interface SPUIGlassView
- (SPUIGlassView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SPUIGlassView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SPUIGlassView;
  [(SPUIGlassView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SPUIGlassView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SPUIGlassView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SPUIGlassView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
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

- (SPUIGlassView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SPUIGlassView;
  v3 = [(SPUIGlassView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [SPUIViewUtilities setGlassForView:v3 style:0];
  }

  return v3;
}

@end