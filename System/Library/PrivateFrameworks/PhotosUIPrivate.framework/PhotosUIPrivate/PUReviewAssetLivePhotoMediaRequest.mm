@interface PUReviewAssetLivePhotoMediaRequest
- (id)initLivePhotoRequestID:(int)a3;
- (void)cancelRequest;
@end

@implementation PUReviewAssetLivePhotoMediaRequest

- (void)cancelRequest
{
  v2 = [(PUReviewAssetLivePhotoMediaRequest *)self _liveRequestID];
  v3 = MEMORY[0x1E69788C8];

  [v3 cancelLivePhotoRequestWithRequestID:v2];
}

- (id)initLivePhotoRequestID:(int)a3
{
  v5.receiver = self;
  v5.super_class = PUReviewAssetLivePhotoMediaRequest;
  result = [(PUReviewAssetLivePhotoMediaRequest *)&v5 init];
  if (result)
  {
    *(result + 2) = a3;
  }

  return result;
}

@end