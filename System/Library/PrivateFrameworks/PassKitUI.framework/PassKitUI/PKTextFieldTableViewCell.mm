@interface PKTextFieldTableViewCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKTextFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation PKTextFieldTableViewCell

- (PKTextFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = PKTextFieldTableViewCell;
  v4 = [(PKTextFieldTableViewCell *)&v10 initWithStyle:1 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD0B0]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    textField = v4->_textField;
    v4->_textField = v6;

    [(UITextField *)v4->_textField setAdjustsFontSizeToFitWidth:1];
    contentView = [(PKTextFieldTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_textField];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKTextFieldTableViewCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKTextFieldTableViewCell;
  [(PKTextFieldTableViewCell *)&v12 layoutSubviews];
  contentView = [(PKTextFieldTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKTextFieldTableViewCell *)self _layoutWithBounds:v5, v7, v9, v11];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(PKTextFieldTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v8 = CGRectMaxXEdge;
  }

  else
  {
    v8 = CGRectMinXEdge;
  }

  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v10 = v9;
  v12 = v11;
  v14 = x + v13;
  remainder.origin.x = x + v13;
  remainder.origin.y = y + v9;
  remainder.size.width = width - (v13 + v15);
  remainder.size.height = height - (v9 + v11);
  memset(&slice, 0, sizeof(slice));
  textLabel = [(PKTextFieldTableViewCell *)self textLabel];
  [textLabel pkui_sizeThatFits:{remainder.size.width, remainder.size.height}];
  v18 = v17;
  v25 = v19;
  v30.origin.x = v14;
  v30.origin.y = remainder.origin.y;
  v30.size.width = remainder.size.width;
  v30.size.height = remainder.size.height;
  CGRectDivide(v30, &slice, &remainder, v18, v8);
  if (!self->_isTemplateLayout)
  {
    [textLabel setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
  }

  if (v18 > 0.0)
  {
    CGRectDivide(remainder, &slice, &remainder, 8.0, v8);
  }

  [(UITextField *)self->_textField sizeThatFits:remainder.size.width, remainder.size.height, v25];
  v21 = v20;
  if (!self->_isTemplateLayout)
  {
    [(UITextField *)self->_textField setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
  }

  v31.origin.y = y;
  v31.origin.x = x;
  v31.size.width = width;
  v31.size.height = height;
  v22 = CGRectGetWidth(v31);

  v23 = v22;
  v24 = v12 + v10 + fmax(v26, v21);
  result.height = v24;
  result.width = v23;
  return result;
}

@end