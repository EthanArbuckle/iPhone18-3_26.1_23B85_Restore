@interface SFPersonImageView
+ (id)darkenImage:(id)image toLevel:(double)level;
- (SFPersonImageView)initWithImage:(id)image isSquare:(BOOL)square;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
@end

@implementation SFPersonImageView

- (SFPersonImageView)initWithImage:(id)image isSquare:(BOOL)square
{
  squareCopy = square;
  imageCopy = image;
  v10.receiver = self;
  v10.super_class = SFPersonImageView;
  v7 = [(SFPersonImageView *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SFPersonImageView *)v7 setImageIsSquare:squareCopy];
    [(SFPersonImageView *)v8 setImage:imageCopy];
  }

  return v8;
}

- (void)layoutSubviews
{
  imageIsSquare = [(SFPersonImageView *)self imageIsSquare];
  v4 = 0.0;
  if (imageIsSquare)
  {
    [(SFPersonImageView *)self frame];
    v4 = CGRectGetWidth(v8) * 0.5;
  }

  layer = [(SFPersonImageView *)self layer];
  [layer setCornerRadius:v4];

  layer2 = [(SFPersonImageView *)self layer];
  [layer2 setMasksToBounds:imageIsSquare];
}

- (void)setImage:(id)image
{
  v4.receiver = self;
  v4.super_class = SFPersonImageView;
  [(SFPersonImageView *)&v4 setImage:image];
  [(SFPersonImageView *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  [(SFPersonImageView *)self highlightDarkeningAlpha];
  if (fabs(v5) >= 2.22044605e-16)
  {
    if (highlightedCopy)
    {
      highlightedImage = [(SFPersonImageView *)self highlightedImage];

      if (!highlightedImage)
      {
        v8 = objc_opt_class();
        image = [(SFPersonImageView *)self image];
        [(SFPersonImageView *)self highlightDarkeningAlpha];
        v10 = [v8 darkenImage:image toLevel:?];
        [(SFPersonImageView *)self setHighlightedImage:v10];
      }
    }
  }

  else
  {
    if (highlightedCopy)
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
  [(SFPersonImageView *)&v11 setHighlighted:highlightedCopy];
}

+ (id)darkenImage:(id)image toLevel:(double)level
{
  imageCopy = image;
  [imageCopy size];
  v7 = v6;
  [imageCopy size];
  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v7, v8}];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v10 setBackgroundColor:blackColor];

  [v10 setAlpha:level];
  v19.width = v7;
  v19.height = v9;
  UIGraphicsBeginImageContext(v19);
  CurrentContext = UIGraphicsGetCurrentContext();
  [imageCopy drawInRect:{0.0, 0.0, v7, v9}];
  CGContextTranslateCTM(CurrentContext, 0.0, v9);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  cGImage = [imageCopy CGImage];

  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v7;
  v20.size.height = v9;
  CGContextClipToMask(CurrentContext, v20, cGImage);
  layer = [v10 layer];
  [layer renderInContext:CurrentContext];

  Image = CGBitmapContextCreateImage(CurrentContext);
  v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image];
  CGImageRelease(Image);
  UIGraphicsEndImageContext();

  return v16;
}

@end