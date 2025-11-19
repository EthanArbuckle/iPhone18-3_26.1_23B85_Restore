@interface NSArray
@end

@implementation NSArray

BOOL __62__NSArray_CTDisplayPlan__filteredPlansWithTransferCapability___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = v3) != 0)
  {
    v5 = v4;
    v6 = [v4 transferCapability] == *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __83__NSArray_CTDisplayPlan__filteredPlansWithTransferCapabilities_restrictionAllowed___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = v3) != 0)
  {
    v5 = v4;
    if ([v4 isRegulatoryRestrictedPlan])
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = *(a1 + 32);
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * v11);
            v13 = [v5 transferCapability];
            if (v13 == [v12 unsignedIntegerValue])
            {

              v6 = 1;
              goto LABEL_16;
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v6 = 0;
    }

LABEL_16:
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

BOOL __58__NSArray_CTDisplayPlan__filteredPlansForVisitStoreBucket__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v3 = v2;
  v4 = v3;
  if (!v3 || ![v3 requireVisitStoreOnce])
  {
    goto LABEL_6;
  }

  v5 = [v4 transferCapability] != 20;
LABEL_7:

  return v5;
}

BOOL __62__NSArray_CTDisplayPlan__filteredPlansForHiddenInCloudBucket___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = v3) != 0)
  {
    v5 = v4;
    v6 = *(a1 + 32) == [v4 isPlanHiddenRequiredForCloudFlow];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end