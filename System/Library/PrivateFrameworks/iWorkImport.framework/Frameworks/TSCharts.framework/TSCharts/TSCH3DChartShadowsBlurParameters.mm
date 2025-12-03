@interface TSCH3DChartShadowsBlurParameters
+ (id)paramsWithQuality:(float)quality numPasses:(int64_t)passes shadowSize:(int64_t)size kernelScale:(float)scale;
- (TSCH3DChartShadowsBlurParameters)initWithQuality:(float)quality numPasses:(int64_t)passes shadowSize:(int64_t)size kernelScale:(float)scale;
@end

@implementation TSCH3DChartShadowsBlurParameters

+ (id)paramsWithQuality:(float)quality numPasses:(int64_t)passes shadowSize:(int64_t)size kernelScale:(float)scale
{
  v10 = [self alloc];
  *&v11 = quality;
  *&v12 = scale;
  v15 = objc_msgSend_initWithQuality_numPasses_shadowSize_kernelScale_(v10, v13, v11, v12, v14, passes, size);

  return v15;
}

- (TSCH3DChartShadowsBlurParameters)initWithQuality:(float)quality numPasses:(int64_t)passes shadowSize:(int64_t)size kernelScale:(float)scale
{
  v11.receiver = self;
  v11.super_class = TSCH3DChartShadowsBlurParameters;
  result = [(TSCH3DChartShadowsBlurParameters *)&v11 init];
  if (result)
  {
    result->_quality = quality;
    result->_numPasses = passes;
    result->_shadowSize = size;
    result->_kernelScale = scale;
  }

  return result;
}

@end