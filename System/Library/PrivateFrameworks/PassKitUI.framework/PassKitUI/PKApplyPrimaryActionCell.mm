@interface PKApplyPrimaryActionCell
- (CGSize)_layoutWithBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKApplyPrimaryActionCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setLoading:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation PKApplyPrimaryActionCell

- (PKApplyPrimaryActionCell)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = PKApplyPrimaryActionCell;
  v3 = [(PKApplyPrimaryActionCell *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKApplyPrimaryActionCell *)v3 contentView];
    objc_initWeak(&location, v4);
    v6 = MEMORY[0x1E69DC628];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __42__PKApplyPrimaryActionCell_initWithFrame___block_invoke;
    v18[3] = &unk_1E8012328;
    objc_copyWeak(&v20, &location);
    v7 = v4;
    v19 = v7;
    v8 = [v6 actionWithHandler:v18];
    v15 = 0x402C000000000000;
    v16 = xmmword_1BE0B69E0;
    v17 = vdupq_n_s64(2uLL);
    v9 = [[PKContinuousButton alloc] initWithConfiguration:&v15];
    v10 = v7[81];
    v7[81] = v9;

    [v7[81] setExclusiveTouch:1];
    [v7[81] setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
    v11 = [v7[81] titleLabel];
    [v11 setNumberOfLines:1];
    [v11 setAdjustsFontSizeToFitWidth:1];
    [v11 setTextAlignment:1];
    v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC38]);
    [v11 setFont:v12];

    [v11 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [v7[81] addAction:v8 forControlEvents:64];
    [v5 addSubview:v7[81]];
    v13 = [MEMORY[0x1E69DC888] clearColor];
    [v5 setBackgroundColor:v13];

    [v5 setDirectionalLayoutMargins:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __42__PKApplyPrimaryActionCell_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (*(*(a1 + 32) + 657) & 1) == 0 && WeakRetained[84])
  {
    v3 = WeakRetained;
    [WeakRetained setLoading:1];
    (*(v3[84] + 16))();
    WeakRetained = v3;
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  title = self->_title;
  v9 = v5;
  v7 = title;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_title, a3);
    [(PKContinuousButton *)self->_button setTitle:v9 forState:0];
    [(PKApplyPrimaryActionCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setLoading:(BOOL)a3
{
  if (self->_loading == !a3)
  {
    self->_loading = a3;
    [(PKContinuousButton *)self->_button setShowSpinner:?];
    button = self->_button;
    v5 = !self->_loading;

    [(PKContinuousButton *)button setEnabled:v5];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKApplyPrimaryActionCell;
  [(PKApplyPrimaryActionCell *)&v3 layoutSubviews];
  [(PKApplyPrimaryActionCell *)self bounds];
  [(PKApplyPrimaryActionCell *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  self->_isTemplateLayout = 1;
  [(PKApplyPrimaryActionCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3
{
  width = a3.size.width;
  [(PKContinuousButton *)self->_button sizeThatFits:a3.size.width, a3.size.height];
  if (v5 >= 50.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 50.0;
  }

  if (!self->_isTemplateLayout)
  {
    button = self->_button;
    PKSizeAlignedInRect();
    [(PKContinuousButton *)button setFrame:?];
  }

  v8 = width;
  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKApplyPrimaryActionCell;
  [(PKApplyPrimaryActionCell *)&v3 prepareForReuse];
  [(PKApplyPrimaryActionCell *)self setLoading:0];
  [(PKApplyPrimaryActionCell *)self setTitle:0];
  [(PKApplyPrimaryActionCell *)self setAction:0];
}

@end