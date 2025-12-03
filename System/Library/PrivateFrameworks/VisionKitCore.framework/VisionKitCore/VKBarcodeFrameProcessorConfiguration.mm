@interface VKBarcodeFrameProcessorConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBarcodeFrameProcessorConfiguration:(id)configuration;
- (CGPoint)comparisonPoint;
- (VKBarcodeFrameProcessorConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VKBarcodeFrameProcessorConfiguration

- (VKBarcodeFrameProcessorConfiguration)init
{
  v11.receiver = self;
  v11.super_class = VKBarcodeFrameProcessorConfiguration;
  v2 = [(VKBarcodeFrameProcessorConfiguration *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2[8] = 1;
    __asm { FMOV            V0.2D, #0.5 }

    *(v2 + 24) = _Q0;
    v9 = *(v2 + 2);
    *(v2 + 2) = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VKBarcodeFrameProcessorConfiguration);
  [(VKBarcodeFrameProcessorConfiguration *)v4 setIsForSingleItem:[(VKBarcodeFrameProcessorConfiguration *)self isForSingleItem]];
  [(VKBarcodeFrameProcessorConfiguration *)self comparisonPoint];
  [(VKBarcodeFrameProcessorConfiguration *)v4 setComparisonPoint:?];
  symbologies = [(VKBarcodeFrameProcessorConfiguration *)self symbologies];
  [(VKBarcodeFrameProcessorConfiguration *)v4 setSymbologies:symbologies];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_opt_class();
      v6 = VKDynamicCast(v5, equalCopy);
      v7 = [(VKBarcodeFrameProcessorConfiguration *)self isEqualToBarcodeFrameProcessorConfiguration:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isEqualToBarcodeFrameProcessorConfiguration:(id)configuration
{
  configurationCopy = configuration;
  isForSingleItem = [configurationCopy isForSingleItem];
  isForSingleItem2 = [(VKBarcodeFrameProcessorConfiguration *)self isForSingleItem];
  [configurationCopy comparisonPoint];
  v8 = v7;
  v10 = v9;
  [(VKBarcodeFrameProcessorConfiguration *)self comparisonPoint];
  v12 = v11;
  v14 = v13;
  symbologies = [configurationCopy symbologies];

  symbologies2 = [(VKBarcodeFrameProcessorConfiguration *)self symbologies];
  v17 = [symbologies isEqualToArray:symbologies2];

  if (isForSingleItem == isForSingleItem2)
  {
    return VKMNearlyEqualPointsWithThreshold(v8, v10, v12, v14, 0.00001) & v17;
  }

  else
  {
    return 0;
  }
}

- (CGPoint)comparisonPoint
{
  x = self->_comparisonPoint.x;
  y = self->_comparisonPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end