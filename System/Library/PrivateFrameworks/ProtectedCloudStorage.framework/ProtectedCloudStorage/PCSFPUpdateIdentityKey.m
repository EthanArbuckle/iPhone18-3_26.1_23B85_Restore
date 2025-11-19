@interface PCSFPUpdateIdentityKey
@end

@implementation PCSFPUpdateIdentityKey

void ___PCSFPUpdateIdentityKey_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  PublicKey = PCSIdentityGetPublicKey(a3);
  if (!CFEqual(a2, PublicKey))
  {
    abort();
  }

  if (!CFEqual(a2, *(a1 + 32)))
  {
    v6 = *(a1 + 40);

    CFDictionaryRemoveValue(v6, a2);
  }
}

@end