@interface CSEventListener
- (CSEventListener)initWithEventListenerDelegate:(id)a3;
@end

@implementation CSEventListener

- (CSEventListener)initWithEventListenerDelegate:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v45.receiver = self;
  v45.super_class = CSEventListener;
  v6 = [(CSEventListener *)&v45 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v7->_eventFlags = [v5 eventFlags];
    v8 = [v5 includeBundleIDs];
    v9 = [v8 count];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEB58] setWithCapacity:v9];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v42;
        do
        {
          v15 = 0;
          do
          {
            if (*v42 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v41 + 1) + 8 * v15) UTF8String];
            v17 = strlen(v16);
            v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bundleIdHash(v16, v17 + 1)}];
            [v10 addObject:v18];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v13);
      }

      if ([v10 count])
      {
        v19 = [v10 copy];
        includedBundleHashes = v7->_includedBundleHashes;
        v7->_includedBundleHashes = v19;
      }
    }

    v21 = [v5 excludeBundleIDs];

    v22 = [v21 count];
    if (v22)
    {
      v23 = [MEMORY[0x277CBEB58] setWithCapacity:v22];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v24 = v21;
      v25 = [v24 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v38;
        do
        {
          v28 = 0;
          do
          {
            if (*v38 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v37 + 1) + 8 * v28);
            v30 = [v29 UTF8String];
            v31 = strlen(v30);
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bundleIdHash(v30, v31 + 1)}];
            [v23 addObject:v32];

            ++v28;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v26);
      }

      if ([v23 count])
      {
        v33 = [v23 copy];
        excludedBundleHashes = v7->_excludedBundleHashes;
        v7->_excludedBundleHashes = v33;
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return v7;
}

@end