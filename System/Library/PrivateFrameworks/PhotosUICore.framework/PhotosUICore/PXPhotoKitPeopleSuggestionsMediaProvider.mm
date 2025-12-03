@interface PXPhotoKitPeopleSuggestionsMediaProvider
- (int)requestImageForPersonSuggestion:(id)suggestion targetSize:(CGSize)size displayScale:(double)scale cropFactor:(int64_t)factor cornerStyle:(int64_t)style resultHandler:(id)handler;
- (void)cancelRequest:(int)request;
@end

@implementation PXPhotoKitPeopleSuggestionsMediaProvider

- (void)cancelRequest:(int)request
{
  v3 = *&request;
  v4 = +[PXPeopleFaceCropManager sharedManager];
  [v4 cancelRequestForRequestID:v3];
}

- (int)requestImageForPersonSuggestion:(id)suggestion targetSize:(CGSize)size displayScale:(double)scale cropFactor:(int64_t)factor cornerStyle:(int64_t)style resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  suggestionCopy = suggestion;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitPeopleSuggestionsMediaProvider.m" lineNumber:21 description:@"This media provider only works with PXPhotoKitPersonSuggestion."];
  }

  v18 = suggestionCopy;
  v19 = [PXPeopleFaceCropFetchOptions alloc];
  person = [v18 person];
  keyFaceFetchResult = [v18 keyFaceFetchResult];
  firstObject = [keyFaceFetchResult firstObject];
  scale = [(PXPeopleFaceCropFetchOptions *)v19 initWithPerson:person face:firstObject targetSize:width displayScale:height, scale];

  keyAssetFetchResult = [v18 keyAssetFetchResult];

  firstObject2 = [keyAssetFetchResult firstObject];
  [(PXPeopleFaceCropFetchOptions *)scale setAsset:firstObject2];

  [(PXPeopleFaceCropFetchOptions *)scale setCropFactor:factor];
  [(PXPeopleFaceCropFetchOptions *)scale setCornerStyle:style];
  [(PXPeopleFaceCropFetchOptions *)scale setDeliveryMode:1];
  v26 = +[PXPeopleFaceCropManager sharedManager];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __137__PXPhotoKitPeopleSuggestionsMediaProvider_requestImageForPersonSuggestion_targetSize_displayScale_cropFactor_cornerStyle_resultHandler___block_invoke;
  v31[3] = &unk_1E774B680;
  v32 = handlerCopy;
  v27 = handlerCopy;
  v28 = [v26 requestFaceCropForOptions:scale resultHandler:v31];

  return v28;
}

uint64_t __137__PXPhotoKitPeopleSuggestionsMediaProvider_requestImageForPersonSuggestion_targetSize_displayScale_cropFactor_cornerStyle_resultHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end