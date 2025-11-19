@interface _PLKNSAttributedStringMetricsProvider
- (CGRect)plk_boundingRectForObject:(id)a3 maxSize:(CGSize)a4;
@end

@implementation _PLKNSAttributedStringMetricsProvider

- (CGRect)plk_boundingRectForObject:(id)a3 maxSize:(CGSize)a4
{
  [a3 boundingRectWithSize:0 options:0 context:{a4.width, a4.height}];
  v8 = fabs(v5);
  v9 = v5 + v8;
  v10 = v7 + v8;
  if (v5 < 0.0)
  {
    v7 = v10;
    v5 = v9;
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end