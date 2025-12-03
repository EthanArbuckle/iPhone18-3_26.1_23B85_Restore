@interface NSValue(PXDisplayAsset)
+ (id)valueWithPXDisplayAssetDetailedCounts:()PXDisplayAsset;
+ (id)valueWithPXDisplayAssetTypedCount:()PXDisplayAsset;
- (uint64_t)PXDisplayAssetDetailedCountsValue;
- (uint64_t)PXDisplayAssetTypedCountValue;
@end

@implementation NSValue(PXDisplayAsset)

- (uint64_t)PXDisplayAssetTypedCountValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2];
  return v2[0];
}

- (uint64_t)PXDisplayAssetDetailedCountsValue
{
  *x8_0 = 0;
  x8_0[1] = 0;
  x8_0[2] = 0;
  return [self getValue:x8_0];
}

+ (id)valueWithPXDisplayAssetDetailedCounts:()PXDisplayAsset
{
  v3 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:a3 objCType:"{?=QQQ}"];

  return v3;
}

+ (id)valueWithPXDisplayAssetTypedCount:()PXDisplayAsset
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:v6 objCType:"{?=Qq}"];

  return v4;
}

@end