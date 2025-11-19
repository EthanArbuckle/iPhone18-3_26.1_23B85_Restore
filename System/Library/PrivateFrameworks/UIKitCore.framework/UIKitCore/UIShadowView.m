@interface UIShadowView
- (UIShadowView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setShadowImage:(id)a3 forEdge:(unint64_t)a4 inside:(BOOL)a5;
@end

@implementation UIShadowView

- (UIShadowView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIShadowView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    [(UIView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setShadowImage:(id)a3 forEdge:(unint64_t)a4 inside:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  if (self->_image != v9)
  {
    v23 = v9;
    objc_storeStrong(&self->_image, a3);
    [(UIView *)self frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIImage *)v23 size];
    v19 = v18;
    v20 = v19;
    v21 = v13 - v19;
    if (a4 != 1)
    {
      v21 = v13 + v17;
    }

    v22 = v13 + v17 - v20;
    if (a4 == 1)
    {
      v22 = v13;
    }

    if (!v5)
    {
      v22 = v21;
    }

    [(UIView *)self setFrame:v11, v22, v15];
    v9 = v23;
  }
}

- (void)drawRect:(CGRect)a3
{
  image = self->_image;
  [(UIView *)self bounds:a3.origin.x];

  [(UIImage *)image draw1PartImageInRect:?];
}

@end