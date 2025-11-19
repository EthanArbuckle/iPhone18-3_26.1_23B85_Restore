@interface _UIPopoverPresentationMetrics
+ (id)defaultPopoverMetrics;
- (CGSize)defaultPreferredLargeContentSize;
- (CGSize)defaultPreferredSmallContentSize;
@end

@implementation _UIPopoverPresentationMetrics

+ (id)defaultPopoverMetrics
{
  if (qword_1ED49DD38 != -1)
  {
    dispatch_once(&qword_1ED49DD38, &__block_literal_global_224);
  }

  v3 = _MergedGlobals_1092;

  return v3;
}

- (CGSize)defaultPreferredSmallContentSize
{
  v2 = 320.0;
  v3 = 480.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)defaultPreferredLargeContentSize
{
  v2 = 375.0;
  v3 = 667.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end