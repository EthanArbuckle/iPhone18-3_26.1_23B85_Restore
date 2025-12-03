@interface PXConcreteAudioAssetEntryPoint
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PXConcreteAudioAssetEntryPoint)initWithTime:(double)time fadeInKeyTimeOffsets:(id)offsets fadeInKeyGainValues:(id)values;
- (float)fadeInGainAtOffset:(double)offset;
- (unint64_t)hash;
@end

@implementation PXConcreteAudioAssetEntryPoint

- (unint64_t)hash
{
  [(PXConcreteAudioAssetEntryPoint *)self time];
  v4 = (v3 * 100.0);
  fadeInKeyGainValues = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyGainValues];
  v6 = [fadeInKeyGainValues hash];
  fadeInKeyTimeOffsets = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyTimeOffsets];
  v8 = v6 ^ [fadeInKeyTimeOffsets hash];

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(PXConcreteAudioAssetEntryPoint *)self time];
      v7 = v6;
      [(PXConcreteAudioAssetEntryPoint *)v5 time];
      if (v7 == v8)
      {
        fadeInKeyTimeOffsets = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyTimeOffsets];
        fadeInKeyTimeOffsets2 = [(PXConcreteAudioAssetEntryPoint *)v5 fadeInKeyTimeOffsets];
        if ([fadeInKeyTimeOffsets isEqual:fadeInKeyTimeOffsets2])
        {
          fadeInKeyGainValues = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyGainValues];
          fadeInKeyGainValues2 = [(PXConcreteAudioAssetEntryPoint *)v5 fadeInKeyGainValues];
          v13 = [fadeInKeyGainValues isEqual:fadeInKeyGainValues2];
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

- (float)fadeInGainAtOffset:(double)offset
{
  fadeInKeyGainValues = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyGainValues];
  if ([fadeInKeyGainValues count])
  {
    fadeInKeyTimeOffsets = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyTimeOffsets];
    fadeInKeyGainValues2 = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyGainValues];
    firstObject = [fadeInKeyGainValues2 firstObject];
    [firstObject doubleValue];

    [fadeInKeyTimeOffsets count];
    fadeInKeyTimeOffsets;
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
  fadeInKeyTimeOffsets = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyTimeOffsets];
  fadeInKeyGainValues = [(PXConcreteAudioAssetEntryPoint *)self fadeInKeyGainValues];
  v10 = [v3 initWithFormat:@"<%@ %p; Time: %.2f; Gain Curve Offsets: %@; Gain Curve Values: %@>", v5, self, v7, fadeInKeyTimeOffsets, fadeInKeyGainValues];

  return v10;
}

- (PXConcreteAudioAssetEntryPoint)initWithTime:(double)time fadeInKeyTimeOffsets:(id)offsets fadeInKeyGainValues:(id)values
{
  offsetsCopy = offsets;
  valuesCopy = values;
  v17.receiver = self;
  v17.super_class = PXConcreteAudioAssetEntryPoint;
  v10 = [(PXConcreteAudioAssetEntryPoint *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_time = time;
    v12 = [offsetsCopy copy];
    fadeInKeyTimeOffsets = v11->_fadeInKeyTimeOffsets;
    v11->_fadeInKeyTimeOffsets = v12;

    v14 = [valuesCopy copy];
    fadeInKeyGainValues = v11->_fadeInKeyGainValues;
    v11->_fadeInKeyGainValues = v14;
  }

  return v11;
}

@end