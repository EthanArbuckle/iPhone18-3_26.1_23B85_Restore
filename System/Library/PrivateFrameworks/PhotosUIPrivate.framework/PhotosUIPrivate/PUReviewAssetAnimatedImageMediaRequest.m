@interface PUReviewAssetAnimatedImageMediaRequest
- (PUReviewAssetAnimatedImageMediaRequest)initWithAnimatedImageRequestID:(int64_t)a3;
- (void)cancelRequest;
@end

@implementation PUReviewAssetAnimatedImageMediaRequest

- (void)cancelRequest
{
  v2 = [(PUReviewAssetAnimatedImageMediaRequest *)self _animatedRequestID];
  v3 = MEMORY[0x1E6978618];

  [v3 cancelAnimatedImageRequest:v2];
}

- (PUReviewAssetAnimatedImageMediaRequest)initWithAnimatedImageRequestID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PUReviewAssetAnimatedImageMediaRequest;
  result = [(PUReviewAssetAnimatedImageMediaRequest *)&v5 init];
  if (result)
  {
    result->__animatedRequestID = a3;
  }

  return result;
}

@end