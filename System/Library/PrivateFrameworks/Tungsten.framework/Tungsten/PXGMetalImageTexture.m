@interface PXGMetalImageTexture
- (CGSize)pixelSize;
- (NSString)description;
- (PXGMetalImageTexture)init;
- (PXGMetalImageTexture)initWithTexture:(id)a3 chromaTexture:(id)a4 colorProgram:(id)a5 isOpaque:(BOOL)a6 shaderFlags:(int)a7 orientationTransform:(float)a8 alpha:(float)a9 suppressContentsRect:(unsigned __int8)a10 presentationType:;
- (PXGMetalTextureCache)textureCache;
- (id)copyWithOrientationTransform:(float)a3 alpha:(float)a4 suppressContentsRect:;
- (void)dealloc;
@end

@implementation PXGMetalImageTexture

- (CGSize)pixelSize
{
  v3 = [(MTLTexture *)self->_texture width];
  v4 = [(MTLTexture *)self->_texture height];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (PXGMetalTextureCache)textureCache
{
  WeakRetained = objc_loadWeakRetained(&self->_textureCache);

  return WeakRetained;
}

- (id)copyWithOrientationTransform:(float)a3 alpha:(float)a4 suppressContentsRect:
{
  v5 = v4;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*self->_orientationTransform, *&a3)))) & 1) == 0 && self->_alpha == a4 && self->_suppressContentsRect == v4)
  {

    return self;
  }

  else
  {
    v12 = *&a3;
    v7 = objc_alloc(objc_opt_class());
    *&v8 = a4;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGMetalImageTexture.m" lineNumber:58 description:{@"%s is not available as initializer", "-[PXGMetalImageTexture init]"}];

  abort();
}

- (PXGMetalImageTexture)initWithTexture:(id)a3 chromaTexture:(id)a4 colorProgram:(id)a5 isOpaque:(BOOL)a6 shaderFlags:(int)a7 orientationTransform:(float)a8 alpha:(float)a9 suppressContentsRect:(unsigned __int8)a10 presentationType:
{
  v12 = v10;
  v30 = *&a8;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v31.receiver = self;
  v31.super_class = PXGMetalImageTexture;
  v23 = [(PXGImageTexture *)&v31 init];
  if (v23)
  {
    if (!v20)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:a2 object:v23 file:@"PXGMetalImageTexture.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"texture != nil"}];
    }

    if (a7 >= 0x10000)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      v25 = PXGShaderFlagsDescription(a7);
      [v27 handleFailureInMethod:a2 object:v23 file:@"PXGMetalImageTexture.m" lineNumber:42 description:{@"Only allowed to set shader flags in the block PXGShaderFlagPerTexture, %@", v25}];

      if (v21)
      {
        goto LABEL_6;
      }
    }

    else if (v21)
    {
LABEL_6:
      if ((a7 & 0xF00) == 0 || (a7 & 0x3000) == 0)
      {
        v28 = [MEMORY[0x277CCA890] currentHandler];
        [v28 handleFailureInMethod:a2 object:v23 file:@"PXGMetalImageTexture.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"!chromaTexture || ((shaderFlags & PXGShaderFlagYCbCrMatrixMask) != 0 && (shaderFlags & PXGShaderFlagYCbCrBitDepthMask) != 0)"}];
      }
    }

    objc_storeStrong(&v23->_texture, a3);
    objc_storeStrong(&v23->_chromaTexture, a4);
    objc_storeStrong(&v23->_colorProgram, a5);
    *v23->_orientationTransform = v30;
    v23->_alpha = a9;
    v23->_suppressContentsRect = v12;
    v23->_isContentOpaque = a6;
    v23->_shaderFlags = a7;
    v23->_presentationType = a10;
  }

  return v23;
}

@end