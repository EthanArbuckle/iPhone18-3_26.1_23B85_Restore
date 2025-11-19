@interface WBProfile
- (BOOL)isEqual:(id)a3;
- (Class)_copyClassIsMutable:(BOOL)a3;
- (NSString)description;
- (NSString)identifier;
- (NSString)identifierForExtensions;
- (NSString)privacyPreservingDescription;
- (NSString)symbolImageName;
- (NSString)title;
- (WBProfile)initWithBookmark:(id)a3;
- (WBProfile)initWithBookmark:(id)a3 kind:(int64_t)a4;
- (WBProfile)initWithTitle:(id)a3 symbolImageName:(id)a4 favoritesFolderServerID:(id)a5 deviceIdentifier:(id)a6;
- (WBSCRDTPosition)syncPosition;
- (WBSNamedColorOption)color;
- (id)_defaultSettingForKey:(id)a3;
- (id)differenceFromProfile:(id)a3;
- (id)settingForKey:(id)a3;
- (int)databaseIdentifier;
- (unint64_t)hash;
- (void)setCustomFavoritesFolderServerID:(id)a3;
@end

@implementation WBProfile

- (NSString)identifier
{
  if (self->_kind)
  {
    v2 = [(WebBookmark *)self->_bookmark UUID];
  }

  else
  {
    v2 = *MEMORY[0x277D49BD8];
  }

  return v2;
}

- (NSString)privacyPreservingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBProfile *)self databaseIdentifier];
  v7 = [(WBProfile *)self kind];
  v8 = [(WBProfile *)self identifier];
  v9 = [(WBProfile *)self serverID];
  v10 = [v3 stringWithFormat:@"<%@: %p databaseIdentifier = %d; kind = %ld; identifier = %@; serverID = %@>", v5, self, v6, v7, v8, v9];;

  return v10;
}

- (int)databaseIdentifier
{
  if (self->_kind)
  {
    return [(WebBookmark *)self->_bookmark identifier];
  }

  else
  {
    return 0;
  }
}

- (NSString)identifierForExtensions
{
  if (self->_kind)
  {
    v2 = [(WebBookmark *)self->_bookmark serverID];
  }

  else
  {
    v2 = *MEMORY[0x277D49BD8];
  }

  return v2;
}

- (NSString)title
{
  v3 = [(WebBookmark *)self->_bookmark title];
  if ([v3 length])
  {
    v4 = [v3 length];
    if (v4 <= *MEMORY[0x277D49D00])
    {
      v5 = v3;
    }

    else
    {
      v5 = [v3 substringToIndex:?];
    }

    goto LABEL_7;
  }

  titleProvider = self->_titleProvider;
  if (titleProvider)
  {
    v5 = titleProvider[2]();
LABEL_7:
    v7 = v5;
    goto LABEL_8;
  }

  v7 = &stru_288259858;
LABEL_8:

  return v7;
}

- (NSString)symbolImageName
{
  v2 = [(WebBookmark *)self->_bookmark symbolImageName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_opt_class() availableSymbolImageNames];
    v4 = [v5 firstObject];
  }

  v6 = [objc_opt_class() availableSymbolImageNames];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v9 = [objc_opt_class() availableSymbolImageNames];
    v8 = [v9 firstObject];
  }

  return v8;
}

- (WBProfile)initWithTitle:(id)a3 symbolImageName:(id)a4 favoritesFolderServerID:(id)a5 deviceIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[WebBookmark alloc] initFolderWithParentID:0 subtype:2 deviceIdentifier:v10 collectionType:1];

  [v14 setTitle:v13];
  [v14 setSymbolImageName:v12];

  [v14 setCustomFavoritesFolderServerID:v11];
  v15 = [(WBProfile *)self initWithBookmark:v14];

  return v15;
}

- (WBProfile)initWithBookmark:(id)a3
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [v5 isEqualToString:*MEMORY[0x277D49BD8]] ^ 1;

  v7 = [(WBProfile *)self initWithBookmark:v4 kind:v6];
  return v7;
}

- (WBProfile)initWithBookmark:(id)a3 kind:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WBProfile;
  v8 = [(WBProfile *)&v12 init];
  if (v8 && [v7 isFolder] && objc_msgSend(v7, "subtype") == 2)
  {
    objc_storeStrong(&v8->_bookmark, a3);
    v8->_kind = a4;
    if (!a4)
    {
      titleProvider = v8->_titleProvider;
      v8->_titleProvider = &__block_literal_global_12;
    }

    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WBProfile *)v4 identifier];
      v6 = [(WBProfile *)self identifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(WBProfile *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)differenceFromProfile:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && WBSIsEqual())
  {
    v5 = [(WBProfile *)self title];
    v6 = [v4 title];
    v7 = WBSIsEqual();

    v8 = v7 ^ 1u;
    v9 = [(WBProfile *)self symbolImageName];
    v10 = [v4 symbolImageName];
    v11 = WBSIsEqual();

    if (!v11)
    {
      v8 |= 2uLL;
    }

    v12 = [(WBProfile *)self customFavoritesFolderServerID];
    v13 = [v4 customFavoritesFolderServerID];
    v14 = WBSIsEqual();

    if (!v14)
    {
      v8 |= 4uLL;
    }

    v15 = [(WBProfile *)self color];
    v16 = [v4 color];
    v17 = WBSIsEqual();

    if (!v17)
    {
      v8 |= 8uLL;
    }

    v18 = [(WBProfile *)self startPageSectionsDataRepresentation];
    v19 = [v4 startPageSectionsDataRepresentation];
    v20 = WBSIsEqual();

    if (!v20)
    {
      v8 |= 0x10uLL;
    }

    v21 = [(WBProfile *)self syncPosition];
    v22 = [v4 syncPosition];
    v23 = WBSIsEqual();

    if (!v23)
    {
      v8 |= 0x20uLL;
    }

    v24 = [MEMORY[0x277CBEB58] set];
    settingsDictionary = self->_settingsDictionary;
    if (settingsDictionary && ([(NSMutableDictionary *)settingsDictionary isEqualToDictionary:v4[3]]& 1) == 0)
    {
      v43 = v8 | 0x40;
      v44 = v4;
      v26 = v4[3];
      v27 = MEMORY[0x277CBEB98];
      v28 = [(NSMutableDictionary *)self->_settingsDictionary allKeys];
      v29 = [v27 setWithArray:v28];
      v30 = [v26 allKeys];
      v31 = [v29 setByAddingObjectsFromArray:v30];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v46;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v46 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v45 + 1) + 8 * i);
            v38 = [(NSMutableDictionary *)self->_settingsDictionary objectForKeyedSubscript:v37, v43, v44, v45];
            v39 = [v26 objectForKeyedSubscript:v37];
            if ((WBSIsEqual() & 1) == 0)
            {
              [v24 addObject:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v34);
      }

      v8 = v43;
      v4 = v44;
    }

    v40 = [[WBProfileDifference alloc] initWithResult:v8 settingsKeys:v24];
  }

  else
  {
    v40 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (void)setCustomFavoritesFolderServerID:(id)a3
{
  v4 = [a3 copy];
  [(WebBookmark *)self->_bookmark setCustomFavoritesFolderServerID:v4];
}

- (WBSCRDTPosition)syncPosition
{
  v2 = [(WBProfile *)self bookmark];
  v3 = [v2 syncPosition];

  return v3;
}

- (id)settingForKey:(id)a3
{
  v4 = a3;
  v5 = [(WBProfile *)self bookmark];
  [v5 lockFields];

  v6 = [(NSMutableDictionary *)self->_settingsDictionary objectForKeyedSubscript:v4];
  v7 = [v6 value];

  v8 = [(WBProfile *)self bookmark];
  [v8 unlockFields];

  if (!v7)
  {
    v7 = [(WBProfile *)self _defaultSettingForKey:v4];
  }

  return v7;
}

- (id)_defaultSettingForKey:(id)a3
{
  v3 = _defaultSettingForKey__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [WBProfile _defaultSettingForKey:];
  }

  v5 = [_defaultSettingForKey__defaultSettingValues objectForKeyedSubscript:v4];

  return v5;
}

void __35__WBProfile__defaultSettingForKey___block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D4A478];
  v4[0] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = _defaultSettingForKey__defaultSettingValues;
  _defaultSettingForKey__defaultSettingValues = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void *__41__WBProfile_modifiedSettingsFieldsByName__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"modified"];
  if ([v4 BOOLValue])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (WBSNamedColorOption)color
{
  v2 = MEMORY[0x277D49A70];
  v3 = [(WBProfile *)self settingForKey:*MEMORY[0x277D49CF0]];
  v4 = [v2 colorWithData:v3];

  return v4;
}

- (Class)_copyClassIsMutable:(BOOL)a3
{
  v3 = off_279E749D8;
  if (!a3)
  {
    v3 = off_279E749F0;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBProfile *)self databaseIdentifier];
  v7 = [(WBProfile *)self title];
  v8 = [(WBProfile *)self symbolImageName];
  v9 = [(WBProfile *)self kind];
  v10 = [(WBProfile *)self identifier];
  v11 = [(WBProfile *)self serverID];
  v12 = [v3 stringWithFormat:@"<%@: %p databaseIdentifier = %d; title = %@; symbolImage = %@; kind = %ld; identifier = %@; serverID = %@>", v5, self, v6, v7, v8, v9, v10, v11];;

  return v12;
}

@end