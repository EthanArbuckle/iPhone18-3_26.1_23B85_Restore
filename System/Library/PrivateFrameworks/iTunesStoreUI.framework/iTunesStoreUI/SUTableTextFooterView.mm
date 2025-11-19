@interface SUTableTextFooterView
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setFont:(id)a3;
- (void)setShadowColor:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
- (void)setTextLines:(id)a3;
- (void)sizeToFit;
@end

@implementation SUTableTextFooterView

- (void)dealloc
{
  self->_font = 0;

  self->_shadowColor = 0;
  self->_textColor = 0;

  self->_textLines = 0;
  v3.receiver = self;
  v3.super_class = SUTableTextFooterView;
  [(SUTableTextFooterView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)a3
{
  v24 = *MEMORY[0x1E69E9840];
  [(SUTableTextFooterView *)self bounds:a3.origin.x];
  v26 = CGRectInset(v25, 10.0, 0.0);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  textLines = self->_textLines;
  v9 = [(NSArray *)textLines countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = height + -26.0;
    v12 = y + 6.0;
    v13 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(textLines);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        shadowColor = self->_shadowColor;
        if (shadowColor)
        {
          [(UIColor *)shadowColor set];
          v17 = v12 + 1.0;
          [v15 _legacy_drawInRect:self->_font withFont:4 lineBreakMode:self->_textAlignment alignment:{x, v17, width, v11}];
          v12 = v17 + -1.0;
        }

        [(UIColor *)self->_textColor set];
        [v15 _legacy_drawInRect:self->_font withFont:4 lineBreakMode:self->_textAlignment alignment:{x, v12, width, v11}];
        v12 = v12 + v18 + 0.0;
        v11 = v11 - (v18 + 0.0);
      }

      v10 = [(NSArray *)textLines countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }
}

- (void)sizeToFit
{
  v21 = *MEMORY[0x1E69E9840];
  [(SUTableTextFooterView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = 26.0;
  if ([(NSArray *)self->_textLines count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    textLines = self->_textLines;
    v11 = [(NSArray *)textLines countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(textLines);
          }

          [*(*(&v16 + 1) + 8 * i) _legacy_sizeWithFont:self->_font constrainedToSize:4 lineBreakMode:{v8 + -20.0, 1.79769313e308}];
          v9 = v9 + v15;
        }

        v12 = [(NSArray *)textLines countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  [(SUTableTextFooterView *)self setFrame:v4, v6, v8, v9];
}

- (void)setFont:(id)a3
{
  font = self->_font;
  if (font != a3)
  {

    self->_font = a3;

    [(SUTableTextFooterView *)self setNeedsDisplay];
  }
}

- (void)setShadowColor:(id)a3
{
  shadowColor = self->_shadowColor;
  if (shadowColor != a3)
  {

    self->_shadowColor = a3;

    [(SUTableTextFooterView *)self setNeedsDisplay];
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(SUTableTextFooterView *)self setNeedsDisplay];
  }
}

- (void)setTextColor:(id)a3
{
  textColor = self->_textColor;
  if (textColor != a3)
  {

    self->_textColor = a3;

    [(SUTableTextFooterView *)self setNeedsDisplay];
  }
}

- (void)setTextLines:(id)a3
{
  textLines = self->_textLines;
  if (textLines != a3)
  {

    self->_textLines = a3;

    [(SUTableTextFooterView *)self setNeedsDisplay];
  }
}

@end