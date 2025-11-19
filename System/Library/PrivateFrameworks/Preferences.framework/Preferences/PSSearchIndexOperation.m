@interface PSSearchIndexOperation
+ (id)_bundleForSearchEntry:(id)a3 thirdPartyApp:(BOOL *)a4;
+ (id)_loadSearchEntriesFromPlistForEntry:(id)a3 bundle:(id)a4;
+ (id)_loadThirdPartySearchEntriesForEntry:(id)a3 bundle:(id)a4;
+ (void)setTopLevelManifestBundlePath:(id)a3;
- (PSSearchIndexOperation)initWithSearchEntry:(id)a3 delegate:(id)a4;
- (PSSearchIndexOperationDelegate)delegate;
- (void)_finishedIndexingWithEntries:(id)a3 cancelled:(BOOL)a4;
- (void)dealloc;
- (void)main;
@end

@implementation PSSearchIndexOperation

- (PSSearchIndexOperation)initWithSearchEntry:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PSSearchIndexOperation;
  v9 = [(PSSearchIndexOperation *)&v12 init];
  if (v9)
  {
    if (([v7 hasListController] & 1) == 0)
    {
      [v7 finishIndexing];
      v10 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v9->_searchEntry, a3);
    [(PSSearchIndexOperation *)v9 setDelegate:v8];
  }

  v10 = v9;
LABEL_6:

  return v10;
}

- (void)dealloc
{
  [(PSSearchIndexOperation *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = PSSearchIndexOperation;
  [(PSSearchIndexOperation *)&v3 dealloc];
}

- (void)_finishedIndexingWithEntries:(id)a3 cancelled:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  [(PSSearchEntry *)self->_searchEntry finishIndexing];
  v6 = [(PSSearchIndexOperation *)self delegate];
  v7 = v6;
  if (v4)
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = [(PSSearchIndexOperation *)self delegate];
    [v7 searchIndexOperationDidCancel:self];
  }

  else
  {
    [v6 searchIndexOperationDidFinish:self searchEntries:v9];
  }

LABEL_6:
  [(PSSearchIndexOperation *)self setDelegate:0];
}

- (void)main
{
  v2 = self;
  v65 = *MEMORY[0x1E69E9840];
  if ([(PSSearchIndexOperation *)self isCancelled])
  {
    [(PSSearchIndexOperation *)v2 _cancel];
  }

  v62 = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [objc_opt_class() _bundleForSearchEntry:v2->_searchEntry thirdPartyApp:&v62];
  v5 = [(PSSearchEntry *)v2->_searchEntry specifier];
  v6 = [v5 propertyForKey:@"dataSourceClass"];

  if (v6)
  {
    v7 = [NSClassFromString(v6) sharedInstance];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4 == 0;
    }

    if (!v8)
    {
      [v4 load];
      v7 = [NSClassFromString(v6) sharedInstance];
    }

    if (v7)
    {
      v9 = [(PSSearchIndexOperation *)v2 delegate];
      [v9 searchIndexOperation:v2 didFindSpecifierDataSource:v7];

      v10 = [(PSSearchEntry *)v2->_searchEntry specifier];
      v11 = [(PSSearchIndexOperation *)v2 delegate];
      v12 = [v7 specifiersForSpecifier:v10 observer:v11];

      if (v12)
      {
        v13 = SearchEntriesFromSpecifiers(v12, v2->_searchEntry, 0);
        [v3 addObjectsFromArray:v13];
      }

      v14 = 0;
      goto LABEL_30;
    }
  }

  if (!v4)
  {
    v14 = 0;
    goto LABEL_31;
  }

  if ((v62 & 1) == 0)
  {
    v15 = [v4 objectForInfoDictionaryKey:@"PSSupportsSearch"];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      v17 = [v4 objectForInfoDictionaryKey:@"PSSearchControllerClass"];
      if (v17)
      {
        [v4 load];
        v18 = NSClassFromString(v17);
        if (v18)
        {
          goto LABEL_22;
        }
      }

      v14 = [v4 principalClass];

      if (v14)
      {
        goto LABEL_23;
      }
    }

    v17 = [(PSSearchEntry *)v2->_searchEntry specifier];
    v18 = [(NSString *)v17 detailControllerClass];
LABEL_22:
    v14 = v18;

    goto LABEL_23;
  }

  v14 = 0;
LABEL_23:
  if ([(PSSearchIndexOperation *)v2 isCancelled])
  {
    [(PSSearchIndexOperation *)v2 _cancel];
  }

  if (v62 == 1)
  {
    v19 = [objc_opt_class() _loadThirdPartySearchEntriesForEntry:v2->_searchEntry bundle:v4];
LABEL_29:
    v12 = v19;
    [v3 addObjectsFromArray:v19];
LABEL_30:

    goto LABEL_31;
  }

  if (![v3 count])
  {
    v19 = [objc_opt_class() _loadSearchEntriesFromPlistForEntry:v2->_searchEntry bundle:v4];
    goto LABEL_29;
  }

LABEL_31:
  v20 = [(PSSearchEntry *)v2->_searchEntry isRootEntry];
  if ((v62 & 1) == 0 && v20)
  {
    v47 = v14;
    v21 = +[PSSearchIndexOperation topLevelManifestBundlePath];
    v22 = v21;
    v23 = @"/System/Library/PrivateFrameworks/PreferencesUI.framework";
    if (v21)
    {
      v23 = v21;
    }

    v24 = v23;

    v46 = v24;
    v25 = [MEMORY[0x1E696AAE8] bundleWithPath:v24];
    v53 = v3;
    v49 = v6;
    v50 = v4;
    v48 = v25;
    if (v25)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v26 = v2;
      obj = SearchEntriesFromManifest(v2->_searchEntry, v25);
      v27 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v59;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v59 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v58 + 1) + 8 * i);
            v32 = [v31 sectionIdentifier];
            v33 = [(PSSearchEntry *)v26->_searchEntry sectionEntry];
            v34 = [v33 identifier];
            v35 = [v32 isEqualToString:v34];

            if (v35)
            {
              [v53 addObject:v31];
            }
          }

          v28 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v28);
      }

      v2 = v26;
      v3 = v53;
      v6 = v49;
      v4 = v50;
      v25 = v48;
    }

    if (v4 && v25 != v4)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v36 = v2;
      obja = SearchEntriesFromManifest(v2->_searchEntry, v4);
      v37 = [obja countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v55;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v55 != v39)
            {
              objc_enumerationMutation(obja);
            }

            v41 = *(*(&v54 + 1) + 8 * j);
            v42 = [v41 sectionIdentifier];
            v43 = [(PSSearchEntry *)v36->_searchEntry sectionEntry];
            v44 = [v43 identifier];
            v45 = [v42 isEqualToString:v44];

            if (v45)
            {
              [v53 addObject:v41];
            }
          }

          v38 = [obja countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v38);
      }

      v2 = v36;
      v3 = v53;
      v6 = v49;
      v4 = v50;
      v25 = v48;
    }

    v14 = v47;
  }

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(objc_class *)v14 formatSearchEntries:v3 parent:v2->_searchEntry];
  }

  [v3 count];
  [(PSSearchIndexOperation *)v2 _finishedIndexingWithEntries:v3 cancelled:[(PSSearchIndexOperation *)v2 isCancelled]];
}

+ (id)_bundleForSearchEntry:(id)a3 thirdPartyApp:(BOOL *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 bundleName];
  v8 = [v6 specifier];
  v9 = [v8 detailControllerClass];

  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [v9 searchBundle];
    goto LABEL_28;
  }

  v11 = [v6 specifier];
  v10 = [v11 propertyForKey:@"AppSettingsBundle"];

  if (v10)
  {
    if (a4)
    {
      *a4 = 1;
    }

    goto LABEL_28;
  }

  if (!v7)
  {
    v15 = MEMORY[0x1E696AAE8];
    v16 = [v6 specifier];
    v10 = [v15 bundleForClass:{objc_msgSend(v16, "detailControllerClass")}];

    goto LABEL_28;
  }

  v12 = [a1 possibleBundleRoots];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = v13;
  if (v12)
  {
    [v13 addObjectsFromArray:v12];
  }

  else
  {
    v18 = v17 = @"/System/Library/PreferenceBundles/";
    [v14 addObject:v18];

    v19 = SFDeveloperSettingsBundlesDirectoryPath();
    v21 = v20 = v19;
    [v14 addObject:v21];

    v22 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v22 sf_isInternalInstall])
    {
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PSShouldIndexInternalSettings", @"com.apple.Preferences", &keyExistsAndHasValidFormat);
      v24 = keyExistsAndHasValidFormat;

      if (!v24 || !AppBooleanValue)
      {
        goto LABEL_16;
      }

      v22 = v25 = @"/AppleInternal/Library/PreferenceBundles/";
      [v14 addObject:v22];
    }
  }

LABEL_16:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = v14;
  v27 = [v26 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v27)
  {
    v28 = v27;
    v34 = v12;
    v29 = *v36;
LABEL_18:
    v30 = 0;
    while (1)
    {
      if (*v36 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = [*(*(&v35 + 1) + 8 * v30) stringByAppendingPathComponent:v7];
      v32 = [v31 stringByAppendingPathExtension:@"bundle"];

      v10 = [MEMORY[0x1E696AAE8] bundleWithPath:v32];

      if (v10)
      {
        break;
      }

      if (v28 == ++v30)
      {
        v28 = [v26 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v28)
        {
          goto LABEL_18;
        }

        v10 = 0;
        break;
      }
    }

    v12 = v34;
  }

  else
  {
    v10 = 0;
  }

LABEL_28:

  return v10;
}

+ (id)_loadThirdPartySearchEntriesForEntry:(id)a3 bundle:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 specifier];
  v8 = [v7 propertyForKey:@"File"];

  v9 = [v6 pathForResource:v8 ofType:@"plist"];
  if (v9)
  {
    v26 = v8;
    v27 = v6;
    v25 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v9];
    v11 = [v10 objectForKeyedSubscript:@"StringsTable"];
    v12 = [v11 stringByDeletingPathExtension];

    v13 = [v10 objectForKeyedSubscript:@"PreferenceSpecifiers"];
    v28 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = v5;
          v21 = [v5 specifier];
          v22 = [PSAppListController specifiersFromDictionary:v19 stringsTable:v12 parentSpecifier:v21 target:0];

          if (v22)
          {
            [v28 addObjectsFromArray:v22];
          }

          v5 = v20;
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v8 = v26;
    v23 = SearchEntriesFromSpecifiers(v28, v5, v26);

    v6 = v27;
    v9 = v25;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_loadSearchEntriesFromPlistForEntry:(id)a3 bundle:(id)a4
{
  v62[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v46 = a4;
  v6 = [v5 specifier];
  v7 = [v6 propertyForKey:@"searchPlist"];

  v8 = [v5 bundleName];
  v9 = v8;
  if (v7)
  {
    v62[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
  }

  else
  {
    if (v8)
    {
      v11 = [v5 parentEntry];
      v12 = [v11 bundleName];
      if ([(__CFString *)v9 isEqualToString:v12])
      {
        v13 = &stru_1EFE45030;
      }

      else
      {
        v13 = v9;
      }

      v14 = v5;
      v15 = v13;
    }

    else
    {
      v14 = v5;
      v15 = &stru_1EFE45030;
    }

    v16 = [v14 identifier];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &stru_1EFE45030;
    }

    v61[0] = v18;
    v19 = [v14 name];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_1EFE45030;
    }

    v61[1] = v21;
    v61[2] = v15;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];

    v5 = v14;
    v7 = 0;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v22 = v10;
  v50 = [v22 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v50)
  {
    v45 = v7;
    v48 = v22;
    v49 = *v56;
    v47 = v5;
    while (2)
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v56 != v49)
        {
          objc_enumerationMutation(v22);
        }

        v24 = *(*(&v55 + 1) + 8 * i);
        if ([v24 length])
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v25 = [v5 ancestorEntries];
          v26 = [v25 arrayByAddingObject:v5];

          v27 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v52;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v52 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v51 + 1) + 8 * j);
                v32 = [v31 plistName];
                if ([v24 isEqualToString:v32])
                {
                  v33 = [v31 bundleName];
                  v34 = [(__CFString *)v9 isEqualToString:v33];

                  if (v34)
                  {

                    v5 = v47;
                    v22 = v48;
                    goto LABEL_35;
                  }
                }

                else
                {
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
            }

            while (v28);
          }

          v35 = [v46 pathForResource:v24 ofType:@"plist"];
          v5 = v47;
          v22 = v48;
          if (v35)
          {
            v37 = v35;
            v38 = v24;

            v39 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v37];
            v40 = [v39 objectForKeyedSubscript:@"searchable"];
            v41 = v40;
            if (v40 && ![v40 BOOLValue])
            {
              v36 = 0;
              v7 = v45;
            }

            else
            {
              v42 = [v47 specifier];
              v43 = SearchSpecifiersFromPlist(v39, v42, v38, v46);

              v7 = v45;
              if (v43)
              {
                v36 = SearchEntriesFromSpecifiers(v43, v47, v38);
              }

              else
              {
                v36 = 0;
              }
            }

            v22 = v48;
            goto LABEL_47;
          }
        }

LABEL_35:
        ;
      }

      v50 = [v22 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v50)
      {
        continue;
      }

      break;
    }

    v37 = 0;
    v38 = 0;
    v36 = 0;
    v39 = v22;
    v7 = v45;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v39 = v22;
  }

LABEL_47:

  return v36;
}

+ (void)setTopLevelManifestBundlePath:(id)a3
{
  v3 = [a3 copy];
  v4 = _topLevelManifestBundlePath;
  _topLevelManifestBundlePath = v3;
}

- (PSSearchIndexOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end