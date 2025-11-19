@interface NSMutableArray
@end

@implementation NSMutableArray

uint64_t __64__NSMutableArray_CTDisplayPlan__filteredPlansWithoutSODATether___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isAccountMemberTransferablePlan])
    {
      v6 = *(a1 + 32);
      v7 = [v5 carrierName];
      LODWORD(v6) = [v6 containsStringCaseInsensitive:v7];

      if (v6)
      {
        v8 = _TSLogDomain();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
LABEL_8:

          goto LABEL_10;
        }

        v9 = [v5 identifier];
        v16 = 138412546;
        v17 = v9;
        v18 = 2080;
        v19 = "[NSMutableArray(CTDisplayPlan) filteredPlansWithoutSODATether:]_block_invoke";
        v10 = "Account member plan (%@) with a SODA tether @%s";
LABEL_7:
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, v10, &v16, 0x16u);

        goto LABEL_8;
      }
    }

    else if (([v5 isOneClickTransferablePlan] & 1) == 0)
    {
      if ([v5 isWebsheetTransferablePlan])
      {
        v12 = *(a1 + 32);
        v13 = [v5 carrierName];
        LODWORD(v12) = [v12 containsStringCaseInsensitive:v13];

        if (v12)
        {
          if (+[TSUtilities inBuddy])
          {
            v8 = _TSLogDomain();
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_8;
            }

            v9 = [v5 identifier];
            v16 = 138412546;
            v17 = v9;
            v18 = 2080;
            v19 = "[NSMutableArray(CTDisplayPlan) filteredPlansWithoutSODATether:]_block_invoke";
            v10 = "Websheet-inbuddy plan (%@) with a SODA tether @%s";
            goto LABEL_7;
          }
        }
      }
    }

    v11 = 1;
    goto LABEL_18;
  }

LABEL_10:
  v11 = 0;
LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

@end