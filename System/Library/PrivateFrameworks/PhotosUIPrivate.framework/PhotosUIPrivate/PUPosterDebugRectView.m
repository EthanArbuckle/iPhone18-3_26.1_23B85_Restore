@interface PUPosterDebugRectView
- (PUPosterDebugRectView)initWithFrame:(CGRect)a3;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
@end

@implementation PUPosterDebugRectView

- (void)setBorderWidth:(double)a3
{
  self->_borderWidth = a3;
  v4 = [(PUPosterDebugRectView *)self layer];
  [v4 setBorderWidth:a3];
}

- (void)setBorderColor:(id)a3
{
  objc_storeStrong(&self->_borderColor, a3);
  v5 = a3;
  v6 = [v5 CGColor];

  v7 = [(PUPosterDebugRectView *)self layer];
  [v7 setBorderColor:v6];
}

- (PUPosterDebugRectView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PUPosterDebugRectView;
  v3 = [(PUPosterDebugRectView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(PUPosterDebugRectView *)v3 setBackgroundColor:v4];

    [(PUPosterDebugRectView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end