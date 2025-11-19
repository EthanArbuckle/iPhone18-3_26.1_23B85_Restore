@interface SKUIStackedImageView
+ (SKUIStackedImageConfiguration)_configurationForSize:(SEL)a3;
+ (double)maximumPerspectiveHeightForSize:(CGSize)a3;
- (CGPoint)vanishingPoint;
- (SKUIStackedImageView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBorderDrawingCache:(id)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3;
- (void)setImageSize:(CGSize)a3;
- (void)stackView:(id)a3 applyAttributesToItem:(id)a4 atIndex:(int64_t)a5;
@end

@implementation SKUIStackedImageView

- (SKUIStackedImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStackedImageView initWithFrame:];
  }

  v16.receiver = self;
  v16.super_class = SKUIStackedImageView;
  v8 = [(SKUIStackedImageView *)&v16 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v8->_stackDepth = 3;
    v10 = SKUIMPUFoundationFramework();
    v11 = SKUIWeakLinkedClassForString(&cfstr_Mpuborderedima.isa, v10);
    v12 = objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Mpustackview.isa, v10));
    [(SKUIStackedImageView *)v9 bounds];
    v13 = [v12 initWithFrame:v11 itemClass:@"0" itemReuseIdentifier:?];
    stackView = v9->_stackView;
    v9->_stackView = v13;

    [(MPUStackView *)v9->_stackView setDataSource:v9];
    [(MPUStackView *)v9->_stackView setForcesIntegralY:1];
    [(SKUIStackedImageView *)v9 addSubview:v9->_stackView];
  }

  return v9;
}

- (void)dealloc
{
  [(MPUStackView *)self->_stackView setDataSource:0];
  v3.receiver = self;
  v3.super_class = SKUIStackedImageView;
  [(SKUIStackedImageView *)&v3 dealloc];
}

+ (double)maximumPerspectiveHeightForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = objc_opt_class();
  if (v5)
  {
    [v5 _configurationForSize:{width, height, 0}];
    v6 = 0.0 * 0;
  }

  else
  {
    v6 = 0.0;
  }

  return floorf(v6);
}

- (void)setBorderDrawingCache:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_borderDrawingCache != v5)
  {
    objc_storeStrong(&self->_borderDrawingCache, a3);
    v6 = [(MPUStackView *)self->_stackView items];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setBorderDrawingCache:v5];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setImage:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKUIStackedImageView *)self image];

  if (v5 != v4)
  {
    v15.receiver = self;
    v15.super_class = SKUIStackedImageView;
    [(SKUIImageView *)&v15 setImage:v4];
    v6 = [(MPUStackView *)self->_stackView items];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setImage:v4];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(MPUStackView *)self->_stackView setBaseSize:?];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v6 = objc_opt_class();
  if (v6)
  {
    [v6 _configurationForSize:{width, height}];
    v8 = *(&v10 + 1);
    v7 = *&v10;
  }

  else
  {
    v12 = 0;
    v8 = 0.0;
    v7 = 0.0;
    v10 = 0u;
    v11 = 0u;
  }

  [(MPUStackView *)self->_stackView setMaximumRelativeOffsetStep:v7, v8];
  [(MPUStackView *)self->_stackView setSizeInsetStep:v11];
  if (self->_stackDepth != v12)
  {
    self->_stackDepth = v12;
    [(MPUStackView *)self->_stackView reloadData];
  }

  v9.receiver = self;
  v9.super_class = SKUIStackedImageView;
  [(SKUIImageView *)&v9 setImageSize:width, height];
}

- (CGPoint)vanishingPoint
{
  [(MPUStackView *)self->_stackView vanishingPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SKUIStackedImageView *)self frame];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v12.receiver = self;
    v12.super_class = SKUIStackedImageView;
    [(SKUIStackedImageView *)&v12 setFrame:x, y, width, height];
    [(SKUIStackedImageView *)self setNeedsLayout];
  }
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SKUIStackedImageView *)self center];
  if (x != v7 || y != v6)
  {
    v9.receiver = self;
    v9.super_class = SKUIStackedImageView;
    [(SKUIStackedImageView *)&v9 setCenter:x, y];
    [(SKUIStackedImageView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUIImageView *)self imageSize];
  if (v4 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v6 = [(SKUIStackedImageView *)self image];
    [v6 size];
  }

  stackView = self->_stackView;
  [(SKUIStackedImageView *)self bounds];
  SKUIImageRectForBounds();
  [(MPUStackView *)stackView setFrame:?];
  [(MPUStackView *)self->_stackView updateForChangedDistanceFromVanishingPoint];
  v8.receiver = self;
  v8.super_class = SKUIStackedImageView;
  [(SKUIImageView *)&v8 layoutSubviews];
}

- (void)stackView:(id)a3 applyAttributesToItem:(id)a4 atIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  borderConfiguration = self->_borderConfiguration;
  if (!borderConfiguration)
  {
    v11 = SKUIMPUFoundationFramework();
    v12 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Mpuborderconfi.isa, v11));
    v13 = self->_borderConfiguration;
    self->_borderConfiguration = v12;

    if (stackView_applyAttributesToItem_atIndex__sOnce != -1)
    {
      [SKUIStackedImageView stackView:applyAttributesToItem:atIndex:];
    }

    v14 = self->_borderConfiguration;
    v15 = [MEMORY[0x277D75348] whiteColor];
    [(MPUBorderConfiguration *)v14 setDropShadowColor:v15];

    [(MPUBorderConfiguration *)self->_borderConfiguration setDropShadowEdges:11];
    [(MPUBorderConfiguration *)self->_borderConfiguration setDropShadowWidth:1.0 / *&stackView_applyAttributesToItem_atIndex__sScreenScale];
    v16 = self->_borderConfiguration;
    v17 = [MEMORY[0x277D75348] whiteColor];
    [(MPUBorderConfiguration *)v16 setBorderColor:v17];

    [(MPUBorderConfiguration *)self->_borderConfiguration setBorderWidth:1.0 / *&stackView_applyAttributesToItem_atIndex__sScreenScale];
    v18 = self->_borderConfiguration;
    v19 = [MEMORY[0x277D75348] whiteColor];
    [(MPUBorderConfiguration *)v18 setFillColor:v19];

    borderConfiguration = self->_borderConfiguration;
  }

  if (a5 >= 5)
  {
    a5 = 5;
  }

  [(MPUBorderConfiguration *)borderConfiguration setFillAlpha:stackView_applyAttributesToItem_atIndex__sItemOverlayCenterWhiteAlphas[a5]];
  [(MPUBorderConfiguration *)self->_borderConfiguration setBorderAlpha:stackView_applyAttributesToItem_atIndex__sItemOverlayBorderWhiteAlphas[a5]];
  [v9 setBorderConfiguration:self->_borderConfiguration];
  [v9 setImageAlpha:stackView_applyAttributesToItem_atIndex__sItemImageAlphas[a5]];
  [v9 setImageContentsRect:{stackView_applyAttributesToItem_atIndex__sItemImageContentRects[4 * a5], stackView_applyAttributesToItem_atIndex__sItemImageContentRects[4 * a5 + 1], stackView_applyAttributesToItem_atIndex__sItemImageContentRects[4 * a5 + 2], stackView_applyAttributesToItem_atIndex__sItemImageContentRects[4 * a5 + 3]}];
  v20 = stackView_applyAttributesToItem_atIndex__sItemImageShouldFlipHorizontal[a5];
  v21 = stackView_applyAttributesToItem_atIndex__sItemImageShouldFlipVertical[a5];
  v22 = *MEMORY[0x277CBF2C0];
  v23 = *(MEMORY[0x277CBF2C0] + 16);
  *&v29.a = *MEMORY[0x277CBF2C0];
  *&v29.c = v23;
  v24 = *(MEMORY[0x277CBF2C0] + 32);
  *&v29.tx = v24;
  if ((v20 & 1) != 0 || v21)
  {
    v25 = 1.0;
    if (v20)
    {
      v26 = -1.0;
    }

    else
    {
      v26 = 1.0;
    }

    if (v21)
    {
      v25 = -1.0;
    }

    *&v28.a = v22;
    *&v28.c = v23;
    *&v28.tx = v24;
    CGAffineTransformScale(&v29, &v28, v26, v25);
  }

  v28 = v29;
  [v9 setImageTransform:&v28];
  v27 = [(SKUIStackedImageView *)self image];
  [v9 setImage:v27];
}

void __64__SKUIStackedImageView_stackView_applyAttributesToItem_atIndex___block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  stackView_applyAttributesToItem_atIndex__sScreenScale = v0;
}

+ (SKUIStackedImageConfiguration)_configurationForSize:(SEL)a3
{
  height = a4.height;
  width = a4.width;
  result = os_variant_has_internal_content();
  if (result)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (result)
      {
        +[SKUIStackedImageView _configurationForSize:];
      }
    }
  }

  retstr->var0 = 0u;
  retstr->var1 = 0u;
  retstr->var2 = 3;
  if (height >= width)
  {
    v8 = width;
  }

  else
  {
    v8 = height;
  }

  if (v8 < 50.0)
  {
    *&retstr->var0.vertical = xmmword_215F3F490;
    retstr->var1.height = 1.0;
    return result;
  }

  if (v8 < 80.0)
  {
    __asm { FMOV            V1.2D, #2.0 }

    retstr->var0 = xmmword_215F3F480;
    retstr->var1 = _Q1;
    retstr->var2 = 4;
    return result;
  }

  if (v8 >= 100.0)
  {
    if (v8 >= 120.0)
    {
      if (v8 >= 160.0)
      {
        __asm { FMOV            V0.2D, #9.0 }
      }

      else
      {
        __asm { FMOV            V0.2D, #6.0 }
      }

      __asm { FMOV            V1.2D, #3.0 }

      goto LABEL_21;
    }

    __asm { FMOV            V0.2D, #4.0 }
  }

  else
  {
    __asm { FMOV            V0.2D, #3.0 }
  }

  __asm { FMOV            V1.2D, #2.0 }

LABEL_21:
  retstr->var0 = _Q0;
  retstr->var1 = _Q1;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStackedImageView initWithFrame:]";
}

+ (void)_configurationForSize:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIStackedImageView _configurationForSize:]";
}

@end