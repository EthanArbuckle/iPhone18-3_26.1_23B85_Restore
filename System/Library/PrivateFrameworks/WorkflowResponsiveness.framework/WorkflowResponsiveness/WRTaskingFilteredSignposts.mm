@interface WRTaskingFilteredSignposts
@end

@implementation WRTaskingFilteredSignposts

void ___WRTaskingFilteredSignposts_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v11];
  if ([(__CFString *)v11 isEqualToString:@"diagnostics"])
  {
    v7 = _WRTaskingFilteredDiagnostics(v5, v6);
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = @"diagnostics";
LABEL_6:
    [v8 setObject:v9 forKeyedSubscript:v10];
    goto LABEL_7;
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:v11];
  if (!v7 || ([v5 isEqual:v7] & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = v5;
    v10 = v11;
    goto LABEL_6;
  }

LABEL_7:
}

void ___WRTaskingFilteredSignposts_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 40);
      v9 = &unk_28838A6F8;
LABEL_6:
      [v8 setObject:v9 forKeyedSubscript:v5];
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 40);
      v9 = &stru_288387A58;
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (![v5 isEqualToString:@"diagnostics"])
    {
      v8 = *(a1 + 40);
      v9 = MEMORY[0x277CBEBF8];
      goto LABEL_6;
    }

    v11 = v6;
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = _WRTaskingDiagnosticRemovedDict(*(*(&v20 + 1) + 8 * i));
          [v12 addObject:{v18, v20}];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    v19 = [v12 copy];
    [*(a1 + 40) setObject:v19 forKeyedSubscript:v5];
  }

LABEL_7:

  v10 = *MEMORY[0x277D85DE8];
}

@end