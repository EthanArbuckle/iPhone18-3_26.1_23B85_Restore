@interface PRImageView
- (PRImageView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setImage:(id)a3;
@end

@implementation PRImageView

- (PRImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PRImageView;
  v3 = [(PRImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_circular = 0;
    [(PRImageView *)v3 setOpaque:0];
  }

  return v4;
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (([(UIImage *)self->_image isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_image, a3);
    [(PRImageView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  if ([(PRImageView *)self isCircular:a3.origin.x])
  {
    v4 = MEMORY[0x277D75208];
    [(PRImageView *)self bounds];
    v5 = [v4 bezierPathWithOvalInRect:?];
    [v5 addClip];
  }

  v6 = [(PRImageView *)self image];
  [(PRImageView *)self bounds];
  [v6 drawInRect:?];
}

@end