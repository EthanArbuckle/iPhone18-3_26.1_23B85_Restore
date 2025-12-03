@interface TLKProminenceView
+ (TLKProminenceView)viewWithProminence:(unint64_t)prominence;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TLKProminenceView)initWithProminence:(unint64_t)prominence;
- (double)borderWidth;
- (void)didMoveToWindow;
- (void)setBorderWidth:(double)width;
- (void)setCustomColorAlpha:(double)alpha;
- (void)setProminence:(unint64_t)prominence;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TLKProminenceView

- (double)borderWidth
{
  layer = [(TLKProminenceView *)self layer];
  [layer borderWidth];
  v4 = v3;

  return v4;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TLKProminenceView;
  [(TLKProminenceView *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

+ (TLKProminenceView)viewWithProminence:(unint64_t)prominence
{
  v3 = [[self alloc] initWithProminence:prominence];

  return v3;
}

- (TLKProminenceView)initWithProminence:(unint64_t)prominence
{
  v5.receiver = self;
  v5.super_class = TLKProminenceView;
  result = [(TLKProminenceView *)&v5 init];
  if (result)
  {
    result->_prominence = prominence;
  }

  return result;
}

- (void)setBorderWidth:(double)width
{
  layer = [(TLKProminenceView *)self layer];
  [layer setBorderWidth:width];

  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)setProminence:(unint64_t)prominence
{
  if (self->_prominence != prominence)
  {
    self->_prominence = prominence;
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setCustomColorAlpha:(double)alpha
{
  if (self->_customColorAlpha != alpha)
  {
    self->_customColorAlpha = alpha;
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKProminenceView;
  [(TLKProminenceView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKProminenceView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKProminenceView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v13.receiver = self;
  v13.super_class = TLKProminenceView;
  [(UIView *)&v13 tlk_updateForAppearance:appearanceCopy];
  v5 = [appearanceCopy colorForProminence:{-[TLKProminenceView prominence](self, "prominence")}];
  [(TLKProminenceView *)self customColorAlpha];
  if (v6 != 0.0)
  {
    [(TLKProminenceView *)self customColorAlpha];
    v7 = [v5 colorWithAlphaComponent:?];

    v5 = v7;
  }

  [(TLKProminenceView *)self borderWidth];
  v9 = v8;
  if (v8 == 0.0)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  [(TLKProminenceView *)self setBackgroundColor:v10];
  if (v9 == 0.0)
  {
    cGColor = 0;
  }

  else
  {
    cGColor = [v5 CGColor];
  }

  layer = [(TLKProminenceView *)self layer];
  [layer setBorderColor:cGColor];

  [appearanceCopy enableAppearanceForView:self];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

@end