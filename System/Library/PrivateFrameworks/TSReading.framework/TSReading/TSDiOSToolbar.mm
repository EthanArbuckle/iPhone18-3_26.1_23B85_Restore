@interface TSDiOSToolbar
- (CGSize)shadowOffset;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)p_updateLayerFlags;
- (void)setBackgroundImage:(id)a3;
- (void)setDrawsBackground:(BOOL)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setShadowOpacity:(double)a3;
- (void)setupShadowPath;
@end

@implementation TSDiOSToolbar

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDiOSToolbar;
  [(TSDiOSToolbar *)&v3 dealloc];
}

- (void)setBackgroundImage:(id)a3
{
  if (self->mBackgroundImage != a3)
  {
    v5 = a3;

    self->mBackgroundImage = a3;
    [(TSDiOSToolbar *)self p_updateLayerFlags];

    [(TSDiOSToolbar *)self setNeedsDisplay];
  }
}

- (void)setDrawsBackground:(BOOL)a3
{
  if (self->mDrawsBackground != a3)
  {
    self->mDrawsBackground = a3;
    [(TSDiOSToolbar *)self p_updateLayerFlags];

    [(TSDiOSToolbar *)self setNeedsDisplay];
  }
}

- (void)p_updateLayerFlags
{
  mBackgroundImage = self->mBackgroundImage;
  if (mBackgroundImage && self->mDrawsBackground)
  {
    AlphaInfo = CGImageGetAlphaInfo([(UIImage *)mBackgroundImage CGImage]);
    [(TSDiOSToolbar *)self setOpaque:(AlphaInfo < kCGImageAlphaOnly) & (0x61u >> AlphaInfo)];
    v5 = [(TSDiOSToolbar *)self isOpaque]^ 1;
  }

  else
  {
    v5 = 1;
    [(TSDiOSToolbar *)self setOpaque:1];
  }

  [(TSDiOSToolbar *)self setClearsContextBeforeDrawing:v5];
}

- (void)setShadowOpacity:(double)a3
{
  v5 = a3;
  v6 = [(TSDiOSToolbar *)self layer];
  *&v7 = v5;
  [v6 setShadowOpacity:v7];
  self->mShadowOpacity = a3;
}

- (void)setShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [-[TSDiOSToolbar layer](self "layer")];
  self->mShadowOffset.width = width;
  self->mShadowOffset.height = height;
}

- (void)drawRect:(CGRect)a3
{
  if (self->mDrawsBackground)
  {
    mBackgroundImage = self->mBackgroundImage;
    if (mBackgroundImage)
    {
      [(TSDiOSToolbar *)self bounds:a3.origin.x];

      [(UIImage *)mBackgroundImage drawInRect:?];
    }

    else
    {
      v4.receiver = self;
      v4.super_class = TSDiOSToolbar;
      [(TSDiOSToolbar *)&v4 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = TSDiOSToolbar;
  [(TSDiOSToolbar *)&v5 layoutSubviews];
  if (self->mShadowOpacity > 0.0)
  {
    v3 = [(TSDiOSToolbar *)self layer];
    mShadowOpacity = self->mShadowOpacity;
    *&mShadowOpacity = mShadowOpacity;
    [v3 setShadowOpacity:mShadowOpacity];
    [v3 setShadowOffset:{self->mShadowOffset.width, self->mShadowOffset.height}];
    [v3 setShadowRadius:self->mShadowRadius];
    [(TSDiOSToolbar *)self setupShadowPath];
  }
}

- (void)setupShadowPath
{
  Mutable = CGPathCreateMutable();
  [(TSDiOSToolbar *)self bounds];
  mShadowX = self->mShadowX;
  v8.origin.x = v5 + mShadowX;
  v8.size.width = v6 - mShadowX;
  CGPathAddRect(Mutable, 0, v8);
  [-[TSDiOSToolbar layer](self "layer")];

  CFRelease(Mutable);
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  if (![a4 isEqualToString:@"shadowPath"])
  {
    v11.receiver = self;
    v11.super_class = TSDiOSToolbar;
    return [(TSDiOSToolbar *)&v11 actionForLayer:a3 forKey:a4];
  }

  v12.receiver = self;
  v12.super_class = TSDiOSToolbar;
  v7 = [(TSDiOSToolbar *)&v12 actionForLayer:a3 forKey:@"position"];
  if (v7 == [MEMORY[0x277CBEB68] null])
  {
    return [MEMORY[0x277CBEB68] null];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:a4];
  [v7 duration];
  [v8 setDuration:?];
  [v8 setTimingFunction:{objc_msgSend(v7, "timingFunction")}];
  [v8 setFillMode:*MEMORY[0x277CDA230]];
  [objc_msgSend(v7 "delegate")];
  return v8;
}

- (CGSize)shadowOffset
{
  width = self->mShadowOffset.width;
  height = self->mShadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end