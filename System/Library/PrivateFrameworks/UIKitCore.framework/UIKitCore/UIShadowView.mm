@interface UIShadowView
- (UIShadowView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setShadowImage:(id)image forEdge:(unint64_t)edge inside:(BOOL)inside;
@end

@implementation UIShadowView

- (UIShadowView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIShadowView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    [(UIView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setShadowImage:(id)image forEdge:(unint64_t)edge inside:(BOOL)inside
{
  insideCopy = inside;
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v23 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(UIView *)self frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIImage *)v23 size];
    v19 = v18;
    v20 = v19;
    v21 = v13 - v19;
    if (edge != 1)
    {
      v21 = v13 + v17;
    }

    v22 = v13 + v17 - v20;
    if (edge == 1)
    {
      v22 = v13;
    }

    if (!insideCopy)
    {
      v22 = v21;
    }

    [(UIView *)self setFrame:v11, v22, v15];
    imageCopy = v23;
  }
}

- (void)drawRect:(CGRect)rect
{
  image = self->_image;
  [(UIView *)self bounds:rect.origin.x];

  [(UIImage *)image draw1PartImageInRect:?];
}

@end