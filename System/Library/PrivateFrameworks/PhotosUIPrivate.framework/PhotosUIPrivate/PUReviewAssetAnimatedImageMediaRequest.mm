@interface PUReviewAssetAnimatedImageMediaRequest
- (PUReviewAssetAnimatedImageMediaRequest)initWithAnimatedImageRequestID:(int64_t)d;
- (void)cancelRequest;
@end

@implementation PUReviewAssetAnimatedImageMediaRequest

- (void)cancelRequest
{
  _animatedRequestID = [(PUReviewAssetAnimatedImageMediaRequest *)self _animatedRequestID];
  v3 = MEMORY[0x1E6978618];

  [v3 cancelAnimatedImageRequest:_animatedRequestID];
}

- (PUReviewAssetAnimatedImageMediaRequest)initWithAnimatedImageRequestID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = PUReviewAssetAnimatedImageMediaRequest;
  result = [(PUReviewAssetAnimatedImageMediaRequest *)&v5 init];
  if (result)
  {
    result->__animatedRequestID = d;
  }

  return result;
}

@end