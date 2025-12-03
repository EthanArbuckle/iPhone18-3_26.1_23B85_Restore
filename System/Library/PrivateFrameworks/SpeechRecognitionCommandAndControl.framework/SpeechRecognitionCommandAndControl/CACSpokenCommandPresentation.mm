@interface CACSpokenCommandPresentation
- (BOOL)hasConflicts;
- (CACSpokenCommandPresentation)init;
- (NSArray)flattenedCommandGroupsAndItems;
- (NSArray)nestedCommandGroupsAndItems;
- (id)_filteredCommandGroupsAndItemsWithSearchString:(id)string;
- (id)itemsConflictingWithItem:(id)item;
- (unint64_t)indexOfItemWithIdentifier:(id)identifier ignoreGroups:(BOOL)groups;
- (void)_deepFlush;
- (void)_flushCommands;
- (void)addCustomCommandItem:(id)item;
- (void)deleteCustomCommandAtIndex:(unint64_t)index;
- (void)refreshItemWithIdentifier:(id)identifier;
- (void)saveChanges;
- (void)setAdditionalCommandInfo:(id)info;
- (void)setExternalCommandGroups:(id)groups;
- (void)setLocale:(id)locale;
- (void)setRelevantCommandIdentifiers:(id)identifiers;
- (void)setSearchString:(id)string;
- (void)sortCustomCommands;
@end

@implementation CACSpokenCommandPresentation

- (CACSpokenCommandPresentation)init
{
  v6.receiver = self;
  v6.super_class = CACSpokenCommandPresentation;
  v2 = [(CACSpokenCommandPresentation *)&v6 init];
  if (v2)
  {
    v3 = +[CACPreferences sharedPreferences];
    bestLocaleIdentifier = [v3 bestLocaleIdentifier];
    [(CACSpokenCommandPresentation *)v2 setLocale:bestLocaleIdentifier];
  }

  return v2;
}

- (void)_flushCommands
{
  allCommandGroups = self->_allCommandGroups;
  self->_allCommandGroups = 0;

  commandItems = self->_commandItems;
  self->_commandItems = 0;

  [(CACSpokenCommandPresentation *)self resetConflicts];
}

- (void)_deepFlush
{
  [(CACSpokenCommandPresentation *)self _flushCommands];
  commandGroups = self->_commandGroups;
  self->_commandGroups = 0;

  newCommandItems = self->_newCommandItems;
  self->_newCommandItems = 0;

  deletedCommandIdentifiers = self->_deletedCommandIdentifiers;
  self->_deletedCommandIdentifiers = 0;
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  if (![(NSString *)self->_locale isEqualToString:?])
  {
    [(CACSpokenCommandPresentation *)self resetConflicts];
    objc_storeStrong(&self->_locale, locale);
    v5 = +[CACPreferences sharedPreferences];
    v6 = [v5 builtInCommandsStringsTableForLocaleIdentifier:localeCopy];
    v7 = [v6 objectForKey:@"CommandManager.searchWordsToExclude"];

    lowercaseString = [v7 lowercaseString];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v10 = [lowercaseString componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    excludedSearchWordSet = self->_excludedSearchWordSet;
    self->_excludedSearchWordSet = v11;

    [(CACSpokenCommandPresentation *)self _deepFlush];
  }
}

- (BOOL)hasConflicts
{
  conflictDictionary = self->_conflictDictionary;
  if (!conflictDictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    flattenedCommandGroupsAndItems = [(CACSpokenCommandPresentation *)self flattenedCommandGroupsAndItems];
    v6 = [(NSArray *)self->_commandsOnly count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      do
      {
        v9 = [(NSArray *)self->_commandsOnly objectAtIndex:v8];
        isGroup = [v9 isGroup];
        if (++v8 < v7 && (isGroup & 1) == 0)
        {
          v11 = v8;
          do
          {
            v12 = [(NSArray *)self->_commandsOnly objectAtIndex:v11];
            if (([v12 isGroup] & 1) == 0 && objc_msgSend(v9, "conflictsWithItem:", v12))
            {
              identifier = [v9 identifier];
              array = [dictionary objectForKey:identifier];

              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
                identifier2 = [v9 identifier];
                [dictionary setObject:array forKey:identifier2];
              }

              [array addObject:v12];
              identifier3 = [v12 identifier];
              array2 = [dictionary objectForKey:identifier3];

              if (!array2)
              {
                array2 = [MEMORY[0x277CBEB18] array];
                identifier4 = [v12 identifier];
                [dictionary setObject:array2 forKey:identifier4];
              }

              [array2 addObject:v9];
            }

            ++v11;
          }

          while (v7 != v11);
        }
      }

      while (v8 != v7);
    }

    v19 = [dictionary copy];
    v20 = self->_conflictDictionary;
    self->_conflictDictionary = v19;

    conflictDictionary = self->_conflictDictionary;
  }

  return [(NSDictionary *)conflictDictionary count]!= 0;
}

- (id)itemsConflictingWithItem:(id)item
{
  itemCopy = item;
  [(CACSpokenCommandPresentation *)self hasConflicts];
  conflictDictionary = self->_conflictDictionary;
  identifier = [itemCopy identifier];

  v7 = [(NSDictionary *)conflictDictionary objectForKey:identifier];

  return v7;
}

- (void)saveChanges
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 beginPropertyTransaction];
  [(NSMutableArray *)self->_newCommandItems makeObjectsPerformSelector:sel_saveToPreferences];
  [(NSArray *)self->_commandGroups makeObjectsPerformSelector:sel_saveToPreferences];
  deletedCommandIdentifiers = self->_deletedCommandIdentifiers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__CACSpokenCommandPresentation_saveChanges__block_invoke;
  v6[3] = &unk_279CEC938;
  v7 = v3;
  v5 = v3;
  [(NSMutableArray *)deletedCommandIdentifiers enumerateObjectsUsingBlock:v6];
  [v5 endPropertyTransaction];
}

- (void)refreshItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(CACSpokenCommandPresentation *)self indexOfItemWithIdentifier:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (![identifierCopy hasPrefix:@"Custom"])
    {
      goto LABEL_8;
    }

    v5 = +[CACPreferences sharedPreferences];
    v6 = [v5 propertiesForCommandIdentifier:identifierCopy];

    if (v6)
    {
      v7 = [[CACSpokenCommandItem alloc] initWithIdentifier:identifierCopy properties:v6 locale:self->_locale];
      v8 = [(NSDictionary *)self->_additionalCommandInfo objectForKey:identifierCopy];
      [(CACSpokenCommandItem *)v7 setCommandInfo:v8];

      [(CACSpokenCommandPresentation *)self addCustomCommandItem:v7];
    }
  }

  else
  {
    v9 = v4;
    flattenedCommandGroupsAndItems = [(CACSpokenCommandPresentation *)self flattenedCommandGroupsAndItems];
    v6 = [flattenedCommandGroupsAndItems objectAtIndex:v9];

    [v6 refreshDataFromPreferences];
    if ([v6 isCustom])
    {
      [(CACSpokenCommandPresentation *)self sortCustomCommands];
    }
  }

LABEL_8:

  MEMORY[0x2821F96F8]();
}

- (void)sortCustomCommands
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_allCommandGroups;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isCustom])
        {
          commandsArray = [v8 commandsArray];
          [commandsArray sortUsingComparator:&__block_literal_global_39];

          commandItems = self->_commandItems;
          self->_commandItems = 0;

          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t __50__CACSpokenCommandPresentation_sortCustomCommands__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sortString];
  v6 = [v4 sortString];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (void)setExternalCommandGroups:(id)groups
{
  groupsCopy = groups;
  [(CACSpokenCommandPresentation *)self _flushCommands];
  externalCommandGroups = self->_externalCommandGroups;
  self->_externalCommandGroups = groupsCopy;
}

- (void)setRelevantCommandIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [(CACSpokenCommandPresentation *)self _flushCommands];
  relevantCommandIdentifiers = self->_relevantCommandIdentifiers;
  self->_relevantCommandIdentifiers = identifiersCopy;
}

- (void)setAdditionalCommandInfo:(id)info
{
  infoCopy = info;
  [(CACSpokenCommandPresentation *)self _flushCommands];
  additionalCommandInfo = self->_additionalCommandInfo;
  self->_additionalCommandInfo = infoCopy;
}

- (NSArray)nestedCommandGroupsAndItems
{
  v96 = *MEMORY[0x277D85DE8];
  p_allCommandGroups = &self->_allCommandGroups;
  if (self->_allCommandGroups)
  {
    v70 = 0;
  }

  else
  {
    externalCommandGroups = self->_externalCommandGroups;
    if (externalCommandGroups)
    {
      v5 = [(NSArray *)externalCommandGroups mutableCopy];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v70 = v5;
  }

  if (!self->_commandGroups)
  {
    location = p_allCommandGroups;
    v6 = +[CACPreferences sharedPreferences];
    array = [MEMORY[0x277CBEB18] array];
    [v6 beginPropertyTransaction];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = [v6 availableCommandSetIdentifiers];
    v7 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v88;
      v58 = *v88;
      v59 = v6;
      do
      {
        v10 = 0;
        v62 = v8;
        do
        {
          if (*v88 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v87 + 1) + 8 * v10);
          if (!self->_usedByPreferences || ([v6 hidePreferencesForCommandSetIdentifier:*(*(&v87 + 1) + 8 * v10)] & 1) == 0)
          {
            v12 = [v6 commandIdentifiersForCommandSetIdentifier:v11 localeIdentifier:self->_locale];
            if ([v12 count])
            {
              v13 = [[CACSpokenCommandGroup alloc] initWithIdentifier:v11];
              commandsArray = [(CACSpokenCommandGroup *)v13 commandsArray];
              v66 = v13;
              if ([(CACSpokenCommandGroup *)v13 isCustom])
              {
                [array insertObject:v13 atIndex:0];
              }

              else
              {
                [array addObject:v13];
              }

              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v68 = v12;
              v15 = v12;
              v16 = [v15 countByEnumeratingWithState:&v83 objects:v94 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v84;
                do
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v84 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v20 = *(*(&v83 + 1) + 8 * i);
                    v21 = [[CACSpokenCommandItem alloc] initWithIdentifier:v20 properties:0 locale:self->_locale];
                    if ([(CACSpokenCommandItem *)v21 isVisible])
                    {
                      v22 = [(NSDictionary *)self->_additionalCommandInfo objectForKey:v20];
                      [(CACSpokenCommandItem *)v21 setCommandInfo:v22];

                      [commandsArray addObject:v21];
                    }
                  }

                  v17 = [v15 countByEnumeratingWithState:&v83 objects:v94 count:16];
                }

                while (v17);
              }

              if ([(CACSpokenCommandGroup *)v66 isCustom])
              {
                commandsArray2 = [(CACSpokenCommandGroup *)v66 commandsArray];
                [commandsArray2 sortUsingComparator:&__block_literal_global_15];
              }

              v9 = v58;
              v6 = v59;
              v8 = v62;
              v12 = v68;
            }
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
      }

      while (v8);
    }

    [v6 endPropertyTransaction];
    v24 = [array copy];
    commandGroups = self->_commandGroups;
    self->_commandGroups = v24;

    p_allCommandGroups = location;
  }

  v26 = *p_allCommandGroups;
  if (!*p_allCommandGroups)
  {
    locationa = p_allCommandGroups;
    if (![(NSMutableArray *)self->_newCommandItems count])
    {
      array2 = [MEMORY[0x277CBEB18] arrayWithArray:self->_commandGroups];
      goto LABEL_52;
    }

    array2 = [MEMORY[0x277CBEB18] array];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v28 = self->_commandGroups;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v79 objects:v93 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = 0;
      v32 = *v80;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v80 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v79 + 1) + 8 * j);
          if ([(CACSpokenCommandGroup *)v34 isCustom])
          {
            cloneWithoutCommands = [(CACSpokenCommandGroup *)v34 cloneWithoutCommands];

            commandsArray3 = [cloneWithoutCommands commandsArray];
            commandsArray4 = [(CACSpokenCommandGroup *)v34 commandsArray];
            [commandsArray3 addObjectsFromArray:commandsArray4];

            commandsArray5 = [cloneWithoutCommands commandsArray];
            [commandsArray5 addObjectsFromArray:self->_newCommandItems];

            v31 = cloneWithoutCommands;
            commandsArray6 = [(CACSpokenCommandGroup *)v31 commandsArray];
            [commandsArray6 sortUsingComparator:&__block_literal_global_17];

            v34 = v31;
          }

          [array2 addObject:v34];
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v79 objects:v93 count:16];
      }

      while (v30);

      if (v31)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v31 = [[CACSpokenCommandGroup alloc] initWithIdentifier:@"Custom"];
    [array2 insertObject:v31 atIndex:0];
    commandsArray7 = [(CACSpokenCommandGroup *)v31 commandsArray];
    [commandsArray7 addObjectsFromArray:self->_newCommandItems];

LABEL_51:
    p_allCommandGroups = locationa;
LABEL_52:
    if (self->_relevantCommandIdentifiers || self->_deletedCommandIdentifiers)
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v61 = array2;
      v63 = array2;
      v67 = [v63 countByEnumeratingWithState:&v75 objects:v92 count:16];
      if (v67)
      {
        obja = *v76;
        do
        {
          v41 = 0;
          do
          {
            if (*v76 != obja)
            {
              objc_enumerationMutation(v63);
            }

            v69 = v41;
            v42 = *(*(&v75 + 1) + 8 * v41);
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            commandsArray8 = [v42 commandsArray];
            v44 = [commandsArray8 countByEnumeratingWithState:&v71 objects:v91 count:16];
            if (v44)
            {
              v45 = v44;
              cloneWithoutCommands2 = 0;
              v47 = *v72;
              do
              {
                for (k = 0; k != v45; ++k)
                {
                  if (*v72 != v47)
                  {
                    objc_enumerationMutation(commandsArray8);
                  }

                  v49 = *(*(&v71 + 1) + 8 * k);
                  identifier = [v49 identifier];
                  relevantCommandIdentifiers = self->_relevantCommandIdentifiers;
                  if ((!relevantCommandIdentifiers || [(NSArray *)relevantCommandIdentifiers containsObject:identifier]) && ([(NSMutableArray *)self->_deletedCommandIdentifiers containsObject:identifier]& 1) == 0)
                  {
                    if (!cloneWithoutCommands2)
                    {
                      cloneWithoutCommands2 = [v42 cloneWithoutCommands];
                      [v70 addObject:cloneWithoutCommands2];
                    }

                    commandsArray9 = [cloneWithoutCommands2 commandsArray];
                    [commandsArray9 addObject:v49];

                    v53 = [(NSDictionary *)self->_additionalCommandInfo objectForKey:identifier];
                    [v49 setCommandInfo:v53];
                  }
                }

                v45 = [commandsArray8 countByEnumeratingWithState:&v71 objects:v91 count:16];
              }

              while (v45);
            }

            else
            {
              cloneWithoutCommands2 = 0;
            }

            v41 = v69 + 1;
          }

          while (v69 + 1 != v67);
          v67 = [v63 countByEnumeratingWithState:&v75 objects:v92 count:16];
        }

        while (v67);
      }

      p_allCommandGroups = locationa;
      array2 = v61;
    }

    else
    {
      [v70 addObjectsFromArray:array2];
    }

    objc_storeStrong(p_allCommandGroups, v70);

    v26 = *p_allCommandGroups;
  }

  v54 = v26;

  return v26;
}

uint64_t __59__CACSpokenCommandPresentation_nestedCommandGroupsAndItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sortString];
  v6 = [v4 sortString];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

uint64_t __59__CACSpokenCommandPresentation_nestedCommandGroupsAndItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sortString];
  v6 = [v4 sortString];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (void)setSearchString:(id)string
{
  v4 = MEMORY[0x277CCA900];
  stringCopy = string;
  whitespaceCharacterSet = [v4 whitespaceCharacterSet];
  v7 = [stringCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  searchString = self->_searchString;
  self->_searchString = v7;
}

- (NSArray)flattenedCommandGroupsAndItems
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self->_commandItems)
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    nestedCommandGroupsAndItems = [(CACSpokenCommandPresentation *)self nestedCommandGroupsAndItems];
    v6 = [nestedCommandGroupsAndItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(nestedCommandGroupsAndItems);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          [array2 addObject:v10];
          if (![(CACSpokenCommandPresentation *)self groupIsCollapsed:v10])
          {
            commandsArray = [v10 commandsArray];
            [array2 addObjectsFromArray:commandsArray];
          }

          commandsArray2 = [v10 commandsArray];
          [array addObjectsFromArray:commandsArray2];
        }

        v7 = [nestedCommandGroupsAndItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v13 = [array copy];
    commandsOnly = self->_commandsOnly;
    self->_commandsOnly = v13;

    v15 = [array2 copy];
    commandItems = self->_commandItems;
    self->_commandItems = v15;
  }

  if ([(NSString *)self->_searchString length])
  {
    v17 = [(CACSpokenCommandPresentation *)self _filteredCommandGroupsAndItemsWithSearchString:self->_searchString];
  }

  else
  {
    v17 = self->_commandItems;
  }

  return v17;
}

- (id)_filteredCommandGroupsAndItemsWithSearchString:(id)string
{
  v82 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  lowercaseString = [stringCopy lowercaseString];
  v84.length = [(__CFString *)lowercaseString length];
  str = lowercaseString;
  v84.location = 0;
  v6 = CFStringTokenizerCreate(0, lowercaseString, v84, 0, 0);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  while (CFStringTokenizerAdvanceToNextToken(v6))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v6);
    v7 = CFStringCreateWithSubstring(0, str, CurrentTokenRange);
    if (![(NSSet *)self->_excludedSearchWordSet containsObject:v7])
    {
      v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF BEGINSWITH[cd] %@", v7];
      [array addObject:v8];
      if (CFStringGetLength(v7) > 1 || CFStringGetLength(v7) == 1 && [(__CFString *)v7 characterAtIndex:0]>= 0x81)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"*%@*", v7];
        v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF LIKE[cd] %@", v9];

        v8 = v9;
      }

      else
      {
        v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"FALSEPREDICATE"];
      }

      [array2 addObject:v10];
    }

    CFRelease(v7);
  }

  CFRelease(v6);
  v11 = [array count];
  array3 = [MEMORY[0x277CBEB18] array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = self->_allCommandGroups;
  v54 = [(NSArray *)obj countByEnumeratingWithState:&v75 objects:v81 count:16];
  v49 = stringCopy;
  if (!v54)
  {
    v51 = 0;
    goto LABEL_49;
  }

  v51 = 0;
  v53 = *v76;
  v12 = -v11;
  v56 = v11 + 1;
  v57 = v11;
  do
  {
    v13 = 0;
    do
    {
      if (*v76 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v75 + 1) + 8 * v13);
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v62 = v14;
      commandsArray = [v14 commandsArray];
      v60 = [commandsArray countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (!v60)
      {
        v64 = 0;
        v16 = 0;
        goto LABEL_42;
      }

      v55 = v13;
      v16 = 0;
      v64 = 0;
      v58 = *v72;
      v59 = commandsArray;
      do
      {
        v17 = 0;
        do
        {
          if (*v72 != v58)
          {
            objc_enumerationMutation(commandsArray);
          }

          v63 = v17;
          v18 = *(*(&v71 + 1) + 8 * v17);
          [v18 setSearchScore:0];
          if (v11)
          {
            v19 = 0;
            v20 = v56;
            do
            {
              v21 = [array objectAtIndex:v19];
              if ([v18 evaluateCommandPredicate:v21])
              {
                v22 = [v18 searchScore] + v20;
              }

              else
              {
                v23 = [array2 objectAtIndex:v19];
                v24 = [v18 evaluateCommandPredicate:v23];

                if (!v24)
                {
                  goto LABEL_31;
                }

                v22 = [v18 searchScore] + v11;
              }

              [v18 setSearchScore:v22];
              v25 = v18;
              if (v18)
              {
                v26 = v25;
                if (([v16 containsObject:v25] & 1) == 0)
                {
                  if (!v64)
                  {
                    v27 = objc_alloc_init(CACSpokenCommandGroup);
                    displayString = [v62 displayString];
                    [(CACSpokenCommandGroup *)v27 setDisplayString:displayString];

                    v64 = v27;
                    [array3 addObject:v27];
                    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);

                    v16 = v29;
                  }

                  [v16 addObject:v26];
                }

                goto LABEL_32;
              }

LABEL_31:
              v26 = 0;
LABEL_32:
              --v11;

              ++v19;
              --v20;
            }

            while (v12 + v19);
          }

          v17 = v63 + 1;
          commandsArray = v59;
          v11 = v57;
        }

        while (v63 + 1 != v60);
        v60 = [v59 countByEnumeratingWithState:&v71 objects:v80 count:16];
      }

      while (v60);

      if (v64)
      {
        v13 = v55;
        if (v16)
        {
          commandsArray = [v16 sortedArrayUsingComparator:&__block_literal_global_34_0];
          if ([commandsArray count])
          {
            v30 = [commandsArray objectAtIndex:0];
            searchScore = [v30 searchScore];

            [(CACSpokenCommandGroup *)v64 setSearchScore:searchScore];
            v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"searchScore == %ld", searchScore];
            v33 = [commandsArray filteredArrayUsingPredicate:v32];
            commandsArray2 = [(CACSpokenCommandGroup *)v64 commandsArray];
            [commandsArray2 addObjectsFromArray:v33];

            v35 = v51;
            if (searchScore > v51)
            {
              v35 = searchScore;
            }

            v51 = v35;
          }

LABEL_42:
        }
      }

      else
      {
        v13 = v55;
      }

      ++v13;
    }

    while (v13 != v54);
    v36 = [(NSArray *)obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    v54 = v36;
  }

  while (v36);
LABEL_49:

  v37 = [array3 sortedArrayUsingComparator:&__block_literal_global_39];
  v38 = v37;
  if ([v37 count])
  {
    v38 = v37;
    if (v51)
    {
      v39 = [MEMORY[0x277CCAC30] predicateWithFormat:@"searchScore >= %ld", v51 - 1];
      v38 = [v37 filteredArrayUsingPredicate:v39];
    }
  }

  array4 = [MEMORY[0x277CBEB18] array];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v41 = v38;
  v42 = [v41 countByEnumeratingWithState:&v67 objects:v79 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v68;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v68 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v67 + 1) + 8 * i);
        [array4 addObject:v46];
        commandsArray3 = [v46 commandsArray];
        [array4 addObjectsFromArray:commandsArray3];
      }

      v43 = [v41 countByEnumeratingWithState:&v67 objects:v79 count:16];
    }

    while (v43);
  }

  return array4;
}

uint64_t __79__CACSpokenCommandPresentation__filteredCommandGroupsAndItemsWithSearchString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 searchScore];
  if (v6 >= [v5 searchScore])
  {
    v8 = [v4 searchScore];
    if (v8 <= [v5 searchScore])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __79__CACSpokenCommandPresentation__filteredCommandGroupsAndItemsWithSearchString___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 searchScore];
  if (v6 >= [v5 searchScore])
  {
    v8 = [v4 searchScore];
    if (v8 <= [v5 searchScore])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (unint64_t)indexOfItemWithIdentifier:(id)identifier ignoreGroups:(BOOL)groups
{
  groupsCopy = groups;
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    flattenedCommandGroupsAndItems = [(CACSpokenCommandPresentation *)self flattenedCommandGroupsAndItems];
    v8 = [flattenedCommandGroupsAndItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v19;
LABEL_4:
      v12 = 0;
      v13 = v10;
      v10 += v9;
      while (1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(flattenedCommandGroupsAndItems);
        }

        v14 = *(*(&v18 + 1) + 8 * v12);
        if (!groupsCopy || ([*(*(&v18 + 1) + 8 * v12) isGroup] & 1) == 0)
        {
          identifier = [v14 identifier];
          v16 = [identifier isEqualToString:identifierCopy];

          if (v16)
          {
            break;
          }
        }

        ++v13;
        if (v9 == ++v12)
        {
          v9 = [flattenedCommandGroupsAndItems countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (void)addCustomCommandItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  deletedCommandIdentifiers = self->_deletedCommandIdentifiers;
  v12 = itemCopy;
  if (deletedCommandIdentifiers && ([itemCopy identifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[NSMutableArray indexOfObject:](deletedCommandIdentifiers, "indexOfObject:", v7), v7, v5 = v12, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    [(NSMutableArray *)self->_deletedCommandIdentifiers removeObjectAtIndex:v8];
  }

  else
  {
    newCommandItems = self->_newCommandItems;
    if (!newCommandItems)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = self->_newCommandItems;
      self->_newCommandItems = v10;

      v5 = v12;
      newCommandItems = self->_newCommandItems;
    }

    [(NSMutableArray *)newCommandItems addObject:v5];
  }

  [v12 setIsEdited:1];
  [v12 saveToPreferences];
  [(CACSpokenCommandPresentation *)self _flushCommands];
}

- (void)deleteCustomCommandAtIndex:(unint64_t)index
{
  flattenedCommandGroupsAndItems = [(CACSpokenCommandPresentation *)self flattenedCommandGroupsAndItems];
  v7 = [flattenedCommandGroupsAndItems objectAtIndex:index];

  identifier = [v7 identifier];
  [v7 removeFromPreferences];
  newCommandItems = self->_newCommandItems;
  if (newCommandItems)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__CACSpokenCommandPresentation_deleteCustomCommandAtIndex___block_invoke;
    v14[3] = &unk_279CEC9A0;
    v3 = &v15;
    v15 = identifier;
    v10 = [(NSMutableArray *)newCommandItems indexOfObjectPassingTest:v14];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_newCommandItems removeObjectAtIndex:v10];
      [(CACSpokenCommandPresentation *)self _flushCommands];
LABEL_9:

      goto LABEL_10;
    }
  }

  if (([(NSMutableArray *)self->_deletedCommandIdentifiers containsObject:identifier]& 1) == 0)
  {
    deletedCommandIdentifiers = self->_deletedCommandIdentifiers;
    if (!deletedCommandIdentifiers)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = self->_deletedCommandIdentifiers;
      self->_deletedCommandIdentifiers = v12;

      deletedCommandIdentifiers = self->_deletedCommandIdentifiers;
    }

    [(NSMutableArray *)deletedCommandIdentifiers addObject:identifier];
  }

  [(CACSpokenCommandPresentation *)self _flushCommands];
  if (newCommandItems)
  {
    goto LABEL_9;
  }

LABEL_10:
}

uint64_t __59__CACSpokenCommandPresentation_deleteCustomCommandAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end