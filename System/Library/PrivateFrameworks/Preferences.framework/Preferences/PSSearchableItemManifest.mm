@interface PSSearchableItemManifest
- (BOOL)writeToPlistAndStringsFilesAtURL:(id)l error:(id *)error;
- (PSSearchableItemManifest)init;
- (id)_escapedStringForString:(id)string;
- (id)_stringKeyForString:(id)string;
- (id)items;
- (void)addSearchableItem:(id)item;
- (void)addSearchableItems:(id)items;
- (void)removeSearchableItem:(id)item;
@end

@implementation PSSearchableItemManifest

- (PSSearchableItemManifest)init
{
  v5.receiver = self;
  v5.super_class = PSSearchableItemManifest;
  v2 = [(PSSearchableItemManifest *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(PSSearchableItemManifest *)v2 setSearchableItems:v3];
  }

  return v2;
}

- (void)addSearchableItems:(id)items
{
  itemsCopy = items;
  searchableItems = [(PSSearchableItemManifest *)self searchableItems];
  [searchableItems addObjectsFromArray:itemsCopy];
}

- (void)addSearchableItem:(id)item
{
  itemCopy = item;
  searchableItems = [(PSSearchableItemManifest *)self searchableItems];
  [searchableItems addObject:itemCopy];
}

- (void)removeSearchableItem:(id)item
{
  itemCopy = item;
  searchableItems = [(PSSearchableItemManifest *)self searchableItems];
  [searchableItems removeObject:itemCopy];
}

- (id)items
{
  searchableItems = [(PSSearchableItemManifest *)self searchableItems];
  v3 = [searchableItems copy];

  return v3;
}

- (BOOL)writeToPlistAndStringsFilesAtURL:(id)l error:(id *)error
{
  v89 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  selfCopy = self;
  searchableItems = [(PSSearchableItemManifest *)self searchableItems];
  v9 = [searchableItems countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v81;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v81 != v11)
        {
          objc_enumerationMutation(searchableItems);
        }

        v13 = *(*(&v80 + 1) + 8 * i);
        bundleID = [v13 bundleID];
        v15 = [bundleID length];

        if (v15)
        {
          bundleID2 = [v13 bundleID];
          v17 = [v7 objectForKeyedSubscript:bundleID2];

          if (!v17)
          {
            v18 = objc_opt_new();
            bundleID3 = [v13 bundleID];
            [v7 setObject:v18 forKeyedSubscript:bundleID3];
          }

          bundleID4 = [v13 bundleID];
          v21 = [v7 objectForKeyedSubscript:bundleID4];
          [v21 addObject:v13];
        }
      }

      v10 = [searchableItems countByEnumeratingWithState:&v80 objects:v88 count:16];
    }

    while (v10);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [v7 allKeys];
  v60 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
  if (v60)
  {
    v57 = v7;
    v58 = *v77;
    v59 = lCopy;
    while (2)
    {
      v22 = 0;
      do
      {
        if (*v77 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v22;
        v23 = *(*(&v76 + 1) + 8 * v22);
        v67 = objc_opt_new();
        v66 = objc_opt_new();
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v62 = v23;
        v63 = [v7 objectForKeyedSubscript:v23];
        v68 = [v63 countByEnumeratingWithState:&v72 objects:v86 count:16];
        if (v68)
        {
          v65 = *v73;
          do
          {
            for (j = 0; j != v68; ++j)
            {
              if (*v73 != v65)
              {
                objc_enumerationMutation(v63);
              }

              toManifestDictionary = [*(*(&v72 + 1) + 8 * j) toManifestDictionary];
              v26 = [toManifestDictionary mutableCopy];

              v27 = [v26 objectForKeyedSubscript:@"label"];
              v28 = [(PSSearchableItemManifest *)selfCopy _stringKeyForString:v27];
              [v26 setObject:v28 forKeyedSubscript:@"label"];
              v29 = MEMORY[0x1E696AEC0];
              if (v27)
              {
                v30 = v27;
              }

              else
              {
                v30 = &stru_1EFE45030;
              }

              v31 = [(PSSearchableItemManifest *)selfCopy _escapedStringForString:v30];
              v71 = [v29 stringWithFormat:@"%@ = %@", v28, v31];;

              [v66 addObject:v71];
              v32 = [v26 objectForKeyedSubscript:@"keywords"];
              v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_KEYWORDS", v28];
              [v26 setObject:v33 forKeyedSubscript:@"keywords"];
              v34 = MEMORY[0x1E696AEC0];
              v70 = v32;
              if (v32)
              {
                v35 = v32;
              }

              else
              {
                v35 = &stru_1EFE45030;
              }

              v36 = [(PSSearchableItemManifest *)selfCopy _escapedStringForString:v35];
              v69 = [v34 stringWithFormat:@"%@ = %@", v33, v36];;

              [v66 addObject:v69];
              v37 = [v26 objectForKeyedSubscript:@"contentDescription"];
              v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_DESCRIPTION", v28];
              [v26 setObject:v38 forKeyedSubscript:@"contentDescription"];
              v39 = MEMORY[0x1E696AEC0];
              if (v37)
              {
                v40 = v37;
              }

              else
              {
                v40 = &stru_1EFE45030;
              }

              v41 = [(PSSearchableItemManifest *)selfCopy _escapedStringForString:v40];
              v42 = [v39 stringWithFormat:@"%@ = %@", v38, v41];;

              [v66 addObject:v42];
              v43 = [v26 copy];
              [v67 addObject:v43];
            }

            v68 = [v63 countByEnumeratingWithState:&v72 objects:v86 count:16];
          }

          while (v68);
        }

        v44 = [v66 componentsJoinedByString:@"\n"];
        v45 = [v44 stringByAppendingString:@"\n"];

        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SettingsSearchManifest-%@", v62];
        lCopy = v59;
        v47 = [v59 URLByAppendingPathComponent:v46];
        v48 = [v47 URLByAppendingPathExtension:@"strings"];
        v49 = [v45 writeToURL:v48 atomically:1 encoding:4 error:error];

        if (!v49)
        {

          v54 = 0;
          v7 = v57;
          goto LABEL_41;
        }

        v84 = @"items";
        v85 = v67;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v51 = [v59 URLByAppendingPathComponent:v46];
        v52 = [v51 URLByAppendingPathExtension:@"plist"];
        v53 = [v50 writeToURL:v52 error:error];

        v7 = v57;
        if (!v53)
        {
          v54 = 0;
          goto LABEL_41;
        }

        v22 = v61 + 1;
      }

      while (v61 + 1 != v60);
      v54 = 1;
      v60 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
      if (v60)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v54 = 1;
  }

LABEL_41:

  return v54;
}

- (id)_stringKeyForString:(id)string
{
  v3 = _stringKeyForString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    [PSSearchableItemManifest _stringKeyForString:];
  }

  uppercaseString = [stringCopy uppercaseString];

  v6 = [uppercaseString stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  invertedSet = [_stringKeyForString__allowedCharacters invertedSet];
  v8 = [v6 componentsSeparatedByCharactersInSet:invertedSet];
  v9 = [v8 componentsJoinedByString:&stru_1EFE45030];

  return v9;
}

uint64_t __48__PSSearchableItemManifest__stringKeyForString___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] alphanumericCharacterSet];
  v1 = _stringKeyForString__allowedCharacters;
  _stringKeyForString__allowedCharacters = v0;

  v2 = _stringKeyForString__allowedCharacters;

  return [v2 addCharactersInString:@"_"];
}

- (id)_escapedStringForString:(id)string
{
  v3 = [string stringByReplacingOccurrencesOfString:@" withString:@"\];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\ withString:@"\\\];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"%" withString:@"\\%"];

  return v5;
}

@end