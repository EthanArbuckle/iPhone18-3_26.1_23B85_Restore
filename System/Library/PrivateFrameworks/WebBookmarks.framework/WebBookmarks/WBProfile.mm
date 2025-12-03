@interface WBProfile
- (BOOL)isEqual:(id)equal;
- (Class)_copyClassIsMutable:(BOOL)mutable;
- (NSString)description;
- (NSString)identifier;
- (NSString)identifierForExtensions;
- (NSString)privacyPreservingDescription;
- (NSString)symbolImageName;
- (NSString)title;
- (WBProfile)initWithBookmark:(id)bookmark;
- (WBProfile)initWithBookmark:(id)bookmark kind:(int64_t)kind;
- (WBProfile)initWithTitle:(id)title symbolImageName:(id)name favoritesFolderServerID:(id)d deviceIdentifier:(id)identifier;
- (WBSCRDTPosition)syncPosition;
- (WBSNamedColorOption)color;
- (id)_defaultSettingForKey:(id)key;
- (id)differenceFromProfile:(id)profile;
- (id)settingForKey:(id)key;
- (int)databaseIdentifier;
- (unint64_t)hash;
- (void)setCustomFavoritesFolderServerID:(id)d;
@end

@implementation WBProfile

- (NSString)identifier
{
  if (self->_kind)
  {
    uUID = [(WebBookmark *)self->_bookmark UUID];
  }

  else
  {
    uUID = *MEMORY[0x277D49BD8];
  }

  return uUID;
}

- (NSString)privacyPreservingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  databaseIdentifier = [(WBProfile *)self databaseIdentifier];
  kind = [(WBProfile *)self kind];
  identifier = [(WBProfile *)self identifier];
  serverID = [(WBProfile *)self serverID];
  v10 = [v3 stringWithFormat:@"<%@: %p databaseIdentifier = %d; kind = %ld; identifier = %@; serverID = %@>", v5, self, databaseIdentifier, kind, identifier, serverID];;

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
    serverID = [(WebBookmark *)self->_bookmark serverID];
  }

  else
  {
    serverID = *MEMORY[0x277D49BD8];
  }

  return serverID;
}

- (NSString)title
{
  title = [(WebBookmark *)self->_bookmark title];
  if ([title length])
  {
    v4 = [title length];
    if (v4 <= *MEMORY[0x277D49D00])
    {
      v5 = title;
    }

    else
    {
      v5 = [title substringToIndex:?];
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
  symbolImageName = [(WebBookmark *)self->_bookmark symbolImageName];
  v3 = symbolImageName;
  if (symbolImageName)
  {
    firstObject = symbolImageName;
  }

  else
  {
    availableSymbolImageNames = [objc_opt_class() availableSymbolImageNames];
    firstObject = [availableSymbolImageNames firstObject];
  }

  availableSymbolImageNames2 = [objc_opt_class() availableSymbolImageNames];
  v7 = [availableSymbolImageNames2 containsObject:firstObject];

  if (v7)
  {
    firstObject2 = firstObject;
  }

  else
  {
    availableSymbolImageNames3 = [objc_opt_class() availableSymbolImageNames];
    firstObject2 = [availableSymbolImageNames3 firstObject];
  }

  return firstObject2;
}

- (WBProfile)initWithTitle:(id)title symbolImageName:(id)name favoritesFolderServerID:(id)d deviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  nameCopy = name;
  titleCopy = title;
  v14 = [[WebBookmark alloc] initFolderWithParentID:0 subtype:2 deviceIdentifier:identifierCopy collectionType:1];

  [v14 setTitle:titleCopy];
  [v14 setSymbolImageName:nameCopy];

  [v14 setCustomFavoritesFolderServerID:dCopy];
  v15 = [(WBProfile *)self initWithBookmark:v14];

  return v15;
}

- (WBProfile)initWithBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  uUID = [bookmarkCopy UUID];
  v6 = [uUID isEqualToString:*MEMORY[0x277D49BD8]] ^ 1;

  v7 = [(WBProfile *)self initWithBookmark:bookmarkCopy kind:v6];
  return v7;
}

- (WBProfile)initWithBookmark:(id)bookmark kind:(int64_t)kind
{
  bookmarkCopy = bookmark;
  v12.receiver = self;
  v12.super_class = WBProfile;
  v8 = [(WBProfile *)&v12 init];
  if (v8 && [bookmarkCopy isFolder] && objc_msgSend(bookmarkCopy, "subtype") == 2)
  {
    objc_storeStrong(&v8->_bookmark, bookmark);
    v8->_kind = kind;
    if (!kind)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(WBProfile *)equalCopy identifier];
      identifier2 = [(WBProfile *)self identifier];
      v7 = [identifier isEqual:identifier2];
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
  identifier = [(WBProfile *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)differenceFromProfile:(id)profile
{
  v50 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if (profileCopy && WBSIsEqual())
  {
    title = [(WBProfile *)self title];
    title2 = [profileCopy title];
    v7 = WBSIsEqual();

    v8 = v7 ^ 1u;
    symbolImageName = [(WBProfile *)self symbolImageName];
    symbolImageName2 = [profileCopy symbolImageName];
    v11 = WBSIsEqual();

    if (!v11)
    {
      v8 |= 2uLL;
    }

    customFavoritesFolderServerID = [(WBProfile *)self customFavoritesFolderServerID];
    customFavoritesFolderServerID2 = [profileCopy customFavoritesFolderServerID];
    v14 = WBSIsEqual();

    if (!v14)
    {
      v8 |= 4uLL;
    }

    color = [(WBProfile *)self color];
    color2 = [profileCopy color];
    v17 = WBSIsEqual();

    if (!v17)
    {
      v8 |= 8uLL;
    }

    startPageSectionsDataRepresentation = [(WBProfile *)self startPageSectionsDataRepresentation];
    startPageSectionsDataRepresentation2 = [profileCopy startPageSectionsDataRepresentation];
    v20 = WBSIsEqual();

    if (!v20)
    {
      v8 |= 0x10uLL;
    }

    syncPosition = [(WBProfile *)self syncPosition];
    syncPosition2 = [profileCopy syncPosition];
    v23 = WBSIsEqual();

    if (!v23)
    {
      v8 |= 0x20uLL;
    }

    v24 = [MEMORY[0x277CBEB58] set];
    settingsDictionary = self->_settingsDictionary;
    if (settingsDictionary && ([(NSMutableDictionary *)settingsDictionary isEqualToDictionary:profileCopy[3]]& 1) == 0)
    {
      v43 = v8 | 0x40;
      v44 = profileCopy;
      v26 = profileCopy[3];
      v27 = MEMORY[0x277CBEB98];
      allKeys = [(NSMutableDictionary *)self->_settingsDictionary allKeys];
      v29 = [v27 setWithArray:allKeys];
      allKeys2 = [v26 allKeys];
      v31 = [v29 setByAddingObjectsFromArray:allKeys2];

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
      profileCopy = v44;
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

- (void)setCustomFavoritesFolderServerID:(id)d
{
  v4 = [d copy];
  [(WebBookmark *)self->_bookmark setCustomFavoritesFolderServerID:v4];
}

- (WBSCRDTPosition)syncPosition
{
  bookmark = [(WBProfile *)self bookmark];
  syncPosition = [bookmark syncPosition];

  return syncPosition;
}

- (id)settingForKey:(id)key
{
  keyCopy = key;
  bookmark = [(WBProfile *)self bookmark];
  [bookmark lockFields];

  v6 = [(NSMutableDictionary *)self->_settingsDictionary objectForKeyedSubscript:keyCopy];
  value = [v6 value];

  bookmark2 = [(WBProfile *)self bookmark];
  [bookmark2 unlockFields];

  if (!value)
  {
    value = [(WBProfile *)self _defaultSettingForKey:keyCopy];
  }

  return value;
}

- (id)_defaultSettingForKey:(id)key
{
  v3 = _defaultSettingForKey__onceToken;
  keyCopy = key;
  if (v3 != -1)
  {
    [WBProfile _defaultSettingForKey:];
  }

  v5 = [_defaultSettingForKey__defaultSettingValues objectForKeyedSubscript:keyCopy];

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

- (Class)_copyClassIsMutable:(BOOL)mutable
{
  v3 = off_279E749D8;
  if (!mutable)
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
  databaseIdentifier = [(WBProfile *)self databaseIdentifier];
  title = [(WBProfile *)self title];
  symbolImageName = [(WBProfile *)self symbolImageName];
  kind = [(WBProfile *)self kind];
  identifier = [(WBProfile *)self identifier];
  serverID = [(WBProfile *)self serverID];
  v12 = [v3 stringWithFormat:@"<%@: %p databaseIdentifier = %d; title = %@; symbolImage = %@; kind = %ld; identifier = %@; serverID = %@>", v5, self, databaseIdentifier, title, symbolImageName, kind, identifier, serverID];;

  return v12;
}

@end