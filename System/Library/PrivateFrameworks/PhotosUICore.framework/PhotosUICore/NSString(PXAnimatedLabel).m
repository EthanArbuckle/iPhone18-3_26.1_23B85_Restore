@interface NSString(PXAnimatedLabel)
- (id)stringByRemovingDigits;
- (uint64_t)digits;
@end

@implementation NSString(PXAnimatedLabel)

- (uint64_t)digits
{
  if (![a1 containsDigits])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v2 = [a1 rangeOfDigits];
  v4 = [a1 substringWithRange:{v2, v3}];
  v5 = [v4 integerValue];

  return v5;
}

- (id)stringByRemovingDigits
{
  v1 = a1;
  if ([v1 containsDigits])
  {
    v2 = [v1 rangeOfDigits];
    v4 = [v1 stringByReplacingCharactersInRange:v2 withString:{v3, &stru_1F1741150}];

    v1 = v4;
  }

  return v1;
}

@end