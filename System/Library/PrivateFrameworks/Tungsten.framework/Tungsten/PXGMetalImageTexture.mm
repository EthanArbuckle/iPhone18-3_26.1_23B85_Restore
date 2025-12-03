@interface PXGMetalImageTexture
- (CGSize)pixelSize;
- (NSString)description;
- (PXGMetalImageTexture)init;
- (PXGMetalImageTexture)initWithTexture:(id)texture chromaTexture:(id)chromaTexture colorProgram:(id)program isOpaque:(BOOL)opaque shaderFlags:(int)flags orientationTransform:(float)transform alpha:(float)alpha suppressContentsRect:(unsigned __int8)self0 presentationType:;
- (PXGMetalTextureCache)textureCache;
- (id)copyWithOrientationTransform:(float)transform alpha:(float)alpha suppressContentsRect:;
- (void)dealloc;
@end

@implementation PXGMetalImageTexture

- (CGSize)pixelSize
{
  width = [(MTLTexture *)self->_texture width];
  height = [(MTLTexture *)self->_texture height];
  v5 = width;
  result.height = height;
  result.width = v5;
  return result;
}

- (PXGMetalTextureCache)textureCache
{
  WeakRetained = objc_loadWeakRetained(&self->_textureCache);

  return WeakRetained;
}

- (id)copyWithOrientationTransform:(float)transform alpha:(float)alpha suppressContentsRect:
{
  v5 = v4;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*self->_orientationTransform, *&transform)))) & 1) == 0 && self->_alpha == alpha && self->_suppressContentsRect == v4)
  {

    return self;
  }

  else
  {
    v12 = *&transform;
    v7 = objc_alloc(objc_opt_class());
    *&v8 = alpha;
    *&v9 = v5;
    v10 = [v7 initWithTexture:self->_texture chromaTexture:self->_chromaTexture colorProgram:self->_colorProgram isOpaque:self->_isContentOpaque shaderFlags:self->_shaderFlags orientationTransform:self->_presentationType alpha:v12 suppressContentsRect:v8 presentationType:v9];
    [v10 setSourceCGImage:{-[PXGImageTexture sourceCGImage](self, "sourceCGImage")}];
    [v10 setSourceCVPixelBuffer:{-[PXGImageTexture sourceCVPixelBuffer](self, "sourceCVPixelBuffer")}];
    return v10;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PXGMetalImageTexture;
  v4 = [(PXGBaseTexture *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ memory:%.2fMB texture:%p>", v4, vcvtd_n_f64_u64(-[MTLTexture allocatedSize](self->_texture, "allocatedSize"), 0xAuLL) * 0.0009765625, self->_texture];

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_textureCache);
  [WeakRetained recycleTexture:self->_texture];

  v4.receiver = self;
  v4.super_class = PXGMetalImageTexture;
  [(PXGImageTexture *)&v4 dealloc];
}

- (PXGMetalImageTexture)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalImageTexture.m" lineNumber:58 description:{@"%s is not available as initializer", "-[PXGMetalImageTexture init]"}];

  abort();
}

- (PXGMetalImageTexture)initWithTexture:(id)texture chromaTexture:(id)chromaTexture colorProgram:(id)program isOpaque:(BOOL)opaque shaderFlags:(int)flags orientationTransform:(float)transform alpha:(float)alpha suppressContentsRect:(unsigned __int8)self0 presentationType:
{
  v12 = v10;
  v30 = *&transform;
  textureCopy = texture;
  chromaTextureCopy = chromaTexture;
  programCopy = program;
  v31.receiver = self;
  v31.super_class = PXGMetalImageTexture;
  v23 = [(PXGImageTexture *)&v31 init];
  if (v23)
  {
    if (!textureCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v23 file:@"PXGMetalImageTexture.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"texture != nil"}];
    }

    if (flags >= 0x10000)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v25 = PXGShaderFlagsDescription(flags);
      [currentHandler2 handleFailureInMethod:a2 object:v23 file:@"PXGMetalImageTexture.m" lineNumber:42 description:{@"Only allowed to set shader flags in the block PXGShaderFlagPerTexture, %@", v25}];

      if (chromaTextureCopy)
      {
        goto LABEL_6;
      }
    }

    else if (chromaTextureCopy)
    {
LABEL_6:
      if ((flags & 0xF00) == 0 || (flags & 0x3000) == 0)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:v23 file:@"PXGMetalImageTexture.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"!chromaTexture || ((shaderFlags & PXGShaderFlagYCbCrMatrixMask) != 0 && (shaderFlags & PXGShaderFlagYCbCrBitDepthMask) != 0)"}];
      }
    }

    objc_storeStrong(&v23->_texture, texture);
    objc_storeStrong(&v23->_chromaTexture, chromaTexture);
    objc_storeStrong(&v23->_colorProgram, program);
    *v23->_orientationTransform = v30;
    v23->_alpha = alpha;
    v23->_suppressContentsRect = v12;
    v23->_isContentOpaque = opaque;
    v23->_shaderFlags = flags;
    v23->_presentationType = rect;
  }

  return v23;
}

@end