@interface PXAssetVariationRenderResult
- (PXAssetVariationRenderResult)init;
- (PXAssetVariationRenderResult)initWithVariationType:(int64_t)a3 imageURL:(id)a4 videoURL:(id)a5 analysisResult:(id)a6 compositionController:(id)a7 success:(BOOL)a8 error:(id)a9;
- (id)description;
@end

@implementation PXAssetVariationRenderResult

- (id)description
{
  v17.receiver = self;
  v17.super_class = PXAssetVariationRenderResult;
  v3 = [(PXAssetVariationRenderResult *)&v17 description];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(PXAssetVariationRenderResult *)self variationType];
  if ((v5 + 1) > 4)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E77338F0[v5 + 1];
  }

  v7 = v6;
  v8 = [(PXAssetVariationRenderResult *)self imageURL];
  v9 = [(PXAssetVariationRenderResult *)self videoURL];
  v10 = [(PXAssetVariationRenderResult *)self success];
  v11 = @"NO";
  if (v10)
  {
    v11 = @"YES";
  }

  v12 = v11;
  v13 = [(PXAssetVariationRenderResult *)self error];
  v14 = [v4 stringWithFormat:@"variationType:%@ imageURL:%@ videoURL:%@ success:%@ error:%@", v7, v8, v9, v12, v13];

  v15 = [v3 stringByAppendingString:v14];

  return v15;
}

- (PXAssetVariationRenderResult)initWithVariationType:(int64_t)a3 imageURL:(id)a4 videoURL:(id)a5 analysisResult:(id)a6 compositionController:(id)a7 success:(BOOL)a8 error:(id)a9
{
  v27 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v28.receiver = self;
  v28.super_class = PXAssetVariationRenderResult;
  v20 = [(PXAssetVariationRenderResult *)&v28 init];
  v21 = v20;
  if (v20)
  {
    v20->_variationType = a3;
    objc_storeStrong(&v20->_imageURL, a4);
    objc_storeStrong(&v21->_videoURL, a5);
    v21->_success = a8;
    v22 = [v17 copy];
    analysisResult = v21->_analysisResult;
    v21->_analysisResult = v22;

    objc_storeStrong(&v21->_error, a9);
    v24 = [v18 copy];
    compositionController = v21->_compositionController;
    v21->_compositionController = v24;
  }

  return v21;
}

- (PXAssetVariationRenderResult)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetVariationRenderResult.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXAssetVariationRenderResult init]"}];

  abort();
}

@end