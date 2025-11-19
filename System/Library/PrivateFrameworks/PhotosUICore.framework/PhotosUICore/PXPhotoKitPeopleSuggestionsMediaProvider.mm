@interface PXPhotoKitPeopleSuggestionsMediaProvider
- (int)requestImageForPersonSuggestion:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 cropFactor:(int64_t)a6 cornerStyle:(int64_t)a7 resultHandler:(id)a8;
- (void)cancelRequest:(int)a3;
@end

@implementation PXPhotoKitPeopleSuggestionsMediaProvider

- (void)cancelRequest:(int)a3
{
  v3 = *&a3;
  v4 = +[PXPeopleFaceCropManager sharedManager];
  [v4 cancelRequestForRequestID:v3];
}

- (int)requestImageForPersonSuggestion:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 cropFactor:(int64_t)a6 cornerStyle:(int64_t)a7 resultHandler:(id)a8
{
  height = a4.height;
  width = a4.width;
  v16 = a3;
  v17 = a8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPeopleSuggestionsMediaProvider.m" lineNumber:21 description:@"This media provider only works with PXPhotoKitPersonSuggestion."];
  }

  v18 = v16;
  v19 = [PXPeopleFaceCropFetchOptions alloc];
  v20 = [v18 person];
  v21 = [v18 keyFaceFetchResult];
  v22 = [v21 firstObject];
  v23 = [(PXPeopleFaceCropFetchOptions *)v19 initWithPerson:v20 face:v22 targetSize:width displayScale:height, a5];

  v24 = [v18 keyAssetFetchResult];

  v25 = [v24 firstObject];
  [(PXPeopleFaceCropFetchOptions *)v23 setAsset:v25];

  [(PXPeopleFaceCropFetchOptions *)v23 setCropFactor:a6];
  [(PXPeopleFaceCropFetchOptions *)v23 setCornerStyle:a7];
  [(PXPeopleFaceCropFetchOptions *)v23 setDeliveryMode:1];
  v26 = +[PXPeopleFaceCropManager sharedManager];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __137__PXPhotoKitPeopleSuggestionsMediaProvider_requestImageForPersonSuggestion_targetSize_displayScale_cropFactor_cornerStyle_resultHandler___block_invoke;
  v31[3] = &unk_1E774B680;
  v32 = v17;
  v27 = v17;
  v28 = [v26 requestFaceCropForOptions:v23 resultHandler:v31];

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