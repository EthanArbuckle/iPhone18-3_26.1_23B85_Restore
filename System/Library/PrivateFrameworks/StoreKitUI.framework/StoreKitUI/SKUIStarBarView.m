@interface SKUIStarBarView
- (CGSize)sizeThatFits:(CGSize)result;
- (SKUIStarBarView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setColoringUsingStyle:(id)a3;
- (void)setEmptyColor:(id)a3;
- (void)setFilledColor:(id)a3;
- (void)setNumberOfStars:(int64_t)a3;
- (void)setValue:(double)a3;
@end

@implementation SKUIStarBarView

- (SKUIStarBarView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStarBarView initWithFrame:];
  }

  v14.receiver = self;
  v14.super_class = SKUIStarBarView;
  v8 = [(SKUIStarBarView *)&v14 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.05];
    emptyColor = v8->_emptyColor;
    v8->_emptyColor = v9;

    v11 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
    filledColor = v8->_filledColor;
    v8->_filledColor = v11;

    [(SKUIStarBarView *)v8 setContentMode:3];
  }

  return v8;
}

- (void)setColoringUsingStyle:(id)a3
{
  v4 = a3;
  v5 = [v4 ikBackgroundColor];
  v12 = [v5 color];

  v6 = [v4 ikColor];

  v7 = [v6 color];

  if (v12 && v7)
  {
    [(SKUIStarBarView *)self setEmptyColor:v12];
LABEL_7:
    [(SKUIStarBarView *)self setFilledColor:v7];
    goto LABEL_8;
  }

  if (v7)
  {
    v8 = SKUIColorSchemeStyleForColor(v7);
    if (v8 <= 3)
    {
      v9 = [v7 colorWithAlphaComponent:dbl_215F3FF90[v8]];
      [(SKUIStarBarView *)self setEmptyColor:v9];
    }

    goto LABEL_7;
  }

  v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.05];
  [(SKUIStarBarView *)self setEmptyColor:v10];

  v11 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
  [(SKUIStarBarView *)self setFilledColor:v11];

LABEL_8:
}

- (void)setEmptyColor:(id)a3
{
  if (self->_emptyColor != a3)
  {
    v4 = [a3 copy];
    emptyColor = self->_emptyColor;
    self->_emptyColor = v4;

    emptyStarImage = self->_emptyStarImage;
    self->_emptyStarImage = 0;

    filledStarImage = self->_filledStarImage;
    self->_filledStarImage = 0;

    [(SKUIStarBarView *)self setNeedsDisplay];
  }
}

- (void)setFilledColor:(id)a3
{
  if (self->_filledColor != a3)
  {
    v4 = [a3 copy];
    filledColor = self->_filledColor;
    self->_filledColor = v4;

    emptyStarImage = self->_emptyStarImage;
    self->_emptyStarImage = 0;

    filledStarImage = self->_filledStarImage;
    self->_filledStarImage = 0;

    [(SKUIStarBarView *)self setNeedsDisplay];
  }
}

- (void)setNumberOfStars:(int64_t)a3
{
  if (self->_numberOfStars != a3)
  {
    self->_numberOfStars = a3;
    [(SKUIStarBarView *)self setNeedsDisplay];
  }
}

- (void)setValue:(double)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
    [(SKUIStarBarView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  [(SKUIStarBarView *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  emptyColor = self->_emptyColor;
  if (emptyColor)
  {
    v14 = emptyColor;
  }

  else
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.05];
  }

  v47 = v14;
  filledColor = self->_filledColor;
  if (filledColor)
  {
    v16 = filledColor;
  }

  else
  {
    v16 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
  }

  v17 = v16;
  if (!self->_emptyStarImage)
  {
    v18 = MEMORY[0x277D755B8];
    v19 = SKUIBundle();
    v20 = [v18 imageNamed:@"SmallStarFull" inBundle:v19];

    v21 = [v20 _flatImageWithColor:v47];
    emptyStarImage = self->_emptyStarImage;
    self->_emptyStarImage = v21;

    v23 = [v20 _flatImageWithColor:v17];
    filledStarImage = self->_filledStarImage;
    self->_filledStarImage = v23;
  }

  v25 = 0.0;
  if (ShouldReverseLayoutDirection)
  {
    v49.origin.x = v5;
    v49.origin.y = v7;
    v49.size.width = v9;
    v49.size.height = v11;
    Width = CGRectGetWidth(v49);
    [(UIImage *)self->_emptyStarImage size];
    v25 = Width - v27;
  }

  v28 = -5;
  do
  {
    v29 = self->_emptyStarImage;
    if (v28 + 6 > 5 - self->_numberOfStars)
    {
      v30 = self->_filledStarImage;

      v29 = v30;
    }

    [(UIImage *)v29 size];
    v32 = v31;
    *&v31 = (v11 - v33) * 0.5;
    [(UIImage *)v29 drawAtPoint:v25, floorf(*&v31)];
    v34 = __CFADD__(v28++, 1);
    v35 = v25 - v32;
    if (v34)
    {
      v35 = v25;
    }

    if (ShouldReverseLayoutDirection)
    {
      v25 = v35;
    }

    else
    {
      v25 = v25 + v32;
    }
  }

  while (v28);
  v36 = 0.0;
  if (ShouldReverseLayoutDirection)
  {
    v37 = v25 + -9.0;
  }

  else
  {
    v36 = v25 + 9.0;
    v37 = v9 - (v25 + 9.0);
  }

  v38 = (v11 + -2.0) * 0.5;
  v39 = floorf(v38);
  v40 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v36 cornerRadius:{v39, v37, 2.0, 2.0}];
  [(UIColor *)v47 set];
  [v40 fill];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  value = self->_value;
  v43 = v25 + -9.0 - (v25 + -9.0) * value;
  if (!ShouldReverseLayoutDirection)
  {
    v43 = v25 + 9.0;
  }

  v44 = v37 * value;
  v45 = 2.0;
  v46 = v39;
  CGContextClipToRect(CurrentContext, *&v43);
  [(UIColor *)v17 set];
  [v40 fill];
  CGContextRestoreGState(CurrentContext);
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 14.0;
  result.height = v3;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStarBarView initWithFrame:]";
}

@end