@interface PKPaymentSetupProductCell
+ (id)reuseIdentifier;
- (PKPaymentSetupProductCell)init;
- (void)_updateDisplay;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)appearance;
- (void)setProduct:(id)product;
@end

@implementation PKPaymentSetupProductCell

- (void)pk_applyAppearance:(id)appearance
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupProductCell;
  [(PKTableViewCell *)&v3 pk_applyAppearance:appearance];
}

- (PKPaymentSetupProductCell)init
{
  reuseIdentifier = [objc_opt_class() reuseIdentifier];
  v8.receiver = self;
  v8.super_class = PKPaymentSetupProductCell;
  v4 = [(PKPaymentSetupProductCell *)&v8 initWithStyle:0 reuseIdentifier:reuseIdentifier];

  if (v4)
  {
    textLabel = [(PKPaymentSetupProductCell *)v4 textLabel];
    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
    [textLabel setFont:v6];
  }

  return v4;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)setProduct:(id)product
{
  productCopy = product;
  if (self->_product != productCopy)
  {
    v6 = productCopy;
    objc_storeStrong(&self->_product, product);
    [(PKPaymentSetupProductCell *)self _updateDisplay];
    productCopy = v6;
  }
}

- (void)_updateDisplay
{
  textLabel = [(PKPaymentSetupProductCell *)self textLabel];
  displayName = [(PKPaymentSetupProduct *)self->_product displayName];
  [textLabel setText:displayName];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKPaymentSetupProductCell;
  [(PKPaymentSetupProductCell *)&v14 layoutSubviews];
  if (self->_textLabelOffset > 0.0)
  {
    textLabel = [(PKPaymentSetupProductCell *)self textLabel];
    [textLabel frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    textLabelOffset = self->_textLabelOffset;
    v15.origin.x = textLabelOffset;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    Width = CGRectGetWidth(v15);
    [(PKPaymentSetupProductCell *)self bounds];
    if (Width >= CGRectGetWidth(v16) - self->_textLabelOffset)
    {
      [(PKPaymentSetupProductCell *)self bounds];
      v12 = CGRectGetWidth(v18) - self->_textLabelOffset;
    }

    else
    {
      v17.origin.x = textLabelOffset;
      v17.origin.y = v5;
      v17.size.width = v7;
      v17.size.height = v9;
      v12 = CGRectGetWidth(v17);
    }

    textLabel2 = [(PKPaymentSetupProductCell *)self textLabel];
    [textLabel2 setFrame:{textLabelOffset, v5, v12, v9}];
  }
}

- (void)drawRect:(CGRect)rect
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupProductCell;
  [(PKPaymentSetupProductCell *)&v9 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (self->_drawsTopSeperator)
  {
    [(PKPaymentSetupProductCell *)self contentScaleFactor];
    v5 = 1.0 / v4;
    CurrentContext = UIGraphicsGetCurrentContext();
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    CGContextSetFillColorWithColor(CurrentContext, [separatorColor CGColor]);

    v8 = UIGraphicsGetCurrentContext();
    [(PKPaymentSetupProductCell *)self bounds];
    v11.size.width = CGRectGetWidth(v10);
    v11.origin.x = 0.0;
    v11.origin.y = 0.0;
    v11.size.height = v5;
    CGContextFillRect(v8, v11);
  }
}

@end