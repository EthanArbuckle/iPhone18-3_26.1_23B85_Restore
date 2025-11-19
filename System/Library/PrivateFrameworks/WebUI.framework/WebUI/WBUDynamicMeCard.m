@interface WBUDynamicMeCard
@end

@implementation WBUDynamicMeCard

void __38___WBUDynamicMeCard_performWhenReady___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38___WBUDynamicMeCard_performWhenReady___block_invoke_2;
  v5[3] = &unk_279EB1470;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __38___WBUDynamicMeCard_performWhenReady___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v10 + 1) + 8 * v6) + 16))(*(*(&v10 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = 0;

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __38___WBUDynamicMeCard_performWhenReady___block_invoke_3(uint64_t a1, char a2)
{
  if (a2)
  {
    return [*(a1 + 32) _fetchContactKeysWithHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void __50___WBUDynamicMeCard__fetchContactKeysWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ios_meContactWithKeysToFetch:*(a1 + 40) error:0];
  (*(*(a1 + 48) + 16))();
}

@end