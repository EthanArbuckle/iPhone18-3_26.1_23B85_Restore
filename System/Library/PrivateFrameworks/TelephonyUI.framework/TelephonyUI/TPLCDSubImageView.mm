@interface TPLCDSubImageView
- (TPLCDSubImageView)initWithDefaultSize;
- (void)drawRect:(CGRect)a3;
- (void)setImage:(id)a3;
@end

@implementation TPLCDSubImageView

- (TPLCDSubImageView)initWithDefaultSize
{
  v2 = [(TPLCDSubImageView *)self initWithFrame:0.0, 0.0, 61.0, 61.0];
  v3 = v2;
  if (v2)
  {
    [(TPLCDSubImageView *)v2 setOpaque:0];
  }

  return v3;
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(TPLCDSubImageView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x1E69DC728];
  v16 = CGRectInset(a3, 1.5, 1.5);
  v14 = [v8 bezierPathWithOvalInRect:{v16.origin.x, v16.origin.y, v16.size.width, v16.size.height}];
  v9 = MEMORY[0x1E69DC728];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = CGRectInset(v17, 1.0, 1.0);
  v10 = [v9 bezierPathWithOvalInRect:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  [v10 addClip];
  [(UIImage *)self->_image drawInRect:17 blendMode:x alpha:y, width, height, 1.0];
  CGContextRestoreGState(CurrentContext);
  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.100000001];
  [v12 set];

  [v14 stroke];
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.300000012];
  [v13 set];

  [v10 stroke];
}

@end