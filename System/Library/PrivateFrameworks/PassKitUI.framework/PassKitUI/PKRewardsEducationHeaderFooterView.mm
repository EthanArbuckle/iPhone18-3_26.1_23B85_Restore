@interface PKRewardsEducationHeaderFooterView
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKRewardsEducationHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation PKRewardsEducationHeaderFooterView

- (PKRewardsEducationHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = PKRewardsEducationHeaderFooterView;
  v3 = [(PKRewardsEducationHeaderFooterView *)&v11 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    labelView = v3->_labelView;
    v3->_labelView = v5;

    v7 = v3->_labelView;
    v8 = PKLocalizedFeatureString();
    [(UILabel *)v7 setText:v8];

    [(UILabel *)v3->_labelView setTextAlignment:1];
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD58], *MEMORY[0x1E69DDC30], 0, 0, *MEMORY[0x1E69DB958]);
    [(UILabel *)v3->_labelView setFont:v9];
    [(UILabel *)v3->_labelView setNumberOfLines:0];
    [(PKRewardsEducationHeaderFooterView *)v3 addSubview:v3->_labelView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKRewardsEducationHeaderFooterView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKRewardsEducationHeaderFooterView;
  [(PKRewardsEducationHeaderFooterView *)&v3 layoutSubviews];
  [(PKRewardsEducationHeaderFooterView *)self bounds];
  [(PKRewardsEducationHeaderFooterView *)self _layoutWithBounds:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v7 = bounds.size.width + -40.0;
  v8 = bounds.size.height + -20.0;
  [(UILabel *)self->_labelView sizeThatFits:bounds.size.width + -40.0, bounds.size.height + -20.0];
  v10 = v9;
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_labelView setFrame:x + 20.0, y + 0.0, v7, v8];
  }

  v11 = v10 + 0.0 + 20.0;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

@end