@interface NSString(TextDirectionality)
- (uint64_t)wf_hasStrongRTLCharacter;
@end

@implementation NSString(TextDirectionality)

- (uint64_t)wf_hasStrongRTLCharacter
{
  if (![self length])
  {
    return 0;
  }

  v2 = 0;
  do
  {
    [self characterAtIndex:v2];
    IsMemberOf = CFUniCharIsMemberOf();
    if (IsMemberOf)
    {
      break;
    }

    ++v2;
  }

  while ([self length] > v2);
  return IsMemberOf;
}

@end