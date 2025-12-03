@interface PFAssetAdjustments(PUReviewAdditions)
- (id)phAdjustmentData;
@end

@implementation PFAssetAdjustments(PUReviewAdditions)

- (id)phAdjustmentData
{
  v2 = objc_alloc(MEMORY[0x1E6978608]);
  adjustmentFormatIdentifier = [self adjustmentFormatIdentifier];
  adjustmentFormatVersion = [self adjustmentFormatVersion];
  adjustmentData = [self adjustmentData];
  v6 = [v2 initWithFormatIdentifier:adjustmentFormatIdentifier formatVersion:adjustmentFormatVersion data:adjustmentData];

  adjustmentBaseVersion = [self adjustmentBaseVersion];
  if (adjustmentBaseVersion == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = adjustmentBaseVersion == 1;
  }

  [v6 setBaseVersion:v8];

  return v6;
}

@end