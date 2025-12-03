@interface PEAdjustmentDataCacheKey
- (BOOL)isEqual:(id)equal;
- (PEAdjustmentDataCacheKey)initWithAsset:(id)asset originalAdjustmentData:(BOOL)data;
@end

@implementation PEAdjustmentDataCacheKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v7 = *(v5 + 2) == self->_adjustmentDate && [*(v5 + 1) isEqual:self->_localIdentifier] && v6[24] == self->_originalAdjustmentData;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PEAdjustmentDataCacheKey)initWithAsset:(id)asset originalAdjustmentData:(BOOL)data
{
  v12.receiver = self;
  v12.super_class = PEAdjustmentDataCacheKey;
  assetCopy = asset;
  v6 = [(PEAdjustmentDataCacheKey *)&v12 init];
  localIdentifier = [assetCopy localIdentifier];
  localIdentifier = v6->_localIdentifier;
  v6->_localIdentifier = localIdentifier;

  adjustmentTimestamp = [assetCopy adjustmentTimestamp];

  [adjustmentTimestamp timeIntervalSinceReferenceDate];
  v6->_adjustmentDate = v10;

  v6->_originalAdjustmentData = data;
  return v6;
}

@end