@interface PLIncrementSharedCountForAssets
@end

@implementation PLIncrementSharedCountForAssets

uint64_t ___PLIncrementSharedCountForAssets_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [objc_msgSend(MEMORY[0x277CD97B0] changeRequestForAsset:{*(*(&v6 + 1) + 8 * v5++)), "incrementShareCount"}];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

@end