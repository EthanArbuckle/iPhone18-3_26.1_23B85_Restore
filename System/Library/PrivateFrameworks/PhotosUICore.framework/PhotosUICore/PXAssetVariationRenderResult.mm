@interface PXAssetVariationRenderResult
- (PXAssetVariationRenderResult)init;
- (PXAssetVariationRenderResult)initWithVariationType:(int64_t)type imageURL:(id)l videoURL:(id)rL analysisResult:(id)result compositionController:(id)controller success:(BOOL)success error:(id)error;
- (id)description;
@end

@implementation PXAssetVariationRenderResult

- (id)description
{
  v17.receiver = self;
  v17.super_class = PXAssetVariationRenderResult;
  v3 = [(PXAssetVariationRenderResult *)&v17 description];
  v4 = MEMORY[0x1E696AEC0];
  variationType = [(PXAssetVariationRenderResult *)self variationType];
  if ((variationType + 1) > 4)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E77338F0[variationType + 1];
  }

  v7 = v6;
  imageURL = [(PXAssetVariationRenderResult *)self imageURL];
  videoURL = [(PXAssetVariationRenderResult *)self videoURL];
  success = [(PXAssetVariationRenderResult *)self success];
  v11 = @"NO";
  if (success)
  {
    v11 = @"YES";
  }

  v12 = v11;
  error = [(PXAssetVariationRenderResult *)self error];
  v14 = [v4 stringWithFormat:@"variationType:%@ imageURL:%@ videoURL:%@ success:%@ error:%@", v7, imageURL, videoURL, v12, error];

  v15 = [v3 stringByAppendingString:v14];

  return v15;
}

- (PXAssetVariationRenderResult)initWithVariationType:(int64_t)type imageURL:(id)l videoURL:(id)rL analysisResult:(id)result compositionController:(id)controller success:(BOOL)success error:(id)error
{
  lCopy = l;
  rLCopy = rL;
  resultCopy = result;
  controllerCopy = controller;
  errorCopy = error;
  v28.receiver = self;
  v28.super_class = PXAssetVariationRenderResult;
  v20 = [(PXAssetVariationRenderResult *)&v28 init];
  v21 = v20;
  if (v20)
  {
    v20->_variationType = type;
    objc_storeStrong(&v20->_imageURL, l);
    objc_storeStrong(&v21->_videoURL, rL);
    v21->_success = success;
    v22 = [resultCopy copy];
    analysisResult = v21->_analysisResult;
    v21->_analysisResult = v22;

    objc_storeStrong(&v21->_error, error);
    v24 = [controllerCopy copy];
    compositionController = v21->_compositionController;
    v21->_compositionController = v24;
  }

  return v21;
}

- (PXAssetVariationRenderResult)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetVariationRenderResult.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXAssetVariationRenderResult init]"}];

  abort();
}

@end