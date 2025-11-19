@interface NSMutableSet
@end

@implementation NSMutableSet

void __68__NSMutableSet_WFNetworkProfile___equivalentExistingNetworkProfile___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([WFNetworkProfile networkProfileRepresentSameNetwork:*(a1 + 32) toNetworkProfile:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

uint64_t __62__NSMutableSet_WiFiKit__compareAndUpdateDuplicateScanRecords___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) ssid];
  if (v6)
  {
    v7 = [v5 ssid];
    v8 = [*(a1 + 32) ssid];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v6 = 1;
      *a3 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end