@interface NSMutableString(PhotosUIFoundation)
- (BOOL)px_removePrefix:()PhotosUIFoundation;
- (BOOL)px_removeSuffix:()PhotosUIFoundation;
@end

@implementation NSMutableString(PhotosUIFoundation)

- (BOOL)px_removeSuffix:()PhotosUIFoundation
{
  v5 = [a1 rangeOfString:a3 options:12];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 deleteCharactersInRange:{v5, v4}];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)px_removePrefix:()PhotosUIFoundation
{
  v5 = [a1 rangeOfString:a3 options:8];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 deleteCharactersInRange:{v5, v4}];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

@end