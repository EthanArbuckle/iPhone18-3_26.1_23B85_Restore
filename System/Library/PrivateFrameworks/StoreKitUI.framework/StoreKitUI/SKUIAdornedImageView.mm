@interface SKUIAdornedImageView
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SKUIAdornedImageView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setImage:(id)a3;
- (void)setImage:(id)a3 cacheKey:(id)a4 context:(id)a5;
- (void)updatePlayButonBlur:(id)a3 context:(id)a4 image:(id)a5 cacheKey:(id)a6;
@end

@implementation SKUIAdornedImageView

- (SKUIAdornedImageView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SKUIAdornedImageView;
  v3 = [(SKUIAdornedImageView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SKUIAdornedImageViewReuseView);
    reuseView = v3->_reuseView;
    v3->_reuseView = v4;

    v6 = v3->_reuseView;
    v7 = [MEMORY[0x277D75348] clearColor];
    [(SKUIViewReuseView *)v6 setBackgroundColor:v7];

    [(SKUIAdornedImageView *)v3 addSubview:v3->_reuseView];
    [(SKUIAdornedImageView *)v3 setUserInteractionEnabled:1];
  }

  return v3;
}

- (void)setImage:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKUIAdornedImageView;
  [(SKUIImageView *)&v3 setImage:a3];
}

- (void)setImage:(id)a3 cacheKey:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(SKUIAdornedImageView *)self setImage:a3];
  v11 = [(SKUIAdornedImageViewReuseView *)self->_reuseView playButton];
  v10 = [(SKUIAdornedImageView *)self image];
  [(SKUIAdornedImageView *)self updatePlayButonBlur:v11 context:v8 image:v10 cacheKey:v9];
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  [SKUIAdornedImageViewReuseView preferredSizeForViewElement:a3 context:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SKUIAdornedImageViewReuseView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v18 = a3;
  v8 = a5;
  [(SKUIAdornedImageViewReuseView *)self->_reuseView reloadWithViewElement:v18 width:v8 context:a4];
  v9 = [v8 imageResourceCacheKeyForViewElement:v18];
  if (v9)
  {
    v10 = [(SKUIAdornedImageViewReuseView *)self->_reuseView playButton];
    v11 = [(SKUIAdornedImageView *)self image];
    [(SKUIAdornedImageView *)self updatePlayButonBlur:v10 context:v8 image:v11 cacheKey:v9];
  }

  [v18 layerShadowRadius];
  if (v12 != 0.0)
  {
    v13 = [(SKUIAdornedImageView *)self layer];
    [v13 setMasksToBounds:0];

    v14 = [(SKUIAdornedImageView *)self layer];
    [v18 layerShadowRadius];
    [v14 setShadowRadius:?];

    v15 = [(SKUIAdornedImageView *)self layer];
    [v18 layerShadowOffset];
    [v15 setShadowOffset:?];
  }

  [v18 layerShadowOpacity];
  if (v16 != 0.0)
  {
    v17 = [(SKUIAdornedImageView *)self layer];
    [v18 layerShadowOpacity];
    [v17 setShadowOpacity:?];
  }
}

- (void)updatePlayButonBlur:(id)a3 context:(id)a4 image:(id)a5 cacheKey:(id)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12 && v10 && v20 && v11)
  {
    v13 = [v10 blurColorForCacheKey:v12];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      [(SKUIAdornedImageView *)self bounds];
      [(SKUIAdornedImageViewReuseView *)self->_reuseView frameForView:v20];
      x = v22.origin.x;
      y = v22.origin.y;
      width = v22.size.width;
      height = v22.size.height;
      CGRectGetMaxX(v22);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      CGRectGetMaxY(v23);
      [v20 buttonSize];
      v19 = [SKUIPlayButtonControl blurColorForImage:"blurColorForImage:forButtonSize:withOffsetRight:withOffsetBottom:" forButtonSize:v11 withOffsetRight:? withOffsetBottom:?];
      if (v19)
      {
        v14 = v19;
        [v10 setBlurColor:v19 cacheKey:v12];
      }

      else
      {
        v14 = [v20 defaultBackgroundColor];
        [v10 setBlurColor:v14 cacheKey:v12];
        if (!v14)
        {
          goto LABEL_11;
        }
      }
    }

    [v20 setControlColor:v14];
  }

LABEL_11:
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SKUIAdornedImageView;
  [(SKUIImageView *)&v3 layoutSubviews];
  [(SKUIAdornedImageView *)self bounds];
  [(SKUIAdornedImageViewReuseView *)self->_reuseView setFrame:?];
}

@end