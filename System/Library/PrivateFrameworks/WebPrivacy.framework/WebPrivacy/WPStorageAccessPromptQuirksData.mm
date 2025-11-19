@interface WPStorageAccessPromptQuirksData
- (WPStorageAccessPromptQuirksData)initWithQuirks:(id)a3;
@end

@implementation WPStorageAccessPromptQuirksData

- (WPStorageAccessPromptQuirksData)initWithQuirks:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = WPStorageAccessPromptQuirksData;
  v15 = [(WPStorageAccessPromptQuirksData *)&v30 init];
  if (v15)
  {
    v13 = v4;
    v27 = 0;
    v28[0] = &v27;
    v28[1] = 0x2020000000;
    v29 = 0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(v28[0] + 24) = 0x7FFFFFFF;
      v4 = [MEMORY[0x277CBEA60] array];
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__0;
    v25 = __Block_byref_object_dispose__0;
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count", v4)}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v14;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v31 count:16];
    if (v5)
    {
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 3221225472;
            v16[2] = __50__WPStorageAccessPromptQuirksData_initWithQuirks___block_invoke;
            v16[3] = &unk_279EAF520;
            v16[4] = &v27;
            v16[5] = &v21;
            [v8 enumerateKeysAndObjectsUsingBlock:v16];
          }

          else
          {
            ++*(v28[0] + 24);
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v17 objects:v31 count:16];
      }

      while (v5);
    }

    objc_storeStrong(&v15->_quirks, v22[5]);
    if (*(v28[0] + 24))
    {
      v9 = WPOSLogServer();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(WPStorageAccessPromptQuirksData *)v28 initWithQuirks:v9];
      }
    }

    v10 = v15;
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v15;
}

void __50__WPStorageAccessPromptQuirksData_initWithQuirks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [[WPStorageAccessPromptQuirk alloc] initWithName:v7 withDomainData:v5];
    if ([(WPStorageAccessPromptQuirk *)v6 isValid])
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    }

    else
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  else
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)initWithQuirks:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_273D20000, a2, OS_LOG_TYPE_ERROR, "WPStorageAccessPromptQuirksData initWithQuirks: skipped %d entries due to malformed entries", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end