@interface SKUIGridViewGradientDecorationView
- (SKUIGridViewGradientDecorationView)initWithFrame:(CGRect)frame;
- (void)_createGradient:(id)gradient withGradientType:(int64_t)type;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation SKUIGridViewGradientDecorationView

- (SKUIGridViewGradientDecorationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGridViewGradientDecorationView initWithFrame:];
  }

  v9.receiver = self;
  v9.super_class = SKUIGridViewGradientDecorationView;
  return [(SKUIGridViewGradientDecorationView *)&v9 initWithFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SKUIGridViewGradientDecorationView;
  [(SKUIGridViewGradientDecorationView *)&v9 layoutSubviews];
  backgroundView = self->_backgroundView;
  [(SKUIGridViewGradientDecorationView *)self bounds];
  [(SKUIGridViewGradientDecorationBackgroundView *)backgroundView setFrame:?];
  if ([(IKColor *)self->_kolor colorType]== 3)
  {
    v4 = MEMORY[0x277CBEB18];
    gradientColors = [(IKColor *)self->_kolor gradientColors];
    v6 = [v4 arrayWithArray:gradientColors];

    if ([v6 count])
    {
      gradientColors2 = [(IKColor *)self->_kolor gradientColors];
      firstObject = [gradientColors2 firstObject];

      [v6 removeObjectAtIndex:0];
      [(SKUIGridViewGradientDecorationBackgroundView *)self->_backgroundView setBackgroundColor:firstObject];
      [(SKUIGridViewGradientDecorationView *)self _createGradient:v6 withGradientType:[(IKColor *)self->_kolor gradientDirectionType]];
    }
  }
}

- (void)_createGradient:(id)gradient withGradientType:(int64_t)type
{
  v23 = *MEMORY[0x277D85DE8];
  gradientCopy = gradient;
  layer = [(SKUIGridViewGradientDecorationBackgroundView *)self->_backgroundView layer];
  if ([(IKColor *)self->_kolor gradientType]== 1)
  {
    v7 = 1.0;
    v8 = 0.5;
    v9 = 0.0;
    v10 = 0.5;
  }

  else
  {
    if ([(IKColor *)self->_kolor gradientType]!= 2)
    {
      goto LABEL_6;
    }

    v9 = 0.5;
    v10 = 1.0;
    v8 = 0.0;
    v7 = 0.5;
  }

  [layer setStartPoint:{v8, v9}];
  [layer setEndPoint:{v10, v7}];
LABEL_6:
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(gradientCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = gradientCopy;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        [v11 addObject:{objc_msgSend(v17, "CGColor", v18)}];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [layer setColors:v11];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v15.receiver = self;
  v15.super_class = SKUIGridViewGradientDecorationView;
  [(SKUIGridViewGradientDecorationView *)&v15 applyLayoutAttributes:attributesCopy];
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(SKUIGridViewGradientDecorationBackgroundView *)backgroundView removeFromSuperview];
    v6 = self->_backgroundView;
    self->_backgroundView = 0;
  }

  v7 = [SKUIGridViewGradientDecorationBackgroundView alloc];
  v8 = [(SKUIGridViewGradientDecorationBackgroundView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = self->_backgroundView;
  self->_backgroundView = v8;

  [(SKUIGridViewGradientDecorationBackgroundView *)self->_backgroundView setUserInteractionEnabled:0];
  [(SKUIGridViewGradientDecorationView *)self addSubview:self->_backgroundView];
  gradientColor = [attributesCopy gradientColor];
  kolor = self->_kolor;
  self->_kolor = gradientColor;

  if ([(IKColor *)self->_kolor colorType]!= 3)
  {
    v12 = self->_backgroundView;
    gradientColor2 = [attributesCopy gradientColor];
    color = [gradientColor2 color];
    [(SKUIGridViewGradientDecorationBackgroundView *)v12 setBackgroundColor:color];
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGridViewGradientDecorationView initWithFrame:]";
}

@end