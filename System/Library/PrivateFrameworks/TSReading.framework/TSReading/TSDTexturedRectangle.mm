@interface TSDTexturedRectangle
+ (id)setupMetalShaderForContext:(id)context;
- (BOOL)hasLiveTexturedRectangleSource;
- (BOOL)isBackgroundTexture;
- (CALayer)parentLayer;
- (CATransform3D)transformFromAttributes;
- (CGColorSpace)p_colorSpace;
- (CGImage)image;
- (CGImage)p_newImageAndBufferWithAngle:(double)angle scale:(double)scale offset:(CGPoint)offset;
- (CGPoint)offset;
- (CGPoint)originalPosition;
- (CGRect)boundingRectForStage:(int64_t)stage isBuildIn:(BOOL)in;
- (CGRect)contentRect;
- (CGRect)frame;
- (CGRect)frameOnCanvas;
- (CGSize)p_textureSizeWithDevice:(id)device maxSize:(CGSize)size;
- (CGSize)size;
- (TSDTextureSet)parent;
- (TSDTexturedRectangle)initWithCGImage:(CGImage *)image;
- (TSDTexturedRectangle)initWithLayer:(id)layer;
- (TSDTexturedRectangle)initWithSize:(CGSize)size image:(CGImage *)image;
- (TSDTexturedRectangle)initWithSize:(CGSize)size offset:(CGPoint)offset renderBlock:(id)block;
- (_NSRange)textRange;
- (char)p_setupTextureDataWithSize:(CGSize)size isBGRA:(BOOL)a;
- (double)singleTextureOpacity;
- (float)opacityFromAttributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)metalTextureWithContext:(id)context;
- (id)p_allocateMetalTextureForDevice:(id)device;
- (id)p_allocateMetalTextureForDevice:(id)device renderTarget:(BOOL)target writable:(BOOL)writable private:(BOOL)private maxSize:(CGSize)size;
- (id)p_latestTextureNotAfterLayerTime:(double)time;
- (void)adjustAnchorRelativeToParentsCenterOfRotation:(CGPoint)rotation isMagicMove:(BOOL)move;
- (void)bakeLayerWithAngle:(double)angle scale:(double)scale;
- (void)dealloc;
- (void)drawFrameAtLayerTime:(double)time context:(id)context;
- (void)releaseSingleTexture;
- (void)renderIntoContext:(CGContext *)context;
- (void)renderLayerContentsIfNeeded;
- (void)resetAnchorPoint;
- (void)resetToSourceImage;
- (void)setLiveTexturedRectangleSource:(id)source;
- (void)setLiveTexturedRectangleSourceProxy:(id)proxy;
- (void)setOffset:(CGPoint)offset;
- (void)setTextureType:(int)type;
- (void)setupMetalTextureForDevice:(id)device;
- (void)setupSingleTextureAndGenerateMipMaps:(BOOL)maps;
- (void)teardown;
@end

@implementation TSDTexturedRectangle

- (TSDTexturedRectangle)initWithSize:(CGSize)size offset:(CGPoint)offset renderBlock:(id)block
{
  y = offset.y;
  x = offset.x;
  height = size.height;
  width = size.width;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = TSDTexturedRectangle;
  v11 = [(TSDTexturedRectangle *)&v21 init];
  if (v11)
  {
    v12 = [blockCopy copy];
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

- (TSDTexturedRectangle)initWithLayer:(id)layer
{
  layerCopy = layer;
  v25.receiver = self;
  v25.super_class = TSDTexturedRectangle;
  v6 = [(TSDTexturedRectangle *)&v25 init];
  v7 = v6;
  if (v6)
  {
    mRenderBlock = v6->mRenderBlock;
    v6->mRenderBlock = 0;

    [layerCopy frame];
    v7->mSize.width = v9;
    v7->mSize.height = v10;
    [layerCopy frame];
    v7->mOffset.x = v11;
    v7->mOffset.y = v12;
    [layerCopy position];
    v7->mOriginalPosition.x = v13;
    v7->mOriginalPosition.y = v14;
    [layerCopy frame];
    v7->mOriginalFrame.origin.x = v15;
    v7->mOriginalFrame.origin.y = v16;
    v7->mOriginalFrame.size.width = v17;
    v7->mOriginalFrame.size.height = v18;
    v7->mContentRect.origin.x = 0.0;
    v7->mContentRect.origin.y = 0.0;
    v7->mContentRect.size = v7->mSize;
    v7->mTextureOpacity = 1.0;
    objc_storeStrong(&v7->mLayer, layer);
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

- (TSDTexturedRectangle)initWithSize:(CGSize)size image:(CGImage *)image
{
  height = size.height;
  width = size.width;
  result = [(TSDTexturedRectangle *)self initWithCGImage:image];
  result->mSize.width = width;
  result->mSize.height = height;
  return result;
}

- (TSDTexturedRectangle)initWithCGImage:(CGImage *)image
{
  v27.receiver = self;
  v27.super_class = TSDTexturedRectangle;
  v4 = [(TSDTexturedRectangle *)&v27 init];
  if (v4)
  {
    *(v4 + 17) = CGImageRetain(image);
    *(v4 + 20) = 0x3FF0000000000000;
    *(v4 + 5) = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
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

    [*(v4 + 15) setContents:image];
    Width = CGImageGetWidth(image);
    [*(v4 + 15) setBounds:{0.0, 0.0, Width, CGImageGetHeight(image)}];
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
  string = [MEMORY[0x277CCAB68] string];
  v4 = TSDStringFromTextureType([(TSDTexturedRectangle *)self textureType]);
  [string appendFormat:@"textureType:%@", v4];

  [(TSDTexturedRectangle *)self frame];
  v5 = NSStringFromCGRect(v12);
  [string appendFormat:@" frame:%@", v5];

  v6 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TSDTexturedRectangle;
  v7 = [(TSDTexturedRectangle *)&v10 description];
  v8 = [v6 stringWithFormat:@"%@: {%@}", v7, string];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->mRenderBlock)
  {
    v5 = [[TSDTexturedRectangle allocWithZone:?]offset:"initWithSize:offset:renderBlock:" renderBlock:self->mRenderBlock, self->mOriginalFrame.size.width, self->mOriginalFrame.size.height, self->mOriginalFrame.origin.x, self->mOriginalFrame.origin.y];
  }

  else
  {
    if (!self->mSourceImage)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle copyWithZone:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
      [currentHandler handleFailureInFunction:v11 file:v12 lineNumber:259 description:@"Trying to make a copy from a texture with no content"];

      v6 = 0;
      goto LABEL_6;
    }

    v5 = [[TSDTexturedRectangle allocWithZone:?], "initWithCGImage:", self->mSourceImage];
  }

  v6 = v5;
LABEL_6:
  [(TSDTexturedRectangle *)v6 setOffset:self->mOffset.x, self->mOffset.y];
  [(TSDTexturedRectangle *)v6 setTextureType:self->mTextureType];
  v7 = [(NSMutableDictionary *)self->mAttributes copyWithZone:zone];
  [(TSDTexturedRectangle *)v6 setAttributes:v7];

  [(TSDTexturedRectangle *)v6 setTextureOpacity:self->mTextureOpacity];
  [(TSDTexturedRectangle *)v6 setContentRect:self->mContentRect.origin.x, self->mContentRect.origin.y, self->mContentRect.size.width, self->mContentRect.size.height];
  v8 = [(NSMutableArray *)self->mTags copyWithZone:zone];
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

- (void)setOffset:(CGPoint)offset
{
  self->mOffset = offset;
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

- (void)adjustAnchorRelativeToParentsCenterOfRotation:(CGPoint)rotation isMagicMove:(BOOL)move
{
  moveCopy = move;
  if (!move || (self->mTextureType & 0xFFFFFFFE) != 2)
  {
    x = rotation.x;
    y = rotation.y;
    width = self->mOriginalFrame.size.width;
    height = self->mOriginalFrame.size.height;
    v8 = TSDCenterOfRect(self->mOriginalFrame.origin.x, self->mOriginalFrame.origin.y, width, height);
    v9 = TSDSubtractPoints(x, y, v8);
    [(CALayer *)self->mLayer setAnchorPoint:v9 / width + 0.5, v10 / height + 0.5];
    [(CALayer *)self->mLayer setPosition:x, y];
    if (moveCopy && [(TSDTexturedRectangle *)self textureType]!= 9)
    {
      superlayer = [(CALayer *)self->mLayer superlayer];
      [superlayer bounds];
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
      parent = [(TSDTexturedRectangle *)self parent];
      [parent textureAngle];
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

- (void)setTextureType:(int)type
{
  if (self->mTextureType != type)
  {
    self->mTextureType = type;
    v5 = TSDStringFromTextureType([(TSDTexturedRectangle *)self textureType]);
    [(CALayer *)self->mLayer setName:v5];
  }
}

- (CGColorSpace)p_colorSpace
{
  colorSpace2 = TSUDeviceRGBColorSpace();
  result = self->mColorSpace;
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained(&self->mParent);
    colorSpace = [WeakRetained colorSpace];

    if (colorSpace)
    {
      v7 = objc_loadWeakRetained(&self->mParent);
      colorSpace2 = [v7 colorSpace];
    }

    return colorSpace2;
  }

  return result;
}

- (CGImage)p_newImageAndBufferWithAngle:(double)angle scale:(double)scale offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v10 = CGBitmapContextCreate(0, self->mSize.width, self->mSize.height, 8uLL, 4 * self->mSize.width, [(TSDTexturedRectangle *)self p_colorSpace], 1u);
  TSDSetCGContextInfo(v10, 0, 0, 0, 0, 1.0);
  CGContextTranslateCTM(v10, 0.0, self->mSize.height);
  CGContextScaleCTM(v10, 1.0, -1.0);
  CGContextTranslateCTM(v10, x, y);
  if (angle != 0.0 || scale != 1.0)
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
    CGAffineTransformScale(&transform, &v37, scale, scale);
    v39 = transform;
    v37 = transform;
    CGAffineTransformRotate(&transform, &v37, angle);
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle p_newImageAndBufferWithAngle:scale:offset:]"];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
      [currentHandler handleFailureInFunction:v29 file:v30 lineNumber:423 description:@"Nothing to render from."];
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
  contents = [(CALayer *)self->mLayer contents];

  if (contents)
  {
    if (self->mBakedImage)
    {
      contents2 = [(CALayer *)self->mLayer contents];
      if (contents2 == self->mBakedImage)
      {
        v13 = contents2;
        superlayer = [(CALayer *)self->mLayer superlayer];
        v11Superlayer = [superlayer superlayer];

        if (!v11Superlayer)
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle renderLayerContentsIfNeeded]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
      [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:455 description:@"Nothing to render from"];
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

- (void)setupSingleTextureAndGenerateMipMaps:(BOOL)maps
{
  if (!self->mSingleTextureName || maps && !self->mSingleTextureContainsMipmaps)
  {
    [(TSDTexturedRectangle *)self releaseSingleTexture];
    width = self->mSize.width;
    height = self->mSize.height;
    image = [(TSDTexturedRectangle *)self image];
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
    if (image)
    {
      v10 = CGImageGetHeight(image);
      CGContextTranslateCTM(v8, 0.0, v10);
      CGContextScaleCTM(v8, 1.0, -1.0);
      v11 = CGImageGetWidth(image);
      v18.size.height = CGImageGetHeight(image);
      v18.origin.x = 0.0;
      v18.origin.y = 0.0;
      v18.size.width = v11;
      CGContextDrawImage(v8, v18, image);
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
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle setupSingleTextureAndGenerateMipMaps:]"];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
        [currentHandler handleFailureInFunction:v14 file:v15 lineNumber:501 description:@"Nothing to render from"];
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
  layer = [(TSDTexturedRectangle *)self layer];
  [layer opacity];
  v5 = v4;

  parent = [(TSDTexturedRectangle *)self parent];

  if (parent)
  {
    parent2 = [(TSDTexturedRectangle *)self parent];
    layer2 = [parent2 layer];
    [layer2 opacity];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle image]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:573 description:@"Can't make an image from this TSDTexturedRectangle!"];

    return 0;
  }

  return [(CALayer *)mLayer newRasterizedImageRef];
}

- (void)bakeLayerWithAngle:(double)angle scale:(double)scale
{
  mLayer = self->mLayer;
  if (mLayer)
  {
    v8 = [(CALayer *)mLayer setContents:0];
    v9.n128_u64[0] = *MEMORY[0x277CBF348];
    v10.n128_u64[0] = *&self->mOriginalFrame.size.width;
    v11.n128_u64[0] = *&self->mOriginalFrame.size.height;
    [(CALayer *)self->mLayer setBounds:TSDRectWithOriginAndSize(v8, v9, *(MEMORY[0x277CBF348] + 8), v10, v11)];
    superlayer = [(CALayer *)self->mLayer superlayer];
    [superlayer frame];
    v14 = v13;
    v16 = v15;
    [(CALayer *)self->mLayer frame];
    v18 = TSDAddPoints(v14, v16, v17);
    v20 = v19;

    frame = [(CALayer *)self->mLayer frame];
    v22.n128_f64[0] = v18;
    v48.origin.x = TSDRectWithOriginAndSize(frame, v22, v20, v23, v24);
    x = v48.origin.x;
    y = v48.origin.y;
    v49 = CGRectIntegral(v48);
    v27 = v49.origin.x;
    v28 = v49.origin.y;
    self->mSize.width = v49.size.width;
    self->mSize.height = v49.size.height;
    superlayer2 = [(CALayer *)self->mLayer superlayer];
    [superlayer2 frame];
    self->mOffset.x = TSDSubtractPoints(v27, v28, v30);
    self->mOffset.y = v31;

    mBakedImage = self->mBakedImage;
    if (mBakedImage)
    {
      CGImageRelease(mBakedImage);
    }

    v33 = TSDSubtractPoints(x, y, v27);
    v35 = [(TSDTexturedRectangle *)self p_newImageAndBufferWithAngle:angle scale:scale offset:v33, v34];
    self->mBakedImage = v35;
    [(CALayer *)self->mLayer setContents:v35];
    if (angle != 0.0)
    {
      [(CALayer *)self->mLayer setValue:&unk_287DDDFF0 forKeyPath:@"transform.rotation.z"];
    }

    if (scale != 1.0)
    {
      [(CALayer *)self->mLayer setValue:&unk_287DDE000 forKeyPath:@"transform.scale.xy"];
    }

    v36 = self->mLayer;
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:scale];
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

- (void)renderIntoContext:(CGContext *)context
{
  if (![(CALayer *)self->mLayer isHidden])
  {
    CGContextSaveGState(context);
    [(CALayer *)self->mLayer position];
    v6 = v5;
    [(CALayer *)self->mLayer position];
    CGContextTranslateCTM(context, v6, v7);
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

      CGContextConcatCTM(context, &v25);
    }

    [(CALayer *)self->mLayer bounds:*&v25.m11];
    v11 = v10;
    [(CALayer *)self->mLayer anchorPoint];
    v13 = -(v11 * v12);
    [(CALayer *)self->mLayer bounds];
    v15 = v14;
    [(CALayer *)self->mLayer anchorPoint];
    CGContextTranslateCTM(context, v13, -(v15 * v16));
    mTextureOpacity = self->mTextureOpacity;
    if (mTextureOpacity != 1.0)
    {
      CGContextSetAlpha(context, mTextureOpacity);
      CGContextBeginTransparencyLayer(context, 0);
    }

    mRenderBlock = self->mRenderBlock;
    if (mRenderBlock)
    {
      mRenderBlock[2](mRenderBlock, context);
    }

    else
    {
      mSourceImage = self->mSourceImage;
      if (mSourceImage)
      {
        Height = CGImageGetHeight(mSourceImage);
        CGContextTranslateCTM(context, 0.0, Height);
        CGContextScaleCTM(context, 1.0, -1.0);
        Width = CGImageGetWidth(self->mSourceImage);
        v26.size.height = CGImageGetHeight(self->mSourceImage);
        v26.origin.x = 0.0;
        v26.origin.y = 0.0;
        v26.size.width = Width;
        CGContextDrawImage(context, v26, self->mSourceImage);
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle renderIntoContext:]"];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
        [currentHandler handleFailureInFunction:v23 file:v24 lineNumber:639 description:@"Nothing to render from."];
      }
    }

    if (self->mTextureOpacity != 1.0)
    {
      CGContextEndTransparencyLayer(context);
    }

    CGContextRestoreGState(context);
  }
}

- (BOOL)isBackgroundTexture
{
  parent = [(TSDTexturedRectangle *)self parent];

  if (!parent)
  {
    return 0;
  }

  parent2 = [(TSDTexturedRectangle *)self parent];
  v5 = [parent2 isBackgroundTexture:self];

  return v5;
}

- (CGRect)boundingRectForStage:(int64_t)stage isBuildIn:(BOOL)in
{
  inCopy = in;
  [(TSDTexturedRectangle *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  parent = [(TSDTexturedRectangle *)self parent];

  if (parent)
  {
    parent2 = [(TSDTexturedRectangle *)self parent];
    [parent2 boundingRectForStage:stage isBuildIn:inCopy];
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
  parent = [(TSDTexturedRectangle *)self parent];

  if (parent)
  {
    parent2 = [(TSDTexturedRectangle *)self parent];
    layer = [parent2 layer];
  }

  else
  {
    layer = 0;
  }

  return layer;
}

- (CGRect)frameOnCanvas
{
  x = self->mFrameOnCanvas.origin.x;
  y = self->mFrameOnCanvas.origin.y;
  width = self->mFrameOnCanvas.size.width;
  height = self->mFrameOnCanvas.size.height;
  parent = [(TSDTexturedRectangle *)self parent];

  if (parent)
  {
    [(TSDTexturedRectangle *)self frame];
    v9 = v8;
    parent2 = [(TSDTexturedRectangle *)self parent];
    [parent2 frame];
    x = v9 + v11;
    parent3 = [(TSDTexturedRectangle *)self parent];
    [parent3 frame];
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

- (char)p_setupTextureDataWithSize:(CGSize)size isBGRA:(BOOL)a
{
  aCopy = a;
  height = size.height;
  width = size.width;
  mBakedImage = self->mBakedImage;
  if (!mBakedImage)
  {
    mBakedImage = self->mSourceImage;
  }

  v9 = size.width;
  v11 = self->mSize.width;
  v10 = self->mSize.height;
  p_colorSpace = [(TSDTexturedRectangle *)self p_colorSpace];
  v13 = TSUP3ColorSpace();
  if (p_colorSpace == v13)
  {
    v17 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
    v14 = 8 * v9;
    v15 = 4353;
    v16 = 16;
  }

  else
  {
    v14 = 4 * v9;
    if (aCopy)
    {
      v15 = 8194;
    }

    else
    {
      v15 = 1;
    }

    v16 = 8;
    v17 = p_colorSpace;
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
    if (p_colorSpace == v13)
    {
      CGColorSpaceRelease(v17);
    }

    ColorSpace = CGImageGetColorSpace(mBakedImage);
    v24 = CGBitmapContextCreate(data, v9, v18, v16, v14, ColorSpace, v15);
  }

  else
  {
    v24 = CGBitmapContextCreate(data, v9, v18, v16, v14, v17, v15);
    if (p_colorSpace == v13)
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle p_setupTextureDataWithSize:isBGRA:]"];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
      [currentHandler handleFailureInFunction:v28 file:v29 lineNumber:757 description:{@"%p - Nothing to render from", self}];
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

- (id)p_allocateMetalTextureForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[TSDCapabilities currentCapabilities];
  [v5 maximumMetalTextureSizeForDevice:deviceCopy];

  p_colorSpace = [(TSDTexturedRectangle *)self p_colorSpace];
  if (p_colorSpace == TSUP3ColorSpace())
  {
    v7 = 115;
  }

  else
  {
    v7 = 80;
  }

  TSUShrinkSizeToFitInSize();
  v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v7 width:v9 height:v8 mipmapped:0];
  v11 = [deviceCopy newTextureWithDescriptor:v10];

  return v11;
}

- (void)setupMetalTextureForDevice:(id)device
{
  deviceCopy = device;
  if (!self->_metalTexture)
  {
    v5 = [(TSDTexturedRectangle *)self p_allocateMetalTextureForDevice:deviceCopy];
    metalTexture = self->_metalTexture;
    self->_metalTexture = v5;

    width = [(MTLTexture *)self->_metalTexture width];
    height = [(MTLTexture *)self->_metalTexture height];
    pixelFormat = [(MTLTexture *)self->_metalTexture pixelFormat];
    v10 = 2;
    if (pixelFormat == 115)
    {
      v10 = 3;
    }

    v11 = width << v10;
    v12 = [(TSDTexturedRectangle *)self p_setupTextureDataWithSize:1 isBGRA:width, height];
    memset(v17, 0, 24);
    v13 = self->_metalTexture;
    v17[3] = width;
    v17[4] = height;
    v17[5] = 1;
    [(MTLTexture *)v13 replaceRegion:v17 mipmapLevel:0 withBytes:v12 bytesPerRow:v11];
    if ([(MTLTexture *)self->_metalTexture mipmapLevelCount]>= 2)
    {
      newCommandQueue = [deviceCopy newCommandQueue];
      commandBuffer = [newCommandQueue commandBuffer];
      blitCommandEncoder = [commandBuffer blitCommandEncoder];
      [blitCommandEncoder generateMipmapsForTexture:self->_metalTexture];
      [blitCommandEncoder endEncoding];
      [commandBuffer commit];
    }

    free(v12);
  }
}

+ (id)setupMetalShaderForContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDTexturedRectangle setupMetalShaderForContext:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:846 description:{@"invalid nil value for '%s'", "context"}];
  }

  device = [contextCopy device];

  if (!device)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDTexturedRectangle setupMetalShaderForContext:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [currentHandler2 handleFailureInFunction:v9 file:v10 lineNumber:847 description:{@"invalid nil value for '%s'", "context.device"}];
  }

  v11 = objc_alloc_init(MEMORY[0x277CD6F68]);
  [v11 setPixelFormat:objc_msgSend(contextCopy, "pixelFormat")];
  [v11 setBlendingEnabled:1];
  [v11 setRgbBlendOperation:0];
  [v11 setAlphaBlendOperation:0];
  [v11 setSourceRGBBlendFactor:1];
  [v11 setSourceAlphaBlendFactor:1];
  [v11 setDestinationAlphaBlendFactor:5];
  [v11 setDestinationRGBBlendFactor:5];
  v12 = [TSDMetalShader alloc];
  device2 = [contextCopy device];
  v14 = [(TSDMetalShader *)v12 initDefaultTextureAndOpacityShaderWithDevice:device2 colorAttachment:v11];

  return v14;
}

- (void)drawFrameAtLayerTime:(double)time context:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle drawFrameAtLayerTime:context:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:867 description:{@"invalid nil value for '%s'", "context"}];
  }

  [(TSDTexturedRectangle *)self frameOnCanvas];
  v10 = v9;
  [contextCopy layerSize];
  v12 = v11;
  [(TSDTexturedRectangle *)self frameOnCanvas];
  v14 = v12 - v13;
  [(TSDTexturedRectangle *)self frameOnCanvas];
  v16 = v14 - v15;
  [(TSDTexturedRectangle *)self frameOnCanvas];
  v18 = v17;
  [(TSDTexturedRectangle *)self frameOnCanvas];
  v20 = v19;
  device = [contextCopy device];
  v22 = [TSDGPUDataBuffer newDataBufferWithVertexRect:device textureRect:v10 device:v16, v18, v20, *MEMORY[0x277D6C3C8], *(MEMORY[0x277D6C3C8] + 8), *(MEMORY[0x277D6C3C8] + 16), *(MEMORY[0x277D6C3C8] + 24)];

  [contextCopy layerSize];
  v24 = v23;
  v26 = v25;
  shader = [contextCopy shader];

  if (!shader)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle drawFrameAtLayerTime:context:]"];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [currentHandler2 handleFailureInFunction:v29 file:v30 lineNumber:874 description:{@"invalid nil value for '%s'", "context.shader"}];
  }

  renderEncoder = [contextCopy renderEncoder];

  if (!renderEncoder)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle drawFrameAtLayerTime:context:]"];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [currentHandler3 handleFailureInFunction:v33 file:v34 lineNumber:875 description:{@"invalid nil value for '%s'", "context.renderEncoder"}];
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
  renderEncoder2 = [contextCopy renderEncoder];
  metalTexture = [(TSDTexturedRectangle *)self metalTexture];
  [renderEncoder2 setFragmentTexture:metalTexture atIndex:0];

  shader2 = [contextCopy shader];
  renderEncoder3 = [contextCopy renderEncoder];
  [shader2 setPipelineStateWithEncoder:renderEncoder3 vertexBytes:v51 fragmentBytes:&v42];

  renderEncoder4 = [contextCopy renderEncoder];
  shader3 = [contextCopy shader];
  [v22 drawWithEncoder:renderEncoder4 atIndex:{objc_msgSend(shader3, "bufferIndex")}];
}

- (id)metalTextureWithContext:(id)context
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_liveTexturedRectangleSourceProxy);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_liveTexturedRectangleSourceProxy);
    metalTexture = [v6 metalTextureWithContext:contextCopy];

    goto LABEL_3;
  }

  if (!self->_liveTexturedRectangleSource)
  {
    metalTexture = [(TSDTexturedRectangle *)self metalTexture];
    goto LABEL_3;
  }

  shouldUseDisplayLinkPresentationTime = self->_shouldUseDisplayLinkPresentationTime;
  [contextCopy timingInfo];
  if (shouldUseDisplayLinkPresentationTime)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_liveMetalTexturePool)
  {
    selfCopy->_liveMetalTexturePoolIndex = -1;
    v14 = dispatch_semaphore_create(3);
    liveMetalTexturesSemaphore = selfCopy->_liveMetalTexturesSemaphore;
    selfCopy->_liveMetalTexturesSemaphore = v14;

    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    liveMetalTextureToTimestamp = selfCopy->_liveMetalTextureToTimestamp;
    selfCopy->_liveMetalTextureToTimestamp = v16;

    v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    liveMetalTimestampToTexture = selfCopy->_liveMetalTimestampToTexture;
    selfCopy->_liveMetalTimestampToTexture = v18;

    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    liveMetalTexturePool = selfCopy->_liveMetalTexturePool;
    selfCopy->_liveMetalTexturePool = v20;
  }

  v22 = selfCopy->_liveMetalTimestampToTexture;
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v24 = [(NSMutableDictionary *)v22 objectForKey:v23];

  if (v24)
  {
    v25 = v24;
LABEL_29:
    metalTexture = v25;
    LODWORD(v33) = 0;
    goto LABEL_30;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([(TSDLiveTexturedRectangleSource *)self->_liveTexturedRectangleSource requiresOffscreenPass]& 1) == 0 && (objc_opt_respondsToSelector())
  {
    v25 = [(TSDLiveTexturedRectangleSource *)self->_liveTexturedRectangleSource metalTextureWithContext:contextCopy];
    goto LABEL_29;
  }

  if (([(TSDLiveTexturedRectangleSource *)self->_liveTexturedRectangleSource shouldDrawToMetalTextureWithContext:contextCopy]& 1) == 0)
  {
    v25 = [(TSDTexturedRectangle *)selfCopy p_latestTextureNotAfterLayerTime:v12];
    goto LABEL_29;
  }

  if ([(NSMutableArray *)selfCopy->_liveMetalTexturePool count]> 2)
  {
LABEL_23:
    if (!selfCopy->_liveTextureSourceShader)
    {
      if (!contextCopy)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle metalTextureWithContext:]"];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
        [currentHandler handleFailureInFunction:v35 file:v36 lineNumber:949 description:{@"invalid nil value for '%s'", "callingMetalContext"}];
      }

      v37 = objc_alloc_init(MEMORY[0x277CD6F68]);
      firstObject = [(NSMutableArray *)selfCopy->_liveMetalTexturePool firstObject];
      [v37 setPixelFormat:objc_msgSend(firstObject, "pixelFormat")];

      [v37 setBlendingEnabled:1];
      [v37 setRgbBlendOperation:0];
      [v37 setAlphaBlendOperation:0];
      [v37 setSourceRGBBlendFactor:1];
      [v37 setSourceAlphaBlendFactor:1];
      [v37 setDestinationAlphaBlendFactor:5];
      [v37 setDestinationRGBBlendFactor:5];
      v39 = [TSDMetalShader alloc];
      device = [contextCopy device];
      v41 = [(TSDMetalShader *)v39 initDefaultTextureAndOpacityShaderWithDevice:device colorAttachment:v37];
      liveTextureSourceShader = selfCopy->_liveTextureSourceShader;
      selfCopy->_liveTextureSourceShader = v41;
    }

    metalTexture = 0;
    LODWORD(v33) = 1;
    goto LABEL_30;
  }

  v26 = +[TSDCapabilities currentCapabilities];
  device2 = [contextCopy device];
  [v26 maximumMetalTextureSizeForDevice:device2];
  v29 = v28;
  v31 = v30;

  device3 = [contextCopy device];
  v33 = [(TSDTexturedRectangle *)selfCopy p_allocateMetalTextureForDevice:device3 renderTarget:1 writable:0 private:1 maxSize:v29, v31];

  if (v33)
  {
    [(NSMutableArray *)selfCopy->_liveMetalTexturePool addObject:v33];

    goto LABEL_23;
  }

  metalTexture = 0;
LABEL_30:

  objc_sync_exit(selfCopy);
  if (v33)
  {
    dispatch_semaphore_wait(selfCopy->_liveMetalTexturesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v43 = selfCopy->_liveMetalTexturePool;
    selfCopy->_liveMetalTexturePoolIndex = (selfCopy->_liveMetalTexturePoolIndex + 1) % 3;
    metalTexture = [(NSMutableArray *)v43 objectAtIndexedSubscript:?];
    v44 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:metalTexture];
    renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
    colorAttachments = [renderPassDescriptor colorAttachments];
    v47 = [colorAttachments objectAtIndexedSubscript:0];
    [v47 setTexture:metalTexture];

    colorAttachments2 = [renderPassDescriptor colorAttachments];
    v49 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v49 setLoadAction:2];

    colorAttachments3 = [renderPassDescriptor colorAttachments];
    v51 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v51 setStoreAction:1];

    colorAttachments4 = [renderPassDescriptor colorAttachments];
    v53 = [colorAttachments4 objectAtIndexedSubscript:0];
    [v53 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    v54 = [contextCopy copy];
    firstObject2 = [(NSMutableArray *)selfCopy->_liveMetalTexturePool firstObject];
    [v54 setPixelFormat:objc_msgSend(firstObject2, "pixelFormat")];

    metalTexture2 = [(TSDTexturedRectangle *)selfCopy metalTexture];
    width = [metalTexture2 width];
    metalTexture3 = [(TSDTexturedRectangle *)selfCopy metalTexture];
    [v54 setLayerSize:{width, objc_msgSend(metalTexture3, "height")}];

    [v54 setShader:selfCopy->_liveTextureSourceShader];
    [v54 setCurrentBuffer:selfCopy->_liveMetalTexturePoolIndex];
    commandQueue = [v54 commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    v77 = commandBuffer;
    [v54 setCommandBuffer:commandBuffer];
    commandBuffer2 = [v54 commandBuffer];

    if (!commandBuffer2)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle metalTextureWithContext:]"];
      v76 = renderPassDescriptor;
      v64 = v63 = v44;
      v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
      [currentHandler2 handleFailureInFunction:v64 file:v65 lineNumber:991 description:{@"invalid nil value for '%s'", "context.commandBuffer"}];

      v44 = v63;
      renderPassDescriptor = v76;
    }

    [v54 setPassDescriptor:renderPassDescriptor];
    commandBuffer3 = [v54 commandBuffer];
    passDescriptor = [v54 passDescriptor];
    v68 = [commandBuffer3 renderCommandEncoderWithDescriptor:passDescriptor];

    [v54 setRenderEncoder:v68];
    v69 = selfCopy;
    objc_sync_enter(v69);
    v70 = [v69[30] objectForKey:v44];
    if (v70)
    {
      [v69[30] removeObjectForKey:v44];
      [(NSMutableDictionary *)selfCopy->_liveMetalTimestampToTexture removeObjectForKey:v70];
    }

    objc_sync_exit(v69);
    [(TSDLiveTexturedRectangleSource *)self->_liveTexturedRectangleSource drawToMetalTextureWithContext:v54];
    renderEncoder = [v54 renderEncoder];
    [renderEncoder endEncoding];

    objc_initWeak(&location, selfCopy->_liveMetalTexturesSemaphore);
    commandBuffer4 = [v54 commandBuffer];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __48__TSDTexturedRectangle_metalTextureWithContext___block_invoke;
    v78[3] = &unk_279D48C30;
    objc_copyWeak(&v79, &location);
    [commandBuffer4 addCompletedHandler:v78];

    commandBuffer5 = [v54 commandBuffer];
    [commandBuffer5 commit];

    v74 = v69;
    objc_sync_enter(v74);
    v75 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    [v69[30] setObject:v75 forKey:v44];
    [(NSMutableDictionary *)selfCopy->_liveMetalTimestampToTexture setObject:metalTexture forKey:v75];

    objc_sync_exit(v74);
    objc_destroyWeak(&v79);
    objc_destroyWeak(&location);
  }

LABEL_3:

  return metalTexture;
}

void __48__TSDTexturedRectangle_metalTextureWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_semaphore_signal(WeakRetained);
}

- (CGSize)p_textureSizeWithDevice:(id)device maxSize:(CGSize)size
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

- (id)p_allocateMetalTextureForDevice:(id)device renderTarget:(BOOL)target writable:(BOOL)writable private:(BOOL)private maxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  privateCopy = private;
  writableCopy = writable;
  targetCopy = target;
  deviceCopy = device;
  [(TSDTexturedRectangle *)self p_textureSizeWithDevice:deviceCopy maxSize:width, height];
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

  p_colorSpace = [(TSDTexturedRectangle *)self p_colorSpace];
  v21 = TSUP3ColorSpace();
  v22 = 70;
  if (targetCopy)
  {
    v22 = 80;
  }

  v23 = 115;
  if (targetCopy)
  {
    v23 = 552;
  }

  if (p_colorSpace == v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v25 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v24 width:v15 height:v17 mipmapped:self->mShouldGenerateMipmap];
  v26 = v25;
  if (!targetCopy)
  {
    if (!writableCopy)
    {
      goto LABEL_16;
    }

LABEL_25:
    [v26 setUsage:{objc_msgSend(v26, "usage") | 2}];
    if (!privateCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  [v25 setUsage:5];
  if (writableCopy)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (privateCopy)
  {
LABEL_17:
    [v26 setResourceOptions:32];
    [v26 setStorageMode:2];
  }

LABEL_18:
  v19 = [deviceCopy newTextureWithDescriptor:v26];

  if (v19 && [v19 width])
  {
    [v19 height];
  }

LABEL_21:

  return v19;
}

- (id)p_latestTextureNotAfterLayerTime:(double)time
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(NSMutableArray *)self->_liveMetalTexturePool count])
  {
    metalTexture = [(TSDTexturedRectangle *)self metalTexture];
    goto LABEL_22;
  }

  allKeys = [(NSMutableDictionary *)self->_liveMetalTimestampToTexture allKeys];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = allKeys;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v8)
  {
    metalTexture = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v9 = v8;
  metalTexture = 0;
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
      if (!metalTexture)
      {
        metalTexture = [(NSMutableDictionary *)self->_liveMetalTimestampToTexture objectForKey:*(*(&v25 + 1) + 8 * i), v25];
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
        metalTexture = v11 = metalTexture;
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

  return metalTexture;
}

- (void)setLiveTexturedRectangleSource:(id)source
{
  sourceCopy = source;
  objc_storeWeak(&self->_liveTexturedRectangleSourceProxy, 0);
  liveTexturedRectangleSource = self->_liveTexturedRectangleSource;
  self->_liveTexturedRectangleSource = sourceCopy;
}

- (void)setLiveTexturedRectangleSourceProxy:(id)proxy
{
  obj = proxy;
  if (self->_liveTexturedRectangleSource)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTexturedRectangle setLiveTexturedRectangleSourceProxy:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTexturedRectangle.m"];
    [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:1165 description:{@"expected nil value for '%s'", "_liveTexturedRectangleSource"}];
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