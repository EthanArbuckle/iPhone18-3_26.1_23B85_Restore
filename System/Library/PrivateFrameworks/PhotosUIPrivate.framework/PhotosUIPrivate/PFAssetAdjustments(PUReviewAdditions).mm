@interface PFAssetAdjustments(PUReviewAdditions)
- (id)phAdjustmentData;
@end

@implementation PFAssetAdjustments(PUReviewAdditions)

- (id)phAdjustmentData
{
  v2 = objc_alloc(MEMORY[0x1E6978608]);
  v3 = [a1 adjustmentFormatIdentifier];
  v4 = [a1 adjustmentFormatVersion];
  v5 = [a1 adjustmentData];
  v6 = [v2 initWithFormatIdentifier:v3 formatVersion:v4 data:v5];

  v7 = [a1 adjustmentBaseVersion];
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

  [v6 setBaseVersion:v8];

  return v6;
}

@end