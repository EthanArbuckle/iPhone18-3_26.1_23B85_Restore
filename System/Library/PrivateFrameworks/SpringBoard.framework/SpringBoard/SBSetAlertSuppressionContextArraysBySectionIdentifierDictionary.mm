@interface SBSetAlertSuppressionContextArraysBySectionIdentifierDictionary
@end

@implementation SBSetAlertSuppressionContextArraysBySectionIdentifierDictionary

void ___SBSetAlertSuppressionContextArraysBySectionIdentifierDictionary_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 bundleIdentifier];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void ___SBSetAlertSuppressionContextArraysBySectionIdentifierDictionary_block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a2 externalApplicationSceneHandles];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = SBSafeCast(v9, v8);
        v11 = v10;
        if (v10)
        {
          v12 = [v10 application];
          v13 = [v12 isSameExecutableAsApplication:*(a1 + 32)];

          if (v13)
          {
            [*(a1 + 40) addObject:v11];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

@end