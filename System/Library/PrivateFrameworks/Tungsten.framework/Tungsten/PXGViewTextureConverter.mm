@interface PXGViewTextureConverter
- (id)applyAdjustment:(id)a3 toTexture:(id)a4 options:(id)a5;
- (id)createAtlasForTextureAtlasManager:(id)a3;
- (id)createPayloadTextureFromPayload:(id)a3;
- (id)createTextureAtlasManagerForImageDataSpec:(id *)a3 mipmapped:(BOOL)a4;
- (id)createTextureFromCGImage:(CGImage *)a3 transform:(float)a4 alpha:(id)a5 options:(id *)a6 error:;
- (id)createTextureFromCVPixelBuffer:(__CVBuffer *)a3 transform:(float)a4 alpha:(id)a5 options:(id *)a6 error:;
@end

@implementation PXGViewTextureConverter

- (id)createAtlasForTextureAtlasManager:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXGViewTextureConverter.m" lineNumber:62 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)createTextureAtlasManagerForImageDataSpec:(id *)a3 mipmapped:(BOOL)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXGViewTextureConverter.m" lineNumber:58 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)createPayloadTextureFromPayload:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PXGPayloadTexture alloc] initWithPayload:v4 presentationType:[(PXGViewTextureConverter *)self presentationType]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)applyAdjustment:(id)a3 toTexture:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PXGViewTextureConverter.m" lineNumber:33 description:@"PXGViewTextureConverter doesn't support adjustments."];

  abort();
}

- (id)createTextureFromCVPixelBuffer:(__CVBuffer *)a3 transform:(float)a4 alpha:(id)a5 options:(id *)a6 error:
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"PXGViewTextureConverter.m" lineNumber:28 description:@"PXGViewTextureConverter doesn't support CVPixelBufferRef."];

  abort();
}

- (id)createTextureFromCGImage:(CGImage *)a3 transform:(float)a4 alpha:(id)a5 options:(id *)a6 error:
{
  var2 = a5.var2;
  v8 = v6;
  v21 = *&a4;
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
  v19 = [(PXGViewImageTexture *)v10 initWithImage:a3 orientation:v18 alpha:v11 suppressContentsRect:v12, v21];

  return v19;
}

@end