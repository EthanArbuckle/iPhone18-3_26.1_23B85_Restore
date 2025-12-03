@interface PKPhoneHeroView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPhoneHeroView)initWithFrame:(CGRect)frame;
- (double)deviceCornerRadius;
- (void)_updateCornerRadius;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKPhoneHeroView

- (PKPhoneHeroView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PKPhoneHeroView;
  v3 = [(PKPhoneHeroView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PKPhoneHeroView *)v3 layer];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer setShadowRadius:25.0];
    LODWORD(v6) = 1042536202;
    [layer setShadowOpacity:v6];
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    [layer setShadowColor:{objc_msgSend(v7, "CGColor")}];

    [layer setMasksToBounds:0];
    [layer setShadowOffset:{0.0, 4.0}];
    tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    [(PKPhoneHeroView *)v4 setBackgroundColor:tertiarySystemBackgroundColor];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  PKUIGetMinScreenType();

  PKSizeAspectFit();
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPhoneHeroView;
  [(PKPhoneHeroView *)&v3 layoutSubviews];
  [(PKPhoneHeroView *)self _updateCornerRadius];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PKPhoneHeroView;
  [(PKPhoneHeroView *)&v4 traitCollectionDidChange:change];
  [(PKPhoneHeroView *)self _updateCornerRadius];
}

- (double)deviceCornerRadius
{
  v3 = PKUIGetMinScreenType();
  v4 = (&unk_1BE115CB0 + 8 * v3);
  if (v3 >= 0x14)
  {
    v4 = MEMORY[0x1E695F060];
  }

  v5 = *v4;
  [(PKPhoneHeroView *)self bounds];
  v7 = v6;
  traitCollection = [(PKPhoneHeroView *)self traitCollection];
  [traitCollection displayCornerRadius];
  v10 = v9;

  if (v10 == 0.0)
  {
    PKScreenScale();
    v10 = v11 * 8.0;
  }

  return v7 / v5 * v10;
}

- (void)_updateCornerRadius
{
  layer = [(PKPhoneHeroView *)self layer];
  [(PKPhoneHeroView *)self deviceCornerRadius];
  [layer setCornerRadius:?];
}

@end