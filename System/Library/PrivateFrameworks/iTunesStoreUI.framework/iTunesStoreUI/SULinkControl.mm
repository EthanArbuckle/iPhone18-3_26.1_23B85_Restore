@interface SULinkControl
- (id)_label;
- (void)_updateLabel;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setShouldDrawUnderline:(BOOL)underline;
- (void)setStyle:(int64_t)style;
- (void)setText:(id)text;
- (void)sizeToFit;
@end

@implementation SULinkControl

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SULinkControl;
  [(SULinkControl *)&v3 dealloc];
}

- (void)setShouldDrawUnderline:(BOOL)underline
{
  if (self->_shouldDrawUnderline != underline)
  {
    self->_shouldDrawUnderline = underline;
    [(SULinkControl *)self setNeedsDisplay];
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(SULinkControl *)self _updateLabel];
  }
}

- (void)setText:(id)text
{
  _label = [(SULinkControl *)self _label];

  [_label setText:text];
}

- (void)drawRect:(CGRect)rect
{
  if ([(SULinkControl *)self isHighlighted:rect.origin.x])
  {
    [objc_msgSend(MEMORY[0x1E69DC888] colorWithWhite:0.0980392157 alpha:{0.300000012), "set"}];
    v4 = MEMORY[0x1E69DC728];
    [(SULinkControl *)self bounds];
    v5 = [v4 roundedRectBezierPath:255 withRoundedCorners:? withCornerRadius:?];

    [v5 fill];
  }

  else if (self->_shouldDrawUnderline)
  {
    [(UILabel *)self->_label frame];
    x = v14.origin.x;
    width = v14.size.width;
    MaxY = CGRectGetMaxY(v14);
    [(UIColor *)[(UILabel *)self->_label textColor] set];
    v15.size.height = 1.0;
    v15.origin.x = x;
    v15.origin.y = MaxY;
    v15.size.width = width;
    UIRectFill(v15);
    [(UIColor *)[(UILabel *)self->_label shadowColor] set];
    v10 = 1.0;
    v11 = x;
    v12 = width;

    v9 = MaxY + 1.0;
    UIRectFill(*&v11);
  }
}

- (void)layoutSubviews
{
  [(SULinkControl *)self bounds];
  label = self->_label;
  v6 = CGRectInset(v5, 3.0, 3.0);

  [(UILabel *)label setFrame:v6.origin.x, v6.origin.y, v6.size.width, v6.size.height];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = SULinkControl;
  [(SULinkControl *)&v6 setHighlighted:?];
  _label = [(SULinkControl *)self _label];
  [_label setHighlighted:highlightedCopy];
  if (highlightedCopy)
  {
    [_label setShadowColor:0];
  }

  else
  {
    [(SULinkControl *)self _updateLabel];
  }

  [(SULinkControl *)self setNeedsDisplay];
}

- (void)sizeToFit
{
  [(SULinkControl *)self frame];
  v4 = v3;
  v6 = v5;
  _label = [(SULinkControl *)self _label];
  [_label sizeToFit];
  [_label frame];
  v9 = v8 + 6.0;
  v11 = v10 + 6.0;

  [(SULinkControl *)self setFrame:v4, v6, v11, v9];
}

- (id)_label
{
  result = self->_label;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    self->_label = v4;
    [(UILabel *)v4 setBackgroundColor:0];
    [(UILabel *)self->_label setOpaque:0];
    [(SULinkControl *)self _updateLabel];
    [(SULinkControl *)self addSubview:self->_label];
    return self->_label;
  }

  return result;
}

- (void)_updateLabel
{
  style = self->_style;
  label = self->_label;
  if (style == 3)
  {
    -[UILabel setFont:](label, "setFont:", [MEMORY[0x1E69DB878] boldSystemFontOfSize:13.0]);
    -[UILabel setHighlightedTextColor:](self->_label, "setHighlightedTextColor:", [MEMORY[0x1E69DC888] whiteColor]);
    -[UILabel setShadowColor:](self->_label, "setShadowColor:", [MEMORY[0x1E69DC888] whiteColor]);
    [(UILabel *)self->_label setShadowOffset:0.0, 1.0];
    v5 = self->_label;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    if (style == 2)
    {
      -[UILabel setFont:](label, "setFont:", [MEMORY[0x1E69DB878] boldSystemFontOfSize:14.0]);
      -[UILabel setHighlightedTextColor:](self->_label, "setHighlightedTextColor:", [MEMORY[0x1E69DC888] whiteColor]);
      -[UILabel setShadowColor:](self->_label, "setShadowColor:", [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5]);
      [(UILabel *)self->_label setShadowOffset:0.0, 1.0];
      v5 = self->_label;
      v6 = MEMORY[0x1E69DC888];
      v7 = 0.145098039;
      v8 = 0.196078431;
      v9 = 0.262745098;
    }

    else if (style == 1)
    {
      -[UILabel setFont:](label, "setFont:", [MEMORY[0x1E69DB878] systemFontOfSize:13.0]);
      -[UILabel setHighlightedTextColor:](self->_label, "setHighlightedTextColor:", [MEMORY[0x1E69DC888] whiteColor]);
      [(UILabel *)self->_label setShadowColor:0];
      v5 = self->_label;
      v6 = MEMORY[0x1E69DC888];
      v7 = 0.0470588235;
      v8 = 0.235294118;
      v9 = 0.964705882;
    }

    else
    {
      -[UILabel setFont:](label, "setFont:", [MEMORY[0x1E69DB878] boldSystemFontOfSize:14.0]);
      -[UILabel setHighlightedTextColor:](self->_label, "setHighlightedTextColor:", [MEMORY[0x1E69DC888] whiteColor]);
      -[UILabel setShadowColor:](self->_label, "setShadowColor:", [MEMORY[0x1E69DC888] whiteColor]);
      [(UILabel *)self->_label setShadowOffset:0.0, 1.0];
      v5 = self->_label;
      v6 = MEMORY[0x1E69DC888];
      v7 = 0.141176471;
      v8 = 0.219607843;
      v9 = 0.321568627;
    }

    blackColor = [v6 colorWithRed:v7 green:v8 blue:v9 alpha:1.0];
  }

  [(UILabel *)v5 setTextColor:blackColor];
}

@end