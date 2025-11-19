@interface _SBLoadApplicationResult
- (uint64_t)isSuccess;
- (uint64_t)setSuccess:(uint64_t)result;
- (void)setErrorDescription:(void *)a1;
@end

@implementation _SBLoadApplicationResult

- (uint64_t)isSuccess
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setSuccess:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (void)setErrorDescription:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 16);
  }
}

@end