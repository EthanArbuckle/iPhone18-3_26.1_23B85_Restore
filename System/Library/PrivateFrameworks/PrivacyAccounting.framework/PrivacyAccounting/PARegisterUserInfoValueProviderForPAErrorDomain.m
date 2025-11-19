@interface PARegisterUserInfoValueProviderForPAErrorDomain
@end

@implementation PARegisterUserInfoValueProviderForPAErrorDomain

__CFString *__PARegisterUserInfoValueProviderForPAErrorDomain_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if ([a3 isEqualToString:*MEMORY[0x1E696A578]])
  {
    v5 = [v4 code];
    if ((v5 - 1) > 0x13)
    {
      v6 = @"Unknown error";
    }

    else
    {
      v6 = off_1E86AC528[v5 - 1];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end