@interface PSSearchIndexOperation
+ (id)_bundleForSearchEntry:(id)entry thirdPartyApp:(BOOL *)app;
+ (id)_loadSearchEntriesFromPlistForEntry:(id)entry bundle:(id)bundle;
+ (id)_loadThirdPartySearchEntriesForEntry:(id)entry bundle:(id)bundle;
+ (void)setTopLevelManifestBundlePath:(id)path;
- (PSSearchIndexOperation)initWithSearchEntry:(id)entry delegate:(id)delegate;
- (PSSearchIndexOperationDelegate)delegate;
- (void)_finishedIndexingWithEntries:(id)entries cancelled:(BOOL)cancelled;
- (void)dealloc;
- (void)main;
@end

@implementation PSSearchIndexOperation

- (PSSearchIndexOperation)initWithSearchEntry:(id)entry delegate:(id)delegate
{
  entryCopy = entry;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PSSearchIndexOperation;
  v9 = [(PSSearchIndexOperation *)&v12 init];
  if (v9)
  {
    if (([entryCopy hasListController] & 1) == 0)
    {
      [entryCopy finishIndexing];
      v10 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v9->_searchEntry, entry);
    [(PSSearchIndexOperation *)v9 setDelegate:delegateCopy];
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

- (void)_finishedIndexingWithEntries:(id)entries cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  entriesCopy = entries;
  [(PSSearchEntry *)self->_searchEntry finishIndexing];
  delegate = [(PSSearchIndexOperation *)self delegate];
  delegate2 = delegate;
  if (cancelledCopy)
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

    delegate2 = [(PSSearchIndexOperation *)self delegate];
    [delegate2 searchIndexOperationDidCancel:self];
  }

  else
  {
    [delegate searchIndexOperationDidFinish:self searchEntries:entriesCopy];
  }

LABEL_6:
  [(PSSearchIndexOperation *)self setDelegate:0];
}

- (void)main
{
  selfCopy = self;
  v65 = *MEMORY[0x1E69E9840];
  if ([(PSSearchIndexOperation *)self isCancelled])
  {
    [(PSSearchIndexOperation *)selfCopy _cancel];
  }

  v62 = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [objc_opt_class() _bundleForSearchEntry:selfCopy->_searchEntry thirdPartyApp:&v62];
  specifier = [(PSSearchEntry *)selfCopy->_searchEntry specifier];
  v6 = [specifier propertyForKey:@"dataSourceClass"];

  if (v6)
  {
    nSClassFromString(v6) = [NSClassFromString(v6) sharedInstance];
    if (nSClassFromString(v6))
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
      nSClassFromString(v6) = [NSClassFromString(v6) sharedInstance];
    }

    if (nSClassFromString(v6))
    {
      delegate = [(PSSearchIndexOperation *)selfCopy delegate];
      [delegate searchIndexOperation:selfCopy didFindSpecifierDataSource:nSClassFromString(v6)];

      specifier2 = [(PSSearchEntry *)selfCopy->_searchEntry specifier];
      delegate2 = [(PSSearchIndexOperation *)selfCopy delegate];
      v12 = [nSClassFromString(v6) specifiersForSpecifier:specifier2 observer:delegate2];

      if (v12)
      {
        v13 = SearchEntriesFromSpecifiers(v12, selfCopy->_searchEntry, 0);
        [v3 addObjectsFromArray:v13];
      }

      principalClass = 0;
      goto LABEL_30;
    }
  }

  if (!v4)
  {
    principalClass = 0;
    goto LABEL_31;
  }

  if ((v62 & 1) == 0)
  {
    v15 = [v4 objectForInfoDictionaryKey:@"PSSupportsSearch"];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      specifier3 = [v4 objectForInfoDictionaryKey:@"PSSearchControllerClass"];
      if (specifier3)
      {
        [v4 load];
        detailControllerClass = NSClassFromString(specifier3);
        if (detailControllerClass)
        {
          goto LABEL_22;
        }
      }

      principalClass = [v4 principalClass];

      if (principalClass)
      {
        goto LABEL_23;
      }
    }

    specifier3 = [(PSSearchEntry *)selfCopy->_searchEntry specifier];
    detailControllerClass = [(NSString *)specifier3 detailControllerClass];
LABEL_22:
    principalClass = detailControllerClass;

    goto LABEL_23;
  }

  principalClass = 0;
LABEL_23:
  if ([(PSSearchIndexOperation *)selfCopy isCancelled])
  {
    [(PSSearchIndexOperation *)selfCopy _cancel];
  }

  if (v62 == 1)
  {
    v19 = [objc_opt_class() _loadThirdPartySearchEntriesForEntry:selfCopy->_searchEntry bundle:v4];
LABEL_29:
    v12 = v19;
    [v3 addObjectsFromArray:v19];
LABEL_30:

    goto LABEL_31;
  }

  if (![v3 count])
  {
    v19 = [objc_opt_class() _loadSearchEntriesFromPlistForEntry:selfCopy->_searchEntry bundle:v4];
    goto LABEL_29;
  }

LABEL_31:
  isRootEntry = [(PSSearchEntry *)selfCopy->_searchEntry isRootEntry];
  if ((v62 & 1) == 0 && isRootEntry)
  {
    v47 = principalClass;
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
      v26 = selfCopy;
      obj = SearchEntriesFromManifest(selfCopy->_searchEntry, v25);
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
            sectionIdentifier = [v31 sectionIdentifier];
            sectionEntry = [(PSSearchEntry *)v26->_searchEntry sectionEntry];
            identifier = [sectionEntry identifier];
            v35 = [sectionIdentifier isEqualToString:identifier];

            if (v35)
            {
              [v53 addObject:v31];
            }
          }

          v28 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v28);
      }

      selfCopy = v26;
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
      v36 = selfCopy;
      obja = SearchEntriesFromManifest(selfCopy->_searchEntry, v4);
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
            sectionIdentifier2 = [v41 sectionIdentifier];
            sectionEntry2 = [(PSSearchEntry *)v36->_searchEntry sectionEntry];
            identifier2 = [sectionEntry2 identifier];
            v45 = [sectionIdentifier2 isEqualToString:identifier2];

            if (v45)
            {
              [v53 addObject:v41];
            }
          }

          v38 = [obja countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v38);
      }

      selfCopy = v36;
      v3 = v53;
      v6 = v49;
      v4 = v50;
      v25 = v48;
    }

    principalClass = v47;
  }

  if (principalClass && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(objc_class *)principalClass formatSearchEntries:v3 parent:selfCopy->_searchEntry];
  }

  [v3 count];
  [(PSSearchIndexOperation *)selfCopy _finishedIndexingWithEntries:v3 cancelled:[(PSSearchIndexOperation *)selfCopy isCancelled]];
}

+ (id)_bundleForSearchEntry:(id)entry thirdPartyApp:(BOOL *)app
{
  v41 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  bundleName = [entryCopy bundleName];
  specifier = [entryCopy specifier];
  detailControllerClass = [specifier detailControllerClass];

  if (detailControllerClass && (objc_opt_respondsToSelector() & 1) != 0)
  {
    searchBundle = [detailControllerClass searchBundle];
    goto LABEL_28;
  }

  specifier2 = [entryCopy specifier];
  searchBundle = [specifier2 propertyForKey:@"AppSettingsBundle"];

  if (searchBundle)
  {
    if (app)
    {
      *app = 1;
    }

    goto LABEL_28;
  }

  if (!bundleName)
  {
    v15 = MEMORY[0x1E696AAE8];
    specifier3 = [entryCopy specifier];
    searchBundle = [v15 bundleForClass:{objc_msgSend(specifier3, "detailControllerClass")}];

    goto LABEL_28;
  }

  possibleBundleRoots = [self possibleBundleRoots];
  array = [MEMORY[0x1E695DF70] array];
  v14 = array;
  if (possibleBundleRoots)
  {
    [array addObjectsFromArray:possibleBundleRoots];
  }

  else
  {
    v18 = v17 = @"/System/Library/PreferenceBundles/";
    [v14 addObject:v18];

    v19 = SFDeveloperSettingsBundlesDirectoryPath();
    v21 = v20 = v19;
    [v14 addObject:v21];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice sf_isInternalInstall])
    {
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PSShouldIndexInternalSettings", @"com.apple.Preferences", &keyExistsAndHasValidFormat);
      v24 = keyExistsAndHasValidFormat;

      if (!v24 || !AppBooleanValue)
      {
        goto LABEL_16;
      }

      currentDevice = v25 = @"/AppleInternal/Library/PreferenceBundles/";
      [v14 addObject:currentDevice];
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
    v34 = possibleBundleRoots;
    v29 = *v36;
LABEL_18:
    v30 = 0;
    while (1)
    {
      if (*v36 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = [*(*(&v35 + 1) + 8 * v30) stringByAppendingPathComponent:bundleName];
      v32 = [v31 stringByAppendingPathExtension:@"bundle"];

      searchBundle = [MEMORY[0x1E696AAE8] bundleWithPath:v32];

      if (searchBundle)
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

        searchBundle = 0;
        break;
      }
    }

    possibleBundleRoots = v34;
  }

  else
  {
    searchBundle = 0;
  }

LABEL_28:

  return searchBundle;
}

+ (id)_loadThirdPartySearchEntriesForEntry:(id)entry bundle:(id)bundle
{
  v34 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  bundleCopy = bundle;
  specifier = [entryCopy specifier];
  v8 = [specifier propertyForKey:@"File"];

  v9 = [bundleCopy pathForResource:v8 ofType:@"plist"];
  if (v9)
  {
    v26 = v8;
    v27 = bundleCopy;
    v25 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v9];
    v11 = [v10 objectForKeyedSubscript:@"StringsTable"];
    stringByDeletingPathExtension = [v11 stringByDeletingPathExtension];

    v13 = [v10 objectForKeyedSubscript:@"PreferenceSpecifiers"];
    array = [MEMORY[0x1E695DF70] array];
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
          v20 = entryCopy;
          specifier2 = [entryCopy specifier];
          v22 = [PSAppListController specifiersFromDictionary:v19 stringsTable:stringByDeletingPathExtension parentSpecifier:specifier2 target:0];

          if (v22)
          {
            [array addObjectsFromArray:v22];
          }

          entryCopy = v20;
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v8 = v26;
    v23 = SearchEntriesFromSpecifiers(array, entryCopy, v26);

    bundleCopy = v27;
    v9 = v25;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_loadSearchEntriesFromPlistForEntry:(id)entry bundle:(id)bundle
{
  v62[1] = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  bundleCopy = bundle;
  specifier = [entryCopy specifier];
  v7 = [specifier propertyForKey:@"searchPlist"];

  bundleName = [entryCopy bundleName];
  v9 = bundleName;
  if (v7)
  {
    v62[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
  }

  else
  {
    if (bundleName)
    {
      parentEntry = [entryCopy parentEntry];
      bundleName2 = [parentEntry bundleName];
      if ([(__CFString *)v9 isEqualToString:bundleName2])
      {
        v13 = &stru_1EFE45030;
      }

      else
      {
        v13 = v9;
      }

      v14 = entryCopy;
      v15 = v13;
    }

    else
    {
      v14 = entryCopy;
      v15 = &stru_1EFE45030;
    }

    identifier = [v14 identifier];
    v17 = identifier;
    if (identifier)
    {
      v18 = identifier;
    }

    else
    {
      v18 = &stru_1EFE45030;
    }

    v61[0] = v18;
    name = [v14 name];
    v20 = name;
    if (name)
    {
      v21 = name;
    }

    else
    {
      v21 = &stru_1EFE45030;
    }

    v61[1] = v21;
    v61[2] = v15;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];

    entryCopy = v14;
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
    v47 = entryCopy;
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
          ancestorEntries = [entryCopy ancestorEntries];
          v26 = [ancestorEntries arrayByAddingObject:entryCopy];

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
                plistName = [v31 plistName];
                if ([v24 isEqualToString:plistName])
                {
                  bundleName3 = [v31 bundleName];
                  v34 = [(__CFString *)v9 isEqualToString:bundleName3];

                  if (v34)
                  {

                    entryCopy = v47;
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

          v35 = [bundleCopy pathForResource:v24 ofType:@"plist"];
          entryCopy = v47;
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
              specifier2 = [v47 specifier];
              v43 = SearchSpecifiersFromPlist(v39, specifier2, v38, bundleCopy);

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

+ (void)setTopLevelManifestBundlePath:(id)path
{
  v3 = [path copy];
  v4 = _topLevelManifestBundlePath;
  _topLevelManifestBundlePath = v3;
}

- (PSSearchIndexOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end