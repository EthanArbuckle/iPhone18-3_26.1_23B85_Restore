@interface SearchUISectionBackgroundStyleUtilities
+ (BOOL)backgroundStyleNeedsInset:(int64_t)a3;
@end

@implementation SearchUISectionBackgroundStyleUtilities

+ (BOOL)backgroundStyleNeedsInset:(int64_t)a3
{
  if (a3)
  {
    v3 = a3 == 5;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

@end