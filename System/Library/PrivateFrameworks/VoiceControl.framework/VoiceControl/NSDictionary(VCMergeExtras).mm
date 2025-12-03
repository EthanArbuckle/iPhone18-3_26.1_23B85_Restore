@interface NSDictionary(VCMergeExtras)
- (id)dictionaryByMergingEntriesFromDictionary:()VCMergeExtras;
@end

@implementation NSDictionary(VCMergeExtras)

- (id)dictionaryByMergingEntriesFromDictionary:()VCMergeExtras
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    selfCopy2 = objc_opt_new();
    v6 = objc_opt_new();
    allKeys = [self allKeys];
    [v6 addObjectsFromArray:allKeys];

    allKeys2 = [v4 allKeys];
    [v6 addObjectsFromArray:allKeys2];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = v10;
    v12 = *v44;
    v36 = v4;
    v37 = *v44;
    selfCopy = self;
    v35 = selfCopy2;
    v33 = v9;
    while (1)
    {
      v13 = 0;
      v38 = v11;
      do
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v43 + 1) + 8 * v13);
        v15 = [self objectForKeyedSubscript:{v14, v33, selfCopy}];
        v16 = [v4 objectForKeyedSubscript:v14];
        if (!v16)
        {
          goto LABEL_29;
        }

        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v15 setByAddingObjectsFromSet:v16];
            goto LABEL_11;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v16;
            v22 = [v15 mutableCopy];
            [v22 unionOrderedSet:v21];

            v11 = v38;
            [selfCopy2 setObject:v22 forKeyedSubscript:v14];

            v12 = v37;
            goto LABEL_31;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v16;
            v24 = [v15 mutableCopy];
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v25 = v23;
            v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v40;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v40 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v39 + 1) + 8 * i);
                  if (([v24 containsObject:v30] & 1) == 0)
                  {
                    [v24 addObject:v30];
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
              }

              while (v27);
            }

            selfCopy2 = v35;
            [v35 setObject:v24 forKeyedSubscript:v14];

            v4 = v36;
            v12 = v37;
            v9 = v33;
            self = selfCopy;
            goto LABEL_12;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v15 dictionaryByMergingEntriesFromDictionary:v16];
LABEL_11:
            v18 = v17;
            [selfCopy2 setObject:v17 forKeyedSubscript:v14];

LABEL_12:
            v11 = v38;
            goto LABEL_31;
          }

LABEL_29:
          v19 = selfCopy2;
          v20 = v15;
          goto LABEL_30;
        }

        v19 = selfCopy2;
        v20 = v16;
LABEL_30:
        [v19 setObject:v20 forKeyedSubscript:v14];
LABEL_31:

        ++v13;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v11)
      {
LABEL_33:

        goto LABEL_35;
      }
    }
  }

  selfCopy2 = self;
LABEL_35:

  v31 = *MEMORY[0x277D85DE8];

  return selfCopy2;
}

@end