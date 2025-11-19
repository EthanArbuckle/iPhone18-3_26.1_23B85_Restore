@interface AccessPreflightContext
@end

@implementation AccessPreflightContext

uint64_t ___AccessPreflightContext_block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 40);

    return [v3 decrementValidReferenceCount];
  }

  return result;
}

@end