@interface WPStorageAccessUserAgentStringQuirksData
- (WPStorageAccessUserAgentStringQuirksData)initWithQuirks:(id)quirks;
@end

@implementation WPStorageAccessUserAgentStringQuirksData

- (WPStorageAccessUserAgentStringQuirksData)initWithQuirks:(id)quirks
{
  v31 = *MEMORY[0x277D85DE8];
  quirksCopy = quirks;
  v29.receiver = self;
  v29.super_class = WPStorageAccessUserAgentStringQuirksData;
  v14 = [(WPStorageAccessUserAgentStringQuirksData *)&v29 init];
  if (v14)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(quirksCopy, "count")}];
    v20 = 0;
    v21[0] = &v20;
    v21[1] = 0x2020000000;
    v22 = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = quirksCopy;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v30 count:16];
    if (v5)
    {
      v6 = *v17;
      do
      {
        v7 = 0;
        do
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v16 + 1) + 8 * v7);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __59__WPStorageAccessUserAgentStringQuirksData_initWithQuirks___block_invoke;
          v15[3] = &unk_279EAF548;
          v15[4] = &v20;
          v15[5] = &v23;
          [v8 enumerateKeysAndObjectsUsingBlock:v15];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v16 objects:v30 count:16];
      }

      while (v5);
    }

    objc_storeStrong(&v14->_quirks, v24[5]);
    if (*(v21[0] + 24))
    {
      v9 = WPOSLogServer();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(WPStorageAccessUserAgentStringQuirksData *)v21 initWithQuirks:v9];
      }
    }

    v10 = v14;
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v23, 8);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v14;
}

void __59__WPStorageAccessUserAgentStringQuirksData_initWithQuirks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [[WPStorageAccessUserAgentStringQuirk alloc] initWithDomain:v7 withUserAgentString:v5];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
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
  _os_log_error_impl(&dword_273D20000, a2, OS_LOG_TYPE_ERROR, "WPStorageAccessUserAgentStringQuirksData initWithQuirks: skipped %d entries due to unexpected class types", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end