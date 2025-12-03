@interface SBIconStateArchiver
+ (BOOL)_isIconTypeSupported:(id)supported;
+ (id)_iTunesDictionaryForLeafIcon:(id)icon withIdentifier:(id)identifier;
+ (id)_iTunesDictionaryForLeafIdentifier:(id)identifier;
+ (id)_iTunesIconCellForCell:(id)cell preApex:(BOOL)apex pending:(BOOL)pending iconSource:(id)source;
+ (id)_iTunesIconListForList:(id)list preApex:(BOOL)apex pending:(BOOL)pending iconSource:(id)source;
+ (id)_iTunesIconListsForLists:(id)lists preApex:(BOOL)apex pending:(BOOL)pending iconSource:(id)source;
+ (id)_modernIconCellForCell:(id)cell allowFolders:(BOOL)folders;
+ (id)_modernIconListForList:(id)list allowFolders:(BOOL)folders;
+ (id)_modernIconListsForLists:(id)lists allowFolders:(BOOL)folders;
+ (id)iTunesRepresentationFromRootArchive:(id)archive preApex:(BOOL)apex pending:(BOOL)pending iconSource:(id)source;
+ (id)modernizeRootArchive:(id)archive;
+ (id)rootArchiveFromITunesRepresentation:(id)representation;
@end

@implementation SBIconStateArchiver

+ (id)iTunesRepresentationFromRootArchive:(id)archive preApex:(BOOL)apex pending:(BOOL)pending iconSource:(id)source
{
  pendingCopy = pending;
  apexCopy = apex;
  v10 = MEMORY[0x277CBEB18];
  sourceCopy = source;
  archiveCopy = archive;
  array = [v10 array];
  v14 = [archiveCopy objectForKey:*MEMORY[0x277D66880]];
  v15 = [self _iTunesIconListForList:v14 preApex:apexCopy pending:pendingCopy iconSource:sourceCopy];
  [array addObject:v15];

  v16 = [archiveCopy objectForKey:*MEMORY[0x277D668C8]];

  v17 = [self _iTunesIconListsForLists:v16 preApex:apexCopy pending:pendingCopy iconSource:sourceCopy];

  [array addObjectsFromArray:v17];

  return array;
}

+ (id)rootArchiveFromITunesRepresentation:(id)representation
{
  v11[2] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v4 = [representationCopy count];
  if (v4)
  {
    v5 = v4;
    v10[0] = *MEMORY[0x277D66880];
    v6 = [representationCopy objectAtIndex:0];
    v11[0] = v6;
    v10[1] = *MEMORY[0x277D668C8];
    v7 = [representationCopy subarrayWithRange:{1, v5 - 1}];
    v11[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

+ (id)modernizeRootArchive:(id)archive
{
  archiveCopy = archive;
  v30 = MEMORY[0x277CBEB38];
  v5 = *MEMORY[0x277D668C8];
  v31 = [archiveCopy objectForKey:*MEMORY[0x277D668C8]];
  v29 = [self _modernIconListsForLists:v31 allowFolders:1];
  v6 = *MEMORY[0x277D66880];
  v7 = [archiveCopy objectForKey:*MEMORY[0x277D66880]];
  v8 = [self _modernIconListForList:v7 allowFolders:1];
  v9 = [archiveCopy objectForKey:v6];
  v10 = [self _modernIconListForList:v9 allowFolders:1];
  v11 = *MEMORY[0x277D66888];
  v12 = [archiveCopy objectForKey:*MEMORY[0x277D66888]];
  v13 = [self _modernIconListForList:v12 allowFolders:1];
  v14 = [v30 dictionaryWithObjectsAndKeys:{v29, v5, v8, v6, v10, v6, v13, v11, 0}];

  v15 = *MEMORY[0x277D668B8];
  v16 = [archiveCopy objectForKey:*MEMORY[0x277D668B8]];
  if (v16)
  {
    [v14 setObject:v16 forKeyedSubscript:v15];
  }

  v17 = *MEMORY[0x277D668C0];
  v18 = [archiveCopy objectForKey:*MEMORY[0x277D668C0]];
  if (v18)
  {
    [v14 setObject:v18 forKeyedSubscript:v17];
  }

  v19 = *MEMORY[0x277D66918];
  v20 = [archiveCopy objectForKey:*MEMORY[0x277D66918]];
  if (v20)
  {
    [v14 setObject:v20 forKeyedSubscript:v19];
  }

  v21 = *MEMORY[0x277D66900];
  v22 = [archiveCopy objectForKey:*MEMORY[0x277D66900]];
  if (v22)
  {
    [v14 setObject:v22 forKeyedSubscript:v21];
  }

  v23 = *MEMORY[0x277D66910];
  v24 = [archiveCopy objectForKey:*MEMORY[0x277D66910]];
  if (v24)
  {
    [v14 setObject:v24 forKey:v23];
  }

  v25 = *MEMORY[0x277D66928];
  v26 = [archiveCopy objectForKey:*MEMORY[0x277D66928]];
  if (v26)
  {
    [v14 setObject:v26 forKey:v25];
  }

  v27 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v14];

  return v27;
}

+ (id)_modernIconCellForCell:(id)cell allowFolders:(BOOL)folders
{
  foldersCopy = folders;
  v36 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = cellCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *MEMORY[0x277D668C8];
      v9 = [cellCopy objectForKey:*MEMORY[0x277D668C8]];
      v10 = [cellCopy objectForKey:*MEMORY[0x277D668F0]];
      if (v9)
      {
        v11 = !foldersCopy;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if ([self _isIconTypeSupported:v10])
        {
          v7 = cellCopy;
        }

        else
        {
          v7 = [cellCopy objectForKey:*MEMORY[0x277D66908]];
          if (!v7)
          {
            v13 = [cellCopy objectForKey:*MEMORY[0x277D668F8]];
            if (v13 && ([MEMORY[0x277CBEBC0] URLWithString:v13], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v15 = v14;
              v27 = v13;
              v28 = v10;
              v29 = v9;
              selfCopy = self;
              webClips = [MEMORY[0x277D75D70] webClips];
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v17 = [webClips countByEnumeratingWithState:&v31 objects:v35 count:16];
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
                      objc_enumerationMutation(webClips);
                    }

                    v21 = *(*(&v31 + 1) + 8 * i);
                    pageURL = [v21 pageURL];
                    v23 = [pageURL isEqual:v15];

                    if (v23)
                    {
                      identifier = [v21 identifier];

                      v7 = identifier;
                    }
                  }

                  v18 = [webClips countByEnumeratingWithState:&v31 objects:v35 count:16];
                }

                while (v18);
              }

              else
              {
                v7 = 0;
              }

              v9 = v29;
              self = selfCopy;
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
        v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:cellCopy];
        v12 = [self _modernIconListsForLists:v9 allowFolders:1];
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
    v25 = [self _migrateLeafIdentifierIfNecessary:v7];

    v7 = v25;
  }

  return v7;
}

+ (id)_modernIconListForList:(id)list allowFolders:(BOOL)folders
{
  foldersCopy = folders;
  v37 = *MEMORY[0x277D85DE8];
  listCopy = list;
  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [listCopy objectForKey:*MEMORY[0x277D668D0]];

    listCopy = v8;
  }

  v9 = 0x277CBE000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = listCopy;
    obj = listCopy;
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

                  v21 = [self _modernIconCellForCell:*(*(&v27 + 1) + 8 * i) allowFolders:{foldersCopy, v23}];
                  if (v21)
                  {
                    [array addObject:v21];
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
            v15 = [self _modernIconCellForCell:v14 allowFolders:foldersCopy];
            if (v15)
            {
              [array addObject:v15];
            }
          }

          ++v13;
        }

        while (v13 != v11);
        v11 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    listCopy = v23;
  }

  return array;
}

+ (id)_modernIconListsForLists:(id)lists allowFolders:(BOOL)folders
{
  foldersCopy = folders;
  v20 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = listsCopy;
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

          v13 = [self _modernIconListForList:*(*(&v15 + 1) + 8 * i) allowFolders:foldersCopy];
          if ([v13 count] || !objc_msgSend(array, "count"))
          {
            [array addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return array;
}

+ (BOOL)_isIconTypeSupported:(id)supported
{
  supportedCopy = supported;
  if ([supportedCopy isEqual:*MEMORY[0x277D668E0]] & 1) != 0 || (objc_msgSend(supportedCopy, "isEqual:", *MEMORY[0x277D668D8]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [supportedCopy isEqual:*MEMORY[0x277D668E8]];
  }

  return v4;
}

+ (id)_iTunesIconListsForLists:(id)lists preApex:(BOOL)apex pending:(BOOL)pending iconSource:(id)source
{
  pendingCopy = pending;
  apexCopy = apex;
  v25 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  sourceCopy = source;
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = listsCopy;
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

        v18 = [self _iTunesIconListForList:*(*(&v20 + 1) + 8 * i) preApex:apexCopy pending:pendingCopy iconSource:{sourceCopy, v20}];
        [array addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return array;
}

+ (id)_iTunesIconListForList:(id)list preApex:(BOOL)apex pending:(BOOL)pending iconSource:(id)source
{
  pendingCopy = pending;
  apexCopy = apex;
  v42 = *MEMORY[0x277D85DE8];
  listCopy = list;
  sourceCopy = source;
  array = [MEMORY[0x277CBEB18] array];
  v36 = listCopy;
  if (apexCopy)
  {
    v13 = [sourceCopy maxRowCountForListInRootFolderWithInterfaceOrientation:1];
    v14 = [sourceCopy maxColumnCountForListInRootFolderWithInterfaceOrientation:1];
    v15 = [listCopy count];
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
        array2 = [MEMORY[0x277CBEB18] array];
        [array addObject:array2];
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
                v22 = [self _iTunesIconCellForCell:v21 preApex:1 pending:pendingCopy iconSource:sourceCopy];
                if (v22)
                {
                  goto LABEL_12;
                }
              }
            }

            v22 = [MEMORY[0x277CCABB0] numberWithBool:{0, v31}];
LABEL_12:
            v23 = v22;
            [array2 addObject:{v22, v31}];

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
    v24 = listCopy;
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

          v29 = [self _iTunesIconCellForCell:*(*(&v37 + 1) + 8 * i) preApex:0 pending:pendingCopy iconSource:sourceCopy];
          if (v29)
          {
            [array addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v26);
    }
  }

  return array;
}

+ (id)_iTunesIconCellForCell:(id)cell preApex:(BOOL)apex pending:(BOOL)pending iconSource:(id)source
{
  pendingCopy = pending;
  cellCopy = cell;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = cellCopy;
    v13 = [sourceCopy leafIconForIdentifier:v12];
    if (v13)
    {
      v14 = [self _iTunesDictionaryForLeafIcon:v13 withIdentifier:v12];
    }

    else
    {
      if (!pendingCopy)
      {
        v15 = 0;
        goto LABEL_10;
      }

      v14 = [self _iTunesDictionaryForLeafIdentifier:v12];
    }

    v15 = v14;
LABEL_10:

    goto LABEL_11;
  }

  objc_opt_class();
  v15 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && !apex)
  {
    v15 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:cellCopy];
    v16 = *MEMORY[0x277D668C8];
    v12 = [v15 objectForKey:*MEMORY[0x277D668C8]];
    v17 = [self _iTunesIconListsForLists:v12 preApex:0 pending:pendingCopy iconSource:sourceCopy];
    [v15 setObject:v17 forKey:v16];

    [v15 removeObjectForKey:*MEMORY[0x277D668A0]];
    [v15 removeObjectForKey:*MEMORY[0x277D668C0]];
    [v15 removeObjectForKey:*MEMORY[0x277D66920]];
LABEL_11:
  }

  return v15;
}

+ (id)_iTunesDictionaryForLeafIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = dictionary;
  if (identifierCopy)
  {
    [dictionary setObject:identifierCopy forKey:*MEMORY[0x277D66908]];
    [v5 setObject:identifierCopy forKey:*MEMORY[0x277D66890]];
  }

  return v5;
}

+ (id)_iTunesDictionaryForLeafIcon:(id)icon withIdentifier:(id)identifier
{
  iconCopy = icon;
  identifierCopy = identifier;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [iconCopy displayNameForLocation:*MEMORY[0x277D666C8]];
  if (v8)
  {
    [dictionary setObject:v8 forKey:*MEMORY[0x277D668A8]];
  }

  if (identifierCopy)
  {
    [dictionary setObject:identifierCopy forKey:*MEMORY[0x277D66908]];
  }

  if (![iconCopy isBookmarkIcon])
  {
    if (![iconCopy isApplicationIcon] || !objc_msgSend(iconCopy, "hasApplication"))
    {
      goto LABEL_21;
    }

    application = [iconCopy application];
    info = [application info];
    bundleVersion = [info bundleVersion];

    if (bundleVersion)
    {
      [dictionary setObject:bundleVersion forKey:*MEMORY[0x277D66898]];
    }

    bundleIdentifier = [application bundleIdentifier];
    if (bundleIdentifier)
    {
      [dictionary setObject:bundleIdentifier forKey:*MEMORY[0x277D66890]];
    }

    info2 = [application info];
    [info2 lastModifiedDate];
    goto LABEL_17;
  }

  application = [iconCopy webClip];
  bundleVersion = [application pageURL];
  bundleIdentifier = [bundleVersion relativePath];
  if (bundleIdentifier)
  {
    [dictionary setObject:bundleIdentifier forKey:*MEMORY[0x277D668F8]];
  }

  info2 = [application iconImagePath];
  if (info2)
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
    [dictionary setObject:v16 forKey:*MEMORY[0x277D668B0]];
  }

LABEL_21:

  return dictionary;
}

@end