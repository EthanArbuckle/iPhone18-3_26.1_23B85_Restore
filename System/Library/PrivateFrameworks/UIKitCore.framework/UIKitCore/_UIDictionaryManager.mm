@interface _UIDictionaryManager
+ (id)assetManager;
- (BOOL)_hasDefinitionForTerm:(id)a3;
- (BOOL)_isTTYEnabled;
- (_UIDictionaryManager)init;
- (id)_allAvailableDefinitionDictionaries;
- (id)_availableDictionaryAssets;
- (id)_definitionValuesForTerm:(id)a3;
- (id)_dictionaryAssetType;
- (void)_downloadDictionaryAssetCatalog:(id)a3;
@end

@implementation _UIDictionaryManager

- (_UIDictionaryManager)init
{
  v7.receiver = self;
  v7.super_class = _UIDictionaryManager;
  v2 = [(_UIDictionaryManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(_UIDictionaryManager *)v2 _allAvailableDefinitionDictionaries];
    availableDefinitionDictionaries = v3->_availableDefinitionDictionaries;
    v3->_availableDefinitionDictionaries = v4;
  }

  return v3;
}

+ (id)assetManager
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)_hasDefinitionForTerm:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_availableDefinitionDictionaries;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v11 + 1) + 8 * i) _hasDefinitionForTerm:{v5, v11}])
          {
            LOBYTE(v7) = 1;
            goto LABEL_14;
          }
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)_definitionValuesForTerm:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_availableDefinitionDictionaries;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 activated])
        {
          v12 = [v11 _definitionValueForTerm:v4];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 definition];

            if (v14)
            {
              [v5 addObject:v13];
            }
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {

    v5 = 0;
  }

  return v5;
}

- (id)_dictionaryAssetType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getDCSDictionaryAssetGetAssetTypeSymbolLoc_ptr;
  v11 = getDCSDictionaryAssetGetAssetTypeSymbolLoc_ptr;
  if (!getDCSDictionaryAssetGetAssetTypeSymbolLoc_ptr)
  {
    v3 = DictionaryServicesLibrary_0();
    v9[3] = dlsym(v3, "DCSDictionaryAssetGetAssetType");
    getDCSDictionaryAssetGetAssetTypeSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = v2();

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef _DCSDictionaryAssetGetAssetType(void)"];
    [v6 handleFailureInFunction:v7 file:@"_UIDictionaryManager.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (void)_downloadDictionaryAssetCatalog:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setAllowsCellularAccess:1];
  [v5 setAllowsExpensiveAccess:1];
  [v5 setDiscretionary:0];
  v6 = MEMORY[0x1E69B18D8];
  v7 = [(_UIDictionaryManager *)self _dictionaryAssetType];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56___UIDictionaryManager__downloadDictionaryAssetCatalog___block_invoke;
  v9[3] = &unk_1E70FFB68;
  v10 = v4;
  v8 = v4;
  [v6 startCatalogDownload:v7 options:v5 then:v9];
}

- (id)_availableDictionaryAssets
{
  v3 = objc_alloc(MEMORY[0x1E69B18E8]);
  v4 = [(_UIDictionaryManager *)self _dictionaryAssetType];
  v5 = [v3 initWithType:v4];

  [v5 returnTypes:2];
  [v5 setDoNotBlockBeforeFirstUnlock:1];
  v6 = [v5 queryMetaDataSync];
  if (v6)
  {
    NSLog(&cfstr_Uidictionaryma_0.isa, v6);
    v7 = 0;
  }

  else
  {
    v7 = [v5 results];
  }

  return v7;
}

- (id)_allAvailableDefinitionDictionaries
{
  v80 = *MEMORY[0x1E69E9840];
  v39 = [(_UIDictionaryManager *)self _availableDictionaryAssets];
  v2 = 0x1E695D000uLL;
  if (v39)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 objectForKey:@"AppleLanguages"];
    v43 = [v4 objectAtIndex:0];

    v45 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v5 = v39;
    v6 = [v5 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v6)
    {
      v7 = *v64;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v64 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v63 + 1) + 8 * i);
          v10 = [v9 _formatVersion];
          v72 = 0;
          v73 = &v72;
          v74 = 0x2020000000;
          v11 = getDCSDictionaryAssetGetCompatibilityVersionSymbolLoc_ptr;
          v75 = getDCSDictionaryAssetGetCompatibilityVersionSymbolLoc_ptr;
          if (!getDCSDictionaryAssetGetCompatibilityVersionSymbolLoc_ptr)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getDCSDictionaryAssetGetCompatibilityVersionSymbolLoc_block_invoke;
            v70 = &unk_1E70F2F20;
            v71 = &v72;
            v12 = DictionaryServicesLibrary_0();
            v13 = dlsym(v12, "DCSDictionaryAssetGetCompatibilityVersion");
            *(v71[1] + 24) = v13;
            getDCSDictionaryAssetGetCompatibilityVersionSymbolLoc_ptr = *(v71[1] + 24);
            v11 = v73[3];
          }

          _Block_object_dispose(&v72, 8);
          if (!v11)
          {
            v37 = [MEMORY[0x1E696AAA8] currentHandler];
            v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSInteger _DCSDictionaryAssetGetCompatibilityVersion(void)"];
            [v37 handleFailureInFunction:v38 file:@"_UIDictionaryManager.m" lineNumber:37 description:{@"%s", dlerror()}];

            __break(1u);
          }

          if (v10 == v11())
          {
            v14 = [[_UIDefinitionDictionary alloc] initWithAsset:v9];
            v15 = v14;
            if (v14 && (![(_UIDefinitionDictionary *)v14 _isTTYDictionary]|| [(_UIDictionaryManager *)self _isTTYEnabled]))
            {
              if (-[_UIDefinitionDictionary assetIsLocal](v15, "assetIsLocal") || [v9 state] == 4)
              {
                [(_UIDefinitionDictionary *)v15 setActivated:1];
              }

              [v45 addObject:v15];
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v6);
    }

    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __59___UIDictionaryManager__allAvailableDefinitionDictionaries__block_invoke;
    v61[3] = &unk_1E7103588;
    v62 = v43;
    v16 = v43;
    [v45 sortUsingComparator:v61];

    v17 = v45;
    v2 = 0x1E695D000;
  }

  else
  {
    v17 = 0;
  }

  v46 = v17;
  v40 = [*(v2 + 3952) arrayWithCapacity:{objc_msgSend(v17, "count")}];
  v18 = [v46 _filteredArrayOfObjectsPassingTest:&__block_literal_global_436_0];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v42 = [v18 countByEnumeratingWithState:&v57 objects:v78 count:16];
  if (v42)
  {
    v41 = *v58;
    do
    {
      v19 = 0;
      do
      {
        if (*v58 != v41)
        {
          v20 = v19;
          objc_enumerationMutation(v18);
          v19 = v20;
        }

        v44 = v19;
        v21 = *(*(&v57 + 1) + 8 * v19);
        v48 = [v21 rawAsset];
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v22 = v46;
        v23 = [v22 countByEnumeratingWithState:&v53 objects:v77 count:16];
        if (v23)
        {
          v24 = *v54;
          while (2)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v54 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v53 + 1) + 8 * j);
              if ([v18 indexOfObjectIdenticalTo:v26] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v27 = [v21 localizedDictionaryName];
                v28 = [v26 localizedDictionaryName];
                v29 = [v27 isEqual:v28];

                if (v29)
                {
                  v30 = [v26 rawAsset];
                  if ([v48 state] == 3 || (v31 = objc_msgSend(v30, "_contentVersion"), v31 > objc_msgSend(v48, "_contentVersion")))
                  {
                    [v21 setAssetToUpgrade:v30];
                  }

                  [v40 addObject:v26];

                  goto LABEL_43;
                }
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v53 objects:v77 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        if ([v48 state] == 3)
        {
          [v40 addObject:v21];
          [v48 purgeSync];
        }

LABEL_43:

        v19 = v44 + 1;
      }

      while (v44 + 1 != v42);
      v42 = [v18 countByEnumeratingWithState:&v57 objects:v78 count:16];
    }

    while (v42);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v32 = v40;
  v33 = [v32 countByEnumeratingWithState:&v49 objects:v76 count:16];
  if (v33)
  {
    v34 = *v50;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v32);
        }

        [v46 removeObject:*(*(&v49 + 1) + 8 * k)];
      }

      v33 = [v32 countByEnumeratingWithState:&v49 objects:v76 count:16];
    }

    while (v33);
  }

  return v46;
}

- (BOOL)_isTTYEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = qword_1ED49D858;
  v11 = qword_1ED49D858;
  if (!qword_1ED49D858)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getRTTSettingsClass_block_invoke;
    v7[3] = &unk_1E70F2F20;
    v7[4] = &v8;
    __getRTTSettingsClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = [v2 sharedInstance];
  v5 = [v4 TTYSoftwareEnabled];

  return v5;
}

@end