@interface PUPosterDebugRectView
- (PUPosterDebugRectView)initWithFrame:(CGRect)frame;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
@end

@implementation PUPosterDebugRectView

- (void)setBorderWidth:(double)width
{
  self->_borderWidth = width;
  layer = [(PUPosterDebugRectView *)self layer];
  [layer setBorderWidth:width];
}

- (void)setBorderColor:(id)color
{
  objc_storeStrong(&self->_borderColor, color);
  colorCopy = color;
  cGColor = [colorCopy CGColor];

  layer = [(PUPosterDebugRectView *)self layer];
  [layer setBorderColor:cGColor];
}

- (PUPosterDebugRectView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PUPosterDebugRectView;
  v3 = [(PUPosterDebugRectView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PUPosterDebugRectView *)v3 setBackgroundColor:clearColor];

    [(PUPosterDebugRectView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end