@interface SKUIStyledImageButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIStyledImageButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)bigHitInsets;
- (UIEdgeInsets)hitRectInsets;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SKUIStyledImageButton

- (SKUIStyledImageButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStyledImageButton initWithFrame:];
  }

  v16.receiver = self;
  v16.super_class = SKUIStyledImageButton;
  v8 = [(SKUIStyledImageButton *)&v16 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [SKUIImageView alloc];
    [(SKUIStyledImageButton *)v8 bounds];
    v10 = [(SKUIImageView *)v9 initWithFrame:?];
    imageView = v8->_imageView;
    v8->_imageView = v10;

    [(SKUIImageView *)v8->_imageView setAutoresizingMask:18];
    [(SKUIImageView *)v8->_imageView setUserInteractionEnabled:0];
    [(SKUIStyledImageButton *)v8 addSubview:v8->_imageView];
    v12 = [SKUIImageView alloc];
    v13 = [(SKUIImageView *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    additionalImageView = v8->_additionalImageView;
    v8->_additionalImageView = v13;

    [(SKUIImageView *)v8->_additionalImageView setAutoresizingMask:45];
    [(SKUIImageView *)v8->_additionalImageView setUserInteractionEnabled:0];
    [(SKUIStyledImageButton *)v8 addSubview:v8->_additionalImageView];
  }

  return v8;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_didInitialHighlightForTouch = 0;
  v4.receiver = self;
  v4.super_class = SKUIStyledImageButton;
  [(SKUIStyledImageButton *)&v4 touchesBegan:a3 withEvent:a4];
}

- (CGRect)hitRect
{
  if (self->_useBigHitTarget)
  {
    v16 = self;
    v3 = &OBJC_IVAR___SKUIStyledImageButton__bigHitInsets;
    v4 = &v16;
  }

  else
  {
    v15 = self;
    v3 = &OBJC_IVAR___SKUIStyledImageButton__hitRectInsets;
    v4 = &v15;
  }

  v4[1] = SKUIStyledImageButton;
  objc_msgSendSuper2(v4, sel_hitRect, v15);
  v5 = (self + *v3);
  v6 = v5[1];
  v8 = v7 + v6;
  v10 = v9 + *v5;
  v12 = v11 - (v6 + v5[3]);
  v14 = v13 - (*v5 + v5[2]);
  result.size.height = v14;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v8;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SKUIStyledImageButton;
  [(SKUIStyledImageButton *)&v9 layoutSubviews];
  [(SKUIImageView *)self->_additionalImageView imageSize];
  v4 = v3;
  v6 = v5;
  additionalImageView = self->_additionalImageView;
  [(SKUIStyledImageButton *)self bounds];
  v8 = CGRectGetMidX(v10) - v4 * 0.5;
  [(SKUIStyledImageButton *)self bounds];
  [(SKUIImageView *)additionalImageView setFrame:v8, CGRectGetMidY(v11) - v6 * 0.5, v4, v6];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SKUIStyledImageButton *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)setBackgroundColor:(id)a3
{
  imageView = self->_imageView;
  v5 = a3;
  [(SKUIImageView *)imageView setBackgroundColor:v5];
  additionalImageView = self->_additionalImageView;
  v7 = [MEMORY[0x277D75348] clearColor];
  [(SKUIImageView *)additionalImageView setBackgroundColor:v7];

  v8.receiver = self;
  v8.super_class = SKUIStyledImageButton;
  [(SKUIStyledImageButton *)&v8 setBackgroundColor:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(SKUIStyledImageButton *)self isHighlighted]!= a3)
  {
    v7.receiver = self;
    v7.super_class = SKUIStyledImageButton;
    [(SKUIStyledImageButton *)&v7 setHighlighted:v3];
    v5 = 1.0;
    if (v3 && (v5 = 0.2, !self->_didInitialHighlightForTouch))
    {
      [(SKUIStyledImageButton *)self setAlpha:0.2, 0.2];
      self->_didInitialHighlightForTouch = 1;
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __40__SKUIStyledImageButton_setHighlighted___block_invoke;
      v6[3] = &unk_2781FC960;
      v6[4] = self;
      *&v6[5] = v5;
      [MEMORY[0x277D75D18] animateWithDuration:327684 delay:v6 options:0 animations:0.47 completion:0.0];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SKUIImageView *)self->_imageView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)bigHitInsets
{
  top = self->_bigHitInsets.top;
  left = self->_bigHitInsets.left;
  bottom = self->_bigHitInsets.bottom;
  right = self->_bigHitInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)hitRectInsets
{
  top = self->_hitRectInsets.top;
  left = self->_hitRectInsets.left;
  bottom = self->_hitRectInsets.bottom;
  right = self->_hitRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStyledImageButton initWithFrame:]";
}

@end