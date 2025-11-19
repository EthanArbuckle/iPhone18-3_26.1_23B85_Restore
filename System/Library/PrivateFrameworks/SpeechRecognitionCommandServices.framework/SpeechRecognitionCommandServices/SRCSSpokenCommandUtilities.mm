@interface SRCSSpokenCommandUtilities
+ (__CFStringTokenizer)wordUnitStringTokenizerRefForLocaleIdentifier:(id)a3;
+ (id)_suffixedURLsForURL:(id)a3;
+ (id)sharedSpokenCommandUtilities;
- (SRCSSpokenCommandUtilities)init;
- (id)commandAttributes;
- (id)commandStringsTableForLocaleIdentifier:(id)a3;
- (id)dictionaryForLocaleIdentifier:(id)a3 bundle:(id)a4 resourceFileName:(id)a5 resourceFileExtension:(id)a6;
- (id)dictionaryForLocaleIdentifier:(id)a3 bundle:(id)a4 subDirectory:(id)a5 rootFileName:(id)a6 rootFileExtension:(id)a7;
- (id)dictionaryForLocaleIdentifier:(id)a3 resourceFileName:(id)a4 resourceFileExtension:(id)a5;
- (void)_flushBuiltInCommandsStringsTable;
@end

@implementation SRCSSpokenCommandUtilities

+ (id)sharedSpokenCommandUtilities
{
  if (sharedSpokenCommandUtilities_instaniateReporter != -1)
  {
    +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
  }

  v3 = sSRCSSpokenCommandUtilities;

  return v3;
}

uint64_t __58__SRCSSpokenCommandUtilities_sharedSpokenCommandUtilities__block_invoke()
{
  sSRCSSpokenCommandUtilities = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (__CFStringTokenizer)wordUnitStringTokenizerRefForLocaleIdentifier:(id)a3
{
  v4 = a3;
  if (wordUnitStringTokenizerRefForLocaleIdentifier__onceToken != -1)
  {
    +[SRCSSpokenCommandUtilities wordUnitStringTokenizerRefForLocaleIdentifier:];
  }

  v5 = a1;
  objc_sync_enter(v5);
  if ([(__CFString *)v4 length])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithString:v4];
  }

  else
  {
    v6 = @"SystemUI";
  }

  v7 = [wordUnitStringTokenizerRefForLocaleIdentifier__sStringTokenizerForLocaleIdentifierTable objectForKey:v6];
  if (!v7)
  {
    if ([(__CFString *)v4 length])
    {
      v8 = CFLocaleCreate(0, v4);
    }

    else
    {
      v8 = 0;
    }

    v10.location = 0;
    v10.length = 0;
    v7 = CFStringTokenizerCreate(0, &stru_287C0A5E8, v10, 0, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    if (v7)
    {
      [wordUnitStringTokenizerRefForLocaleIdentifier__sStringTokenizerForLocaleIdentifierTable setObject:v7 forKey:v6];
      CFRelease(v7);
    }
  }

  objc_sync_exit(v5);
  return v7;
}

uint64_t __76__SRCSSpokenCommandUtilities_wordUnitStringTokenizerRefForLocaleIdentifier___block_invoke()
{
  wordUnitStringTokenizerRefForLocaleIdentifier__sStringTokenizerForLocaleIdentifierTable = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SRCSSpokenCommandUtilities)init
{
  v6.receiver = self;
  v6.super_class = SRCSSpokenCommandUtilities;
  v2 = [(SRCSSpokenCommandUtilities *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    commandStringsTablesByLocaleIdentifier = v2->_commandStringsTablesByLocaleIdentifier;
    v2->_commandStringsTablesByLocaleIdentifier = v3;
  }

  return v2;
}

- (id)commandAttributes
{
  commandAttributes = self->_commandAttributes;
  if (!commandAttributes)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"CommandAttributes" ofType:@"plist"];

    v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v5];
    v7 = self->_commandAttributes;
    self->_commandAttributes = v6;

    commandAttributes = self->_commandAttributes;
  }

  return commandAttributes;
}

- (id)commandStringsTableForLocaleIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_commandStringsTablesByLocaleIdentifier objectForKey:v4];
  objc_sync_exit(v5);

  if (!v6)
  {
    v6 = [[SRCSCommandStringsTable alloc] initWithLocaleIdentifier:v4];
    if (v6)
    {
      v7 = v5;
      objc_sync_enter(v7);
      [(NSMutableDictionary *)v5->_commandStringsTablesByLocaleIdentifier setObject:v6 forKey:v4];
      objc_sync_exit(v7);
    }
  }

  return v6;
}

- (void)_flushBuiltInCommandsStringsTable
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_commandStringsTablesByLocaleIdentifier removeAllObjects];
  objc_sync_exit(obj);
}

- (id)dictionaryForLocaleIdentifier:(id)a3 resourceFileName:(id)a4 resourceFileExtension:(id)a5
{
  v8 = MEMORY[0x277CCA8D8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 bundleForClass:objc_opt_class()];
  v13 = [(SRCSSpokenCommandUtilities *)self dictionaryForLocaleIdentifier:v11 bundle:v12 resourceFileName:v10 resourceFileExtension:v9];

  return v13;
}

+ (id)_suffixedURLsForURL:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v24 = objc_opt_new();
  v4 = [v3 URLByDeletingLastPathComponent];
  v25 = [v3 pathExtension];
  v5 = [v3 URLByDeletingPathExtension];
  v6 = [v5 lastPathComponent];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = v4;
  v8 = [v7 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:0];

  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v13 lastPathComponent];
        v15 = [v3 lastPathComponent];
        v16 = [v14 isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
          v17 = [v13 lastPathComponent];
          v18 = [v17 hasPrefix:v6];

          if (v18)
          {
            v19 = [v13 pathExtension];
            v20 = v19;
            if (!(v25 | v19) || (v25 == 0) == (v19 == 0) && [v25 isEqualToString:v19])
            {
              [v24 addObject:v13];
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)dictionaryForLocaleIdentifier:(id)a3 bundle:(id)a4 resourceFileName:(id)a5 resourceFileExtension:(id)a6
{
  v58[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [SRCSCommandStringsTable componentsFromLocaleIdentifier:v9];
  v14 = [v13 objectForKey:*MEMORY[0x277CBE6C8]];

  if ([(__CFString *)v14 isEqualToString:@"nb"])
  {

    v14 = @"no";
  }

  v15 = [v10 pathForResource:v11 ofType:v12 inDirectory:0 forLocalization:v9];
  if (!v15)
  {
    v30 = v9;
    goto LABEL_19;
  }

  v16 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v15];
  v17 = v9;
  if (!v16)
  {
LABEL_19:
    v48 = v15;
    v31 = MEMORY[0x277CCA8D8];
    v32 = [v10 localizations];
    [&unk_287C0D648 arrayByAddingObjectsFromArray:v32];
    v34 = v33 = v14;
    v58[0] = v9;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
    v36 = [v31 preferredLocalizationsFromArray:v34 forPreferences:v35];

    v14 = v33;
    v37 = [v36 firstObject];
    v38 = v37;
    if (!v37 || ([v37 isEqualToString:@"zxx"] & 1) != 0 || objc_msgSend(v38, "isEqualToString:", @"en") && !-[__CFString isEqualToString:](v33, "isEqualToString:", @"en"))
    {

      v18 = 0;
      v15 = v48;
    }

    else
    {
      v18 = v38;

      v15 = [v10 pathForResource:v11 ofType:v12 inDirectory:0 forLocalization:v18];

      if (v15)
      {
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v15];

        if (!v16)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      }
    }

    goto LABEL_29;
  }

  v18 = v17;
LABEL_6:
  v43 = v14;
  v44 = v12;
  v45 = v11;
  v46 = v10;
  v47 = v15;
  v42 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
  v19 = [objc_opt_class() _suffixedURLsForURL:v42];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v50;
    do
    {
      v23 = 0;
      v24 = v16;
      do
      {
        if (*v50 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v49 + 1) + 8 * v23);
        v26 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v25];
        v27 = SRCSLogGeneral();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v25 lastPathComponent];
          *buf = 138412290;
          v54 = v28;
          _os_log_impl(&dword_26B44D000, v27, OS_LOG_TYPE_DEFAULT, "Loaded override table: %@", buf, 0xCu);
        }

        v16 = [v26 dictionaryByMergingEntriesFromDictionary:v24];

        ++v23;
        v24 = v16;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v21);
  }

  v10 = v46;
  if (v16)
  {
    v29 = SRCSLogGeneral();
    v15 = v47;
    v12 = v44;
    v11 = v45;
    v14 = v43;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v54 = v18;
      v55 = 2112;
      v56 = v9;
      _os_log_impl(&dword_26B44D000, v29, OS_LOG_TYPE_DEFAULT, "Found commands localization: %@ for desired locale: %@", buf, 0x16u);
    }

    goto LABEL_32;
  }

  v15 = v47;
  v12 = v44;
  v11 = v45;
  v14 = v43;
LABEL_29:
  v29 = SRCSLogGeneral();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [v10 localizations];
    *buf = 138412546;
    v54 = v9;
    v55 = 2112;
    v56 = v39;
    _os_log_impl(&dword_26B44D000, v29, OS_LOG_TYPE_DEFAULT, "Failed to find commands for desired locale: %@ from localizations: %@", buf, 0x16u);
  }

  v16 = 0;
LABEL_32:

  v40 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)dictionaryForLocaleIdentifier:(id)a3 bundle:(id)a4 subDirectory:(id)a5 rootFileName:(id)a6 rootFileExtension:(id)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = a5;
  v15 = a3;
  v16 = [SRCSCommandStringsTable componentsFromLocaleIdentifier:v15];
  v17 = [v16 objectForKey:*MEMORY[0x277CBE6C8]];

  v18 = [SRCSCommandStringsTable componentsFromLocaleIdentifier:v15];

  v19 = [v18 objectForKey:*MEMORY[0x277CBE690]];

  if ([(__CFString *)v17 isEqualToString:@"nb"])
  {

    v17 = @"no";
  }

  [v11 resourcePath];
  v20 = v30 = v11;
  v21 = [v20 stringByAppendingPathComponent:v14];

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@.%@", v12, v17, v19, v13];
  v23 = MEMORY[0x277CBEAC0];
  v24 = [v21 stringByAppendingPathComponent:v22];
  v25 = [v23 dictionaryWithContentsOfFile:v24];

  if (!v25)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@.%@", v12, v17, v13];
    v27 = MEMORY[0x277CBEAC0];
    v28 = [v21 stringByAppendingPathComponent:v26];
    v25 = [v27 dictionaryWithContentsOfFile:v28];
  }

  return v25;
}

@end