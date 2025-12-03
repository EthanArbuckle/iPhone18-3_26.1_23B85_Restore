@interface TintedView
- (TintedView)init;
- (void)drawRect:(CGRect)rect;
- (void)setImage:(id)image;
@end

@implementation TintedView

- (TintedView)init
{
  v6.receiver = self;
  v6.super_class = TintedView;
  v2 = [(TintedView *)&v6 init];
  if (v2)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(TintedView *)v2 setBackgroundColor:clearColor];

    layer = [(TintedView *)v2 layer];
    [layer setNeedsDisplayOnBoundsChange:0];
  }

  return v2;
}

- (void)drawRect:(CGRect)rect
{
  if (self->_image)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    [(TintedView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIImage *)self->_image drawInRect:?];
    if (self->_tintColor)
    {
      CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceIn);
      [(UIColor *)self->_tintColor set];
      v13 = v6;
      v14 = v8;
      v15 = v10;
      v16 = v12;

      CGContextFillRect(CurrentContext, *&v13);
    }
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    objc_storeStrong(&self->_image, image);
    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
    [(UIImage *)self->_image size];
    [(TintedView *)self setBounds:v6, v7, v8, v9];
    v10.receiver = self;
    v10.super_class = TintedView;
    [(TintedView *)&v10 setNeedsDisplay];
  }
}

@end