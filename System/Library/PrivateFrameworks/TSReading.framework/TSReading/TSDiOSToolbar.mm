@interface TSDiOSToolbar
- (CGSize)shadowOffset;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)p_updateLayerFlags;
- (void)setBackgroundImage:(id)image;
- (void)setDrawsBackground:(BOOL)background;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowOpacity:(double)opacity;
- (void)setupShadowPath;
@end

@implementation TSDiOSToolbar

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDiOSToolbar;
  [(TSDiOSToolbar *)&v3 dealloc];
}

- (void)setBackgroundImage:(id)image
{
  if (self->mBackgroundImage != image)
  {
    imageCopy = image;

    self->mBackgroundImage = image;
    [(TSDiOSToolbar *)self p_updateLayerFlags];

    [(TSDiOSToolbar *)self setNeedsDisplay];
  }
}

- (void)setDrawsBackground:(BOOL)background
{
  if (self->mDrawsBackground != background)
  {
    self->mDrawsBackground = background;
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

- (void)setShadowOpacity:(double)opacity
{
  opacityCopy = opacity;
  layer = [(TSDiOSToolbar *)self layer];
  *&v7 = opacityCopy;
  [layer setShadowOpacity:v7];
  self->mShadowOpacity = opacity;
}

- (void)setShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  [-[TSDiOSToolbar layer](self "layer")];
  self->mShadowOffset.width = width;
  self->mShadowOffset.height = height;
}

- (void)drawRect:(CGRect)rect
{
  if (self->mDrawsBackground)
  {
    mBackgroundImage = self->mBackgroundImage;
    if (mBackgroundImage)
    {
      [(TSDiOSToolbar *)self bounds:rect.origin.x];

      [(UIImage *)mBackgroundImage drawInRect:?];
    }

    else
    {
      v4.receiver = self;
      v4.super_class = TSDiOSToolbar;
      [(TSDiOSToolbar *)&v4 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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
    layer = [(TSDiOSToolbar *)self layer];
    mShadowOpacity = self->mShadowOpacity;
    *&mShadowOpacity = mShadowOpacity;
    [layer setShadowOpacity:mShadowOpacity];
    [layer setShadowOffset:{self->mShadowOffset.width, self->mShadowOffset.height}];
    [layer setShadowRadius:self->mShadowRadius];
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

- (id)actionForLayer:(id)layer forKey:(id)key
{
  if (![key isEqualToString:@"shadowPath"])
  {
    v11.receiver = self;
    v11.super_class = TSDiOSToolbar;
    return [(TSDiOSToolbar *)&v11 actionForLayer:layer forKey:key];
  }

  v12.receiver = self;
  v12.super_class = TSDiOSToolbar;
  v7 = [(TSDiOSToolbar *)&v12 actionForLayer:layer forKey:@"position"];
  if (v7 == [MEMORY[0x277CBEB68] null])
  {
    return [MEMORY[0x277CBEB68] null];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:key];
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