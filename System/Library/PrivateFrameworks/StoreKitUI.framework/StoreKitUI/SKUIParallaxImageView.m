@interface SKUIParallaxImageView
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIParallaxImageView)initWithFrame:(CGRect)a3;
- (void)_updateInnerImageView;
- (void)setFrame:(CGRect)a3;
- (void)setImagePadding:(UIEdgeInsets)a3;
- (void)setImageSize:(CGSize)a3;
- (void)updateForChangedDistanceFromVanishingPoint;
@end

@implementation SKUIParallaxImageView

- (SKUIParallaxImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIParallaxImageView initWithFrame:];
  }

  v13.receiver = self;
  v13.super_class = SKUIParallaxImageView;
  v8 = [(SKUIParallaxImageView *)&v13 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [SKUIImageView alloc];
    [(SKUIParallaxImageView *)v8 bounds];
    v10 = [(SKUIImageView *)v9 initWithFrame:?];
    innerImageView = v8->_innerImageView;
    v8->_innerImageView = v10;

    [(SKUIParallaxImageView *)v8 addSubview:v8->_innerImageView];
    [(SKUIParallaxImageView *)v8 setClipsToBounds:1];
  }

  return v8;
}

- (void)setImagePadding:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_imagePadding.top), vceqq_f64(v4, *&self->_imagePadding.bottom)))) & 1) == 0)
  {
    self->_imagePadding = a3;
    [(SKUIParallaxImageView *)self _updateInnerImageView];

    [(SKUIParallaxImageView *)self setNeedsLayout];
  }
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setImageSize:(CGSize)a3
{
  if (a3.width != self->_imageSize.width || a3.height != self->_imageSize.height)
  {
    self->_imageSize = a3;
    [(SKUIParallaxImageView *)self _updateInnerImageView];

    [(SKUIParallaxImageView *)self setNeedsLayout];
  }
}

- (void)updateForChangedDistanceFromVanishingPoint
{
  [(SKUIParallaxImageView *)self frame];
  v4 = v3;
  v6 = v5;
  v7 = [(SKUIParallaxImageView *)self window];
  [(SKUIParallaxImageView *)self convertPoint:v7 toView:v4, v6];
  v9 = v8;
  v11 = v10;

  v12 = [(SKUIParallaxImageView *)self window];
  [v12 frame];
  v13 = v9 / CGRectGetWidth(v30);

  v14 = [(SKUIParallaxImageView *)self window];
  [v14 frame];
  v15 = (v11 + -64.0) / (CGRectGetHeight(v31) + -128.0);

  v16 = 1.0;
  if (v13 <= 1.0)
  {
    v17 = v13;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = fmax(v17, 0.0);
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  v19 = fmax(v16, 0.0);
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  innerImageView = self->_innerImageView;
  if (innerImageView)
  {
    [(SKUIImageView *)innerImageView transform];
  }

  else
  {
    v27 = 0uLL;
    v28 = 0uLL;
  }

  top = self->_imagePadding.top;
  left = self->_imagePadding.left;
  bottom = self->_imagePadding.bottom;
  right = self->_imagePadding.right;
  *&v29 = v18 * (left + right);
  *(&v29 + 1) = v19 * (top + bottom);
  if (right > 0.00000011920929 && left < 0.00000011920929)
  {
    *&v29 = -(v18 * (left + right));
  }

  if (bottom > 0.00000011920929 && top < 0.00000011920929)
  {
    *(&v29 + 1) = -(v19 * (top + bottom));
  }

  v25 = self->_innerImageView;
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  [(SKUIImageView *)v25 setTransform:v26];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SKUIParallaxImageView *)self frame];
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
    v12.super_class = SKUIParallaxImageView;
    [(SKUIParallaxImageView *)&v12 setFrame:x, y, width, height];
    [(SKUIParallaxImageView *)self _updateInnerImageView];
    [(SKUIParallaxImageView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateInnerImageView
{
  [(SKUIParallaxImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = self->_imagePadding.left + self->_imagePadding.right;
  v9 = v8 + v7;
  v10 = self->_imagePadding.top + self->_imagePadding.bottom;
  v12 = v11 + v10;
  [(SKUIImageView *)self->_innerImageView setImageSize:v7 + self->_imageSize.width, v10 + self->_imageSize.height];
  innerImageView = self->_innerImageView;

  [(SKUIImageView *)innerImageView setFrame:v4, v6, v9, v12];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIParallaxImageView initWithFrame:]";
}

@end