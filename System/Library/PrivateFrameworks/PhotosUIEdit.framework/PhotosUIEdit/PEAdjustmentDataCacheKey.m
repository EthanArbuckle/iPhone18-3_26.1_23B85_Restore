@interface PEAdjustmentDataCacheKey
- (BOOL)isEqual:(id)a3;
- (PEAdjustmentDataCacheKey)initWithAsset:(id)a3 originalAdjustmentData:(BOOL)a4;
@end

@implementation PEAdjustmentDataCacheKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    v7 = *(v5 + 2) == self->_adjustmentDate && [*(v5 + 1) isEqual:self->_localIdentifier] && v6[24] == self->_originalAdjustmentData;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PEAdjustmentDataCacheKey)initWithAsset:(id)a3 originalAdjustmentData:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = PEAdjustmentDataCacheKey;
  v5 = a3;
  v6 = [(PEAdjustmentDataCacheKey *)&v12 init];
  v7 = [v5 localIdentifier];
  localIdentifier = v6->_localIdentifier;
  v6->_localIdentifier = v7;

  v9 = [v5 adjustmentTimestamp];

  [v9 timeIntervalSinceReferenceDate];
  v6->_adjustmentDate = v10;

  v6->_originalAdjustmentData = a4;
  return v6;
}

@end