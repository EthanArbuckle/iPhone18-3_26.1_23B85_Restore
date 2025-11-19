@interface NSDictionary
@end

@implementation NSDictionary

void __36__NSDictionary_HKSPSleep__hksp_hash__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 conformsToProtocol:&unk_287A82580])
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 32) + 8) + 24) = [v8 hash] ^ v6;
  }

  if ([v5 conformsToProtocol:&unk_287A82580])
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 32) + 8) + 24) = [v5 hash] ^ v7;
  }
}

@end