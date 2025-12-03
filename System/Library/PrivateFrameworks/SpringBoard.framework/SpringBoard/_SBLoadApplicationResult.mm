@interface _SBLoadApplicationResult
- (uint64_t)isSuccess;
- (uint64_t)setSuccess:(uint64_t)result;
- (void)setErrorDescription:(void *)description;
@end

@implementation _SBLoadApplicationResult

- (uint64_t)isSuccess
{
  if (self)
  {
    v1 = *(self + 8);
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

- (void)setErrorDescription:(void *)description
{
  if (description)
  {
    objc_setProperty_nonatomic_copy(description, newValue, newValue, 16);
  }
}

@end