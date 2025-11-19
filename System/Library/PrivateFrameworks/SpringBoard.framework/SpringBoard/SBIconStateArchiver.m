@interface SBIconStateArchiver
+ (BOOL)_isIconTypeSupported:(id)a3;
+ (id)_iTunesDictionaryForLeafIcon:(id)a3 withIdentifier:(id)a4;
+ (id)_iTunesDictionaryForLeafIdentifier:(id)a3;
+ (id)_iTunesIconCellForCell:(id)a3 preApex:(BOOL)a4 pending:(BOOL)a5 iconSource:(id)a6;
+ (id)_iTunesIconListForList:(id)a3 preApex:(BOOL)a4 pending:(BOOL)a5 iconSource:(id)a6;
+ (id)_iTunesIconListsForLists:(id)a3 preApex:(BOOL)a4 pending:(BOOL)a5 iconSource:(id)a6;
+ (id)_modernIconCellForCell:(id)a3 allowFolders:(BOOL)a4;
+ (id)_modernIconListForList:(id)a3 allowFolders:(BOOL)a4;
+ (id)_modernIconListsForLists:(id)a3 allowFolders:(BOOL)a4;
+ (id)iTunesRepresentationFromRootArchive:(id)a3 preApex:(BOOL)a4 pending:(BOOL)a5 iconSource:(id)a6;
+ (id)modernizeRootArchive:(id)a3;
+ (id)rootArchiveFromITunesRepresentation:(id)a3;
@end

@implementation SBIconStateArchiver

+ (id)iTunesRepresentationFromRootArchive:(id)a3 preApex:(BOOL)a4 pending:(BOOL)a5 iconSource:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = MEMORY[0x277CBEB18];
  v11 = a6;
  v12 = a3;
  v13 = [v10 array];
  v14 = [v12 objectForKey:*MEMORY[0x277D66880]];
  v15 = [a1 _iTunesIconListForList:v14 preApex:v7 pending:v6 iconSource:v11];
  [v13 addObject:v15];

  v16 = [v12 objectForKey:*MEMORY[0x277D668C8]];

  v17 = [a1 _iTunesIconListsForLists:v16 preApex:v7 pending:v6 iconSource:v11];

  [v13 addObjectsFromArray:v17];

  return v13;
}

+ (id)rootArchiveFromITunesRepresentation:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v10[0] = *MEMORY[0x277D66880];
    v6 = [v3 objectAtIndex:0];
    v11[0] = v6;
    v10[1] = *MEMORY[0x277D668C8];
    v7 = [v3 subarrayWithRange:{1, v5 - 1}];
    v11[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

+ (id)modernizeRootArchive:(id)a3
{
  v4 = a3;
  v30 = MEMORY[0x277CBEB38];
  v5 = *MEMORY[0x277D668C8];
  v31 = [v4 objectForKey:*MEMORY[0x277D668C8]];
  v29 = [a1 _modernIconListsForLists:v31 allowFolders:1];
  v6 = *MEMORY[0x277D66880];
  v7 = [v4 objectForKey:*MEMORY[0x277D66880]];
  v8 = [a1 _modernIconListForList:v7 allowFolders:1];
  v9 = [v4 objectForKey:v6];
  v10 = [a1 _modernIconListForList:v9 allowFolders:1];
  v11 = *MEMORY[0x277D66888];
  v12 = [v4 objectForKey:*MEMORY[0x277D66888]];
  v13 = [a1 _modernIconListForList:v12 allowFolders:1];
  v14 = [v30 dictionaryWithObjectsAndKeys:{v29, v5, v8, v6, v10, v6, v13, v11, 0}];

  v15 = *MEMORY[0x277D668B8];
  v16 = [v4 objectForKey:*MEMORY[0x277D668B8]];
  if (v16)
  {
    [v14 setObject:v16 forKeyedSubscript:v15];
  }

  v17 = *MEMORY[0x277D668C0];
  v18 = [v4 objectForKey:*MEMORY[0x277D668C0]];
  if (v18)
  {
    [v14 setObject:v18 forKeyedSubscript:v17];
  }

  v19 = *MEMORY[0x277D66918];
  v20 = [v4 objectForKey:*MEMORY[0x277D66918]];
  if (v20)
  {
    [v14 setObject:v20 forKeyedSubscript:v19];
  }

  v21 = *MEMORY[0x277D66900];
  v22 = [v4 objectForKey:*MEMORY[0x277D66900]];
  if (v22)
  {
    [v14 setObject:v22 forKeyedSubscript:v21];
  }

  v23 = *MEMORY[0x277D66910];
  v24 = [v4 objectForKey:*MEMORY[0x277D66910]];
  if (v24)
  {
    [v14 setObject:v24 forKey:v23];
  }

  v25 = *MEMORY[0x277D66928];
  v26 = [v4 objectForKey:*MEMORY[0x277D66928]];
  if (v26)
  {
    [v14 setObject:v26 forKey:v25];
  }

  v27 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v14];

  return v27;
}

+ (id)_modernIconCellForCell:(id)a3 allowFolders:(BOOL)a4
{
  v4 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *MEMORY[0x277D668C8];
      v9 = [v6 objectForKey:*MEMORY[0x277D668C8]];
      v10 = [v6 objectForKey:*MEMORY[0x277D668F0]];
      if (v9)
      {
        v11 = !v4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if ([a1 _isIconTypeSupported:v10])
        {
          v7 = v6;
        }

        else
        {
          v7 = [v6 objectForKey:*MEMORY[0x277D66908]];
          if (!v7)
          {
            v13 = [v6 objectForKey:*MEMORY[0x277D668F8]];
            if (v13 && ([MEMORY[0x277CBEBC0] URLWithString:v13], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v15 = v14;
              v27 = v13;
              v28 = v10;
              v29 = v9;
              v30 = a1;
              v16 = [MEMORY[0x277D75D70] webClips];
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
              if (v17)
              {
                v18 = v17;
                v7 = 0;
                v19 = *v32;
                do
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v32 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = *(*(&v31 + 1) + 8 * i);
                    v22 = [v21 pageURL];
                    v23 = [v22 isEqual:v15];

                    if (v23)
                    {
                      v24 = [v21 identifier];

                      v7 = v24;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
                }

                while (v18);
              }

              else
              {
                v7 = 0;
              }

              v9 = v29;
              a1 = v30;
              v13 = v27;
              v10 = v28;
            }

            else
            {
              v7 = 0;
            }
          }
        }
      }

      else
      {
        v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
        v12 = [a1 _modernIconListsForLists:v9 allowFolders:1];
        [v7 setObject:v12 forKey:v8];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [a1 _migrateLeafIdentifierIfNecessary:v7];

    v7 = v25;
  }

  return v7;
}

+ (id)_modernIconListForList:(id)a3 allowFolders:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 objectForKey:*MEMORY[0x277D668D0]];

    v6 = v8;
  }

  v9 = 0x277CBE000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v6;
    obj = v6;
    v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      v24 = *v32;
      do
      {
        v13 = 0;
        v25 = v11;
        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = v9;
              v19 = *v28;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v28 != v19)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v21 = [a1 _modernIconCellForCell:*(*(&v27 + 1) + 8 * i) allowFolders:{v4, v23}];
                  if (v21)
                  {
                    [v7 addObject:v21];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v17);
              v9 = v18;
              v12 = v24;
              v11 = v25;
            }
          }

          else
          {
            v15 = [a1 _modernIconCellForCell:v14 allowFolders:v4];
            if (v15)
            {
              [v7 addObject:v15];
            }
          }

          ++v13;
        }

        while (v13 != v11);
        v11 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    v6 = v23;
  }

  return v7;
}

+ (id)_modernIconListsForLists:(id)a3 allowFolders:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [a1 _modernIconListForList:*(*(&v15 + 1) + 8 * i) allowFolders:v4];
          if ([v13 count] || !objc_msgSend(v7, "count"))
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

+ (BOOL)_isIconTypeSupported:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:*MEMORY[0x277D668E0]] & 1) != 0 || (objc_msgSend(v3, "isEqual:", *MEMORY[0x277D668D8]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqual:*MEMORY[0x277D668E8]];
  }

  return v4;
}

+ (id)_iTunesIconListsForLists:(id)a3 preApex:(BOOL)a4 pending:(BOOL)a5 iconSource:(id)a6
{
  v7 = a5;
  v8 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v10;
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

        v18 = [a1 _iTunesIconListForList:*(*(&v20 + 1) + 8 * i) preApex:v8 pending:v7 iconSource:{v11, v20}];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v12;
}

+ (id)_iTunesIconListForList:(id)a3 preApex:(BOOL)a4 pending:(BOOL)a5 iconSource:(id)a6
{
  v7 = a5;
  v8 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [MEMORY[0x277CBEB18] array];
  v36 = v10;
  if (v8)
  {
    v13 = [v11 maxRowCountForListInRootFolderWithInterfaceOrientation:1];
    v14 = [v11 maxColumnCountForListInRootFolderWithInterfaceOrientation:1];
    v15 = [v10 count];
    v32 = v13;
    if (v13)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      v31 = v14;
      do
      {
        if (v18 * v14 >= v16)
        {
          break;
        }

        v34 = v18;
        context = objc_autoreleasePoolPush();
        v19 = [MEMORY[0x277CBEB18] array];
        [v12 addObject:v19];
        v20 = v14;
        v35 = v17;
        if (v14)
        {
          do
          {
            if (v17 >= v16)
            {
              v21 = 0;
            }

            else
            {
              v21 = [v36 objectAtIndex:v17];
              if (v21)
              {
                v22 = [a1 _iTunesIconCellForCell:v21 preApex:1 pending:v7 iconSource:v11];
                if (v22)
                {
                  goto LABEL_12;
                }
              }
            }

            v22 = [MEMORY[0x277CCABB0] numberWithBool:{0, v31}];
LABEL_12:
            v23 = v22;
            [v19 addObject:{v22, v31}];

            ++v17;
          }

          while (--v20);
        }

        objc_autoreleasePoolPop(context);
        v18 = v34 + 1;
        v14 = v31;
        v17 = v35 + v31;
      }

      while (v34 + 1 != v32);
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = v10;
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [a1 _iTunesIconCellForCell:*(*(&v37 + 1) + 8 * i) preApex:0 pending:v7 iconSource:v11];
          if (v29)
          {
            [v12 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v26);
    }
  }

  return v12;
}

+ (id)_iTunesIconCellForCell:(id)a3 preApex:(BOOL)a4 pending:(BOOL)a5 iconSource:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v10;
    v13 = [v11 leafIconForIdentifier:v12];
    if (v13)
    {
      v14 = [a1 _iTunesDictionaryForLeafIcon:v13 withIdentifier:v12];
    }

    else
    {
      if (!v7)
      {
        v15 = 0;
        goto LABEL_10;
      }

      v14 = [a1 _iTunesDictionaryForLeafIdentifier:v12];
    }

    v15 = v14;
LABEL_10:

    goto LABEL_11;
  }

  objc_opt_class();
  v15 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && !a4)
  {
    v15 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
    v16 = *MEMORY[0x277D668C8];
    v12 = [v15 objectForKey:*MEMORY[0x277D668C8]];
    v17 = [a1 _iTunesIconListsForLists:v12 preApex:0 pending:v7 iconSource:v11];
    [v15 setObject:v17 forKey:v16];

    [v15 removeObjectForKey:*MEMORY[0x277D668A0]];
    [v15 removeObjectForKey:*MEMORY[0x277D668C0]];
    [v15 removeObjectForKey:*MEMORY[0x277D66920]];
LABEL_11:
  }

  return v15;
}

+ (id)_iTunesDictionaryForLeafIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v3 forKey:*MEMORY[0x277D66908]];
    [v5 setObject:v3 forKey:*MEMORY[0x277D66890]];
  }

  return v5;
}

+ (id)_iTunesDictionaryForLeafIcon:(id)a3 withIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v5 displayNameForLocation:*MEMORY[0x277D666C8]];
  if (v8)
  {
    [v7 setObject:v8 forKey:*MEMORY[0x277D668A8]];
  }

  if (v6)
  {
    [v7 setObject:v6 forKey:*MEMORY[0x277D66908]];
  }

  if (![v5 isBookmarkIcon])
  {
    if (![v5 isApplicationIcon] || !objc_msgSend(v5, "hasApplication"))
    {
      goto LABEL_21;
    }

    v9 = [v5 application];
    v14 = [v9 info];
    v10 = [v14 bundleVersion];

    if (v10)
    {
      [v7 setObject:v10 forKey:*MEMORY[0x277D66898]];
    }

    v11 = [v9 bundleIdentifier];
    if (v11)
    {
      [v7 setObject:v11 forKey:*MEMORY[0x277D66890]];
    }

    v12 = [v9 info];
    [v12 lastModifiedDate];
    goto LABEL_17;
  }

  v9 = [v5 webClip];
  v10 = [v9 pageURL];
  v11 = [v10 relativePath];
  if (v11)
  {
    [v7 setObject:v11 forKey:*MEMORY[0x277D668F8]];
  }

  v12 = [v9 iconImagePath];
  if (v12)
  {
    SBModificationDateForPath();
LABEL_17:
    v15 = v13;
    goto LABEL_19;
  }

  v15 = 0.0;
LABEL_19:

  if (v15 != 0.0)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v15];
    [v7 setObject:v16 forKey:*MEMORY[0x277D668B0]];
  }

LABEL_21:

  return v7;
}

@end