@interface CSEventJournalStats
+ (BOOL)enumerateEventsWithJournalPath:(id)a3 protectionClasses:(id)a4 itemAdds:(id)a5 itemUpdates:(id)a6 itemDeletes:(id)a7 cancelBlock:(id)a8;
+ (BOOL)enumerateEventsWithProtectionClasses:(id)a3 itemAdds:(id)a4 itemUpdates:(id)a5 itemDeletes:(id)a6 cancelBlock:(id)a7;
+ (BOOL)enumerateEventsWithProtectionClasses:(id)a3 updaters:(id)a4 itemAdds:(id)a5 itemUpdates:(id)a6 itemDeletes:(id)a7 cancelBlock:(id)a8;
+ (id)generateStats;
@end

@implementation CSEventJournalStats

+ (id)generateStats
{
  v48 = *MEMORY[0x277D85DE8];
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = [&unk_2846E7F50 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v24)
  {
    v22 = *v43;
    do
    {
      v2 = 0;
      do
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(&unk_2846E7F50);
        }

        v25 = v2;
        v27 = *(*(&v42 + 1) + 8 * v2);
        v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v3 = 0;
        do
        {
          v29 = protectionClassWithType(v3);
          v4 = eventsPath();
          v30 = v3;
          v5 = [v4 stringByAppendingFormat:@"/%@/%s", v27, getCSIndexTypeShortNameCString(v3)];

          v28 = v5;
          v6 = [[SKGJournalReader alloc] initWithResourceDirectoryPath:v5];
          v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          obj = [(SKGJournalReader *)v6 eventJournalPaths];
          v8 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v39;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v39 != v10)
                {
                  objc_enumerationMutation(obj);
                }

                v12 = *(*(&v38 + 1) + 8 * i);
                v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v36[0] = MEMORY[0x277D85DD0];
                v36[1] = 3221225472;
                v36[2] = __36__CSEventJournalStats_generateStats__block_invoke;
                v36[3] = &unk_27893CD40;
                v37 = v13;
                v34[0] = MEMORY[0x277D85DD0];
                v34[1] = 3221225472;
                v34[2] = __36__CSEventJournalStats_generateStats__block_invoke_2;
                v34[3] = &unk_27893CD40;
                v35 = v37;
                v32[0] = MEMORY[0x277D85DD0];
                v32[1] = 3221225472;
                v32[2] = __36__CSEventJournalStats_generateStats__block_invoke_3;
                v32[3] = &unk_27893CD68;
                v33 = v35;
                v14 = v35;
                [(SKGJournalReader *)v6 enumerateItemsOfJournalAtPath:v12 itemAdds:v36 itemUpdates:v34 itemDeletes:v32 cancelBlock:0];
                v15 = objc_alloc(MEMORY[0x277CCACA8]);
                v16 = eventsPath();
                v17 = [v15 initWithFormat:@"%@%@", @"file:///private", v16];

                v18 = [v12 absoluteString];
                v19 = [v18 stringByReplacingOccurrencesOfString:v17 withString:&stru_2846CE8D8];

                [v7 setObject:v14 forKeyedSubscript:v19];
              }

              v9 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v9);
          }

          [v26 setObject:v7 forKeyedSubscript:v29];
          v3 = v30 + 1;
        }

        while (v30 != 7);
        [v23 setObject:v26 forKeyedSubscript:v27];

        v2 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [&unk_2846E7F50 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v24);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (BOOL)enumerateEventsWithJournalPath:(id)a3 protectionClasses:(id)a4 itemAdds:(id)a5 itemUpdates:(id)a6 itemDeletes:(id)a7 cancelBlock:(id)a8
{
  v98[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v73 = a5;
  v72 = a6;
  v71 = a7;
  v70 = a8;
  v15 = objc_autoreleasePoolPush();
  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = [v16 isReadableFileAtPath:v13];

  if (v17)
  {
    v59 = v15;
    v60 = v17;
    v62 = v13;
    v18 = [MEMORY[0x277CBEBC0] URLWithString:v13];
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v98[0] = *MEMORY[0x277CBE8E8];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:1];
    v58 = v18;
    v21 = [v19 enumeratorAtURL:v18 includingPropertiesForKeys:v20 options:4 errorHandler:&__block_literal_global_2];

    v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v61 = v14;
    v22 = v14;
    v23 = [v22 countByEnumeratingWithState:&v91 objects:v97 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v92;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v92 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v91 + 1) + 8 * i);
          v28 = indexTypeWithProtectionClass(v27);
          if ([v27 isEqualToString:@"MobileMailIndex"])
          {
            v29 = 6;
          }

          else
          {
            v29 = v28;
          }

          if (v29 <= 7)
          {
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:getCSIndexTypeShortNameCString(v29)];
            [v68 setValue:v27 forKey:v30];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v91 objects:v97 count:16];
      }

      while (v24);
    }

    v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v32 = v21;
    v33 = [v32 countByEnumeratingWithState:&v87 objects:v96 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v88;
      v36 = 1;
      v63 = v32;
      v64 = v31;
      v65 = *v88;
      do
      {
        v37 = 0;
        v66 = v34;
        do
        {
          if (*v88 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v87 + 1) + 8 * v37);
          v39 = [v38 path];
          v40 = [v31 containsObject:v39];

          if (v40)
          {
            v41 = v38;
          }

          else
          {
            v42 = [v38 lastPathComponent];
            v43 = [v68 valueForKey:v42];

            v67 = v38;
            if (v43)
            {
              v44 = [SKGJournalReader alloc];
              v45 = [v38 path];
              v46 = [(SKGJournalReader *)v44 initWithResourceDirectoryPath:v45];

              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              obj = [(SKGJournalReader *)v46 eventJournalPaths];
              v47 = [obj countByEnumeratingWithState:&v83 objects:v95 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v84;
                while (2)
                {
                  for (j = 0; j != v48; ++j)
                  {
                    if (*v84 != v49)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v51 = *(*(&v83 + 1) + 8 * j);
                    v52 = objc_autoreleasePoolPush();
                    v80[0] = MEMORY[0x277D85DD0];
                    v80[1] = 3221225472;
                    v80[2] = __117__CSEventJournalStats_enumerateEventsWithJournalPath_protectionClasses_itemAdds_itemUpdates_itemDeletes_cancelBlock___block_invoke_2;
                    v80[3] = &unk_27893CDB0;
                    v82 = v73;
                    v53 = v43;
                    v81 = v53;
                    v77[0] = MEMORY[0x277D85DD0];
                    v77[1] = 3221225472;
                    v77[2] = __117__CSEventJournalStats_enumerateEventsWithJournalPath_protectionClasses_itemAdds_itemUpdates_itemDeletes_cancelBlock___block_invoke_3;
                    v77[3] = &unk_27893CDB0;
                    v79 = v72;
                    v54 = v53;
                    v78 = v54;
                    v74[0] = MEMORY[0x277D85DD0];
                    v74[1] = 3221225472;
                    v74[2] = __117__CSEventJournalStats_enumerateEventsWithJournalPath_protectionClasses_itemAdds_itemUpdates_itemDeletes_cancelBlock___block_invoke_4;
                    v74[3] = &unk_27893CDD8;
                    v76 = v71;
                    v75 = v54;
                    LODWORD(v51) = [(SKGJournalReader *)v46 enumerateItemsOfJournalAtPath:v51 itemAdds:v80 itemUpdates:v77 itemDeletes:v74 cancelBlock:v70];

                    objc_autoreleasePoolPop(v52);
                    if (!v51)
                    {
                      v36 = 0;
                      goto LABEL_32;
                    }
                  }

                  v48 = [obj countByEnumeratingWithState:&v83 objects:v95 count:16];
                  if (v48)
                  {
                    continue;
                  }

                  break;
                }

                v36 = 1;
LABEL_32:
                v32 = v63;
                v31 = v64;
              }

              v35 = v65;
              v34 = v66;
            }

            v41 = v67;
          }

          v55 = [v41 path];
          [v31 addObject:v55];

          ++v37;
        }

        while (v37 != v34);
        v34 = [v32 countByEnumeratingWithState:&v87 objects:v96 count:16];
      }

      while (v34);
    }

    else
    {
      v36 = 1;
    }

    v14 = v61;
    v13 = v62;
    LOBYTE(v17) = v60;
    v15 = v59;
  }

  else
  {
    v36 = 1;
  }

  objc_autoreleasePoolPop(v15);

  v56 = *MEMORY[0x277D85DE8];
  return v36 & 1 | ((v17 & 1) == 0);
}

+ (BOOL)enumerateEventsWithProtectionClasses:(id)a3 itemAdds:(id)a4 itemUpdates:(id)a5 itemDeletes:(id)a6 cancelBlock:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_class();
  v17 = eventsPath();
  LOBYTE(v16) = [v16 enumerateEventsWithJournalPath:v17 protectionClasses:v15 itemAdds:v14 itemUpdates:v13 itemDeletes:v12 cancelBlock:v11];

  return v16;
}

+ (BOOL)enumerateEventsWithProtectionClasses:(id)a3 updaters:(id)a4 itemAdds:(id)a5 itemUpdates:(id)a6 itemDeletes:(id)a7 cancelBlock:(id)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v13;
  v18 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        v23 = eventsPath();
        v24 = [v23 stringByAppendingFormat:@"/%@", v22];

        LODWORD(v23) = [objc_opt_class() enumerateEventsWithJournalPath:v24 protectionClasses:v30 itemAdds:v14 itemUpdates:v15 itemDeletes:v16 cancelBlock:v17];
        if (!v23)
        {
          v25 = 0;
          v26 = 0;
          goto LABEL_13;
        }
      }

      v19 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = 1;
LABEL_13:

  v27 = *MEMORY[0x277D85DE8];
  return v25 & v26;
}

@end