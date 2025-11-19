@interface VTKColor
+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
@end

@implementation VTKColor

+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[_VTKColor alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

@end