@interface SearchUITLKConverters
+ (int64_t)colorForSFColor:(int)color;
@end

@implementation SearchUITLKConverters

+ (int64_t)colorForSFColor:(int)color
{
  if ((color - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1DA272E28[color - 1];
  }
}

@end