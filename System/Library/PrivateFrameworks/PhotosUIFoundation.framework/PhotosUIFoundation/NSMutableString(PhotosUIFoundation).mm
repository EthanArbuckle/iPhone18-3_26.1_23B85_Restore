@interface NSMutableString(PhotosUIFoundation)
- (BOOL)px_removePrefix:()PhotosUIFoundation;
- (BOOL)px_removeSuffix:()PhotosUIFoundation;
@end

@implementation NSMutableString(PhotosUIFoundation)

- (BOOL)px_removeSuffix:()PhotosUIFoundation
{
  v5 = [self rangeOfString:a3 options:12];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self deleteCharactersInRange:{v5, v4}];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)px_removePrefix:()PhotosUIFoundation
{
  v5 = [self rangeOfString:a3 options:8];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self deleteCharactersInRange:{v5, v4}];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

@end