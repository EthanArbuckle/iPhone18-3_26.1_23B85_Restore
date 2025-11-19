@interface NSError(PKLAErrorExtensions)
- (uint64_t)pk_isLAErrorAuthenticationFailed;
- (uint64_t)pk_isLAErrorUserCancel;
- (uint64_t)pk_shouldSuppressAfterAuthenticationPolicyWasLocationBased:()PKLAErrorExtensions;
@end

@implementation NSError(PKLAErrorExtensions)

- (uint64_t)pk_isLAErrorUserCancel
{
  if ([a1 code] != -2)
  {
    return 0;
  }

  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696EE30]];

  return v3;
}

- (uint64_t)pk_isLAErrorAuthenticationFailed
{
  if ([a1 code] != -1)
  {
    return 0;
  }

  v3 = [a1 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x1E696EE30]];

  return v4;
}

- (uint64_t)pk_shouldSuppressAfterAuthenticationPolicyWasLocationBased:()PKLAErrorExtensions
{
  result = [a1 pk_isLAErrorUserCancel];
  if ((result & 1) == 0 && a3)
  {

    return [a1 pk_isLAErrorAuthenticationFailed];
  }

  return result;
}

@end