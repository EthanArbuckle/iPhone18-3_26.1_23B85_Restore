@interface SFPersonImageView
+ (id)darkenImage:(id)a3 toLevel:(double)a4;
- (SFPersonImageView)initWithImage:(id)a3 isSquare:(BOOL)a4;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
@end

@implementation SFPersonImageView

- (SFPersonImageView)initWithImage:(id)a3 isSquare:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SFPersonImageView;
  v7 = [(SFPersonImageView *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SFPersonImageView *)v7 setImageIsSquare:v4];
    [(SFPersonImageView *)v8 setImage:v6];
  }

  return v8;
}

- (void)layoutSubviews
{
  v3 = [(SFPersonImageView *)self imageIsSquare];
  v4 = 0.0;
  if (v3)
  {
    [(SFPersonImageView *)self frame];
    v4 = CGRectGetWidth(v8) * 0.5;
  }

  v5 = [(SFPersonImageView *)self layer];
  [v5 setCornerRadius:v4];

  v6 = [(SFPersonImageView *)self layer];
  [v6 setMasksToBounds:v3];
}

- (void)setImage:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFPersonImageView;
  [(SFPersonImageView *)&v4 setImage:a3];
  [(SFPersonImageView *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  [(SFPersonImageView *)self highlightDarkeningAlpha];
  if (fabs(v5) >= 2.22044605e-16)
  {
    if (v3)
    {
      v7 = [(SFPersonImageView *)self highlightedImage];

      if (!v7)
      {
        v8 = objc_opt_class();
        v9 = [(SFPersonImageView *)self image];
        [(SFPersonImageView *)self highlightDarkeningAlpha];
        v10 = [v8 darkenImage:v9 toLevel:?];
        [(SFPersonImageView *)self setHighlightedImage:v10];
      }
    }
  }

  else
  {
    if (v3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(SFPersonImageView *)self setDrawMode:v6];
  }

  v11.receiver = self;
  v11.super_class = SFPersonImageView;
  [(SFPersonImageView *)&v11 setHighlighted:v3];
}

+ (id)darkenImage:(id)a3 toLevel:(double)a4
{
  v5 = a3;
  [v5 size];
  v7 = v6;
  [v5 size];
  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v7, v8}];
  v11 = [MEMORY[0x1E69DC888] blackColor];
  [v10 setBackgroundColor:v11];

  [v10 setAlpha:a4];
  v19.width = v7;
  v19.height = v9;
  UIGraphicsBeginImageContext(v19);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v5 drawInRect:{0.0, 0.0, v7, v9}];
  CGContextTranslateCTM(CurrentContext, 0.0, v9);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v13 = [v5 CGImage];

  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v7;
  v20.size.height = v9;
  CGContextClipToMask(CurrentContext, v20, v13);
  v14 = [v10 layer];
  [v14 renderInContext:CurrentContext];

  Image = CGBitmapContextCreateImage(CurrentContext);
  v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image];
  CGImageRelease(Image);
  UIGraphicsEndImageContext();

  return v16;
}

@end