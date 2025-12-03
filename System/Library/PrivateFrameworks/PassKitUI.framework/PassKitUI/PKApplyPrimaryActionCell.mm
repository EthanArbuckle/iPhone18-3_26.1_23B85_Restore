@interface PKApplyPrimaryActionCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKApplyPrimaryActionCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setLoading:(BOOL)loading;
- (void)setTitle:(id)title;
@end

@implementation PKApplyPrimaryActionCell

- (PKApplyPrimaryActionCell)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = PKApplyPrimaryActionCell;
  v3 = [(PKApplyPrimaryActionCell *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PKApplyPrimaryActionCell *)v3 contentView];
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
    titleLabel = [v7[81] titleLabel];
    [titleLabel setNumberOfLines:1];
    [titleLabel setAdjustsFontSizeToFitWidth:1];
    [titleLabel setTextAlignment:1];
    v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC38]);
    [titleLabel setFont:v12];

    [titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [v7[81] addAction:v8 forControlEvents:64];
    [contentView addSubview:v7[81]];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [contentView setBackgroundColor:clearColor];

    [contentView setDirectionalLayoutMargins:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  v9 = titleCopy;
  titleCopy2 = title;
  if (titleCopy2 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !titleCopy2)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:titleCopy2];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_title, title);
    [(PKContinuousButton *)self->_button setTitle:v9 forState:0];
    [(PKApplyPrimaryActionCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setLoading:(BOOL)loading
{
  if (self->_loading == !loading)
  {
    self->_loading = loading;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKApplyPrimaryActionCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  width = bounds.size.width;
  [(PKContinuousButton *)self->_button sizeThatFits:bounds.size.width, bounds.size.height];
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