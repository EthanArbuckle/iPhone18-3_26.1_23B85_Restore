@interface PXGViewTextureConverter
- (id)applyAdjustment:(id)adjustment toTexture:(id)texture options:(id)options;
- (id)createAtlasForTextureAtlasManager:(id)manager;
- (id)createPayloadTextureFromPayload:(id)payload;
- (id)createTextureAtlasManagerForImageDataSpec:(id *)spec mipmapped:(BOOL)mipmapped;
- (id)createTextureFromCGImage:(CGImage *)image transform:(float)transform alpha:(id)alpha options:(id *)options error:;
- (id)createTextureFromCVPixelBuffer:(__CVBuffer *)buffer transform:(float)transform alpha:(id)alpha options:(id *)options error:;
@end

@implementation PXGViewTextureConverter

- (id)createAtlasForTextureAtlasManager:(id)manager
{
  managerCopy = manager;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewTextureConverter.m" lineNumber:62 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)createTextureAtlasManagerForImageDataSpec:(id *)spec mipmapped:(BOOL)mipmapped
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewTextureConverter.m" lineNumber:58 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)createPayloadTextureFromPayload:(id)payload
{
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PXGPayloadTexture alloc] initWithPayload:payloadCopy presentationType:[(PXGViewTextureConverter *)self presentationType]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)applyAdjustment:(id)adjustment toTexture:(id)texture options:(id)options
{
  adjustmentCopy = adjustment;
  textureCopy = texture;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewTextureConverter.m" lineNumber:33 description:@"PXGViewTextureConverter doesn't support adjustments."];

  abort();
}

- (id)createTextureFromCVPixelBuffer:(__CVBuffer *)buffer transform:(float)transform alpha:(id)alpha options:(id *)options error:
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewTextureConverter.m" lineNumber:28 description:@"PXGViewTextureConverter doesn't support CVPixelBufferRef."];

  abort();
}

- (id)createTextureFromCGImage:(CGImage *)image transform:(float)transform alpha:(id)alpha options:(id *)options error:
{
  var2 = alpha.var2;
  v8 = v6;
  v21 = *&transform;
  v10 = [PXGViewImageTexture alloc];
  if (*(&v21 + 2) >= 0.0)
  {
    v13 = 5;
  }

  else
  {
    v13 = 8;
  }

  if (*(&v21 + 1) > 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (*(&v21 + 2) >= 0.0)
  {
    v15 = 6;
  }

  else
  {
    v15 = 7;
  }

  if (*(&v21 + 1) < 0.0)
  {
    v14 = v15;
  }

  if (*(&v21 + 3) >= 0.0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 4;
  }

  if (*&v21 > 0.0)
  {
    v14 = v16;
  }

  if (*(&v21 + 3) >= 0.0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  if (*&v21 < 0.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = v14;
  }

  *&v12 = var2;
  LODWORD(v11) = v8;
  v19 = [(PXGViewImageTexture *)v10 initWithImage:image orientation:v18 alpha:v11 suppressContentsRect:v12, v21];

  return v19;
}

@end