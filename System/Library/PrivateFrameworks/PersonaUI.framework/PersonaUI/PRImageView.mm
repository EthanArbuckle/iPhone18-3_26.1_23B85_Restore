@interface PRImageView
- (PRImageView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setImage:(id)image;
@end

@implementation PRImageView

- (PRImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PRImageView;
  v3 = [(PRImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_circular = 0;
    [(PRImageView *)v3 setOpaque:0];
  }

  return v4;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_image isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_image, image);
    [(PRImageView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  if ([(PRImageView *)self isCircular:rect.origin.x])
  {
    v4 = MEMORY[0x277D75208];
    [(PRImageView *)self bounds];
    v5 = [v4 bezierPathWithOvalInRect:?];
    [v5 addClip];
  }

  image = [(PRImageView *)self image];
  [(PRImageView *)self bounds];
  [image drawInRect:?];
}

@end