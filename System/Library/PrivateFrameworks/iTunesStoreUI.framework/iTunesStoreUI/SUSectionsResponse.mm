@interface SUSectionsResponse
+ (id)lastCachedVersionIdentifier;
+ (id)sectionsCacheDirectory;
+ (void)setLastCachedVersionIdentifier:(id)a3;
- (BOOL)_loadArtworkFromCacheDirectory:(id)a3;
- (BOOL)shouldResetUserOrdering;
- (BOOL)writeToCacheDirectory:(id)a3 error:(id *)a4;
- (NSArray)allSections;
- (NSArray)sections;
- (NSDictionary)sectionsDictionary;
- (NSString)moreListTitle;
- (NSString)storeFrontIdentifier;
- (NSString)versionString;
- (SSItemImageCollection)moreListImageCollection;
- (SUSectionsResponse)init;
- (SUSectionsResponse)initWithClientInterface:(id)a3 cacheDirectory:(id)a4;
- (SUSectionsResponse)initWithClientInterface:(id)a3 sectionsDictionary:(id)a4 responseType:(int64_t)a5;
- (id)_newImageForIdentifier:(id)a3 variant:(id)a4 cacheDirectory:(id)a5;
- (id)_newSectionsFromDictionary:(id)a3;
- (void)_applyDefaultSearchFieldConfigurationsToSections:(id)a3;
- (void)_dropImageKeysFromArray:(id)a3;
- (void)_dropImageKeysFromDictionary:(id)a3;
- (void)_loadButtonArtworkForSection:(id)a3 buttons:(id)a4 cachePath:(id)a5;
- (void)_writeButtonImagesForSection:(id)a3 buttons:(id)a4 cachePath:(id)a5;
- (void)_writeImage:(id)a3 toCachePath:(id)a4 forIdentifier:(id)a5 variant:(id)a6;
- (void)dealloc;
- (void)setShouldResetUserOrdering:(BOOL)a3;
- (void)setStoreFrontIdentifier:(id)a3;
@end

@implementation SUSectionsResponse

- (SUSectionsResponse)init
{
  v3 = +[SUClientDispatch clientInterface];

  return [(SUSectionsResponse *)self initWithClientInterface:v3 sectionsDictionary:0 responseType:0];
}

- (SUSectionsResponse)initWithClientInterface:(id)a3 cacheDirectory:(id)a4
{
  v7 = [a4 stringByAppendingPathComponent:@"Sections.plist"];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v9 = [(SUSectionsResponse *)self initWithClientInterface:a3 sectionsDictionary:v8 responseType:0], (self = v9) != 0) && (![(NSArray *)[(SUSectionsResponse *)v9 allSections] count]|| ![(SUSectionsResponse *)self _loadArtworkFromCacheDirectory:a4]))
  {

    self = 0;
  }

  return self;
}

- (SUSectionsResponse)initWithClientInterface:(id)a3 sectionsDictionary:(id)a4 responseType:(int64_t)a5
{
  v10.receiver = self;
  v10.super_class = SUSectionsResponse;
  v8 = [(SUSectionsResponse *)&v10 init];
  if (v8)
  {
    v8->_clientInterface = a3;
    v8->_rawResponseDictionary = [a4 mutableCopy];
    v8->_responseType = a5;
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
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];

  return [v2 stringForKey:@"SULastSectionsVersion:7.1"];
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

+ (void)setLastCachedVersionIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];

  [v4 setObject:a3 forKey:@"SULastSectionsVersion:7.1"];
}

- (NSArray)allSections
{
  v3 = [objc_alloc(MEMORY[0x1E69D4990]) initWithDictionary:self->_rawResponseDictionary];
  v4 = [v3 dictionaryByRemovingConditions];

  v5 = [(SUSectionsResponse *)self _newSectionsFromDictionary:v4];

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
  v3 = [v2 dictionaryByEvaluatingConditions];

  return v3;
}

- (void)setShouldResetUserOrdering:(BOOL)a3
{
  v3 = a3;

  self->_shouldResetUserOrdering = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v3];
}

- (void)setStoreFrontIdentifier:(id)a3
{
  if (a3)
  {
    v5 = [a3 copy];
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

- (BOOL)writeToCacheDirectory:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:self->_rawResponseDictionary format:200 options:0 error:&v35];
  if (v6 && (v7 = v6, v8 = [a3 stringByAppendingPathComponent:@"Sections.plist"], objc_msgSend(v7, "writeToFile:options:error:", v8, 0, &v35)))
  {
    v9 = [MEMORY[0x1E69D4938] sharedConfig];
    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEBUG))
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

  v16 = [(SUSectionsResponse *)self allSections];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = [v21 identifier];
        if (v22)
        {
          v23 = v22;
          -[SUSectionsResponse _writeImage:toCachePath:forIdentifier:variant:](self, "_writeImage:toCachePath:forIdentifier:variant:", [v21 image], a3, v22, 0);
          -[SUSectionsResponse _writeImage:toCachePath:forIdentifier:variant:](self, "_writeImage:toCachePath:forIdentifier:variant:", [v21 moreListImage], a3, v23, @"-More");
          -[SUSectionsResponse _writeImage:toCachePath:forIdentifier:variant:](self, "_writeImage:toCachePath:forIdentifier:variant:", [v21 selectedImage], a3, v23, @"-Selected");
          -[SUSectionsResponse _writeImage:toCachePath:forIdentifier:variant:](self, "_writeImage:toCachePath:forIdentifier:variant:", [v21 selectedMoreListImage], a3, v23, @"-MoreSelected");
          -[SUSectionsResponse _writeButtonImagesForSection:buttons:cachePath:](self, "_writeButtonImagesForSection:buttons:cachePath:", v21, [v21 leftSectionButtons], a3);
          -[SUSectionsResponse _writeButtonImagesForSection:buttons:cachePath:](self, "_writeButtonImagesForSection:buttons:cachePath:", v21, [v21 rightSectionButtons], a3);
        }
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v18);
  }

  moreListImage = self->_moreListImage;
  if (moreListImage)
  {
    [(SUSectionsResponse *)self _writeImage:moreListImage toCachePath:a3 forIdentifier:@"more" variant:0];
  }

  moreListSelectedImage = self->_moreListSelectedImage;
  if (moreListSelectedImage)
  {
    [(SUSectionsResponse *)self _writeImage:moreListSelectedImage toCachePath:a3 forIdentifier:@"more" variant:@"-Selected"];
  }

  if (a4)
  {
    *a4 = v35;
  }

  return v29;
}

- (void)_applyDefaultSearchFieldConfigurationsToSections:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [SUSearchFieldConfiguration defaultConfigurationWithClientInterface:self->_clientInterface];
  v5 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
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

      v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_dropImageKeysFromArray:(id)a3
{
  v5 = [a3 count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [a3 objectAtIndex:v7];
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
    [a3 replaceObjectAtIndex:v7 withObject:v9];

    goto LABEL_8;
  }
}

- (void)_dropImageKeysFromDictionary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  [a3 removeObjectForKey:@"artwork-urls"];
  [a3 removeObjectForKey:@"more-list-artwork"];
  [a3 removeObjectForKey:@"image-url"];
  [a3 removeObjectForKey:@"image-url@2x"];
  v5 = [a3 allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [a3 objectForKey:v10];
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

        [a3 setObject:v12 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (BOOL)_loadArtworkFromCacheDirectory:(id)a3
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
        v10 = [v9 identifier];
        if (v10)
        {
          v11 = [(SUSectionsResponse *)self _newImageForIdentifier:v10 variant:&stru_1F41B3660 cacheDirectory:a3];
          v12 = [(SUSectionsResponse *)self _newImageForIdentifier:v10 variant:@"-More" cacheDirectory:a3];
          v13 = [(SUSectionsResponse *)self _newImageForIdentifier:v10 variant:@"-Selected" cacheDirectory:a3];
          v10 = [(SUSectionsResponse *)self _newImageForIdentifier:v10 variant:@"-MoreSelected" cacheDirectory:a3];
          -[SUSectionsResponse _loadButtonArtworkForSection:buttons:cachePath:](self, "_loadButtonArtworkForSection:buttons:cachePath:", v9, [v9 leftSectionButtons], a3);
          -[SUSectionsResponse _loadButtonArtworkForSection:buttons:cachePath:](self, "_loadButtonArtworkForSection:buttons:cachePath:", v9, [v9 rightSectionButtons], a3);
        }

        else
        {
          v13 = 0;
          v12 = 0;
          v11 = 0;
        }

        [v9 setMoreListImage:v12];
        [v9 setSelectedImage:v13];
        [v9 setSelectedMoreListImage:v10];

        if (v11)
        {
          [v9 setImage:v11];
        }

        else
        {
          v14 = [MEMORY[0x1E69D4938] sharedConfig];
          v15 = [v14 shouldLog];
          if ([v14 shouldLogToDisk])
          {
            v16 = v15 | 2;
          }

          else
          {
            v16 = v15;
          }

          if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

  self->_moreListImage = [(SUSectionsResponse *)self _newImageForIdentifier:@"more" variant:&stru_1F41B3660 cacheDirectory:a3, v22];
  self->_moreListSelectedImage = [(SUSectionsResponse *)self _newImageForIdentifier:@"more" variant:@"-Selected" cacheDirectory:a3];
  return v24 & 1;
}

- (void)_loadButtonArtworkForSection:(id)a3 buttons:(id)a4 cachePath:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = [a3 identifier];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a4;
  v10 = [a4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        v16 = [(SUSectionsResponse *)self _newImageForIdentifier:v9 variant:v15 cacheDirectory:a5];
        [a3 setSectionButtonImage:v16 forTag:{objc_msgSend(v14, "tag")}];
      }

      v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (id)_newImageForIdentifier:(id)a3 variant:(id)a4 cacheDirectory:(id)a5
{
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  if (v8 != 2.0 || (v9 = [objc_msgSend(a3 stringByAppendingFormat:@"%@@2x", a4), "stringByAppendingPathExtension:", @"png"], (result = objc_msgSend(objc_alloc(MEMORY[0x1E69DCAB8]), "initWithContentsOfFile:", objc_msgSend(a5, "stringByAppendingPathComponent:", v9))) == 0))
  {
    v11 = [objc_msgSend(a3 stringByAppendingString:{a4), "stringByAppendingPathExtension:", @"png"}];
    v12 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v13 = [a5 stringByAppendingPathComponent:v11];

    return [v12 initWithContentsOfFile:v13];
  }

  return result;
}

- (id)_newSectionsFromDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [a3 objectForKey:@"search-field"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [[SUSearchFieldConfiguration alloc] initWithDictionary:v6 clientInterface:self->_clientInterface];
  }

  else
  {
    v21 = 0;
  }

  v7 = [a3 objectForKey:@"tabs"];
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

- (void)_writeButtonImagesForSection:(id)a3 buttons:(id)a4 cachePath:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = [a3 identifier];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [a4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(a4);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [a3 imageForSectionButtonWithTag:{objc_msgSend(v14, "tag")}];
        if (v15)
        {
          v16 = v15;
          v17 = [(SUSectionsResponse *)self _newVariantStringForButton:v14];
          [(SUSectionsResponse *)self _writeImage:v16 toCachePath:a5 forIdentifier:v9 variant:v17];
        }
      }

      v11 = [a4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)_writeImage:(id)a3 toCachePath:(id)a4 forIdentifier:(id)a5 variant:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a5;
    if (a6)
    {
      v6 = [a5 stringByAppendingString:a6];
    }

    [a3 scale];
    if (v9 == 2.0)
    {
      v6 = [v6 stringByAppendingString:@"@2x"];
    }

    v10 = [a4 stringByAppendingPathComponent:{objc_msgSend(v6, "stringByAppendingPathExtension:", @"png"}];
    if ([(NSData *)UIImagePNGRepresentation(a3) writeToFile:v10 options:0 error:0])
    {
      v11 = [MEMORY[0x1E69D4938] sharedConfig];
      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEBUG))
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