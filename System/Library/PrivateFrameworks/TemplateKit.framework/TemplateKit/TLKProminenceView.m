@interface TLKProminenceView
+ (TLKProminenceView)viewWithProminence:(unint64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TLKProminenceView)initWithProminence:(unint64_t)a3;
- (double)borderWidth;
- (void)didMoveToWindow;
- (void)setBorderWidth:(double)a3;
- (void)setCustomColorAlpha:(double)a3;
- (void)setProminence:(unint64_t)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TLKProminenceView

- (double)borderWidth
{
  v2 = [(TLKProminenceView *)self layer];
  [v2 borderWidth];
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

+ (TLKProminenceView)viewWithProminence:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithProminence:a3];

  return v3;
}

- (TLKProminenceView)initWithProminence:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TLKProminenceView;
  result = [(TLKProminenceView *)&v5 init];
  if (result)
  {
    result->_prominence = a3;
  }

  return result;
}

- (void)setBorderWidth:(double)a3
{
  v5 = [(TLKProminenceView *)self layer];
  [v5 setBorderWidth:a3];

  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)setProminence:(unint64_t)a3
{
  if (self->_prominence != a3)
  {
    self->_prominence = a3;
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setCustomColorAlpha:(double)a3
{
  if (self->_customColorAlpha != a3)
  {
    self->_customColorAlpha = a3;
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKProminenceView;
  [(TLKProminenceView *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKProminenceView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKProminenceView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TLKProminenceView;
  [(UIView *)&v13 tlk_updateForAppearance:v4];
  v5 = [v4 colorForProminence:{-[TLKProminenceView prominence](self, "prominence")}];
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
    v11 = 0;
  }

  else
  {
    v11 = [v5 CGColor];
  }

  v12 = [(TLKProminenceView *)self layer];
  [v12 setBorderColor:v11];

  [v4 enableAppearanceForView:self];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

@end