@interface STKTelephonySelectionListItemsProvider
- (STKTelephonySelectionListItemsProvider)initWithTelephonyClient:(id)a3;
- (id)selectionListItemsForContext:(id)a3 options:(id)a4;
- (void)dealloc;
@end

@implementation STKTelephonySelectionListItemsProvider

- (STKTelephonySelectionListItemsProvider)initWithTelephonyClient:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(STKTelephonySelectionListItemsProvider *)a2 initWithTelephonyClient:?];
  }

  v10.receiver = self;
  v10.super_class = STKTelephonySelectionListItemsProvider;
  v7 = [(STKTelephonySelectionListItemsProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_telephonyClient, a3);
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = STKTelephonySelectionListItemsProvider;
  [(STKTelephonySelectionListItemsProvider *)&v2 dealloc];
}

- (id)selectionListItemsForContext:(id)a3 options:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:@"STKCTListItems"];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v26 = v7;
      v27 = v6;
      v12 = *v30;
      v13 = *MEMORY[0x277CC40E0];
      v14 = *MEMORY[0x277CC37C0];
      do
      {
        v15 = v9;
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v15);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = objc_alloc(MEMORY[0x277CC3710]);
          v19 = [v17 objectForKeyedSubscript:v13];
          v20 = [v17 objectForKeyedSubscript:v14];
          v21 = [v18 initWithText:v19 selected:v20 != 0];

          [v8 addObject:v21];
        }

        v9 = v15;
        v11 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
      v7 = v26;
      v6 = v27;
    }
  }

  else
  {
    telephonyClient = self->_telephonyClient;
    v28 = 0;
    v23 = [(CoreTelephonyClient *)telephonyClient getSIMToolkitListItems:v6 items:&v28];
    v9 = v28;
    v8 = [v9 itemList];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)initWithTelephonyClient:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STKTelephonySelectionListItemsProvider.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"telephonyClient"}];
}

@end