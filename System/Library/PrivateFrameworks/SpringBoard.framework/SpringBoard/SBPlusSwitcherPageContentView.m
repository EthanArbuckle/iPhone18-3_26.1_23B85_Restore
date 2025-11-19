@interface SBPlusSwitcherPageContentView
- (SBPlusSwitcherPageContentView)initWithFrame:(CGRect)a3;
- (unint64_t)maskedCorners;
- (void)layoutSubviews;
- (void)setMaskedCorners:(unint64_t)a3;
@end

@implementation SBPlusSwitcherPageContentView

- (SBPlusSwitcherPageContentView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = SBPlusSwitcherPageContentView;
  v3 = [(SBPlusSwitcherPageContentView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D26718] materialViewWithRecipe:53 options:0];
    materialView = v3->_materialView;
    v3->_materialView = v4;

    [(SBPlusSwitcherPageContentView *)v3 addSubview:v3->_materialView];
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277D755D0] configurationWithPointSize:3 weight:34.0];
    v9 = [v7 systemImageNamed:@"plus" withConfiguration:v8];
    v10 = [v6 initWithImage:v9];
    plusImageView = v3->_plusImageView;
    v3->_plusImageView = v10;

    v12 = [(MTMaterialView *)v3->_materialView visualStylingProviderForCategory:1];
    [v12 automaticallyUpdateView:v3->_plusImageView withStyle:1];

    [(SBPlusSwitcherPageContentView *)v3 addSubview:v3->_plusImageView];
    v13 = [MEMORY[0x277D75348] clearColor];
    [(SBPlusSwitcherPageContentView *)v3 setBackgroundColor:v13];
  }

  return v3;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = SBPlusSwitcherPageContentView;
  [(SBPlusSwitcherPageContentView *)&v7 layoutSubviews];
  materialView = self->_materialView;
  [(SBPlusSwitcherPageContentView *)self bounds];
  [(MTMaterialView *)materialView setFrame:?];
  [(UIImageView *)self->_plusImageView sizeToFit];
  plusImageView = self->_plusImageView;
  [(SBPlusSwitcherPageContentView *)self bounds];
  UIRectGetCenter();
  [(UIImageView *)plusImageView setCenter:?];
  v5 = self->_plusImageView;
  CGAffineTransformMakeScale(&v6, 10.0, 10.0);
  [(UIImageView *)v5 setTransform:&v6];
}

- (void)setMaskedCorners:(unint64_t)a3
{
  v4 = [(MTMaterialView *)self->_materialView layer];
  [v4 setMaskedCorners:a3];
}

- (unint64_t)maskedCorners
{
  v2 = [(MTMaterialView *)self->_materialView layer];
  v3 = [v2 maskedCorners];

  return v3;
}

@end