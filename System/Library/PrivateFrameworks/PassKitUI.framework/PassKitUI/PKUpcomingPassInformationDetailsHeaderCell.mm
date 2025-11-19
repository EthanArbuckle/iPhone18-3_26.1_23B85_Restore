@interface PKUpcomingPassInformationDetailsHeaderCell
- (CGRect)topLabelWithRespectTo:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKUpcomingPassInformationDetailsHeaderCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setOverlayAlpha:(double)a3;
- (void)setOverlayEffect:(id)a3;
- (void)setShadowColor:(id)a3;
@end

@implementation PKUpcomingPassInformationDetailsHeaderCell

- (PKUpcomingPassInformationDetailsHeaderCell)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = PKUpcomingPassInformationDetailsHeaderCell;
  v3 = [(PKDashboardCollectionViewCell *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardCollectionViewCell *)v3 setWantsCustomAppearance:1];
    v5 = [(PKUpcomingPassInformationDetailsHeaderCell *)v4 contentView];
    v6 = [PKSplashImageHeaderView alloc];
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [(PKSplashImageHeaderView *)v6 initWithFrame:*MEMORY[0x1E695F058], v8, v9, v10];
    headerView = v4->_headerView;
    v4->_headerView = v11;

    [(PKSplashImageHeaderView *)v4->_headerView setHidesIconImage:1];
    [v5 addSubview:v4->_headerView];
    v13 = [objc_alloc(MEMORY[0x1E69DD298]) initWithFrame:{v7, v8, v9, v10}];
    overlayEffectView = v4->_overlayEffectView;
    v4->_overlayEffectView = v13;

    [(UIVisualEffectView *)v4->_overlayEffectView setHidden:1];
    [(UIVisualEffectView *)v4->_overlayEffectView setAlpha:0.0];
    [v5 addSubview:v4->_overlayEffectView];
    v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v8, v9, v10}];
    shadowView = v4->_shadowView;
    v4->_shadowView = v15;

    [(UIView *)v4->_shadowView setHidden:1];
    [(UIView *)v4->_shadowView setAlpha:0.0];
    [v5 addSubview:v4->_shadowView];
    [(PKUpcomingPassInformationDetailsHeaderCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
  }

  return v4;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKUpcomingPassInformationDetailsHeaderCell;
  [(PKDashboardCollectionViewCell *)&v15 layoutSubviews];
  v3 = [(PKUpcomingPassInformationDetailsHeaderCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKSplashImageHeaderView *)self->_headerView setFrame:v5, v7, v9, v11];
  v12 = PKUIPixelLength();
  memset(&slice, 0, sizeof(slice));
  memset(&v13, 0, sizeof(v13));
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  CGRectDivide(v16, &slice, &v13, v12, CGRectMaxYEdge);
  [(UIView *)self->_shadowView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  [(UIVisualEffectView *)self->_overlayEffectView setFrame:*&v13.origin, *&v13.size];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKSplashImageHeaderView *)self->_headerView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)topLabelWithRespectTo:(id)a3
{
  [(PKSplashImageHeaderView *)self->_headerView topLabelWithRespectTo:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setOverlayEffect:(id)a3
{
  v5 = a3;
  if (self->_overlayEffect != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_overlayEffect, a3);
    [(UIVisualEffectView *)self->_overlayEffectView setEffect:self->_overlayEffect];
    [(UIVisualEffectView *)self->_overlayEffectView setHidden:self->_overlayEffect == 0];
    v5 = v6;
  }
}

- (void)setShadowColor:(id)a3
{
  v5 = a3;
  if (self->_shadowColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_shadowColor, a3);
    [(UIView *)self->_shadowView setBackgroundColor:self->_shadowColor];
    [(UIView *)self->_shadowView setHidden:self->_shadowColor == 0];
    v5 = v6;
  }
}

- (void)setOverlayAlpha:(double)a3
{
  if (self->_overlayAlpha != a3)
  {
    self->_overlayAlpha = a3;
    [(UIVisualEffectView *)self->_overlayEffectView setAlpha:?];
    shadowView = self->_shadowView;
    overlayAlpha = self->_overlayAlpha;

    [(UIView *)shadowView setAlpha:overlayAlpha];
  }
}

@end