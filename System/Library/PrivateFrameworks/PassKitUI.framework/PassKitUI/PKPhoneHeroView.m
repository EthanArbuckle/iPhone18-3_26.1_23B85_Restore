@interface PKPhoneHeroView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPhoneHeroView)initWithFrame:(CGRect)a3;
- (double)deviceCornerRadius;
- (void)_updateCornerRadius;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKPhoneHeroView

- (PKPhoneHeroView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PKPhoneHeroView;
  v3 = [(PKPhoneHeroView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKPhoneHeroView *)v3 layer];
    [v5 setCornerCurve:*MEMORY[0x1E69796E8]];
    [v5 setShadowRadius:25.0];
    LODWORD(v6) = 1042536202;
    [v5 setShadowOpacity:v6];
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    [v5 setShadowColor:{objc_msgSend(v7, "CGColor")}];

    [v5 setMasksToBounds:0];
    [v5 setShadowOffset:{0.0, 4.0}];
    v8 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    [(PKPhoneHeroView *)v4 setBackgroundColor:v8];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPhoneHeroView;
  [(PKPhoneHeroView *)&v4 traitCollectionDidChange:a3];
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
  v8 = [(PKPhoneHeroView *)self traitCollection];
  [v8 displayCornerRadius];
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
  v3 = [(PKPhoneHeroView *)self layer];
  [(PKPhoneHeroView *)self deviceCornerRadius];
  [v3 setCornerRadius:?];
}

@end