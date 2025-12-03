@interface PXGEffectWrappingTexture
+ (id)_dequeueTexture;
+ (id)_reusableTextures;
+ (id)createTexture;
+ (void)_reuseTexture:(id)texture;
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
- (void)cleanupAfterRender:(int64_t)render;
- (void)getTextureInfos:(id *)infos forSpriteIndexes:(const unsigned int *)indexes geometries:(id *)geometries spriteStyles:(id *)styles spriteInfos:(id *)spriteInfos screenScale:(double)scale count:(unsigned int)count;
- (void)prepareForRender:(int64_t)render;
- (void)setParent:(id)parent;
- (void)setRenderPipelineIndex:(int64_t)index;
@end

@implementation PXGEffectWrappingTexture

- (__n128)orientationTransform
{
  imageTextureParent = [self imageTextureParent];
  [imageTextureParent orientationTransform];
  v4 = v2;

  return v4;
}

- (__CVBuffer)sourceCVPixelBuffer
{
  imageTextureParent = [(PXGEffectWrappingTexture *)self imageTextureParent];
  sourceCVPixelBuffer = [imageTextureParent sourceCVPixelBuffer];

  return sourceCVPixelBuffer;
}

- (CGImage)sourceCGImage
{
  imageTextureParent = [(PXGEffectWrappingTexture *)self imageTextureParent];
  sourceCGImage = [imageTextureParent sourceCGImage];

  return sourceCGImage;
}

- (CGImage)imageRepresentation
{
  imageTextureParent = [(PXGEffectWrappingTexture *)self imageTextureParent];
  imageRepresentation = [imageTextureParent imageRepresentation];

  return imageRepresentation;
}

- (unsigned)presentationType
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  presentationType = [parent presentationType];

  return presentationType;
}

- (int64_t)estimatedByteSize
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  estimatedByteSize = [parent estimatedByteSize];

  return estimatedByteSize;
}

- (CGSize)pixelSize
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  [parent pixelSize];
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
  parent = [(PXGEffectWrappingTexture *)self parent];
  shaderFlags = [parent shaderFlags];

  return shaderFlags;
}

- (BOOL)isCaptureTexture
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  isCaptureTexture = [parent isCaptureTexture];

  return isCaptureTexture;
}

- (float)alpha
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  [parent alpha];
  v4 = v3;

  return v4;
}

- (BOOL)isOpaque
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  isOpaque = [parent isOpaque];

  return isOpaque;
}

- (BOOL)isAtlas
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  isAtlas = [parent isAtlas];

  return isAtlas;
}

- (void)setRenderPipelineIndex:(int64_t)index
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  [parent setRenderPipelineIndex:index];
}

- (int64_t)renderPipelineIndex
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  renderPipelineIndex = [parent renderPipelineIndex];

  return renderPipelineIndex;
}

- (void)cleanupAfterRender:(int64_t)render
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableIndexSet *)self->_lock_activeRenders removeIndex:render];
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

- (void)prepareForRender:(int64_t)render
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableIndexSet *)self->_lock_activeRenders addIndex:render];

  os_unfair_lock_unlock(&self->_lock);
}

- (PXGColorProgram)colorProgram
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  colorProgram = [parent colorProgram];

  return colorProgram;
}

- (void)getTextureInfos:(id *)infos forSpriteIndexes:(const unsigned int *)indexes geometries:(id *)geometries spriteStyles:(id *)styles spriteInfos:(id *)spriteInfos screenScale:(double)scale count:(unsigned int)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      v17 = *indexes++;
      v19 = *(&spriteInfos[1].var0 + 5 * v17);
      parent = [(PXGEffectWrappingTexture *)self parent];
      [parent getTextureInfos:infos forSpriteIndexes:&v19 geometries:geometries spriteStyles:styles spriteInfos:spriteInfos screenScale:1 count:scale];

      infos += 8;
      --countCopy;
    }

    while (countCopy);
  }
}

- (MTLTexture)texture
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  texture = [parent texture];

  return texture;
}

- (MTLTexture)chromaTexture
{
  parent = [(PXGEffectWrappingTexture *)self parent];
  chromaTexture = [parent chromaTexture];

  return chromaTexture;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  if (self->_parent != parentCopy)
  {
    v7 = parentCopy;
    objc_storeStrong(&self->_parent, parent);
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
    parentCopy = v7;
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
  _dequeueTexture = [self _dequeueTexture];
  if (!_dequeueTexture)
  {
    _dequeueTexture = objc_alloc_init(PXGEffectWrappingTexture);
  }

  return _dequeueTexture;
}

+ (void)_reuseTexture:(id)texture
{
  textureCopy = texture;
  os_unfair_lock_lock(&_reuseLock);
  _reusableTextures = [self _reusableTextures];
  [_reusableTextures addObject:textureCopy];

  os_unfair_lock_unlock(&_reuseLock);
}

+ (id)_dequeueTexture
{
  os_unfair_lock_lock(&_reuseLock);
  _reusableTextures = [self _reusableTextures];
  px_popFirst = [_reusableTextures px_popFirst];

  os_unfair_lock_unlock(&_reuseLock);

  return px_popFirst;
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