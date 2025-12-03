@interface VTKColor
+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
@end

@implementation VTKColor

+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [[_VTKColor alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

@end