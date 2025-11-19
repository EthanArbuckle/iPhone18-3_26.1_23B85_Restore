@interface TSCH3DChartShadowsBlurParameters
+ (id)paramsWithQuality:(float)a3 numPasses:(int64_t)a4 shadowSize:(int64_t)a5 kernelScale:(float)a6;
- (TSCH3DChartShadowsBlurParameters)initWithQuality:(float)a3 numPasses:(int64_t)a4 shadowSize:(int64_t)a5 kernelScale:(float)a6;
@end

@implementation TSCH3DChartShadowsBlurParameters

+ (id)paramsWithQuality:(float)a3 numPasses:(int64_t)a4 shadowSize:(int64_t)a5 kernelScale:(float)a6
{
  v10 = [a1 alloc];
  *&v11 = a3;
  *&v12 = a6;
  v15 = objc_msgSend_initWithQuality_numPasses_shadowSize_kernelScale_(v10, v13, v11, v12, v14, a4, a5);

  return v15;
}

- (TSCH3DChartShadowsBlurParameters)initWithQuality:(float)a3 numPasses:(int64_t)a4 shadowSize:(int64_t)a5 kernelScale:(float)a6
{
  v11.receiver = self;
  v11.super_class = TSCH3DChartShadowsBlurParameters;
  result = [(TSCH3DChartShadowsBlurParameters *)&v11 init];
  if (result)
  {
    result->_quality = a3;
    result->_numPasses = a4;
    result->_shadowSize = a5;
    result->_kernelScale = a6;
  }

  return result;
}

@end