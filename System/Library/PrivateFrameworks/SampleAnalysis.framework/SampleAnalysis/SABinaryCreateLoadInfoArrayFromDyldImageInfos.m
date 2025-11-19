@interface SABinaryCreateLoadInfoArrayFromDyldImageInfos
@end

@implementation SABinaryCreateLoadInfoArrayFromDyldImageInfos

uint64_t ___SABinaryCreateLoadInfoArrayFromDyldImageInfos_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 loadAddress];
  if (v5 < [a3 loadAddress])
  {
    return -1;
  }

  v7 = [a2 loadAddress];
  return v7 > [a3 loadAddress];
}

@end