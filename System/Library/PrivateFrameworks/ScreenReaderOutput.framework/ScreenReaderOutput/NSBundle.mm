@interface NSBundle
@end

@implementation NSBundle

void __50__NSBundle_SCROBundleExtras__brailleDriverBundles__block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [@"/System/Library/ScreenReader" stringByAppendingPathComponent:@"BrailleDrivers"];
  [v2 addObject:v3];

  v35 = v2;
  v4 = [v2 reverseObjectEnumerator];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v38 = [MEMORY[0x277CBEB18] array];
  v36 = v4;
  v6 = [v4 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = @"brailledriver";
    do
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v45 = 0;
      v10 = [v9 contentsOfDirectoryAtPath:v7 error:&v45];
      v37 = v45;

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v11 = v10;
      v40 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v40)
      {
        v12 = *v42;
        v39 = *v42;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v42 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v41 + 1) + 8 * i);
            v15 = [v14 pathExtension];
            v16 = [v15 isEqualToString:v8];

            if (v16)
            {
              v17 = *(a1 + 32);
              v18 = [v7 stringByAppendingPathComponent:v14];
              v19 = [v17 bundleWithPath:v18];

              v20 = [v19 bundleIdentifier];
              if ([v20 length])
              {
                v21 = [v5 objectForKey:v20];
                v22 = v21;
                if (v21)
                {
                  [v21 bundlePath];
                  v23 = v11;
                  v24 = v8;
                  v25 = v7;
                  v26 = a1;
                  v28 = v27 = v5;
                  NSLog(&cfstr_DuplicateBrail.isa, v28);

                  v5 = v27;
                  a1 = v26;
                  v7 = v25;
                  v8 = v24;
                  v11 = v23;
                  v12 = v39;
                }

                else
                {
                  [v5 setObject:v19 forKey:v20];
                  [v38 addObject:v19];
                }
              }
            }
          }

          v40 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v40);
      }

      v29 = [v36 nextObject];

      v7 = v29;
    }

    while (v29);
  }

  v30 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v5];
  v31 = _DriverBundleDictionary;
  _DriverBundleDictionary = v30;

  v32 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v38];
  v33 = _DriverBundleArray;
  _DriverBundleArray = v32;

  v34 = *MEMORY[0x277D85DE8];
}

void __50__NSBundle_SCROBundleExtras___brailleTableBundles__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [@"/System/Library/ScreenReader" stringByAppendingPathComponent:@"BrailleTables"];
  [v2 addObject:v3];

  v33 = v2;
  v4 = [v2 reverseObjectEnumerator];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = v4;
  v6 = [v4 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = @"brailletable";
    do
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v43 = 0;
      v10 = [v9 contentsOfDirectoryAtPath:v7 error:&v43];
      v35 = v43;

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v11 = v10;
      v38 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v38)
      {
        v12 = *v40;
        v37 = *v40;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v40 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v39 + 1) + 8 * i);
            v15 = [v14 pathExtension];
            v16 = [v15 isEqualToString:v8];

            if (v16)
            {
              v17 = *(a1 + 32);
              v18 = [v7 stringByAppendingPathComponent:v14];
              v19 = [v17 bundleWithPath:v18];

              v20 = [v19 bundleIdentifier];
              if ([v20 length])
              {
                v21 = [v5 objectForKey:v20];
                v22 = v21;
                if (v21)
                {
                  [v21 bundlePath];
                  v23 = v11;
                  v24 = v8;
                  v25 = v7;
                  v26 = v5;
                  v28 = v27 = a1;
                  NSLog(&cfstr_DuplicateBrail_0.isa, v28);

                  a1 = v27;
                  v5 = v26;
                  v7 = v25;
                  v8 = v24;
                  v11 = v23;
                  v12 = v37;
                }

                else
                {
                  [v5 setObject:v19 forKey:v20];
                  [v36 addObject:v19];
                }
              }
            }
          }

          v38 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v38);
      }

      v29 = [v34 nextObject];

      v7 = v29;
    }

    while (v29);
  }

  v30 = [v36 copy];
  v31 = _TableBundleArray;
  _TableBundleArray = v30;

  v32 = *MEMORY[0x277D85DE8];
}

@end