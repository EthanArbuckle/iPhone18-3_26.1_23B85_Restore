@interface PXGImageTexture
+ (id)_sharedCIContext;
- (CGImage)imageRepresentation;
- (CGImage)sourceCGImage;
- (PXGImageTexture)init;
- (__CVBuffer)sourceCVPixelBuffer;
- (id)copyWithOrientationTransform:(float)a3 alpha:(float)a4 suppressContentsRect:;
- (void)dealloc;
- (void)getTextureInfos:(id *)a3 forSpriteIndexes:(const unsigned int *)a4 geometries:(id *)a5 spriteStyles:(id *)a6 spriteInfos:(id *)a7 screenScale:(double)a8 count:(unsigned int)a9;
- (void)setSourceCGImage:(CGImage *)a3;
- (void)setSourceCVPixelBuffer:(__CVBuffer *)a3;
@end

@implementation PXGImageTexture

- (PXGImageTexture)init
{
  v4.receiver = self;
  v4.super_class = PXGImageTexture;
  v2 = [(PXGBaseTexture *)&v4 init];
  if (v2)
  {
    objc_opt_class();
    kdebug_trace();
  }

  return v2;
}

- (void)getTextureInfos:(id *)a3 forSpriteIndexes:(const unsigned int *)a4 geometries:(id *)a5 spriteStyles:(id *)a6 spriteInfos:(id *)a7 screenScale:(double)a8 count:(unsigned int)a9
{
  LODWORD(v9) = a9;
  v13 = a4;
  v14 = a3;
  if ([(PXGBaseTexture *)self spriteCount:a3]< a9)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PXGImageTexture.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"count <= self.spriteCount"}];
  }

  [(PXGBaseTexture *)self pixelSize];
  v18 = v17;
  v20 = v19;
  PXSizeScale();
  v22 = v21;
  v24 = v23;
  [(PXGImageTexture *)self alpha];
  v26 = v25;
  [(PXGImageTexture *)self suppressContentsRect];
  v28 = v27;
  [(PXGImageTexture *)self orientationTransform];
  if (v9)
  {
    v9 = v9;
    v34 = v29;
    do
    {
      v30 = *v13++;
      PXGCreateTextureInfo(*(&a6[1].var3 + 160 * v30 + 2), v35, v18, v20, v22, v24, a8, 0.0, 0.0, COERCE_FLOAT(*(&a5[1].var0.var0 + 4 * v30)), COERCE_FLOAT(HIDWORD(*(&a5[1].var0.var0 + 4 * v30))), v29, v26, v28);
      v29 = v34;
      v31 = v35[1];
      *&v14->var0 = v35[0];
      *&v14[2].var0 = v31;
      v32 = v35[3];
      *&v14[4].var0 = v35[2];
      *&v14[6].var0 = v32;
      v14 += 8;
      --v9;
    }

    while (v9);
  }
}

- (CGImage)imageRepresentation
{
  if ([(PXGImageTexture *)self sourceCGImage])
  {

    return [(PXGImageTexture *)self sourceCGImage];
  }

  else
  {
    if (![(PXGImageTexture *)self sourceCVPixelBuffer])
    {
      return 0;
    }

    [(PXGImageTexture *)self orientationTransform];
    v11 = v4;
    v5 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:{-[PXGImageTexture sourceCVPixelBuffer](self, "sourceCVPixelBuffer")}];
    v15.val[1] = vcvt_hight_f64_f32(v11);
    v15.val[0] = vcvtq_f64_f32(*v11.f32);
    v6 = v12;
    vst2q_f64(v6, v15);
    v6 += 4;
    *v6 = 0.0;
    v13 = 0;
    v7 = [v5 imageByApplyingTransform:v12];

    v8 = [objc_opt_class() _sharedCIContext];
    [v7 extent];
    v9 = [v8 createCGImage:v7 fromRect:?];
    if (v9)
    {
      v10 = CFAutorelease(v9);
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }
}

- (id)copyWithOrientationTransform:(float)a3 alpha:(float)a4 suppressContentsRect:
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXGImageTexture.m" lineNumber:70 description:{@"Method %s is a responsibility of subclass %@", "-[PXGImageTexture copyWithOrientationTransform:alpha:suppressContentsRect:]", v8}];

  abort();
}

- (void)dealloc
{
  [(PXGBaseTexture *)self pixelSize];
  [(PXGBaseTexture *)self isOpaque];
  kdebug_trace();
  CVPixelBufferRelease(self->_sourceCVPixelBuffer);
  CGImageRelease(self->_sourceCGImage);
  v3.receiver = self;
  v3.super_class = PXGImageTexture;
  [(PXGBaseTexture *)&v3 dealloc];
}

- (__CVBuffer)sourceCVPixelBuffer
{
  result = CVPixelBufferRetain(self->_sourceCVPixelBuffer);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (void)setSourceCVPixelBuffer:(__CVBuffer *)a3
{
  sourceCVPixelBuffer = self->_sourceCVPixelBuffer;
  if (sourceCVPixelBuffer != a3)
  {
    CVPixelBufferRelease(sourceCVPixelBuffer);
    self->_sourceCVPixelBuffer = CVPixelBufferRetain(a3);
  }
}

- (CGImage)sourceCGImage
{
  result = CGImageRetain(self->_sourceCGImage);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (void)setSourceCGImage:(CGImage *)a3
{
  sourceCGImage = self->_sourceCGImage;
  if (sourceCGImage != a3)
  {
    CGImageRelease(sourceCGImage);
    self->_sourceCGImage = CGImageRetain(a3);
  }
}

+ (id)_sharedCIContext
{
  if (_sharedCIContext_onceToken != -1)
  {
    dispatch_once(&_sharedCIContext_onceToken, &__block_literal_global_3065);
  }

  v3 = _sharedCIContext_ciContext;

  return v3;
}

void __35__PXGImageTexture__sharedCIContext__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBF740]);
  v1 = _sharedCIContext_ciContext;
  _sharedCIContext_ciContext = v0;
}

@end