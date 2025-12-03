@interface SearchUISectionBackgroundStyleUtilities
+ (BOOL)backgroundStyleNeedsInset:(int64_t)inset;
@end

@implementation SearchUISectionBackgroundStyleUtilities

+ (BOOL)backgroundStyleNeedsInset:(int64_t)inset
{
  if (inset)
  {
    v3 = inset == 5;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

@end