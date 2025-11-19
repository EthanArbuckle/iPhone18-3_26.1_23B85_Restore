@interface VGSelectionState
+ (id)capturedStatesFromCapturedPoses:(id)a3;
@end

@implementation VGSelectionState

+ (id)capturedStatesFromCapturedPoses:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = MEMORY[0x277CCABB0];
        v11 = [v5 objectForKey:{v9, v15}];
        v12 = [v10 numberWithBool:{objc_msgSend(v11, "valid")}];
        [v4 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end