@interface IPAImageSizePolicy
+ (id)bestFitPolicyInSize:(CGSize)size;
+ (id)bestFitPolicyShortestEdge:(double)edge;
+ (id)bestFitPolicyWithEvenTotalPixelCount:(int64_t)count;
+ (id)bestFitPolicyWithEvenWidthTotalPixelCount:(int64_t)count;
+ (id)bestFitPolicyWithHeight:(double)height;
+ (id)bestFitPolicyWithNominalShortSide:(int64_t)side minLongSide:(int64_t)longSide maxLongSide:(int64_t)maxLongSide;
+ (id)bestFitPolicyWithTotalPixelCount:(int64_t)count;
+ (id)bestFitPolicyWithWidth:(double)width;
+ (id)largestPolicyWithPolicies:(id)policies;
+ (id)originalSizePolicy;
+ (id)scalePolicyWithScale:(double)scale;
- (IPAImageSizePolicy)initWithCoder:(id)coder;
- (PFIntSize_st)integralTransformSize:(CGSize)size;
- (double)transformScaleForSize:(CGSize)size;
@end

@implementation IPAImageSizePolicy

- (IPAImageSizePolicy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IPAImageSizePolicy;
  return [(IPAImageSizePolicy *)&v4 init];
}

- (double)transformScaleForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(IPAImageSizePolicy *)self transformSize:?];
  result = v5 / width;
  v8 = v7 / height;
  if (result >= v8)
  {
    return v8;
  }

  return result;
}

- (PFIntSize_st)integralTransformSize:(CGSize)size
{
  [(IPAImageSizePolicy *)self transformSize:size.width, size.height];
  v4 = vcvtad_u64_f64(v3);
  v6 = vcvtad_u64_f64(v5);
  result.height = v6;
  result.width = v4;
  return result;
}

+ (id)bestFitPolicyWithNominalShortSide:(int64_t)side minLongSide:(int64_t)longSide maxLongSide:(int64_t)maxLongSide
{
  v5 = [[IPABestFitShortSideWithLongSideLimit alloc] initWithNominalShortSide:side minLongSide:longSide maxLongSide:maxLongSide];

  return v5;
}

+ (id)largestPolicyWithPolicies:(id)policies
{
  policiesCopy = policies;
  v4 = [[IPAAggregateLargestImageSizePolicy alloc] initWithPolicies:policiesCopy];

  return v4;
}

+ (id)bestFitPolicyWithEvenWidthTotalPixelCount:(int64_t)count
{
  v3 = [(IPABestFitTotalPixelCountImageSizePolicy *)[IPABestFitEvenWidthTotalPixelCountImageSizePolicy alloc] initWithTotalPixelCount:count];

  return v3;
}

+ (id)bestFitPolicyWithEvenTotalPixelCount:(int64_t)count
{
  v3 = [[IPABestFitEvenTotalPixelCountImageSizePolicy alloc] initWithTotalPixelCount:count];

  return v3;
}

+ (id)bestFitPolicyWithTotalPixelCount:(int64_t)count
{
  v3 = [[IPABestFitTotalPixelCountImageSizePolicy alloc] initWithTotalPixelCount:count];

  return v3;
}

+ (id)bestFitPolicyWithHeight:(double)height
{
  v3 = [[IPABestFitImageHeightPolicy alloc] initWithHeight:height];

  return v3;
}

+ (id)bestFitPolicyWithWidth:(double)width
{
  v3 = [[IPABestFitImageWidthPolicy alloc] initWithWidth:width];

  return v3;
}

+ (id)bestFitPolicyShortestEdge:(double)edge
{
  v3 = [[IPAShortestEdgeImageSizePolicy alloc] initWithShortestEdge:edge];

  return v3;
}

+ (id)bestFitPolicyInSize:(CGSize)size
{
  v3 = [[IPABestFitImageSizePolicy alloc] initWithFitSize:size.width, size.height];

  return v3;
}

+ (id)scalePolicyWithScale:(double)scale
{
  if (scale == 1.0)
  {
    v3 = +[IPAImageSizePolicy originalSizePolicy];
  }

  else
  {
    v3 = [[IPAScaleImageSizePolicy alloc] initWithScale:scale];
  }

  return v3;
}

+ (id)originalSizePolicy
{
  v2 = objc_opt_new();

  return v2;
}

@end