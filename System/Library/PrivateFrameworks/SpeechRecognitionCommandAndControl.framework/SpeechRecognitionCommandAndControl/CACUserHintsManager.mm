@interface CACUserHintsManager
+ (id)sharedManager;
- (BOOL)shouldDisplayUserHintAfterRegisteringIdentifier:(id)identifier;
- (CACUserHintsManager)init;
- (id)suggestedCommandIdentifiersFromActiveCommandIdentifiers:(id)identifiers maximumCount:(int64_t)count;
- (unint64_t)_countAfterRegisteringUserHintIdentifier:(id)identifier;
- (void)clearHistory;
@end

@implementation CACUserHintsManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[CACUserHintsManager sharedManager];
  }

  v3 = sUserHintsManager;

  return v3;
}

uint64_t __36__CACUserHintsManager_sharedManager__block_invoke()
{
  sUserHintsManager = [objc_allocWithZone(CACUserHintsManager) init];

  return MEMORY[0x2821F96F8]();
}

- (CACUserHintsManager)init
{
  v3.receiver = self;
  v3.super_class = CACUserHintsManager;
  return [(CACUserHintsManager *)&v3 init];
}

- (BOOL)shouldDisplayUserHintAfterRegisteringIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && [(CACUserHintsManager *)self _countAfterRegisteringUserHintIdentifier:identifierCopy]<= 0xA)
  {
    v5 = +[CACPreferences sharedPreferences];
    commandCounts = [v5 commandCounts];
    v7 = [commandCounts objectForKey:identifierCopy];
    v8 = [v7 unsignedLongLongValue] < 0xB;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)suggestedCommandIdentifiersFromActiveCommandIdentifiers:(id)identifiers maximumCount:(int64_t)count
{
  v90 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = +[CACPreferences sharedPreferences];
  builtInCommandsTable = [v5 builtInCommandsTable];
  v7 = [builtInCommandsTable objectForKey:@"HistoricalCommandFrequencies"];

  v65 = v7;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = +[CACPreferences sharedPreferences];
  userHintsHistory = [v10 userHintsHistory];

  v11 = +[CACPreferences sharedPreferences];
  commandCounts = [v11 commandCounts];

  v62 = identifiersCopy;
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:identifiersCopy];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  allKeys = [v9 allKeys];
  v15 = [allKeys copy];

  v16 = [v15 countByEnumeratingWithState:&v82 objects:v89 count:16];
  v66 = commandCounts;
  if (v16)
  {
    v17 = v16;
    v18 = *v83;
    do
    {
      v19 = 0;
      do
      {
        if (*v83 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v82 + 1) + 8 * v19);
        if ([v13 containsObject:v20] && (objc_msgSend(commandCounts, "objectForKey:", v20), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "unsignedLongLongValue"), v21, v22 < 0xB))
        {
          v23 = [userHintsHistory objectForKey:v20];
          unsignedLongLongValue = [v23 unsignedLongLongValue];
          v25 = [commandCounts objectForKey:v20];
          v26 = [v25 unsignedLongLongValue] + unsignedLongLongValue;

          commandCounts = v66;
          if (v26)
          {
            v27 = arc4random() % 0x64 + 1;
            v28 = v27 / 10.0 + v26;
            if (v26 >= 0x65)
            {
              v28 = v27;
            }

            v29 = v28;
            v30 = [v9 objectForKey:v20];
            [v30 floatValue];
            v32 = v31 / v29;

            *&v33 = v32;
            v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
            [v9 setObject:v34 forKey:v20];
          }
        }

        else
        {
          [v9 removeObjectForKey:v20];
        }

        ++v19;
      }

      while (v17 != v19);
      v35 = [v15 countByEnumeratingWithState:&v82 objects:v89 count:16];
      v17 = v35;
    }

    while (v35);
  }

  LODWORD(v36) = 841731191;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v38 = v62;
  v39 = [v38 countByEnumeratingWithState:&v78 objects:v88 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v79;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v79 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v78 + 1) + 8 * i);
        v44 = [v9 objectForKey:v43];

        if (!v44)
        {
          [v9 setObject:v37 forKey:v43];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v78 objects:v88 count:16];
    }

    while (v40);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v45 = +[CACPreferences sharedPreferences];
  builtInCommandsTable2 = [v45 builtInCommandsTable];
  v47 = [builtInCommandsTable2 objectForKey:@"ExcludedSuggestedCommands"];

  v48 = [v47 countByEnumeratingWithState:&v74 objects:v87 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v75;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v75 != v50)
        {
          objc_enumerationMutation(v47);
        }

        [v9 removeObjectForKey:*(*(&v74 + 1) + 8 * j)];
      }

      v49 = [v47 countByEnumeratingWithState:&v74 objects:v87 count:16];
    }

    while (v49);
  }

  v52 = objc_alloc(MEMORY[0x277CBEB18]);
  allKeys2 = [v9 allKeys];
  v54 = [v52 initWithArray:allKeys2];

  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __92__CACUserHintsManager_suggestedCommandIdentifiersFromActiveCommandIdentifiers_maximumCount___block_invoke;
  v72[3] = &unk_279CEB718;
  v55 = v9;
  v73 = v55;
  [v54 sortUsingComparator:v72];
  if ([v54 count] > count)
  {
    [v54 removeObjectsInRange:{count, objc_msgSend(v54, "count") - count}];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v56 = v54;
  v57 = [v56 countByEnumeratingWithState:&v68 objects:v86 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v69;
    do
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v69 != v59)
        {
          objc_enumerationMutation(v56);
        }

        [(CACUserHintsManager *)self _countAfterRegisteringUserHintIdentifier:*(*(&v68 + 1) + 8 * k)];
      }

      v58 = [v56 countByEnumeratingWithState:&v68 objects:v86 count:16];
    }

    while (v58);
  }

  return v56;
}

uint64_t __92__CACUserHintsManager_suggestedCommandIdentifiersFromActiveCommandIdentifiers_maximumCount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  [v7 floatValue];
  v9 = v8;

  v10 = [*(a1 + 32) objectForKey:v6];

  [v10 floatValue];
  v12 = v11;

  if (v9 <= v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (v9 < v12)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

- (unint64_t)_countAfterRegisteringUserHintIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = +[CACPreferences sharedPreferences];
    userHintsHistory = [v5 userHintsHistory];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v7 > self->_lastPruneTime + 3481.0)
    {
      v8 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      allKeys = [userHintsHistory allKeys];
      v10 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(allKeys);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            if ([v14 hasPrefix:@"System.PressItem_"])
            {
              [v8 addObject:v14];
            }
          }

          v11 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }

      if ([v8 count] >= 0x29)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __64__CACUserHintsManager__countAfterRegisteringUserHintIdentifier___block_invoke;
        v23[3] = &unk_279CEB718;
        v15 = userHintsHistory;
        v24 = v15;
        [v8 sortUsingComparator:v23];
        v16 = [v8 subarrayWithRange:{0, 20}];
        [v15 removeObjectsForKeys:v16];
      }

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      self->_lastPruneTime = v17;
    }

    v18 = [userHintsHistory objectForKey:identifierCopy];
    v19 = [v18 unsignedLongLongValue] + 1;

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19];
    [userHintsHistory setObject:v20 forKey:identifierCopy];

    v21 = +[CACPreferences sharedPreferences];
    [v21 setUserHintsHistory:userHintsHistory];
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

uint64_t __64__CACUserHintsManager__countAfterRegisteringUserHintIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [v7 integerValue];

  v9 = [*(a1 + 32) objectForKey:v6];

  v10 = [v9 integerValue];
  if (v8 < v10)
  {
    return -1;
  }

  else
  {
    return v8 > v10;
  }
}

- (void)clearHistory
{
  v3 = +[CACPreferences sharedPreferences];
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  [v3 setUserHintsHistory:dictionary];
}

@end