@interface PXConcreteAudioAssetEntryPoint
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PXConcreteAudioAssetEntryPoint)initWithTime:(double)a3 fadeInKeyTimeOffsets:(id)a4 fadeInKeyGainValues:(id)a5;
- (float)fadeInGainAtOffset:(double)a3;
- (unint64_t)hash;
@end

@implementation PXConcreteAudioAssetEntryPoint

- (unint64_t)hash
{
  [(PXConcreteAudioAssetEntryPoint *)self time];
  v4 = (v3 * 100.0);
  v5 = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyGainValues];
  v6 = [v5 hash];
  v7 = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyTimeOffsets];
  v8 = v6 ^ [v7 hash];

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(PXConcreteAudioAssetEntryPoint *)self time];
      v7 = v6;
      [(PXConcreteAudioAssetEntryPoint *)v5 time];
      if (v7 == v8)
      {
        v9 = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyTimeOffsets];
        v10 = [(PXConcreteAudioAssetEntryPoint *)v5 fadeInKeyTimeOffsets];
        if ([v9 isEqual:v10])
        {
          v11 = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyGainValues];
          v12 = [(PXConcreteAudioAssetEntryPoint *)v5 fadeInKeyGainValues];
          v13 = [v11 isEqual:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (float)fadeInGainAtOffset:(double)a3
{
  v4 = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyGainValues];
  if ([v4 count])
  {
    v5 = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyTimeOffsets];
    v6 = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyGainValues];
    v7 = [v6 firstObject];
    [v7 doubleValue];

    [v5 count];
    v5;
    PXLastIndexInSortedRangePassingTest();
  }

  return 1.0;
}

BOOL __53__PXConcreteAudioAssetEntryPoint_fadeInGainAtOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v3 doubleValue];
  v5 = v4 <= *(a1 + 40);

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PXConcreteAudioAssetEntryPoint *)self time];
  v7 = v6;
  v8 = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyTimeOffsets];
  v9 = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyGainValues];
  v10 = [v3 initWithFormat:@"<%@ %p; Time: %.2f; Gain Curve Offsets: %@; Gain Curve Values: %@>", v5, self, v7, v8, v9];

  return v10;
}

- (PXConcreteAudioAssetEntryPoint)initWithTime:(double)a3 fadeInKeyTimeOffsets:(id)a4 fadeInKeyGainValues:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = PXConcreteAudioAssetEntryPoint;
  v10 = [(PXConcreteAudioAssetEntryPoint *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_time = a3;
    v12 = [v8 copy];
    fadeInKeyTimeOffsets = v11->_fadeInKeyTimeOffsets;
    v11->_fadeInKeyTimeOffsets = v12;

    v14 = [v9 copy];
    fadeInKeyGainValues = v11->_fadeInKeyGainValues;
    v11->_fadeInKeyGainValues = v14;
  }

  return v11;
}

@end