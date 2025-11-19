@interface PKHeroCardWatchExplainationHeaderView
- (CGSize)recommendedCardImageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKHeroCardWatchExplainationHeaderView)init;
- (id)_deviceBackgroundColor;
- (void)layoutSubviews;
- (void)setCardImage:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKHeroCardWatchExplainationHeaderView

- (PKHeroCardWatchExplainationHeaderView)init
{
  v11.receiver = self;
  v11.super_class = PKHeroCardWatchExplainationHeaderView;
  v2 = [(PKHeroCardWatchExplainationHeaderView *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(PKHeroCardWatchExplainationHeaderView *)v2 _deviceBackgroundColor];
    [(PKHeroCardWatchExplainationHeaderView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(PKWatchHeroImageView);
    watchView = v3->_watchView;
    v3->_watchView = v5;

    [(PKHeroCardWatchExplainationHeaderView *)v3 addSubview:v3->_watchView];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    passImageView = v3->_passImageView;
    v3->_passImageView = v8;

    [(UIImageView *)v3->_passImageView setAccessibilityIgnoresInvertColors:1];
    [(PKWatchHeroImageView *)v3->_watchView addSubview:v3->_passImageView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PKWatchHeroImageView *)self->_watchView sizeThatFits:a3.width, a3.height];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKHeroCardWatchExplainationHeaderView;
  [(PKHeroCardWatchExplainationHeaderView *)&v6 layoutSubviews];
  [(PKHeroCardWatchExplainationHeaderView *)self bounds];
  [(PKWatchHeroImageView *)self->_watchView sizeThatFits:v3, v4];
  [(PKWatchHeroImageView *)self->_watchView frame];
  PKRectCenteredIntegralRect();
  [(PKWatchHeroImageView *)self->_watchView setFrame:?];
  passImageView = self->_passImageView;
  [(PKWatchHeroImageView *)self->_watchView cardFrame];
  [(UIImageView *)passImageView setFrame:?];
}

- (void)setCardImage:(id)a3
{
  objc_storeStrong(&self->_cardImage, a3);
  v5 = a3;
  [(UIImageView *)self->_passImageView setImage:v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKHeroCardWatchExplainationHeaderView;
  [(PKHeroCardWatchExplainationHeaderView *)&v5 traitCollectionDidChange:a3];
  v4 = [(PKHeroCardWatchExplainationHeaderView *)self _deviceBackgroundColor];
  [(PKHeroCardWatchExplainationHeaderView *)self setBackgroundColor:v4];
}

- (id)_deviceBackgroundColor
{
  v2 = [(PKHeroCardWatchExplainationHeaderView *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    PKProvisioningBackgroundColor();
  }

  else
  {
    PKProvisioningSecondaryBackgroundColor();
  }
  v4 = ;

  return v4;
}

- (CGSize)recommendedCardImageSize
{
  [(PKWatchHeroImageView *)self->_watchView cardFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

@end