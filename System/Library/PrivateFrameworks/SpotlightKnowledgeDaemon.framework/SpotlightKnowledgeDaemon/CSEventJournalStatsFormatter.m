@interface CSEventJournalStatsFormatter
+ (id)tabulateStats:(id)a3;
@end

@implementation CSEventJournalStatsFormatter

+ (id)tabulateStats:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v50 = v3;
    obj = v3;
    v52 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
    if (v52)
    {
      v51 = *v88;
      v67 = v4;
      do
      {
        v5 = 0;
        do
        {
          if (*v88 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v53 = v5;
          v6 = *(*(&v87 + 1) + 8 * v5);
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v62 = v6;
          v54 = [obj objectForKeyedSubscript:?];
          v56 = [v54 countByEnumeratingWithState:&v83 objects:v93 count:16];
          if (v56)
          {
            v55 = *v84;
            do
            {
              v7 = 0;
              do
              {
                if (*v84 != v55)
                {
                  objc_enumerationMutation(v54);
                }

                v58 = v7;
                v8 = *(*(&v83 + 1) + 8 * v7);
                v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v62, v8];
                v10 = MEMORY[0x277CCACA8];
                v57 = v9;
                v11 = [v10 stringWithFormat:@"%s:\n", objc_msgSend(v57, "UTF8String")];
                [v4 addObject:v11];

                v12 = [obj objectForKeyedSubscript:v62];
                v61 = v8;
                v13 = [v12 objectForKeyedSubscript:v8];
                v14 = [v13 allKeys];
                v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_3];

                v81 = 0u;
                v82 = 0u;
                v79 = 0u;
                v80 = 0u;
                v59 = v15;
                v64 = [v59 countByEnumeratingWithState:&v79 objects:v92 count:16];
                if (v64)
                {
                  v60 = *v80;
                  do
                  {
                    v16 = 0;
                    do
                    {
                      if (*v80 != v60)
                      {
                        objc_enumerationMutation(v59);
                      }

                      v65 = v16;
                      v17 = *(*(&v79 + 1) + 8 * v16);
                      v18 = [obj objectForKeyedSubscript:v62];
                      v19 = [v18 objectForKeyedSubscript:v61];
                      v20 = [v19 objectForKeyedSubscript:v17];

                      v69 = v20;
                      v21 = [v20 allKeys];
                      v22 = [v21 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

                      v23 = MEMORY[0x277CCACA8];
                      v24 = [v17 UTF8String];
                      v25 = [v22 count];
                      v26 = &stru_2846CE8D8;
                      if (!v25)
                      {
                        v26 = @"\t<empty>";
                      }

                      v27 = [v23 stringWithFormat:@"%s[%s]:%@", "    ", v24, v26];
                      [v4 addObject:v27];

                      v77 = 0u;
                      v78 = 0u;
                      v75 = 0u;
                      v76 = 0u;
                      v66 = v22;
                      v70 = [v66 countByEnumeratingWithState:&v75 objects:v91 count:16];
                      if (v70)
                      {
                        v68 = *v76;
                        do
                        {
                          for (i = 0; i != v70; ++i)
                          {
                            if (*v76 != v68)
                            {
                              objc_enumerationMutation(v66);
                            }

                            v74 = *(*(&v75 + 1) + 8 * i);
                            v29 = [v69 objectForKeyedSubscript:?];
                            v73 = objc_alloc(MEMORY[0x277CCACA8]);
                            v30 = [v29 objectForKeyedSubscript:@"add"];
                            v31 = v30;
                            if (v30)
                            {
                              v32 = v30;
                            }

                            else
                            {
                              v32 = &unk_2846E76B0;
                            }

                            v72 = v32;
                            v33 = [v29 objectForKeyedSubscript:@"addsWithNeedsEmbeddings"];
                            v34 = v33;
                            if (v33)
                            {
                              v35 = v33;
                            }

                            else
                            {
                              v35 = &unk_2846E76B0;
                            }

                            v71 = v35;
                            v36 = [v29 objectForKeyedSubscript:@"update"];
                            v37 = v36;
                            if (v36)
                            {
                              v38 = v36;
                            }

                            else
                            {
                              v38 = &unk_2846E76B0;
                            }

                            v39 = [v29 objectForKeyedSubscript:@"updatesWithNeedsEmbeddings"];
                            v40 = v39;
                            if (v39)
                            {
                              v41 = v39;
                            }

                            else
                            {
                              v41 = &unk_2846E76B0;
                            }

                            v42 = [v29 objectForKeyedSubscript:@"delete"];
                            v43 = v42;
                            if (v42)
                            {
                              v44 = v42;
                            }

                            else
                            {
                              v44 = &unk_2846E76B0;
                            }

                            v45 = [v73 initWithFormat:@"%s%s[%@]\t-> Adds:%@\tAddsWithNeedsEmbeddings:%@\tUpdates:%@\tUpdatesWithNeedsEmbeddings:%@\tDeletes:%@", "    ", "    ", v74, v72, v71, v38, v41, v44];

                            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", objc_msgSend(v45, "UTF8String")];
                            v4 = v67;
                            [v67 addObject:v46];
                          }

                          v70 = [v66 countByEnumeratingWithState:&v75 objects:v91 count:16];
                        }

                        while (v70);
                      }

                      [v4 addObject:@"\n"];
                      v16 = v65 + 1;
                    }

                    while (v65 + 1 != v64);
                    v64 = [v59 countByEnumeratingWithState:&v79 objects:v92 count:16];
                  }

                  while (v64);
                }

                v7 = v58 + 1;
              }

              while (v58 + 1 != v56);
              v56 = [v54 countByEnumeratingWithState:&v83 objects:v93 count:16];
            }

            while (v56);
          }

          v5 = v53 + 1;
        }

        while (v53 + 1 != v52);
        v52 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
      }

      while (v52);
    }

    v47 = [v4 componentsJoinedByString:@"\n"];
    v3 = v50;
  }

  else
  {
    v47 = @"empty stats";
  }

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

BOOL __46__CSEventJournalStatsFormatter_tabulateStats___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a2 componentsSeparatedByString:@"_"];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v36 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        if ([v10 containsString:@".journal"])
        {
          v12 = [v10 componentsSeparatedByString:@"."];
          v11 = [v12 objectAtIndexedSubscript:0];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  [v4 componentsSeparatedByString:@"_"];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v32 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    while (2)
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * j);
        if ([v18 containsString:{@".journal", v29}])
        {
          v20 = [v18 componentsSeparatedByString:@"."];
          v19 = [v20 objectAtIndexedSubscript:0];

          goto LABEL_21;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_21:

  v21 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v22 = v21;
  v23 = 1;
  if (v11 && v19)
  {
    v24 = [v21 numberFromString:v11];
    v25 = [v24 unsignedLongLongValue];
    v26 = [v22 numberFromString:v19];
    v23 = v25 > [v26 unsignedLongLongValue];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v23;
}

@end