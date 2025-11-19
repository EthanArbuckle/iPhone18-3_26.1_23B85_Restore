@interface PLJobLogDictionary
@end

@implementation PLJobLogDictionary

void ___PLJobLogDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v7] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      NSLog(@"# %@ %@ -> NSDATA[%lu]", *(a1 + 40), v7, [v5 length]);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        NSLog(@"# %@ %@ -> {", *(a1 + 40), v7);
        _PLJobLogDictionary(v5, (*(a1 + 48) + 1), 0);
        NSLog(@"# %@ }", *(a1 + 40), v6);
      }

      else
      {
        NSLog(@"# %@ %@ -> %@", *(a1 + 40), v7, v5);
      }
    }
  }
}

@end