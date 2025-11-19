@interface TSDTexturedRectangle
+ (id)setupMetalShaderForContext:(id)a3;
- (BOOL)hasLiveTexturedRectangleSource;
- (BOOL)isBackgroundTexture;
- (CALayer)parentLayer;
- (CATransform3D)transformFromAttributes;
- (CGColorSpace)p_colorSpace;
- (CGImage)image;
- (CGImage)p_newImageAndBufferWithAngle:(double)a3 scale:(double)a4 offset:(CGPoint)a5;
- (CGPoint)offset;
- (CGPoint)originalPosition;
- (CGRect)boundingRectForStage:(int64_t)a3 isBuildIn:(BOOL)a4;
- (CGRect)contentRect;
- (CGRect)frame;
- (CGRect)frameOnCanvas;
- (CGSize)p_textureSizeWithDevice:(id)a3 maxSize:(CGSize)a4;
- (CGSize)size;
- (TSDTextureSet)parent;
- (TSDTexturedRectangle)initWithCGImage:(CGImage *)a3;
- (TSDTexturedRectangle)initWithLayer:(id)a3;
- (TSDTexturedRectangle)initWithSize:(CGSize)a3 image:(CGImage *)a4;
- (TSDTexturedRectangle)initWithSize:(CGSize)a3 offset:(CGPoint)a4 renderBlock:(id)a5;
- (_NSRange)textRange;
- (char)p_setupTextureDataWithSize:(CGSize)a3 isBGRA:(BOOL)a4;
- (double)singleTextureOpacity;
- (float)opacityFromAttributes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)metalTextureWithContext:(id)a3;
- (id)p_allocateMetalTextureForDevice:(id)a3;
- (id)p_allocateMetalTextureForDevice:(id)a3 renderTarget:(BOOL)a4 writable:(BOOL)a5 private:(BOOL)a6 maxSize:(CGSize)a7;
- (id)p_latestTextureNotAfterLayerTime:(double)a3;
- (void)adjustAnchorRelativeToParentsCenterOfRotation:(CGPoint)a3 isMagicMove:(BOOL)a4;
- (void)bakeLayerWithAngle:(double)a3 scale:(double)a4;
- (void)dealloc;
- (void)drawFrameAtLayerTime:(double)a3 context:(id)a4;
- (void)releaseSingleTexture;
- (void)renderIntoContext:(CGContext *)a3;
- (void)renderLayerContentsIfNeeded;
- (void)resetAnchorPoint;
- (void)resetToSourceImage;
- (void)setLiveTexturedRectangleSource:(id)a3;
- (void)setLiveTexturedRectangleSourceProxy:(id)a3;
- (void)setOffset:(CGPoint)a3;
- (void)setTextureType:(int)a3;
- (void)setupMetalTextureForDevice:(id)a3;
- (void)setupSingleTextureAndGenerateMipMaps:(BOOL)a3;
- (void)teardown;
@end

@implementation TSDTexturedRectangle

- (TSDTexturedRectangle)initWithSize:(CGSize)a3 offset:(CGPoint)a4 renderBlock:(id)a5
{
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = TSDTexturedRectangle;
  v11 = [(TSDTexturedRectangle *)&v21 init];
  if (v11)
  {
    v12 = [v10 copy];
    v13 = *(v11 + 16);
    *(v11 + 16) = v12;

    *(v11 + 20) = 0x3FF0000000000000;
    v14 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v15 = *(v11 + 15);
    *(v11 + 15) = v14;

    [*(v11 + 15) setEdgeAntialiasingMask:0];
    [*(v11 + 15) setAllowsEdgeAntialiasing:1];
    v16 = *(v11 + 15);
    v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v16 setValue:v17 forKey:@"kTSDTextureLayerKeyHasContents"];

    v18 = *(v11 + 15);
    v19 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v11];
    [v18 setValue:v19 forKey:@"kTSDTextureLayerKeyTexturedRectangle"];

    *(v11 + 5) = width;
    *(v11 + 6) = height;
    [v11 setOffset:{x, y}];
    *(v11 + 7) = 0;
    *(v11 + 8) = 0;
    *(v11 + 72) = *(v11 + 40);
  }

  return v11;
}

- (TSDTexturedRectangle)initWithLayer:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = TSDTexturedRectangle;
  v6 = [(TSDTexturedRectangle *)&v25 init];
  v7 = v6;
  if (v6)
  {
    mRenderBlock = v6->mRenderBlock;
    v6->mRenderBlock = 0;

    [v5 frame];
    v7->mSize.width = v9;
    v7->mSize.height = v10;
    [v5 frame];
    v7->mOffset.x = v11;
    v7->mOffset.y = v12;
    [v5 position];
    v7->mOriginalPosition.x = v13;
    v7->mOriginalPosition.y = v14;
    [v5 frame];
    v7->mOriginalFrame.origin.x = v15;
    v7->mOriginalFrame.origin.y = v16;
    v7->mOriginalFrame.size.width = v17;
    v7->mOriginalFrame.size.height = v18;
    v7->mContentRect.origin.x = 0.0;
    v7->mContentRect.origin.y = 0.0;
    v7->mContentRect.size = v7->mSize;
    v7->mTextureOpacity = 1.0;
    objc_storeStrong(&v7->mLayer, a3);
    mLayer = v7->mLayer;
    v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(CALayer *)mLayer setValue:v20 forKey:@"kTSDTextureLayerKeyHasContents"];

    v21 = v7->mLayer;
    v22 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v7];
    [(CALayer *)v21 setValue:v22 forKey:@"kTSDTextureLayerKeyTexturedRectangle"];

    v23 = v7;
  }

  return v7;
}

- (TSDTexturedRectangle)initWithSize:(CGSize)a3 image:(CGImage *)a4
{
  height = a3.height;
  width = a3.width;
  result = [(TSDTexturedRectangle *)self initWithCGImage:a4];
  result->mSize.width = width;
  result->mSize.height = height;
  return result;
}

- (TSDTexturedRectangle)initWithCGImage:(CGImage *)a3
{
  v27.receiver = self;
  v27.super_class = TSDTexturedRectangle;
  v4 = [(TSDTexturedRectangle *)&v27 init];
  if (v4)
  {
    *(v4 + 17) = CGImageRetain(a3);
    *(v4 + 20) = 0x3FF0000000000000;
    *(v4 + 5) = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    *(v4 + 6) = Height;
    *(v4 + 8) = *MEMORY[0x277CBF348];
    v6 = *(v4 + 5);
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    *(v4 + 9) = v6;
    *(v4 + 10) = Height;
    [MEMORY[0x277CD9FF0] begin];
    v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v8 = *(v4 + 15);
    *(v4 + 15) = v7;

    [*(v4 + 15) setContents:a3];
    Width = CGImageGetWidth(a3);
    [*(v4 + 15) setBounds:{0.0, 0.0, Width, CGImageGetHeight(a3)}];
    __asm { FMOV            V1.2D, #0.5 }

    [*(v4 + 15) setPosition:{vmulq_f64(*(v4 + 40), _Q1)}];
    [*(v4 + 15) setEdgeAntialiasingMask:0];
    [*(v4 + 15) position];
    *(v4 + 3) = v15;
    *(v4 + 4) = v16;
    [*(v4 + 15) frame];
    *(v4 + 11) = v17;
    *(v4 + 12) = v18;
    *(v4 + 13) = v19;
    *(v4 + 14) = v20;
    v21 = *(v4 + 15);
    v22 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v21 setValue:v22 forKey:@"kTSDTextureLayerKeyHasContents"];

    v23 = *(v4 + 15);
    v24 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v4];
    [v23 setValue:v24 forKey:@"kTSDTextureLayerKeyTexturedRectangle"];

    [MEMORY[0x277CD9FF0] commit];
    v25 = v4;
  }

  return v4;
}

- (void)teardown
{
  mRenderBlock = self->mRenderBlock;
  self->mRenderBlock = 0;

  [(TSDTexturedRectangle *)self releaseSingleTexture];
}

- (void)dealloc
{
  [(TSDTexturedRectangle *)self releaseSingleTexture];
  mBakedImage = self->mBakedImage;
  if (mBakedImage)
  {
    CGImageRelease(mBakedImage);
  }

  mSourceImage = self->mSourceImage;
  if (mSourceImage)
  {
    CGImageRelease(mSourceImage);
  }

  v5.receiver = self;
  v5.super_class = TSDTexturedRectangle;
  [(TSDTexturedRectangle *)&v5 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = TSDStringFromTextureType([(TSDTexturedRectangle *)self textureType]);
  [v3 appendFormat:@"textureType:%@", v4];

  [(TSDTexturedRectangle *)self frame];
  v5 = NSStringFromCGRect(v12);
  [v3 appendFormat:@" frame:%@", v5];

  v6 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TSDTexturedRectangle;
  v7 = [(TSDTexturedRectangle *)&v10 description];
  v8 = [v6 stringWithFormat:@"%@: {%@}", v7, v3];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->mRenderBlock)
  {
    v5 = [[TSDTexturedRectangle allocWithZone:?]offset:"initWithSize:offset:renderBlock:" renderBlock:self->mRenderBlock, self->mOriginalFrame.size.width, self->mOriginalFrame.size.height, self->mOriginalFrame.origin.x, self->mOriginalFrame.origin.y];
  }

  else
  {
    if (!self->mSourceImage)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle copyWithZone:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:259 description:@"Trying to make a copy from a texture with no content"];

      v6 = 0;
      goto LABEL_6;
    }

    v5 = [[TSDTexturedRectangle allocWithZone:?], "initWithCGImage:", self->mSourceImage];
  }

  v6 = v5;
LABEL_6:
  [(TSDTexturedRectangle *)v6 setOffset:self->mOffset.x, self->mOffset.y];
  [(TSDTexturedRectangle *)v6 setTextureType:self->mTextureType];
  v7 = [(NSMutableDictionary *)self->mAttributes copyWithZone:a3];
  [(TSDTexturedRectangle *)v6 setAttributes:v7];

  [(TSDTexturedRectangle *)v6 setTextureOpacity:self->mTextureOpacity];
  [(TSDTexturedRectangle *)v6 setContentRect:self->mContentRect.origin.x, self->mContentRect.origin.y, self->mContentRect.size.width, self->mContentRect.size.height];
  v8 = [(NSMutableArray *)self->mTags copyWithZone:a3];
  [(TSDTexturedRectangle *)v6 setTags:v8];

  [(TSDTexturedRectangle *)v6 setText:self->_text];
  [(TSDTexturedRectangle *)v6 setTextColor:self->_textColor];
  [(TSDTexturedRectangle *)v6 setTextRange:self->_textRange.location, self->_textRange.length];
  [(TSDTexturedRectangle *)v6 setTextXHeight:self->_textXHeight];
  return v6;
}

- (float)opacityFromAttributes
{
  v2 = [(NSMutableDictionary *)self->mAttributes objectForKey:@"kSFXOpacity"];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (CATransform3D)transformFromAttributes
{
  v4 = [(NSMutableDictionary *)self->mAttributes objectForKey:@"kSFXAngle"];
  v7 = v4;
  if (v4)
  {
    [v4 floatValue];
  }

  else
  {
    v5 = 0.0;
  }

  CATransform3DMakeRotation(retstr, v5 / 180.0 * -3.14159265, 0.0, 0.0, 1.0);

  return result;
}

- (CGPoint)offset
{
  x = self->mOffset.x;
  y = self->mOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setOffset:(CGPoint)a3
{
  self->mOffset = a3;
  [(CALayer *)self->mLayer setFrame:?];
  [(CALayer *)self->mLayer position];
  self->mOriginalPosition.x = v4;
  self->mOriginalPosition.y = v5;
  [(CALayer *)self->mLayer frame];
  self->mOriginalFrame.origin.x = v6;
  self->mOriginalFrame.origin.y = v7;
  self->mOriginalFrame.size.width = v8;
  self->mOriginalFrame.size.height = v9;
}

- (CGRect)frame
{
  [(TSDTexturedRectangle *)self offset];
  v4 = v3;
  v6 = v5;
  [(TSDTexturedRectangle *)self size];
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v12 = v6;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)adjustAnchorRelativeToParentsCenterOfRotation:(CGPoint)a3 isMagicMove:(BOOL)a4
{
  v4 = a4;
  if (!a4 || (self->mTextureType & 0xFFFFFFFE) != 2)
  {
    x = a3.x;
    y = a3.y;
    width = self->mOriginalFrame.size.width;
    height = self->mOriginalFrame.size.height;
    v8 = TSDCenterOfRect(self->mOriginalFrame.origin.x, self->mOriginalFrame.origin.y, width, height);
    v9 = TSDSubtractPoints(x, y, v8);
    [(CALayer *)self->mLayer setAnchorPoint:v9 / width + 0.5, v10 / height + 0.5];
    [(CALayer *)self->mLayer setPosition:x, y];
    if (v4 && [(TSDTexturedRectangle *)self textureType]!= 9)
    {
      v11 = [(CALayer *)self->mLayer superlayer];
      [v11 bounds];
      v16 = TSDCenterOfRect(v12, v13, v14, v15);
      v18 = v17;

      v19 = *(MEMORY[0x277CBF2C0] + 16);
      *&v31.a = *MEMORY[0x277CBF2C0];
      *&v31.c = v19;
      *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformTranslate(&v32, &v31, v16, v18);
      tx = v32.tx;
      ty = v32.ty;
      v25 = *&v32.c;
      v27 = *&v32.a;
      v22 = [(TSDTexturedRectangle *)self parent];
      [v22 textureAngle];
      *&v31.a = v27;
      *&v31.c = v25;
      v31.tx = tx;
      v31.ty = ty;
      CGAffineTransformRotate(&v32, &v31, -v23);
      v26 = *&v32.c;
      v28 = *&v32.a;
      v24 = *&v32.tx;

      *&v31.a = v28;
      *&v31.c = v26;
      *&v31.tx = v24;
      CGAffineTransformTranslate(&v32, &v31, -v16, -v18);
      [(CALayer *)self->mLayer setPosition:vaddq_f64(*&v32.tx, vmlaq_n_f64(vmulq_n_f64(*&v32.c, y), *&v32.a, x))];
    }

    self->mOriginalPosition.x = x;
    self->mOriginalPosition.y = y;
  }
}

- (void)resetAnchorPoint
{
  [(CALayer *)self->mLayer setAnchorPoint:0.5, 0.5];
  [(CALayer *)self->mLayer bounds];
  v4 = self->mOffset.x + v3 * 0.5;
  [(CALayer *)self->mLayer bounds];
  v6 = self->mOffset.y + v5 * 0.5;
  mLayer = self->mLayer;

  [(CALayer *)mLayer setPosition:v4, v6];
}

- (void)setTextureType:(int)a3
{
  if (self->mTextureType != a3)
  {
    self->mTextureType = a3;
    v5 = TSDStringFromTextureType([(TSDTexturedRectangle *)self textureType]);
    [(CALayer *)self->mLayer setName:v5];
  }
}

- (CGColorSpace)p_colorSpace
{
  v3 = TSUDeviceRGBColorSpace();
  result = self->mColorSpace;
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained(&self->mParent);
    v6 = [WeakRetained colorSpace];

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->mParent);
      v3 = [v7 colorSpace];
    }

    return v3;
  }

  return result;
}

- (CGImage)p_newImageAndBufferWithAngle:(double)a3 scale:(double)a4 offset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v10 = CGBitmapContextCreate(0, self->mSize.width, self->mSize.height, 8uLL, 4 * self->mSize.width, [(TSDTexturedRectangle *)self p_colorSpace], 1u);
  TSDSetCGContextInfo(v10, 0, 0, 0, 0, 1.0);
  CGContextTranslateCTM(v10, 0.0, self->mSize.height);
  CGContextScaleCTM(v10, 1.0, -1.0);
  CGContextTranslateCTM(v10, x, y);
  if (a3 != 0.0 || a4 != 1.0)
  {
    v34 = *(MEMORY[0x277CBF2C0] + 16);
    *&v39.a = *MEMORY[0x277CBF2C0];
    *&v39.c = v34;
    *&v39.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(CALayer *)self->mLayer frame:*&v39.tx];
    v12 = -v11;
    [(CALayer *)self->mLayer frame];
    *&transform.a = v36;
    *&transform.c = v35;
    *&transform.tx = v33;
    CGAffineTransformTranslate(&v39, &transform, v12, -v13);
    [(CALayer *)self->mLayer position];
    v15 = v14;
    [(CALayer *)self->mLayer position];
    v37 = v39;
    CGAffineTransformTranslate(&transform, &v37, v15, v16);
    v39 = transform;
    v37 = transform;
    CGAffineTransformScale(&transform, &v37, a4, a4);
    v39 = transform;
    v37 = transform;
    CGAffineTransformRotate(&transform, &v37, a3);
    v39 = transform;
    [(CALayer *)self->mLayer anchorPoint];
    v18 = v17;
    v20 = v19;
    [(CALayer *)self->mLayer bounds];
    v22 = TSDMultiplyPointBySize(v18, v20, v21);
    v37 = v39;
    CGAffineTransformTranslate(&transform, &v37, -v22, -v23);
    v39 = transform;
    CGContextConcatCTM(v10, &transform);
  }

  mRenderBlock = self->mRenderBlock;
  if (mRenderBlock)
  {
    mRenderBlock[2](mRenderBlock, v10);
  }

  else
  {
    mSourceImage = self->mSourceImage;
    if (mSourceImage)
    {
      Height = CGImageGetHeight(mSourceImage);
      CGContextTranslateCTM(v10, 0.0, Height);
      CGContextScaleCTM(v10, 1.0, -1.0);
      Width = CGImageGetWidth(self->mSourceImage);
      v40.size.height = CGImageGetHeight(self->mSourceImage);
      v40.origin.x = 0.0;
      v40.origin.y = 0.0;
      v40.size.width = Width;
      CGContextDrawImage(v10, v40, self->mSourceImage);
    }

    else
    {
      v28 = [MEMORY[0x277D6C290] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle p_newImageAndBufferWithAngle:scale:offset:]"];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
      [v28 handleFailureInFunction:v29 file:v30 lineNumber:423 description:@"Nothing to render from."];
    }
  }

  TSDClearCGContextInfo(v10);
  Image = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  return Image;
}

- (void)resetToSourceImage
{
  CGImageRelease(self->mBakedImage);
  self->mBakedImage = 0;
  [(CALayer *)self->mLayer setFrame:self->mOriginalFrame.origin.x, self->mOriginalFrame.origin.y, self->mOriginalFrame.size.width, self->mOriginalFrame.size.height];
  [(CALayer *)self->mLayer setContents:self->mSourceImage];
  self->mSize = self->mOriginalFrame.size;
  self->mOffset = self->mOriginalFrame.origin;
  WeakRetained = objc_loadWeakRetained(&self->mParent);
  [WeakRetained setIsBaked:0];
}

- (void)renderLayerContentsIfNeeded
{
  v3 = [(CALayer *)self->mLayer contents];

  if (v3)
  {
    if (self->mBakedImage)
    {
      v4 = [(CALayer *)self->mLayer contents];
      if (v4 == self->mBakedImage)
      {
        v13 = v4;
        v11 = [(CALayer *)self->mLayer superlayer];
        v12 = [v11 superlayer];

        if (!v12)
        {

          [(TSDTexturedRectangle *)self resetToSourceImage];
        }
      }

      else
      {
      }
    }
  }

  else
  {
    if (!self->mRenderBlock && !self->mSourceImage)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle renderLayerContentsIfNeeded]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:455 description:@"Nothing to render from"];
    }

    mSourceImage = self->mSourceImage;
    if (!mSourceImage)
    {
      mSourceImage = [(TSDTexturedRectangle *)self p_newImageAndBufferWithAngle:0.0 scale:1.0 offset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      self->mSourceImage = mSourceImage;
    }

    [(CALayer *)self->mLayer setContents:mSourceImage];
    mTextureOpacity = self->mTextureOpacity;
    *&mTextureOpacity = mTextureOpacity;
    mLayer = self->mLayer;

    [(CALayer *)mLayer setOpacity:mTextureOpacity];
  }
}

- (void)setupSingleTextureAndGenerateMipMaps:(BOOL)a3
{
  if (!self->mSingleTextureName || a3 && !self->mSingleTextureContainsMipmaps)
  {
    [(TSDTexturedRectangle *)self releaseSingleTexture];
    width = self->mSize.width;
    height = self->mSize.height;
    v6 = [(TSDTexturedRectangle *)self image];
    v7 = malloc_type_malloc(4 * width * height, 0x100004077774924uLL);
    v8 = CGBitmapContextCreate(v7, width, height, 8uLL, 4 * width, [(TSDTexturedRectangle *)self p_colorSpace], 1u);
    TSDSetCGContextInfo(v8, 0, 0, 0, 0, 1.0);
    CGContextScaleCTM(v8, 1.0, -1.0);
    v9 = height;
    CGContextTranslateCTM(v8, 0.0, -v9);
    v17.size.width = width;
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.height = v9;
    CGContextClearRect(v8, v17);
    if (v6)
    {
      v10 = CGImageGetHeight(v6);
      CGContextTranslateCTM(v8, 0.0, v10);
      CGContextScaleCTM(v8, 1.0, -1.0);
      v11 = CGImageGetWidth(v6);
      v18.size.height = CGImageGetHeight(v6);
      v18.origin.x = 0.0;
      v18.origin.y = 0.0;
      v18.size.width = v11;
      CGContextDrawImage(v8, v18, v6);
    }

    else
    {
      mRenderBlock = self->mRenderBlock;
      if (mRenderBlock)
      {
        mRenderBlock[2](mRenderBlock, v8);
      }

      else
      {
        v13 = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle setupSingleTextureAndGenerateMipMaps:]"];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
        [v13 handleFailureInFunction:v14 file:v15 lineNumber:501 description:@"Nothing to render from"];
      }
    }

    TSDClearCGContextInfo(v8);

    CGContextRelease(v8);
  }
}

- (void)releaseSingleTexture
{
  if (self->mSingleTextureName)
  {
    self->mSingleTextureName = 0;
  }
}

- (double)singleTextureOpacity
{
  v3 = [(TSDTexturedRectangle *)self layer];
  [v3 opacity];
  v5 = v4;

  v6 = [(TSDTexturedRectangle *)self parent];

  if (v6)
  {
    v7 = [(TSDTexturedRectangle *)self parent];
    v8 = [v7 layer];
    [v8 opacity];
    v5 = v5 * v9;
  }

  return v5;
}

- (CGImage)image
{
  mBakedImage = self->mBakedImage;
  if (mBakedImage)
  {
    return mBakedImage;
  }

  mBakedImage = self->mSourceImage;
  if (mBakedImage)
  {
    return mBakedImage;
  }

  mLayer = self->mLayer;
  if (!mLayer)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle image]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:573 description:@"Can't make an image from this TSDTexturedRectangle!"];

    return 0;
  }

  return [(CALayer *)mLayer newRasterizedImageRef];
}

- (void)bakeLayerWithAngle:(double)a3 scale:(double)a4
{
  mLayer = self->mLayer;
  if (mLayer)
  {
    v8 = [(CALayer *)mLayer setContents:0];
    v9.n128_u64[0] = *MEMORY[0x277CBF348];
    v10.n128_u64[0] = *&self->mOriginalFrame.size.width;
    v11.n128_u64[0] = *&self->mOriginalFrame.size.height;
    [(CALayer *)self->mLayer setBounds:TSDRectWithOriginAndSize(v8, v9, *(MEMORY[0x277CBF348] + 8), v10, v11)];
    v12 = [(CALayer *)self->mLayer superlayer];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    [(CALayer *)self->mLayer frame];
    v18 = TSDAddPoints(v14, v16, v17);
    v20 = v19;

    v21 = [(CALayer *)self->mLayer frame];
    v22.n128_f64[0] = v18;
    v48.origin.x = TSDRectWithOriginAndSize(v21, v22, v20, v23, v24);
    x = v48.origin.x;
    y = v48.origin.y;
    v49 = CGRectIntegral(v48);
    v27 = v49.origin.x;
    v28 = v49.origin.y;
    self->mSize.width = v49.size.width;
    self->mSize.height = v49.size.height;
    v29 = [(CALayer *)self->mLayer superlayer];
    [v29 frame];
    self->mOffset.x = TSDSubtractPoints(v27, v28, v30);
    self->mOffset.y = v31;

    mBakedImage = self->mBakedImage;
    if (mBakedImage)
    {
      CGImageRelease(mBakedImage);
    }

    v33 = TSDSubtractPoints(x, y, v27);
    v35 = [(TSDTexturedRectangle *)self p_newImageAndBufferWithAngle:a3 scale:a4 offset:v33, v34];
    self->mBakedImage = v35;
    [(CALayer *)self->mLayer setContents:v35];
    if (a3 != 0.0)
    {
      [(CALayer *)self->mLayer setValue:&unk_287DDDFF0 forKeyPath:@"transform.rotation.z"];
    }

    if (a4 != 1.0)
    {
      [(CALayer *)self->mLayer setValue:&unk_287DDE000 forKeyPath:@"transform.scale.xy"];
    }

    v36 = self->mLayer;
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [(CALayer *)v36 setValue:v37 forKey:@"kTSDTextureLayerKeyBakedScale"];

    v38 = self->mLayer;
    v39 = *(MEMORY[0x277CD9DE8] + 80);
    v47[4] = *(MEMORY[0x277CD9DE8] + 64);
    v47[5] = v39;
    v40 = *(MEMORY[0x277CD9DE8] + 112);
    v47[6] = *(MEMORY[0x277CD9DE8] + 96);
    v47[7] = v40;
    v41 = *(MEMORY[0x277CD9DE8] + 16);
    v47[0] = *MEMORY[0x277CD9DE8];
    v47[1] = v41;
    v42 = *(MEMORY[0x277CD9DE8] + 48);
    v47[2] = *(MEMORY[0x277CD9DE8] + 32);
    v47[3] = v42;
    v43 = [(CALayer *)v38 setTransform:v47];
    v44.n128_u64[0] = *&self->mOffset.x;
    v45.n128_u64[0] = *&self->mSize.width;
    v46.n128_u64[0] = *&self->mSize.height;
    [(CALayer *)self->mLayer setFrame:TSDRectWithOriginAndSize(v43, v44, self->mOffset.y, v45, v46)];
  }
}

- (void)renderIntoContext:(CGContext *)a3
{
  if (![(CALayer *)self->mLayer isHidden])
  {
    CGContextSaveGState(a3);
    [(CALayer *)self->mLayer position];
    v6 = v5;
    [(CALayer *)self->mLayer position];
    CGContextTranslateCTM(a3, v6, v7);
    mLayer = self->mLayer;
    if (mLayer)
    {
      [(CALayer *)mLayer transform];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    if (!CATransform3DIsIdentity(&v25))
    {
      v9 = self->mLayer;
      if (v9)
      {
        [(CALayer *)v9 affineTransform];
      }

      else
      {
        memset(&v25, 0, 48);
      }

      CGContextConcatCTM(a3, &v25);
    }

    [(CALayer *)self->mLayer bounds:*&v25.m11];
    v11 = v10;
    [(CALayer *)self->mLayer anchorPoint];
    v13 = -(v11 * v12);
    [(CALayer *)self->mLayer bounds];
    v15 = v14;
    [(CALayer *)self->mLayer anchorPoint];
    CGContextTranslateCTM(a3, v13, -(v15 * v16));
    mTextureOpacity = self->mTextureOpacity;
    if (mTextureOpacity != 1.0)
    {
      CGContextSetAlpha(a3, mTextureOpacity);
      CGContextBeginTransparencyLayer(a3, 0);
    }

    mRenderBlock = self->mRenderBlock;
    if (mRenderBlock)
    {
      mRenderBlock[2](mRenderBlock, a3);
    }

    else
    {
      mSourceImage = self->mSourceImage;
      if (mSourceImage)
      {
        Height = CGImageGetHeight(mSourceImage);
        CGContextTranslateCTM(a3, 0.0, Height);
        CGContextScaleCTM(a3, 1.0, -1.0);
        Width = CGImageGetWidth(self->mSourceImage);
        v26.size.height = CGImageGetHeight(self->mSourceImage);
        v26.origin.x = 0.0;
        v26.origin.y = 0.0;
        v26.size.width = Width;
        CGContextDrawImage(a3, v26, self->mSourceImage);
      }

      else
      {
        v22 = [MEMORY[0x277D6C290] currentHandler];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle renderIntoContext:]"];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
        [v22 handleFailureInFunction:v23 file:v24 lineNumber:639 description:@"Nothing to render from."];
      }
    }

    if (self->mTextureOpacity != 1.0)
    {
      CGContextEndTransparencyLayer(a3);
    }

    CGContextRestoreGState(a3);
  }
}

- (BOOL)isBackgroundTexture
{
  v3 = [(TSDTexturedRectangle *)self parent];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TSDTexturedRectangle *)self parent];
  v5 = [v4 isBackgroundTexture:self];

  return v5;
}

- (CGRect)boundingRectForStage:(int64_t)a3 isBuildIn:(BOOL)a4
{
  v4 = a4;
  [(TSDTexturedRectangle *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(TSDTexturedRectangle *)self parent];

  if (v15)
  {
    v16 = [(TSDTexturedRectangle *)self parent];
    [v16 boundingRectForStage:a3 isBuildIn:v4];
    v8 = v17;
    v10 = v18;
    v12 = v19;
    v14 = v20;
  }

  v21 = v8;
  v22 = v10;
  v23 = v12;
  v24 = v14;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CALayer)parentLayer
{
  v3 = [(TSDTexturedRectangle *)self parent];

  if (v3)
  {
    v4 = [(TSDTexturedRectangle *)self parent];
    v5 = [v4 layer];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)frameOnCanvas
{
  x = self->mFrameOnCanvas.origin.x;
  y = self->mFrameOnCanvas.origin.y;
  width = self->mFrameOnCanvas.size.width;
  height = self->mFrameOnCanvas.size.height;
  v7 = [(TSDTexturedRectangle *)self parent];

  if (v7)
  {
    [(TSDTexturedRectangle *)self frame];
    v9 = v8;
    v10 = [(TSDTexturedRectangle *)self parent];
    [v10 frame];
    x = v9 + v11;
    v12 = [(TSDTexturedRectangle *)self parent];
    [v12 frame];
    v14 = v13;
    [(TSDTexturedRectangle *)self frame];
    y = v14 + CGRectGetMaxY(v24);

    [(TSDTexturedRectangle *)self frame];
    width = v15;
    [(TSDTexturedRectangle *)self frame];
    height = v16;
  }

  if (CGRectIsEmpty(self->mFrameOnCanvas))
  {
    [(TSDTexturedRectangle *)self frame];
    x = v17;
    [(TSDTexturedRectangle *)self frame];
    y = CGRectGetMaxY(v25);
    [(TSDTexturedRectangle *)self frame];
    width = v18;
    [(TSDTexturedRectangle *)self frame];
    height = v19;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (char)p_setupTextureDataWithSize:(CGSize)a3 isBGRA:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  mBakedImage = self->mBakedImage;
  if (!mBakedImage)
  {
    mBakedImage = self->mSourceImage;
  }

  v9 = a3.width;
  v11 = self->mSize.width;
  v10 = self->mSize.height;
  v12 = [(TSDTexturedRectangle *)self p_colorSpace];
  v13 = TSUP3ColorSpace();
  if (v12 == v13)
  {
    v17 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
    v14 = 8 * v9;
    v15 = 4353;
    v16 = 16;
  }

  else
  {
    v14 = 4 * v9;
    if (v4)
    {
      v15 = 8194;
    }

    else
    {
      v15 = 1;
    }

    v16 = 8;
    v17 = v12;
  }

  v18 = height;
  mRenderBlock = self->mRenderBlock;
  if (mRenderBlock)
  {
    LODWORD(mRenderBlock) = 0;
  }

  else
  {
    mLayer = self->mLayer;
    if (mLayer && !mBakedImage)
    {
      mBakedImage = [(CALayer *)mLayer newRasterizedImageRef];
      LODWORD(mRenderBlock) = 1;
    }
  }

  v31 = mRenderBlock;
  v21 = width / v11;
  v22 = height / v10;
  data = malloc_type_malloc(v14 * v18, 0x100004077774924uLL);
  if ([(TSDTexturedRectangle *)self textureType]== 7 && mBakedImage)
  {
    if (v12 == v13)
    {
      CGColorSpaceRelease(v17);
    }

    ColorSpace = CGImageGetColorSpace(mBakedImage);
    v24 = CGBitmapContextCreate(data, v9, v18, v16, v14, ColorSpace, v15);
  }

  else
  {
    v24 = CGBitmapContextCreate(data, v9, v18, v16, v14, v17, v15);
    if (v12 == v13)
    {
      CGColorSpaceRelease(v17);
    }
  }

  TSDSetCGContextInfo(v24, 0, 0, 0, 0, 1.0);
  CGContextScaleCTM(v24, 1.0, -1.0);
  CGContextTranslateCTM(v24, 0.0, -v18);
  CGContextScaleCTM(v24, v21, v22);
  v33.size.width = v9;
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.height = v18;
  CGContextClearRect(v24, v33);
  if ([(TSDTexturedRectangle *)self textureType]== 7)
  {
    CGContextSetInterpolationQuality(v24, kCGInterpolationNone);
  }

  if (mBakedImage)
  {
    [(CALayer *)self->mLayer bounds];
    CGContextTranslateCTM(v24, 0.0, v25);
    CGContextScaleCTM(v24, 1.0, -1.0);
    [(CALayer *)self->mLayer bounds];
    CGContextDrawImage(v24, v34, mBakedImage);
  }

  else
  {
    v26 = self->mRenderBlock;
    if (v26)
    {
      v26[2](v26, v24);
    }

    else
    {
      v27 = [MEMORY[0x277D6C290] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle p_setupTextureDataWithSize:isBGRA:]"];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
      [v27 handleFailureInFunction:v28 file:v29 lineNumber:757 description:{@"%p - Nothing to render from", self}];
    }
  }

  if (v31)
  {
    CGImageRelease(mBakedImage);
  }

  TSDClearCGContextInfo(v24);
  CGContextRelease(v24);
  return data;
}

- (id)p_allocateMetalTextureForDevice:(id)a3
{
  v4 = a3;
  v5 = +[TSDCapabilities currentCapabilities];
  [v5 maximumMetalTextureSizeForDevice:v4];

  v6 = [(TSDTexturedRectangle *)self p_colorSpace];
  if (v6 == TSUP3ColorSpace())
  {
    v7 = 115;
  }

  else
  {
    v7 = 80;
  }

  TSUShrinkSizeToFitInSize();
  v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v7 width:v9 height:v8 mipmapped:0];
  v11 = [v4 newTextureWithDescriptor:v10];

  return v11;
}

- (void)setupMetalTextureForDevice:(id)a3
{
  v4 = a3;
  if (!self->_metalTexture)
  {
    v5 = [(TSDTexturedRectangle *)self p_allocateMetalTextureForDevice:v4];
    metalTexture = self->_metalTexture;
    self->_metalTexture = v5;

    v7 = [(MTLTexture *)self->_metalTexture width];
    v8 = [(MTLTexture *)self->_metalTexture height];
    v9 = [(MTLTexture *)self->_metalTexture pixelFormat];
    v10 = 2;
    if (v9 == 115)
    {
      v10 = 3;
    }

    v11 = v7 << v10;
    v12 = [(TSDTexturedRectangle *)self p_setupTextureDataWithSize:1 isBGRA:v7, v8];
    memset(v17, 0, 24);
    v13 = self->_metalTexture;
    v17[3] = v7;
    v17[4] = v8;
    v17[5] = 1;
    [(MTLTexture *)v13 replaceRegion:v17 mipmapLevel:0 withBytes:v12 bytesPerRow:v11];
    if ([(MTLTexture *)self->_metalTexture mipmapLevelCount]>= 2)
    {
      v14 = [v4 newCommandQueue];
      v15 = [v14 commandBuffer];
      v16 = [v15 blitCommandEncoder];
      [v16 generateMipmapsForTexture:self->_metalTexture];
      [v16 endEncoding];
      [v15 commit];
    }

    free(v12);
  }
}

+ (id)setupMetalShaderForContext:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDTexturedRectangle setupMetalShaderForContext:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:846 description:{@"invalid nil value for '%s'", "context"}];
  }

  v7 = [v3 device];

  if (!v7)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDTexturedRectangle setupMetalShaderForContext:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:847 description:{@"invalid nil value for '%s'", "context.device"}];
  }

  v11 = objc_alloc_init(MEMORY[0x277CD6F68]);
  [v11 setPixelFormat:objc_msgSend(v3, "pixelFormat")];
  [v11 setBlendingEnabled:1];
  [v11 setRgbBlendOperation:0];
  [v11 setAlphaBlendOperation:0];
  [v11 setSourceRGBBlendFactor:1];
  [v11 setSourceAlphaBlendFactor:1];
  [v11 setDestinationAlphaBlendFactor:5];
  [v11 setDestinationRGBBlendFactor:5];
  v12 = [TSDMetalShader alloc];
  v13 = [v3 device];
  v14 = [(TSDMetalShader *)v12 initDefaultTextureAndOpacityShaderWithDevice:v13 colorAttachment:v11];

  return v14;
}

- (void)drawFrameAtLayerTime:(double)a3 context:(id)a4
{
  v5 = a4;
  if (!v5)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle drawFrameAtLayerTime:context:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:867 description:{@"invalid nil value for '%s'", "context"}];
  }

  [(TSDTexturedRectangle *)self frameOnCanvas];
  v10 = v9;
  [v5 layerSize];
  v12 = v11;
  [(TSDTexturedRectangle *)self frameOnCanvas];
  v14 = v12 - v13;
  [(TSDTexturedRectangle *)self frameOnCanvas];
  v16 = v14 - v15;
  [(TSDTexturedRectangle *)self frameOnCanvas];
  v18 = v17;
  [(TSDTexturedRectangle *)self frameOnCanvas];
  v20 = v19;
  v21 = [v5 device];
  v22 = [TSDGPUDataBuffer newDataBufferWithVertexRect:v21 textureRect:v10 device:v16, v18, v20, *MEMORY[0x277D6C3C8], *(MEMORY[0x277D6C3C8] + 8), *(MEMORY[0x277D6C3C8] + 16), *(MEMORY[0x277D6C3C8] + 24)];

  [v5 layerSize];
  v24 = v23;
  v26 = v25;
  v27 = [v5 shader];

  if (!v27)
  {
    v28 = [MEMORY[0x277D6C290] currentHandler];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle drawFrameAtLayerTime:context:]"];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [v28 handleFailureInFunction:v29 file:v30 lineNumber:874 description:{@"invalid nil value for '%s'", "context.shader"}];
  }

  v31 = [v5 renderEncoder];

  if (!v31)
  {
    v32 = [MEMORY[0x277D6C290] currentHandler];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle drawFrameAtLayerTime:context:]"];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [v32 handleFailureInFunction:v33 file:v34 lineNumber:875 description:{@"invalid nil value for '%s'", "context.renderEncoder"}];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  TSDTransform3DMakeOrtho(&v43, 0.0, v24, 0.0, v26, -1.0, 1.0);
  v51[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v43), v44);
  v51[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v45), v46);
  v51[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v47), v48);
  v51[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v49), v50);
  [(TSDTexturedRectangle *)self singleTextureOpacity];
  *&v35 = v35;
  v42 = LODWORD(v35);
  v36 = [v5 renderEncoder];
  v37 = [(TSDTexturedRectangle *)self metalTexture];
  [v36 setFragmentTexture:v37 atIndex:0];

  v38 = [v5 shader];
  v39 = [v5 renderEncoder];
  [v38 setPipelineStateWithEncoder:v39 vertexBytes:v51 fragmentBytes:&v42];

  v40 = [v5 renderEncoder];
  v41 = [v5 shader];
  [v22 drawWithEncoder:v40 atIndex:{objc_msgSend(v41, "bufferIndex")}];
}

- (id)metalTextureWithContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_liveTexturedRectangleSourceProxy);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_liveTexturedRectangleSourceProxy);
    v7 = [v6 metalTextureWithContext:v4];

    goto LABEL_3;
  }

  if (!self->_liveTexturedRectangleSource)
  {
    v7 = [(TSDTexturedRectangle *)self metalTexture];
    goto LABEL_3;
  }

  shouldUseDisplayLinkPresentationTime = self->_shouldUseDisplayLinkPresentationTime;
  [v4 timingInfo];
  if (shouldUseDisplayLinkPresentationTime)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = self;
  objc_sync_enter(v13);
  if (!v13->_liveMetalTexturePool)
  {
    v13->_liveMetalTexturePoolIndex = -1;
    v14 = dispatch_semaphore_create(3);
    liveMetalTexturesSemaphore = v13->_liveMetalTexturesSemaphore;
    v13->_liveMetalTexturesSemaphore = v14;

    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    liveMetalTextureToTimestamp = v13->_liveMetalTextureToTimestamp;
    v13->_liveMetalTextureToTimestamp = v16;

    v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    liveMetalTimestampToTexture = v13->_liveMetalTimestampToTexture;
    v13->_liveMetalTimestampToTexture = v18;

    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    liveMetalTexturePool = v13->_liveMetalTexturePool;
    v13->_liveMetalTexturePool = v20;
  }

  v22 = v13->_liveMetalTimestampToTexture;
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v24 = [(NSMutableDictionary *)v22 objectForKey:v23];

  if (v24)
  {
    v25 = v24;
LABEL_29:
    v7 = v25;
    LODWORD(v33) = 0;
    goto LABEL_30;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([(TSDLiveTexturedRectangleSource *)self->_liveTexturedRectangleSource requiresOffscreenPass]& 1) == 0 && (objc_opt_respondsToSelector())
  {
    v25 = [(TSDLiveTexturedRectangleSource *)self->_liveTexturedRectangleSource metalTextureWithContext:v4];
    goto LABEL_29;
  }

  if (([(TSDLiveTexturedRectangleSource *)self->_liveTexturedRectangleSource shouldDrawToMetalTextureWithContext:v4]& 1) == 0)
  {
    v25 = [(TSDTexturedRectangle *)v13 p_latestTextureNotAfterLayerTime:v12];
    goto LABEL_29;
  }

  if ([(NSMutableArray *)v13->_liveMetalTexturePool count]> 2)
  {
LABEL_23:
    if (!v13->_liveTextureSourceShader)
    {
      if (!v4)
      {
        v34 = [MEMORY[0x277D6C290] currentHandler];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle metalTextureWithContext:]"];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
        [v34 handleFailureInFunction:v35 file:v36 lineNumber:949 description:{@"invalid nil value for '%s'", "callingMetalContext"}];
      }

      v37 = objc_alloc_init(MEMORY[0x277CD6F68]);
      v38 = [(NSMutableArray *)v13->_liveMetalTexturePool firstObject];
      [v37 setPixelFormat:objc_msgSend(v38, "pixelFormat")];

      [v37 setBlendingEnabled:1];
      [v37 setRgbBlendOperation:0];
      [v37 setAlphaBlendOperation:0];
      [v37 setSourceRGBBlendFactor:1];
      [v37 setSourceAlphaBlendFactor:1];
      [v37 setDestinationAlphaBlendFactor:5];
      [v37 setDestinationRGBBlendFactor:5];
      v39 = [TSDMetalShader alloc];
      v40 = [v4 device];
      v41 = [(TSDMetalShader *)v39 initDefaultTextureAndOpacityShaderWithDevice:v40 colorAttachment:v37];
      liveTextureSourceShader = v13->_liveTextureSourceShader;
      v13->_liveTextureSourceShader = v41;
    }

    v7 = 0;
    LODWORD(v33) = 1;
    goto LABEL_30;
  }

  v26 = +[TSDCapabilities currentCapabilities];
  v27 = [v4 device];
  [v26 maximumMetalTextureSizeForDevice:v27];
  v29 = v28;
  v31 = v30;

  v32 = [v4 device];
  v33 = [(TSDTexturedRectangle *)v13 p_allocateMetalTextureForDevice:v32 renderTarget:1 writable:0 private:1 maxSize:v29, v31];

  if (v33)
  {
    [(NSMutableArray *)v13->_liveMetalTexturePool addObject:v33];

    goto LABEL_23;
  }

  v7 = 0;
LABEL_30:

  objc_sync_exit(v13);
  if (v33)
  {
    dispatch_semaphore_wait(v13->_liveMetalTexturesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v43 = v13->_liveMetalTexturePool;
    v13->_liveMetalTexturePoolIndex = (v13->_liveMetalTexturePoolIndex + 1) % 3;
    v7 = [(NSMutableArray *)v43 objectAtIndexedSubscript:?];
    v44 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v7];
    v45 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    v46 = [v45 colorAttachments];
    v47 = [v46 objectAtIndexedSubscript:0];
    [v47 setTexture:v7];

    v48 = [v45 colorAttachments];
    v49 = [v48 objectAtIndexedSubscript:0];
    [v49 setLoadAction:2];

    v50 = [v45 colorAttachments];
    v51 = [v50 objectAtIndexedSubscript:0];
    [v51 setStoreAction:1];

    v52 = [v45 colorAttachments];
    v53 = [v52 objectAtIndexedSubscript:0];
    [v53 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    v54 = [v4 copy];
    v55 = [(NSMutableArray *)v13->_liveMetalTexturePool firstObject];
    [v54 setPixelFormat:objc_msgSend(v55, "pixelFormat")];

    v56 = [(TSDTexturedRectangle *)v13 metalTexture];
    v57 = [v56 width];
    v58 = [(TSDTexturedRectangle *)v13 metalTexture];
    [v54 setLayerSize:{v57, objc_msgSend(v58, "height")}];

    [v54 setShader:v13->_liveTextureSourceShader];
    [v54 setCurrentBuffer:v13->_liveMetalTexturePoolIndex];
    v59 = [v54 commandQueue];
    v60 = [v59 commandBuffer];

    v77 = v60;
    [v54 setCommandBuffer:v60];
    v61 = [v54 commandBuffer];

    if (!v61)
    {
      v62 = [MEMORY[0x277D6C290] currentHandler];
      [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle metalTextureWithContext:]"];
      v76 = v45;
      v64 = v63 = v44;
      v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
      [v62 handleFailureInFunction:v64 file:v65 lineNumber:991 description:{@"invalid nil value for '%s'", "context.commandBuffer"}];

      v44 = v63;
      v45 = v76;
    }

    [v54 setPassDescriptor:v45];
    v66 = [v54 commandBuffer];
    v67 = [v54 passDescriptor];
    v68 = [v66 renderCommandEncoderWithDescriptor:v67];

    [v54 setRenderEncoder:v68];
    v69 = v13;
    objc_sync_enter(v69);
    v70 = [v69[30] objectForKey:v44];
    if (v70)
    {
      [v69[30] removeObjectForKey:v44];
      [(NSMutableDictionary *)v13->_liveMetalTimestampToTexture removeObjectForKey:v70];
    }

    objc_sync_exit(v69);
    [(TSDLiveTexturedRectangleSource *)self->_liveTexturedRectangleSource drawToMetalTextureWithContext:v54];
    v71 = [v54 renderEncoder];
    [v71 endEncoding];

    objc_initWeak(&location, v13->_liveMetalTexturesSemaphore);
    v72 = [v54 commandBuffer];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __48__TSDTexturedRectangle_metalTextureWithContext___block_invoke;
    v78[3] = &unk_279D48C30;
    objc_copyWeak(&v79, &location);
    [v72 addCompletedHandler:v78];

    v73 = [v54 commandBuffer];
    [v73 commit];

    v74 = v69;
    objc_sync_enter(v74);
    v75 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    [v69[30] setObject:v75 forKey:v44];
    [(NSMutableDictionary *)v13->_liveMetalTimestampToTexture setObject:v7 forKey:v75];

    objc_sync_exit(v74);
    objc_destroyWeak(&v79);
    objc_destroyWeak(&location);
  }

LABEL_3:

  return v7;
}

void __48__TSDTexturedRectangle_metalTextureWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_semaphore_signal(WeakRetained);
}

- (CGSize)p_textureSizeWithDevice:(id)a3 maxSize:(CGSize)a4
{
  [(CALayer *)self->mLayer contentsRect];
  if (v5 != 0.0)
  {
    [(CALayer *)self->mLayer contentsRect];
    if (v6 != 0.0)
    {
      [(CALayer *)self->mLayer contentsRect];
      [(CALayer *)self->mLayer contentsRect];
    }
  }

  TSUShrinkSizeToFitInSize();
  if (self->mSize.width != 0.0)
  {
    v9 = fmax(v7, 1.0);
    v10 = fmax(v8, 1.0);
    if (self->mSize.height != 0.0)
    {
      v8 = v10;
      v7 = v9;
    }
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (id)p_allocateMetalTextureForDevice:(id)a3 renderTarget:(BOOL)a4 writable:(BOOL)a5 private:(BOOL)a6 maxSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v13 = a3;
  [(TSDTexturedRectangle *)self p_textureSizeWithDevice:v13 maxSize:width, height];
  v15 = v14;
  v17 = v16;
  if (v14)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
    goto LABEL_21;
  }

  v20 = [(TSDTexturedRectangle *)self p_colorSpace];
  v21 = TSUP3ColorSpace();
  v22 = 70;
  if (v11)
  {
    v22 = 80;
  }

  v23 = 115;
  if (v11)
  {
    v23 = 552;
  }

  if (v20 == v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v25 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v24 width:v15 height:v17 mipmapped:self->mShouldGenerateMipmap];
  v26 = v25;
  if (!v11)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

LABEL_25:
    [v26 setUsage:{objc_msgSend(v26, "usage") | 2}];
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  [v25 setUsage:5];
  if (v10)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v9)
  {
LABEL_17:
    [v26 setResourceOptions:32];
    [v26 setStorageMode:2];
  }

LABEL_18:
  v19 = [v13 newTextureWithDescriptor:v26];

  if (v19 && [v19 width])
  {
    [v19 height];
  }

LABEL_21:

  return v19;
}

- (id)p_latestTextureNotAfterLayerTime:(double)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(NSMutableArray *)self->_liveMetalTexturePool count])
  {
    v10 = [(TSDTexturedRectangle *)self metalTexture];
    goto LABEL_22;
  }

  v5 = [(NSMutableDictionary *)self->_liveMetalTimestampToTexture allKeys];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v8)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v26;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v25 + 1) + 8 * i);
      if (!v10)
      {
        v10 = [(NSMutableDictionary *)self->_liveMetalTimestampToTexture objectForKey:*(*(&v25 + 1) + 8 * i), v25];
        v23 = v14;
        goto LABEL_15;
      }

      [v6 doubleValue];
      v16 = v15;
      [v11 doubleValue];
      v18 = v17;
      [v14 doubleValue];
      v20 = v19 > v16;
      v21 = v16 - v19;
      if (!v20 && v21 < v16 - v18)
      {
        v23 = v14;

        [(NSMutableDictionary *)self->_liveMetalTimestampToTexture objectForKey:v23];
        v10 = v11 = v10;
LABEL_15:

        v11 = v23;
        continue;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:{16, v21}];
  }

  while (v9);
LABEL_21:

LABEL_22:

  return v10;
}

- (void)setLiveTexturedRectangleSource:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_liveTexturedRectangleSourceProxy, 0);
  liveTexturedRectangleSource = self->_liveTexturedRectangleSource;
  self->_liveTexturedRectangleSource = v4;
}

- (void)setLiveTexturedRectangleSourceProxy:(id)a3
{
  obj = a3;
  if (self->_liveTexturedRectangleSource)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle setLiveTexturedRectangleSourceProxy:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:1165 description:{@"expected nil value for '%s'", "_liveTexturedRectangleSource"}];
  }

  objc_storeWeak(&self->_liveTexturedRectangleSourceProxy, obj);
}

- (BOOL)hasLiveTexturedRectangleSource
{
  if (self->_liveTexturedRectangleSource)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_liveTexturedRectangleSourceProxy);
  v2 = WeakRetained != 0;

  return v2;
}

- (CGRect)contentRect
{
  x = self->mContentRect.origin.x;
  y = self->mContentRect.origin.y;
  width = self->mContentRect.size.width;
  height = self->mContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)originalPosition
{
  x = self->mOriginalPosition.x;
  y = self->mOriginalPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (TSDTextureSet)parent
{
  WeakRetained = objc_loadWeakRetained(&self->mParent);

  return WeakRetained;
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end