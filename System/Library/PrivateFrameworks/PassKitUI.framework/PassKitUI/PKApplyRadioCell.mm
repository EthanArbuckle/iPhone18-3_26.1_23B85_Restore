@interface PKApplyRadioCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKApplyRadioCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setRadioButtonSelected:(BOOL)selected;
- (void)setTitle:(id)title;
@end

@implementation PKApplyRadioCell

- (PKApplyRadioCell)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = PKApplyRadioCell;
  v3 = [(PKApplyRadioCell *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PKApplyRadioCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    [(UILabel *)v4->_titleLabel setNumberOfLines:1];
    [(UILabel *)v4->_titleLabel setAdjustsFontSizeToFitWidth:1];
    v8 = v4->_titleLabel;
    v9 = *MEMORY[0x1E69DDCF8];
    v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
    [(UILabel *)v8 setFont:v10];

    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [contentView addSubview:v4->_titleLabel];
    objc_initWeak(&location, v4);
    v11 = MEMORY[0x1E69DC628];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __34__PKApplyRadioCell_initWithFrame___block_invoke;
    v26 = &unk_1E8010A60;
    objc_copyWeak(&v27, &location);
    v12 = [v11 actionWithHandler:&v23];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
    [plainButtonConfiguration setImage:v14];

    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [plainButtonConfiguration setBackground:clearConfiguration];
    [plainButtonConfiguration setContentInsets:{0.0, 0.0, 0.0, 0.0}];
    v16 = MEMORY[0x1E69DCAD8];
    v17 = PKFontForDefaultDesign(v9, 0, *MEMORY[0x1E69DB978]);
    v18 = [v16 configurationWithFont:v17];

    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v18];
    v19 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v12];
    button = v4->_button;
    v4->_button = v19;

    [(UIButton *)v4->_button setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
    [contentView addSubview:v4->_button];
    v21 = PKProvisioningSecondaryBackgroundColor();
    [contentView setBackgroundColor:v21];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __34__PKApplyRadioCell_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    (*(WeakRetained[85] + 16))();
    WeakRetained = v2;
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
    [(UILabel *)self->_titleLabel setText:self->_title];
    [(PKApplyRadioCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setRadioButtonSelected:(BOOL)selected
{
  if (self->_radioButtonSelected == !selected)
  {
    self->_radioButtonSelected = selected;
    if (selected)
    {
      v5 = @"checkmark.circle.fill";
    }

    else
    {
      v5 = @"circle";
    }

    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5];
    [(UIButton *)self->_button pkui_updateConfigurationWithImage:v6];
    [(PKApplyRadioCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKApplyRadioCell;
  [(PKApplyRadioCell *)&v3 layoutSubviews];
  [(PKApplyRadioCell *)self bounds];
  [(PKApplyRadioCell *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKApplyRadioCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = PKTableViewCellTextInset();
  v9 = x + v8;
  v21 = width;
  v22 = height;
  v10 = width - (v8 + v8);
  v11 = height + -24.0;
  if ([(PKApplyRadioCell *)self _shouldReverseLayoutDirection])
  {
    v12 = CGRectMinXEdge;
  }

  else
  {
    v12 = CGRectMaxXEdge;
  }

  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v9;
  remainder.origin.y = y + 12.0;
  remainder.size.width = v10;
  remainder.size.height = v11;
  [(UIButton *)self->_button sizeThatFits:v10, v11];
  if (v13 <= v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  v26.origin.x = v9;
  v26.origin.y = y + 12.0;
  v26.size.width = v10;
  v26.size.height = v11;
  CGRectDivide(v26, &slice, &remainder, v14, v12);
  if (!self->_isTemplateLayout)
  {
    button = self->_button;
    PKSizeAlignedInRect();
    [(UIButton *)button setFrame:?];
  }

  CGRectDivide(remainder, &slice, &remainder, 4.0, v12);
  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v17 = v16;
  CGRectDivide(remainder, &slice, &remainder, v16, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    titleLabel = self->_titleLabel;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)titleLabel setFrame:?];
  }

  CGRectDivide(remainder, &slice, &remainder, 12.0, CGRectMinYEdge);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = v21;
  v27.size.height = v22;
  v19 = CGRectGetWidth(v27);
  v20 = v17 + 12.0 + 12.0;
  result.height = v20;
  result.width = v19;
  return result;
}

@end