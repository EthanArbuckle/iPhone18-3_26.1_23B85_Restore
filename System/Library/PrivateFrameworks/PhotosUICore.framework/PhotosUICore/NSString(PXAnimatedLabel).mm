@interface NSString(PXAnimatedLabel)
- (id)stringByRemovingDigits;
- (uint64_t)digits;
@end

@implementation NSString(PXAnimatedLabel)

- (uint64_t)digits
{
  if (![self containsDigits])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  rangeOfDigits = [self rangeOfDigits];
  v4 = [self substringWithRange:{rangeOfDigits, v3}];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (id)stringByRemovingDigits
{
  selfCopy = self;
  if ([selfCopy containsDigits])
  {
    rangeOfDigits = [selfCopy rangeOfDigits];
    v4 = [selfCopy stringByReplacingCharactersInRange:rangeOfDigits withString:{v3, &stru_1F1741150}];

    selfCopy = v4;
  }

  return selfCopy;
}

@end