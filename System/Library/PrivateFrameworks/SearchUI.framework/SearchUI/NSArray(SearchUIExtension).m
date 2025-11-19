@interface NSArray(SearchUIExtension)
- (id)searchui_safeObjectAtIndex:()SearchUIExtension;
@end

@implementation NSArray(SearchUIExtension)

- (id)searchui_safeObjectAtIndex:()SearchUIExtension
{
  if ([a1 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 objectAtIndexedSubscript:a3];
  }

  return v5;
}

@end