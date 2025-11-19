@interface PXGEffectWrappingTexture
+ (id)_dequeueTexture;
+ (id)_reusableTextures;
+ (id)createTexture;
+ (void)_reuseTexture:(id)a3;
- (BOOL)isAtlas;
- (BOOL)isCaptureTexture;
- (BOOL)isOpaque;
- (CGImage)imageRepresentation;
- (CGImage)sourceCGImage;
- (CGSize)pixelSize;
- (MTLTexture)chromaTexture;
- (MTLTexture)texture;
- (PXGColorProgram)colorProgram;
- (PXGEffectWrappingTexture)init;
- (__CVBuffer)sourceCVPixelBuffer;
- (__n128)orientationTransform;
- (float)alpha;
- (int)shaderFlags;
- (int64_t)estimatedByteSize;
- (int64_t)renderPipelineIndex;
- (unsigned)presentationType;
- (void)cleanupAfterRender:(int64_t)a3;
- (void)getTextureInfos:(id *)a3 forSpriteIndexes:(const unsigned int *)a4 geometries:(id *)a5 spriteStyles:(id *)a6 spriteInfos:(id *)a7 screenScale:(double)a8 count:(unsigned int)a9;
- (void)prepareForRender:(int64_t)a3;
- (void)setParent:(id)a3;
- (void)setRenderPipelineIndex:(int64_t)a3;
@end

@implementation PXGEffectWrappingTexture

- (__n128)orientationTransform
{
  v1 = [a1 imageTextureParent];
  [v1 orientationTransform];
  v4 = v2;

  return v4;
}

- (__CVBuffer)sourceCVPixelBuffer
{
  v2 = [(PXGEffectWrappingTexture *)self imageTextureParent];
  v3 = [v2 sourceCVPixelBuffer];

  return v3;
}

- (CGImage)sourceCGImage
{
  v2 = [(PXGEffectWrappingTexture *)self imageTextureParent];
  v3 = [v2 sourceCGImage];

  return v3;
}

- (CGImage)imageRepresentation
{
  v2 = [(PXGEffectWrappingTexture *)self imageTextureParent];
  v3 = [v2 imageRepresentation];

  return v3;
}

- (unsigned)presentationType
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  v3 = [v2 presentationType];

  return v3;
}

- (int64_t)estimatedByteSize
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  v3 = [v2 estimatedByteSize];

  return v3;
}

- (CGSize)pixelSize
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  [v2 pixelSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int)shaderFlags
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  v3 = [v2 shaderFlags];

  return v3;
}

- (BOOL)isCaptureTexture
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  v3 = [v2 isCaptureTexture];

  return v3;
}

- (float)alpha
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (BOOL)isOpaque
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  v3 = [v2 isOpaque];

  return v3;
}

- (BOOL)isAtlas
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  v3 = [v2 isAtlas];

  return v3;
}

- (void)setRenderPipelineIndex:(int64_t)a3
{
  v4 = [(PXGEffectWrappingTexture *)self parent];
  [v4 setRenderPipelineIndex:a3];
}

- (int64_t)renderPipelineIndex
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  v3 = [v2 renderPipelineIndex];

  return v3;
}

- (void)cleanupAfterRender:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableIndexSet *)self->_lock_activeRenders removeIndex:a3];
  v5 = [(NSMutableIndexSet *)self->_lock_activeRenders count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    [(PXGEffectWrappingTexture *)self setParent:0];
    [(PXGBaseTexture *)self removeAllSpriteIndexes];
    v6 = objc_opt_class();

    [v6 _reuseTexture:self];
  }
}

- (void)prepareForRender:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableIndexSet *)self->_lock_activeRenders addIndex:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (PXGColorProgram)colorProgram
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  v3 = [v2 colorProgram];

  return v3;
}

- (void)getTextureInfos:(id *)a3 forSpriteIndexes:(const unsigned int *)a4 geometries:(id *)a5 spriteStyles:(id *)a6 spriteInfos:(id *)a7 screenScale:(double)a8 count:(unsigned int)a9
{
  if (a9)
  {
    v16 = a9;
    do
    {
      v17 = *a4++;
      v19 = *(&a7[1].var0 + 5 * v17);
      v18 = [(PXGEffectWrappingTexture *)self parent];
      [v18 getTextureInfos:a3 forSpriteIndexes:&v19 geometries:a5 spriteStyles:a6 spriteInfos:a7 screenScale:1 count:a8];

      a3 += 8;
      --v16;
    }

    while (v16);
  }
}

- (MTLTexture)texture
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  v3 = [v2 texture];

  return v3;
}

- (MTLTexture)chromaTexture
{
  v2 = [(PXGEffectWrappingTexture *)self parent];
  v3 = [v2 chromaTexture];

  return v3;
}

- (void)setParent:(id)a3
{
  v5 = a3;
  if (self->_parent != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_parent, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&self->_imageTextureParent, v6);
    v5 = v7;
  }
}

- (PXGEffectWrappingTexture)init
{
  v7.receiver = self;
  v7.super_class = PXGEffectWrappingTexture;
  v2 = [(PXGImageTexture *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
    lock_activeRenders = v3->_lock_activeRenders;
    v3->_lock_activeRenders = v4;
  }

  return v3;
}

+ (id)createTexture
{
  v2 = [a1 _dequeueTexture];
  if (!v2)
  {
    v2 = objc_alloc_init(PXGEffectWrappingTexture);
  }

  return v2;
}

+ (void)_reuseTexture:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&_reuseLock);
  v5 = [a1 _reusableTextures];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&_reuseLock);
}

+ (id)_dequeueTexture
{
  os_unfair_lock_lock(&_reuseLock);
  v3 = [a1 _reusableTextures];
  v4 = [v3 px_popFirst];

  os_unfair_lock_unlock(&_reuseLock);

  return v4;
}

+ (id)_reusableTextures
{
  if (_reusableTextures_onceToken != -1)
  {
    dispatch_once(&_reusableTextures_onceToken, &__block_literal_global);
  }

  v3 = _reusableTextures_reusableTextures;

  return v3;
}

void __45__PXGEffectWrappingTexture__reusableTextures__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = _reusableTextures_reusableTextures;
  _reusableTextures_reusableTextures = v0;
}

@end