@interface SUSectionsResponse
+ (id)lastCachedVersionIdentifier;
+ (id)sectionsCacheDirectory;
+ (void)setLastCachedVersionIdentifier:(id)identifier;
- (BOOL)_loadArtworkFromCacheDirectory:(id)directory;
- (BOOL)shouldResetUserOrdering;
- (BOOL)writeToCacheDirectory:(id)directory error:(id *)error;
- (NSArray)allSections;
- (NSArray)sections;
- (NSDictionary)sectionsDictionary;
- (NSString)moreListTitle;
- (NSString)storeFrontIdentifier;
- (NSString)versionString;
- (SSItemImageCollection)moreListImageCollection;
- (SUSectionsResponse)init;
- (SUSectionsResponse)initWithClientInterface:(id)interface cacheDirectory:(id)directory;
- (SUSectionsResponse)initWithClientInterface:(id)interface sectionsDictionary:(id)dictionary responseType:(int64_t)type;
- (id)_newImageForIdentifier:(id)identifier variant:(id)variant cacheDirectory:(id)directory;
- (id)_newSectionsFromDictionary:(id)dictionary;
- (void)_applyDefaultSearchFieldConfigurationsToSections:(id)sections;
- (void)_dropImageKeysFromArray:(id)array;
- (void)_dropImageKeysFromDictionary:(id)dictionary;
- (void)_loadButtonArtworkForSection:(id)section buttons:(id)buttons cachePath:(id)path;
- (void)_writeButtonImagesForSection:(id)section buttons:(id)buttons cachePath:(id)path;
- (void)_writeImage:(id)image toCachePath:(id)path forIdentifier:(id)identifier variant:(id)variant;
- (void)dealloc;
- (void)setShouldResetUserOrdering:(BOOL)ordering;
- (void)setStoreFrontIdentifier:(id)identifier;
@end

@implementation SUSectionsResponse

- (SUSectionsResponse)init
{
  v3 = +[SUClientDispatch clientInterface];

  return [(SUSectionsResponse *)self initWithClientInterface:v3 sectionsDictionary:0 responseType:0];
}

- (SUSectionsResponse)initWithClientInterface:(id)interface cacheDirectory:(id)directory
{
  v7 = [directory stringByAppendingPathComponent:@"Sections.plist"];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v9 = [(SUSectionsResponse *)self initWithClientInterface:interface sectionsDictionary:v8 responseType:0], (self = v9) != 0) && (![(NSArray *)[(SUSectionsResponse *)v9 allSections] count]|| ![(SUSectionsResponse *)self _loadArtworkFromCacheDirectory:directory]))
  {

    self = 0;
  }

  return self;
}

- (SUSectionsResponse)initWithClientInterface:(id)interface sectionsDictionary:(id)dictionary responseType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = SUSectionsResponse;
  v8 = [(SUSectionsResponse *)&v10 init];
  if (v8)
  {
    v8->_clientInterface = interface;
    v8->_rawResponseDictionary = [dictionary mutableCopy];
    v8->_responseType = type;
    v8->_sectionsCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSectionsResponse;
  [(SUSectionsResponse *)&v3 dealloc];
}

+ (id)lastCachedVersionIdentifier
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];

  return [standardUserDefaults stringForKey:@"SULastSectionsVersion:7.1"];
}

+ (id)sectionsCacheDirectory
{
  result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1), "lastObject"), result, @"Sections", 0}];
    v4 = [MEMORY[0x1E696AEC0] pathWithComponents:v3];

    return v4;
  }

  return result;
}

+ (void)setLastCachedVersionIdentifier:(id)identifier
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];

  [standardUserDefaults setObject:identifier forKey:@"SULastSectionsVersion:7.1"];
}

- (NSArray)allSections
{
  v3 = [objc_alloc(MEMORY[0x1E69D4990]) initWithDictionary:self->_rawResponseDictionary];
  dictionaryByRemovingConditions = [v3 dictionaryByRemovingConditions];

  v5 = [(SUSectionsResponse *)self _newSectionsFromDictionary:dictionaryByRemovingConditions];

  return v5;
}

- (SSItemImageCollection)moreListImageCollection
{
  v2 = [(NSDictionary *)[(SUSectionsResponse *)self sectionsDictionary] objectForKey:@"more-list-artwork"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [objc_alloc(MEMORY[0x1E69D4920]) initWithImageCollection:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)moreListTitle
{
  v2 = [(NSDictionary *)[(SUSectionsResponse *)self sectionsDictionary] objectForKey:@"more-list-title"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSArray)sections
{
  v2 = [(SUSectionsResponse *)self _newSectionsFromDictionary:[(SUSectionsResponse *)self sectionsDictionary]];

  return v2;
}

- (NSDictionary)sectionsDictionary
{
  v2 = [objc_alloc(MEMORY[0x1E69D4990]) initWithDictionary:self->_rawResponseDictionary];
  dictionaryByEvaluatingConditions = [v2 dictionaryByEvaluatingConditions];

  return dictionaryByEvaluatingConditions;
}

- (void)setShouldResetUserOrdering:(BOOL)ordering
{
  orderingCopy = ordering;

  self->_shouldResetUserOrdering = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:orderingCopy];
}

- (void)setStoreFrontIdentifier:(id)identifier
{
  if (identifier)
  {
    v5 = [identifier copy];
    [(NSMutableDictionary *)self->_rawResponseDictionary setObject:v5 forKey:@"store-front-id"];
  }

  else
  {
    rawResponseDictionary = self->_rawResponseDictionary;

    [(NSMutableDictionary *)rawResponseDictionary removeObjectForKey:@"store-front-id"];
  }
}

- (BOOL)shouldResetUserOrdering
{
  if (self->_shouldResetUserOrdering)
  {
    shouldResetUserOrdering = self->_shouldResetUserOrdering;
  }

  else
  {
    v3 = [(NSDictionary *)[(SUSectionsResponse *)self sectionsDictionary] objectForKey:@"reset-user-ordering"];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 0;
    }

    shouldResetUserOrdering = v3;
  }

  return [(NSNumber *)shouldResetUserOrdering BOOLValue];
}

- (NSString)storeFrontIdentifier
{
  v2 = [(NSMutableDictionary *)self->_rawResponseDictionary objectForKey:@"store-front-id"];

  return v2;
}

- (NSString)versionString
{
  v2 = [(NSDictionary *)[(SUSectionsResponse *)self sectionsDictionary] objectForKey:@"version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [v2 stringValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v2;

      return v4;
    }

    else
    {
      return 0;
    }
  }
}

- (BOOL)writeToCacheDirectory:(id)directory error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:self->_rawResponseDictionary format:200 options:0 error:&v35];
  if (v6 && (v7 = v6, v8 = [directory stringByAppendingPathComponent:@"Sections.plist"], objc_msgSend(v7, "writeToFile:options:error:", v8, 0, &v35)))
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v12 = objc_opt_class();
      v37 = 138412546;
      v38 = v12;
      v39 = 2112;
      v40 = v8;
      LODWORD(v28) = 22;
      v27 = &v37;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v37, v28}];
        free(v14);
        v27 = v15;
        SSFileLog();
      }
    }

    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  allSections = [(SUSectionsResponse *)self allSections];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = [(NSArray *)allSections countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(allSections);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        identifier = [v21 identifier];
        if (identifier)
        {
          v23 = identifier;
          -[SUSectionsResponse _writeImage:toCachePath:forIdentifier:variant:](self, "_writeImage:toCachePath:forIdentifier:variant:", [v21 image], directory, identifier, 0);
          -[SUSectionsResponse _writeImage:toCachePath:forIdentifier:variant:](self, "_writeImage:toCachePath:forIdentifier:variant:", [v21 moreListImage], directory, v23, @"-More");
          -[SUSectionsResponse _writeImage:toCachePath:forIdentifier:variant:](self, "_writeImage:toCachePath:forIdentifier:variant:", [v21 selectedImage], directory, v23, @"-Selected");
          -[SUSectionsResponse _writeImage:toCachePath:forIdentifier:variant:](self, "_writeImage:toCachePath:forIdentifier:variant:", [v21 selectedMoreListImage], directory, v23, @"-MoreSelected");
          -[SUSectionsResponse _writeButtonImagesForSection:buttons:cachePath:](self, "_writeButtonImagesForSection:buttons:cachePath:", v21, [v21 leftSectionButtons], directory);
          -[SUSectionsResponse _writeButtonImagesForSection:buttons:cachePath:](self, "_writeButtonImagesForSection:buttons:cachePath:", v21, [v21 rightSectionButtons], directory);
        }
      }

      v18 = [(NSArray *)allSections countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v18);
  }

  moreListImage = self->_moreListImage;
  if (moreListImage)
  {
    [(SUSectionsResponse *)self _writeImage:moreListImage toCachePath:directory forIdentifier:@"more" variant:0];
  }

  moreListSelectedImage = self->_moreListSelectedImage;
  if (moreListSelectedImage)
  {
    [(SUSectionsResponse *)self _writeImage:moreListSelectedImage toCachePath:directory forIdentifier:@"more" variant:@"-Selected"];
  }

  if (error)
  {
    *error = v35;
  }

  return v29;
}

- (void)_applyDefaultSearchFieldConfigurationsToSections:(id)sections
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [SUSearchFieldConfiguration defaultConfigurationWithClientInterface:self->_clientInterface];
  v5 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [sections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(sections);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (v5 != 1)
        {
          if ([v10 type] != 1)
          {
            continue;
          }

LABEL_11:
          [v10 setSearchFieldConfiguration:v4];
          continue;
        }

        if ([v10 url] || objc_msgSend(v10, "urlBagKey"))
        {
          goto LABEL_11;
        }
      }

      v7 = [sections countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_dropImageKeysFromArray:(id)array
{
  v5 = [array count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [array objectAtIndex:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 mutableCopy];
        [(SUSectionsResponse *)self _dropImageKeysFromArray:v9];
        goto LABEL_7;
      }

LABEL_8:
      if (v6 == ++v7)
      {
        return;
      }
    }

    v9 = [v8 mutableCopy];
    [(SUSectionsResponse *)self _dropImageKeysFromDictionary:v9];
LABEL_7:
    [array replaceObjectAtIndex:v7 withObject:v9];

    goto LABEL_8;
  }
}

- (void)_dropImageKeysFromDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  [dictionary removeObjectForKey:@"artwork-urls"];
  [dictionary removeObjectForKey:@"more-list-artwork"];
  [dictionary removeObjectForKey:@"image-url"];
  [dictionary removeObjectForKey:@"image-url@2x"];
  allKeys = [dictionary allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [dictionary objectForKey:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 mutableCopy];
          [(SUSectionsResponse *)self _dropImageKeysFromDictionary:v12];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v12 = [v11 mutableCopy];
          [(SUSectionsResponse *)self _dropImageKeysFromArray:v12];
        }

        [dictionary setObject:v12 forKey:v10];
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (BOOL)_loadArtworkFromCacheDirectory:(id)directory
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(SUSectionsResponse *)self allSections];
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    v24 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        identifier = [v9 identifier];
        if (identifier)
        {
          v11 = [(SUSectionsResponse *)self _newImageForIdentifier:identifier variant:&stru_1F41B3660 cacheDirectory:directory];
          v12 = [(SUSectionsResponse *)self _newImageForIdentifier:identifier variant:@"-More" cacheDirectory:directory];
          v13 = [(SUSectionsResponse *)self _newImageForIdentifier:identifier variant:@"-Selected" cacheDirectory:directory];
          identifier = [(SUSectionsResponse *)self _newImageForIdentifier:identifier variant:@"-MoreSelected" cacheDirectory:directory];
          -[SUSectionsResponse _loadButtonArtworkForSection:buttons:cachePath:](self, "_loadButtonArtworkForSection:buttons:cachePath:", v9, [v9 leftSectionButtons], directory);
          -[SUSectionsResponse _loadButtonArtworkForSection:buttons:cachePath:](self, "_loadButtonArtworkForSection:buttons:cachePath:", v9, [v9 rightSectionButtons], directory);
        }

        else
        {
          v13 = 0;
          v12 = 0;
          v11 = 0;
        }

        [v9 setMoreListImage:v12];
        [v9 setSelectedImage:v13];
        [v9 setSelectedMoreListImage:identifier];

        if (v11)
        {
          [v9 setImage:v11];
        }

        else
        {
          mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
          shouldLog = [mEMORY[0x1E69D4938] shouldLog];
          if ([mEMORY[0x1E69D4938] shouldLogToDisk])
          {
            v16 = shouldLog | 2;
          }

          else
          {
            v16 = shouldLog;
          }

          if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v16 &= 2u;
          }

          if (v16)
          {
            v17 = objc_opt_class();
            v30 = 138412546;
            v31 = v17;
            v32 = 2112;
            v33 = v9;
            LODWORD(v23) = 22;
            v22 = &v30;
            v18 = _os_log_send_and_compose_impl();
            if (v18)
            {
              v19 = v18;
              v20 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v30, v23}];
              free(v19);
              v22 = v20;
              SSFileLog();
            }
          }

          v24 = 0;
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v6);
  }

  else
  {
    v24 = 1;
  }

  self->_moreListImage = [(SUSectionsResponse *)self _newImageForIdentifier:@"more" variant:&stru_1F41B3660 cacheDirectory:directory, v22];
  self->_moreListSelectedImage = [(SUSectionsResponse *)self _newImageForIdentifier:@"more" variant:@"-Selected" cacheDirectory:directory];
  return v24 & 1;
}

- (void)_loadButtonArtworkForSection:(id)section buttons:(id)buttons cachePath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  identifier = [section identifier];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = buttons;
  v10 = [buttons countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [(SUSectionsResponse *)self _newVariantStringForButton:v14];
        v16 = [(SUSectionsResponse *)self _newImageForIdentifier:identifier variant:v15 cacheDirectory:path];
        [section setSectionButtonImage:v16 forTag:{objc_msgSend(v14, "tag")}];
      }

      v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (id)_newImageForIdentifier:(id)identifier variant:(id)variant cacheDirectory:(id)directory
{
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  if (v8 != 2.0 || (v9 = [objc_msgSend(identifier stringByAppendingFormat:@"%@@2x", variant), "stringByAppendingPathExtension:", @"png"], (result = objc_msgSend(objc_alloc(MEMORY[0x1E69DCAB8]), "initWithContentsOfFile:", objc_msgSend(directory, "stringByAppendingPathComponent:", v9))) == 0))
  {
    v11 = [objc_msgSend(identifier stringByAppendingString:{variant), "stringByAppendingPathExtension:", @"png"}];
    v12 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v13 = [directory stringByAppendingPathComponent:v11];

    return [v12 initWithContentsOfFile:v13];
  }

  return result;
}

- (id)_newSectionsFromDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [dictionary objectForKey:@"search-field"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [[SUSearchFieldConfiguration alloc] initWithDictionary:v6 clientInterface:self->_clientInterface];
  }

  else
  {
    v21 = 0;
  }

  v7 = [dictionary objectForKey:@"tabs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v7 objectForKey:@"tabs"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v8;
    v10 = *v23;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [[SUSection alloc] initWithClientInterface:self->_clientInterface];
          if ([(SUSection *)v14 loadFromDictionary:v13 searchField:v21])
          {
            v15 = v5;
            v16 = [(NSMutableDictionary *)self->_sectionsCache objectForKey:[(SUSection *)v14 identifier]];
            if (v16)
            {
              v17 = v16;
              [(SUSection *)v16 loadFromDictionary:v13 searchField:v21];
              v18 = v15;
              v19 = v17;
              v5 = v15;
            }

            else
            {
              [(NSMutableDictionary *)self->_sectionsCache setObject:v14 forKey:[(SUSection *)v14 identifier]];
              v18 = v5;
              v19 = v14;
            }

            [v18 addObject:v19];
            v11 &= [objc_msgSend(v5 "lastObject")] == 0;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
    if (v11)
    {
LABEL_22:
      [(SUSectionsResponse *)self _applyDefaultSearchFieldConfigurationsToSections:v5];
    }
  }

  return v5;
}

- (void)_writeButtonImagesForSection:(id)section buttons:(id)buttons cachePath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  identifier = [section identifier];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [buttons countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(buttons);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [section imageForSectionButtonWithTag:{objc_msgSend(v14, "tag")}];
        if (v15)
        {
          v16 = v15;
          v17 = [(SUSectionsResponse *)self _newVariantStringForButton:v14];
          [(SUSectionsResponse *)self _writeImage:v16 toCachePath:path forIdentifier:identifier variant:v17];
        }
      }

      v11 = [buttons countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)_writeImage:(id)image toCachePath:(id)path forIdentifier:(id)identifier variant:(id)variant
{
  v21 = *MEMORY[0x1E69E9840];
  if (image)
  {
    identifierCopy = identifier;
    if (variant)
    {
      identifierCopy = [identifier stringByAppendingString:variant];
    }

    [image scale];
    if (v9 == 2.0)
    {
      identifierCopy = [identifierCopy stringByAppendingString:@"@2x"];
    }

    v10 = [path stringByAppendingPathComponent:{objc_msgSend(identifierCopy, "stringByAppendingPathExtension:", @"png"}];
    if ([(NSData *)UIImagePNGRepresentation(image) writeToFile:v10 options:0 error:0])
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v13 = shouldLog | 2;
      }

      else
      {
        v13 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v17 = 138412546;
        v18 = objc_opt_class();
        v19 = 2112;
        v20 = v10;
        LODWORD(v16) = 22;
        v14 = _os_log_send_and_compose_impl();
        if (v14)
        {
          v15 = v14;
          [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v17, v16}];
          free(v15);
          SSFileLog();
        }
      }
    }
  }
}

@end