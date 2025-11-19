@interface NSArray
@end

@implementation NSArray

uint64_t __62__NSArray_ICSWriter___ICSStringWithOptions_appendingToString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 compare:v5];
  }

  else
  {
    NSLog(&cfstr_AttemptedToSor.isa, v4);
    v7 = -1;
    if (v4 >= v5)
    {
      v7 = 1;
    }

    if (v4 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v7;
    }
  }

  return v6;
}

@end