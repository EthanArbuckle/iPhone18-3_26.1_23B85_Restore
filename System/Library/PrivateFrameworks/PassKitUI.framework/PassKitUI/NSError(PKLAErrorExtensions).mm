@interface NSError(PKLAErrorExtensions)
- (uint64_t)pk_isLAErrorAuthenticationFailed;
- (uint64_t)pk_isLAErrorUserCancel;
- (uint64_t)pk_shouldSuppressAfterAuthenticationPolicyWasLocationBased:()PKLAErrorExtensions;
@end

@implementation NSError(PKLAErrorExtensions)

- (uint64_t)pk_isLAErrorUserCancel
{
  if ([self code] != -2)
  {
    return 0;
  }

  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x1E696EE30]];

  return v3;
}

- (uint64_t)pk_isLAErrorAuthenticationFailed
{
  if ([self code] != -1)
  {
    return 0;
  }

  domain = [self domain];
  v4 = [domain isEqualToString:*MEMORY[0x1E696EE30]];

  return v4;
}

- (uint64_t)pk_shouldSuppressAfterAuthenticationPolicyWasLocationBased:()PKLAErrorExtensions
{
  result = [self pk_isLAErrorUserCancel];
  if ((result & 1) == 0 && a3)
  {

    return [self pk_isLAErrorAuthenticationFailed];
  }

  return result;
}

@end