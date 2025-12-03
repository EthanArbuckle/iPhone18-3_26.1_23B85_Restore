@interface PUVideoEditReviewAsset
- (PUVideoEditReviewAsset)initWithReviewAsset:(id)asset trimmedVideoPath:(id)path;
@end

@implementation PUVideoEditReviewAsset

- (PUVideoEditReviewAsset)initWithReviewAsset:(id)asset trimmedVideoPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = PUVideoEditReviewAsset;
  v8 = [(PUReviewAsset *)&v11 initWithReviewAsset:asset];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_trimmedVideoPath, path);
  }

  return v9;
}

@end