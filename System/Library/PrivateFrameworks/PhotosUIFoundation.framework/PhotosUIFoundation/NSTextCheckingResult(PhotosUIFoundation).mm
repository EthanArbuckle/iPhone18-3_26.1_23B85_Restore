@interface NSTextCheckingResult(PhotosUIFoundation)
- (id)px_matchAtIndex:()PhotosUIFoundation forString:;
@end

@implementation NSTextCheckingResult(PhotosUIFoundation)

- (id)px_matchAtIndex:()PhotosUIFoundation forString:
{
  v6 = a4;
  v7 = [self rangeAtIndex:a3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 substringWithRange:{v7, v8}];
  }

  return v9;
}

@end