@interface PUReviewAssetLivePhotoMediaRequest
- (id)initLivePhotoRequestID:(int)d;
- (void)cancelRequest;
@end

@implementation PUReviewAssetLivePhotoMediaRequest

- (void)cancelRequest
{
  _liveRequestID = [(PUReviewAssetLivePhotoMediaRequest *)self _liveRequestID];
  v3 = MEMORY[0x1E69788C8];

  [v3 cancelLivePhotoRequestWithRequestID:_liveRequestID];
}

- (id)initLivePhotoRequestID:(int)d
{
  v5.receiver = self;
  v5.super_class = PUReviewAssetLivePhotoMediaRequest;
  result = [(PUReviewAssetLivePhotoMediaRequest *)&v5 init];
  if (result)
  {
    *(result + 2) = d;
  }

  return result;
}

@end