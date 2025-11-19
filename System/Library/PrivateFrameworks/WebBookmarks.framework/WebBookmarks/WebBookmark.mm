@interface WebBookmark
+ (NSDictionary)modifiedAttributesToFieldNames;
+ (id)_allowedSiteBookmarkWithTitle:(id)a3 address:(id)a4;
+ (id)_trimmedPreviewText:(id)a3;
+ (id)_trimmedTitle:(id)a3;
- (BOOL)_usedForInMemoryChangeTracking;
- (BOOL)attributesMarkedAsModified:(unint64_t)a3;
- (BOOL)hasFetchedMetadata;
- (BOOL)isBookmarksBarFolder;
- (BOOL)isBookmarksMenuFolder;
- (BOOL)isBuiltinBookmark;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBookmark:(id)a3;
- (BOOL)isFrequentlyVisitedSitesFolder;
- (BOOL)isMarkedAsRead;
- (BOOL)isPinned;
- (BOOL)isReadingListFolder;
- (BOOL)isReadingListItem;
- (BOOL)isWebFilterAllowedSitesFolder;
- (BOOL)omitFromUI;
- (BOOL)shouldReattemptArchiveWithAutomaticArchivingEnabled:(BOOL)a3;
- (BOOL)showIconOnly;
- (NSArray)fields;
- (NSData)startPageSectionsDataRepresentation;
- (NSData)syncData;
- (NSDate)dateLastViewed;
- (NSDate)tabDateLastViewed;
- (NSDictionary)dictionaryRepresentationForInMemoryChangeTracking;
- (NSDictionary)extraAttributes;
- (NSDictionary)localAttributes;
- (NSNumber)backgroundImageModifiedState;
- (NSNumber)frequentlyVisitedSiteScore;
- (NSNumber)isSelectedFavoritesFolder;
- (NSNumber)minimumSyncAPIVersion;
- (NSNumber)syncState;
- (NSString)address;
- (NSString)creationDeviceIdentifier;
- (NSString)customFavoritesFolderServerID;
- (NSString)deviceTypeIdentifier;
- (NSString)displayTitle;
- (NSString)localizedTitle;
- (NSString)offlineArchiveDirectoryPath;
- (NSString)pinnedAddress;
- (NSString)pinnedTitle;
- (NSString)symbolImageName;
- (NSString)syncKey;
- (NSString)title;
- (WBBookmarkSyncData)wbSyncData;
- (WBSCRDTField)labelField;
- (WBSCRDTField)locationField;
- (WBSCRDTGeneration)backgroundImageGeneration;
- (WBSCRDTGeneration)lastReadGeneration;
- (WBSCRDTPosition)syncPosition;
- (WebBookmark)initWithBookmark:(id)a3;
- (WebBookmark)initWithCoder:(id)a3;
- (WebBookmark)initWithDictionaryRepresentationForInMemoryChangeTracking:(id)a3;
- (WebBookmark)initWithSQLiteStatement:(sqlite3_stmt *)a3 deviceIdentifier:(id)a4 hasIcon:(BOOL)a5 collectionType:(int64_t)a6 skipDecodingSyncData:(BOOL)a7;
- (id)_fieldWithValue:(id)a3 generationKey:(id)a4 modifiedAttributes:(unint64_t)a5 syncData:(id)a6;
- (id)_fieldWithValueProvider:(id)a3 valueUpdater:(id)a4 generationKey:(id)a5 modifiedAttributes:(unint64_t)a6 syncData:(id)a7;
- (id)_fieldsForAttributes:(unint64_t)a3;
- (id)_initForCopy;
- (id)_labelGenerationKey;
- (id)_readingListPropertyNamed:(id)a3;
- (id)_stringForReadingListArchiveStatus:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionPreservingPrivacy:(BOOL)a3;
- (id)fieldForAttribute:(unint64_t)a3;
- (id)initBuiltinBookmarkWithTitle:(id)a3 address:(id)a4;
- (id)initBuiltinDeviceBookmarkWithTitle:(id)a3 address:(id)a4;
- (id)initCarrierBookmarkWithTitle:(id)a3 address:(id)a4;
- (id)initManagedBookmarkFolderWithTitle:(id)a3 uuid:(id)a4;
- (id)initManagedBookmarkWithTitle:(id)a3 address:(id)a4 uuid:(id)a5;
- (id)initReadingListBookmarkWithTitle:(id)a3 address:(id)a4 previewText:(id)a5;
- (id)initWhiteListBookmarkWithTitle:(id)a3 address:(id)a4;
- (id)shortTypeDescription;
- (id)webarchivePathForNextPageURL:(id)a3;
- (id)webarchivePathInReaderForm:(BOOL)a3 fileExists:(BOOL *)a4;
- (int)lastSelectedChildID;
- (int)parentID;
- (int64_t)_mergeFields:(id)a3 withFields:(id)a4 forBookmark:(id)a5;
- (int64_t)bookmarkType;
- (int64_t)folderType;
- (int64_t)itemType;
- (int64_t)mergeAttributes:(unint64_t)a3 withBookmark:(id)a4;
- (unint64_t)_attributesForField:(id)a3;
- (unint64_t)_sizeForFileOrDirectory:(id)a3 withAttributes:(id)a4;
- (unint64_t)archiveSize;
- (unint64_t)hash;
- (unsigned)orderIndex;
- (void)_modifyExtraReadingListAttributes:(id)a3;
- (void)_modifyLocalReadingListAttributes:(id)a3;
- (void)_removeDirectoryAtPath:(id)a3;
- (void)_setHidden:(BOOL)a3;
- (void)_setID:(int)a3;
- (void)_setInserted:(BOOL)a3;
- (void)_setOrderIndex:(unsigned int)a3;
- (void)_setParentID:(int)a3 incrementGeneration:(BOOL)a4;
- (void)_setServerID:(id)a3;
- (void)_setSyncData:(id)a3 cachedWBSyncData:(id)a4;
- (void)_setSyncable:(BOOL)a3;
- (void)_setUUID:(id)a3;
- (void)_setUpFieldsWithLabel:(id)a3 lastSelectedChild:(int)a4 location:(id)a5 syncData:(id)a6;
- (void)_setUsedForInMemoryChangeTracking:(BOOL)a3;
- (void)_updateExtraAttributeValuesUsingBlock:(id)a3;
- (void)cleanUpRedundantPreviewText;
- (void)clearArchive;
- (void)clearArchiveSynchronously;
- (void)clearModifiedAttributes;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getReadOnlyCachedBookmarkSyncDataUsingBlock:(id)a3;
- (void)markAsRead;
- (void)markAttributesAsModified:(unint64_t)a3;
- (void)markSpecial:(int)a3;
- (void)mergeWithBookmark:(id)a3;
- (void)migrateToBookmarkItem;
- (void)migrateToReadingListItem;
- (void)performWithFieldsWriteLock:(id)a3;
- (void)setAddress:(id)a3 incrementGeneration:(BOOL)a4;
- (void)setArchiveStatus:(int64_t)a3;
- (void)setBackgroundImageModifiedState:(id)a3;
- (void)setCreationDeviceIdentifier:(id)a3;
- (void)setCustomFavoritesFolderServerID:(id)a3;
- (void)setDateAdded:(id)a3;
- (void)setDateLastArchived:(id)a3;
- (void)setDateLastFetched:(id)a3;
- (void)setDeviceIdentifier:(id)a3;
- (void)setDeviceTypeIdentifier:(id)a3;
- (void)setExtraAttributes:(id)a3;
- (void)setExtraAttributesValue:(id)a3 forKey:(id)a4;
- (void)setHasFetchedMetadata:(BOOL)a3;
- (void)setLastReadGeneration:(id)a3;
- (void)setLastSelectedChildID:(int)a3;
- (void)setLocalAttributes:(id)a3;
- (void)setLocalAttributesValue:(id)a3 forKey:(id)a4;
- (void)setLocalPreviewText:(id)a3;
- (void)setMinimumSyncAPIVersion:(id)a3;
- (void)setNextPageURLs:(id)a3;
- (void)setPinned:(BOOL)a3 title:(id)a4 address:(id)a5;
- (void)setPreviewText:(id)a3;
- (void)setReadingListDateLastViewed:(id)a3;
- (void)setReadingListIconURL:(id)a3;
- (void)setReadingListIconUUID:(id)a3;
- (void)setSelectedFavoritesFolder:(id)a3;
- (void)setServerID:(id)a3;
- (void)setShouldArchive:(BOOL)a3;
- (void)setShowIconOnly:(BOOL)a3;
- (void)setStartPageSectionsDataRepresentation:(id)a3;
- (void)setSubtype:(int64_t)a3;
- (void)setSymbolImageName:(id)a3;
- (void)setSyncData:(id)a3;
- (void)setSyncKey:(id)a3;
- (void)setSyncPosition:(id)a3 incrementGeneration:(BOOL)a4;
- (void)setSyncState:(id)a3;
- (void)setTabDateLastViewed:(id)a3;
- (void)setTitle:(id)a3 incrementGeneration:(BOOL)a4;
- (void)setTitle:(id)a3 previewText:(id)a4 dateLastFetched:(id)a5;
- (void)setWebFilterStatus:(int64_t)a3;
- (void)updateGenerationsInSyncData:(id)a3 forAttributes:(unint64_t)a4;
@end

@implementation WebBookmark

- (NSDictionary)extraAttributes
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_extraAttributes;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (BOOL)isPinned
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_extraAttributes objectForKeyedSubscript:@"IsPinned"];
  v4 = [v3 BOOLValue];

  os_unfair_recursive_lock_unlock();
  return v4;
}

- (WBBookmarkSyncData)wbSyncData
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = objc_alloc_init(MEMORY[0x277D49B60]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__WebBookmark_Internal__wbSyncData__block_invoke;
  v10[3] = &unk_279E751F0;
  v10[4] = self;
  [v3 setHandler:v10];
  cachedWBSyncData = self->_cachedWBSyncData;
  if (cachedWBSyncData)
  {
    goto LABEL_4;
  }

  if ([(NSData *)self->_syncData length])
  {
    v5 = [WBBookmarkSyncData syncDataWithContentsOfData:self->_syncData];
    v6 = [v5 readOnlyProxy];
    v7 = self->_cachedWBSyncData;
    self->_cachedWBSyncData = v6;

    cachedWBSyncData = self->_cachedWBSyncData;
LABEL_4:
    v8 = cachedWBSyncData;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (NSArray)fields
{
  os_unfair_recursive_lock_lock_with_options();
  backgroundImageModifiedField = self->_backgroundImageModifiedField;
  v19 = MEMORY[0x277CBEA60];
  v17 = *&self->_dateAddedField;
  v3 = *&self->_labelField;
  v15 = v3;
  v16 = *&self->_iconURLField;
  locationField = self->_locationField;
  previewTextField = self->_previewTextField;
  syncStateField = self->_syncStateField;
  symbolImageNameField = self->_symbolImageNameField;
  customFavoritesFolderServerIDField = self->_customFavoritesFolderServerIDField;
  startPageSectionsDataField = self->_startPageSectionsDataField;
  showIconOnlyField = self->_showIconOnlyField;
  tabDateLastViewedField = self->_tabDateLastViewedField;
  v12 = [MEMORY[0x277CBEB68] null];
  v13 = [v19 safari_arrayWithObjectsUnlessNil:{backgroundImageModifiedField, v17, v16, v15, locationField, previewTextField, syncStateField, symbolImageNameField, customFavoritesFolderServerIDField, startPageSectionsDataField, showIconOnlyField, tabDateLastViewedField, v12}];

  os_unfair_recursive_lock_unlock();

  return v13;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __22__WebBookmark_dealloc__block_invoke;
  v4[3] = &unk_279E751F0;
  v4[4] = self;
  [(WebBookmark *)self performWithFieldsWriteLock:v4];
  v3.receiver = self;
  v3.super_class = WebBookmark;
  [(WebBookmark *)&v3 dealloc];
}

- (id)_labelGenerationKey
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_folder)
  {
    v3 = @"TitleAndIdentityHash";
  }

  else
  {
    v3 = @"TitleURLAndIdentityHash";
  }

  v4 = v3;
  os_unfair_recursive_lock_unlock();

  return v4;
}

void __22__WebBookmark_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 224);
  *(v4 + 224) = 0;
}

- (BOOL)isReadingListFolder
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_specialID == 3;
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (int)lastSelectedChildID
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_lastSelectedChildField value];
  v4 = [v3 intValue];

  os_unfair_recursive_lock_unlock();
  return v4;
}

- (NSString)title
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_labelField value];
  v4 = [v3 title];
  v5 = v4;
  v6 = &stru_288259858;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  os_unfair_recursive_lock_unlock();

  return v7;
}

- (NSString)address
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_labelField value];
  v4 = [v3 address];
  v5 = v4;
  v6 = &stru_288259858;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  os_unfair_recursive_lock_unlock();

  return v7;
}

- (int)parentID
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_locationField value];
  v4 = [v3 parentID];

  os_unfair_recursive_lock_unlock();
  return v4;
}

- (NSDictionary)localAttributes
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_localAttributes;
  os_unfair_recursive_lock_unlock();

  return v3;
}

void __52__WebBookmark_ReadingListInternal__dateAddedUpdater__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__WebBookmark_ReadingListInternal__dateAddedUpdater__block_invoke_2;
  v7[3] = &unk_279E77250;
  v8 = v4;
  v5 = v4;
  v6 = a2;
  [v6 _modifyExtraReadingListAttributes:v7];
  [v6 markAttributesAsModified:16];
}

- (BOOL)isReadingListItem
{
  v2 = [(WebBookmark *)self extraAttributes];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.ReadingList"];
  v4 = v3 != 0;

  return v4;
}

- (NSString)pinnedTitle
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_extraAttributes objectForKeyedSubscript:@"PinnedTitle"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSString)pinnedAddress
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_extraAttributes objectForKeyedSubscript:@"PinnedAddress"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)_initForCopy
{
  v6.receiver = self;
  v6.super_class = WebBookmark;
  v2 = [(WebBookmark *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_fieldsWriteLock = 0;
    v4 = v2;
  }

  return v3;
}

- (id)shortTypeDescription
{
  specialID = self->_specialID;
  switch(specialID)
  {
    case 1:
      return @"B";
    case 2:
      return @"M";
    case 3:
      return @"R";
    case 4:
      return @"W";
  }

  if (self->_folder)
  {
    return @"+";
  }

  return @"-";
}

- (unsigned)orderIndex
{
  os_unfair_recursive_lock_lock_with_options();
  orderIndex = self->_orderIndex;
  os_unfair_recursive_lock_unlock();
  return orderIndex;
}

- (BOOL)omitFromUI
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_extraAttributes objectForKeyedSubscript:@"com.apple.bookmarks.OmitFromUI"];
  v4 = [v3 BOOLValue];

  os_unfair_recursive_lock_unlock();
  return v4;
}

- (NSString)customFavoritesFolderServerID
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_customFavoritesFolderServerIDField value];
  os_unfair_recursive_lock_unlock();

  return v3;
}

id __62__WebBookmark_Internal__customFavoritesFolderServerIDProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_recursive_lock_lock_with_options();
  v3 = [v2[13] objectForKeyedSubscript:@"CustomFavoritesFolderServerID"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (unint64_t)hash
{
  v2 = [(WebBookmark *)self UUID];
  v3 = [v2 hash];

  return v3;
}

- (NSString)symbolImageName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_symbolImageNameField value];
  os_unfair_recursive_lock_unlock();

  return v3;
}

id __48__WebBookmark_Internal__symbolImageNameProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_recursive_lock_lock_with_options();
  v3 = [v2[13] objectForKeyedSubscript:@"SymbolImageName"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)initBuiltinBookmarkWithTitle:(id)a3 address:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [(WebBookmark *)self initWithTitle:a3 address:a4 collectionType:0];
  if (v4)
  {
    v10 = @"com.apple.bookmarks.IsBuiltinBookmark";
    v11[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    localAttributes = v4->_localAttributes;
    v4->_localAttributes = v5;

    v7 = v4;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)initBuiltinDeviceBookmarkWithTitle:(id)a3 address:(id)a4
{
  v4 = [(WebBookmark *)self initWithTitle:a3 address:a4 collectionType:0];
  v5 = v4;
  if (v4)
  {
    v4->_editable = 0;
    v4->_syncable = 0;
    localAttributes = v4->_localAttributes;
    if (localAttributes)
    {
      v7 = [(NSDictionary *)localAttributes mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v8 = v7;
    [v7 setValue:MEMORY[0x277CBEC38] forKey:@"com.apple.bookmarks.IsBuiltinDeviceBookmark"];
    [(WebBookmark *)v5 setLocalAttributes:v8];
    v9 = v5;
  }

  return v5;
}

- (id)initCarrierBookmarkWithTitle:(id)a3 address:(id)a4
{
  v4 = [(WebBookmark *)self initBuiltinDeviceBookmarkWithTitle:a3 address:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4[14];
    if (v6)
    {
      v7 = [v6 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v8 = v7;
    [v7 setValue:MEMORY[0x277CBEC38] forKey:@"com.apple.bookmarks.IsCarrierBookmark"];
    [v5 setLocalAttributes:v8];
    v9 = v5;
  }

  return v5;
}

- (id)initWhiteListBookmarkWithTitle:(id)a3 address:(id)a4
{
  v4 = [(WebBookmark *)self initWithTitle:a3 address:a4 collectionType:0];
  v5 = v4;
  if (v4)
  {
    *&v4->_editable = 0;
    v4->_addedLocally = 1;
    v4->_needsSyncUpdate = 0;
    v6 = v4;
  }

  return v5;
}

- (id)initManagedBookmarkWithTitle:(id)a3 address:(id)a4 uuid:(id)a5
{
  v9 = a5;
  v10 = [(WebBookmark *)self initWithTitle:a3 address:a4 collectionType:0];
  v11 = v10;
  if (v10)
  {
    *&v10->_editable = 0;
    v10->_addedLocally = 0;
    v10->_needsSyncUpdate = 0;
    objc_storeStrong(&v10->_managedBookmarkUUID, a5);
    v12 = v11;
  }

  return v11;
}

- (id)initManagedBookmarkFolderWithTitle:(id)a3 uuid:(id)a4
{
  v7 = a4;
  v8 = [(WebBookmark *)self initWithTitle:a3 address:&stru_288259858 collectionType:0];
  v9 = v8;
  if (v8)
  {
    *&v8->_editable = 0;
    v8->_addedLocally = 0;
    v8->_needsSyncUpdate = 0;
    v8->_folder = 1;
    objc_storeStrong(&v8->_managedBookmarkUUID, a4);
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WebBookmark *)self isEqualToBookmark:v4];
  }

  return v5;
}

- (BOOL)isEqualToBookmark:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(WebBookmark *)self UUID];
  v6 = [v4 UUID];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (id)descriptionPreservingPrivacy:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [(WebBookmark *)self shortTypeDescription];
  [v5 appendFormat:@"%@ %d (%d)", v6, self->_id, -[WebBookmark orderIndex](self, "orderIndex")];

  if (v3)
  {
    [v5 appendFormat:@" '%@' [%@] [%@]", &stru_288259858, self->_UUID, self->_serverID];
  }

  else
  {
    v7 = [(WebBookmark *)self title];
    [v5 appendFormat:@" '%@' [%@] [%@]", v7, self->_UUID, self->_serverID];
  }

  return v5;
}

- (NSString)localizedTitle
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = objc_alloc_init(MEMORY[0x277D49B60]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__WebBookmark_localizedTitle__block_invoke;
  v8[3] = &unk_279E751F0;
  v8[4] = self;
  [v3 setHandler:v8];
  if (self->_id)
  {
    specialID = self->_specialID;
    if (specialID == 2)
    {
      v4 = WebBookmarksBookmarksMenuFolderTitle();
    }

    else if (specialID == 1)
    {
      v4 = WebBookmarksBookmarksBarFolderTitle();
    }

    else if (specialID == 3)
    {
      v4 = WebBookmarksReadingListFolderTitle();
    }

    else
    {
      if (specialID == 4)
      {
        WebBookmarksWebFilterAllowedSitesFolderTitle();
      }

      else
      {
        [(WebBookmark *)self title];
      }
      v4 = ;
    }
  }

  else
  {
    v4 = WebBookmarksRootBookmarkTitle();
  }

  v6 = v4;

  return v6;
}

- (BOOL)isBookmarksBarFolder
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_specialID == 1;
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (BOOL)isBookmarksMenuFolder
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_specialID == 2;
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (BOOL)isWebFilterAllowedSitesFolder
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_specialID == 4;
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (BOOL)isFrequentlyVisitedSitesFolder
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = 0;
  if (self->_folder)
  {
    v3 = self->_subtype == 5;
  }

  os_unfair_recursive_lock_unlock();
  return v3;
}

- (BOOL)isBuiltinBookmark
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_localAttributes objectForKeyedSubscript:@"com.apple.bookmarks.IsBuiltinBookmark"];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NSDictionary *)self->_localAttributes objectForKeyedSubscript:@"com.apple.bookmarks.IsBuiltinDeviceBookmark"];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(NSDictionary *)self->_localAttributes objectForKeyedSubscript:@"com.apple.bookmarks.IsCarrierBookmark"];
      v4 = v6 != 0;
    }
  }

  os_unfair_recursive_lock_unlock();
  return v4;
}

- (NSString)displayTitle
{
  v3 = [(WebBookmark *)self address];
  v4 = [v3 length];

  if (v4)
  {
    [(WebBookmark *)self title];
  }

  else
  {
    _WBSLocalizedString();
  }
  v5 = ;

  return v5;
}

- (void)setTitle:(id)a3 incrementGeneration:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__WebBookmark_setTitle_incrementGeneration___block_invoke;
  v8[3] = &unk_279E75D00;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(WebBookmark *)self performWithFieldsWriteLock:v8];
}

void __44__WebBookmark_setTitle_incrementGeneration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) title];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(*(a1 + 32) + 216) value];
    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = &stru_288259858;
    }

    v7 = [v4 labelWithTitle:v6];

    [*(*(a1 + 32) + 216) setValue:v7 incrementGenerationIfNeeded:*(a1 + 48)];
    if (([*(a1 + 32) isPinned] & 1) == 0)
    {
      *(*(a1 + 32) + 154) = 1;
      [*(a1 + 32) markAttributesAsModified:1];
    }
  }
}

- (void)setAddress:(id)a3 incrementGeneration:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__WebBookmark_setAddress_incrementGeneration___block_invoke;
  v8[3] = &unk_279E75D00;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(WebBookmark *)self performWithFieldsWriteLock:v8];
}

void __46__WebBookmark_setAddress_incrementGeneration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) address];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    if (v4[18] && v4[17] != 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = [*(a1 + 40) wb_bestURLForUserTypedString];
      v4 = *(a1 + 32);
    }

    if (![v4 isReadingListItem] || objc_msgSend(v9, "_webBookmarks_isHTTPFamilyURL"))
    {
      v5 = [*(*(a1 + 32) + 216) value];
      v6 = [v9 absoluteString];
      v7 = v6;
      if (!v6)
      {
        if (*(a1 + 40))
        {
          v7 = *(a1 + 40);
        }

        else
        {
          v7 = &stru_288259858;
        }
      }

      v8 = [v5 labelWithAddress:v7];

      [*(*(a1 + 32) + 216) setValue:v8 incrementGenerationIfNeeded:*(a1 + 48)];
      if (([*(a1 + 32) isPinned] & 1) == 0)
      {
        *(*(a1 + 32) + 154) = 1;
        [*(a1 + 32) markAttributesAsModified:2];
      }
    }
  }
}

- (void)setLastSelectedChildID:(int)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__WebBookmark_setLastSelectedChildID___block_invoke;
  v3[3] = &unk_279E75D28;
  v4 = a3;
  v3[4] = self;
  [(WebBookmark *)self performWithFieldsWriteLock:v3];
}

void __38__WebBookmark_setLastSelectedChildID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 224) value];
  v4 = [v3 integerValue];

  if (v4 != v2)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    [*(*(a1 + 32) + 224) setValue:v7];

    [*(*(a1 + 32) + 224) incrementGenerationIfNeeded];
    *(*(a1 + 32) + 154) = 1;
    v8 = *(a1 + 32);

    [v8 markAttributesAsModified:512];
  }
}

- (void)setLocalAttributes:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [v4 copy];

  localAttributes = self->_localAttributes;
  self->_localAttributes = v5;

  os_unfair_recursive_lock_unlock();
}

- (void)setExtraAttributes:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__WebBookmark_setExtraAttributes___block_invoke;
  v6[3] = &unk_279E753F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

uint64_t __34__WebBookmark_setExtraAttributes___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToDictionary:*(*(a1 + 40) + 104)];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) copy];
    v4 = *(a1 + 40);
    v5 = *(v4 + 104);
    *(v4 + 104) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setServerID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__WebBookmark_setServerID___block_invoke;
  v6[3] = &unk_279E753F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

uint64_t __27__WebBookmark_setServerID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  result = WBSIsEqual();
  if ((result & 1) == 0)
  {
    v5 = [*(a1 + 40) copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    v8 = *MEMORY[0x277D49BD8];
    result = [*(a1 + 40) isEqualToString:*MEMORY[0x277D49BD8]];
    if (result)
    {
      v9 = *(a1 + 32);

      return [v9 _setUUID:v8];
    }
  }

  return result;
}

- (void)markAttributesAsModified:(unint64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__WebBookmark_markAttributesAsModified___block_invoke;
  v3[3] = &unk_279E75C10;
  v3[4] = self;
  v3[5] = a3;
  [(WebBookmark *)self performWithFieldsWriteLock:v3];
}

void __40__WebBookmark_markAttributesAsModified___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 160) |= *(a1 + 40);
  if ((*(a1 + 40) & 3) != 0 && [*(*(a1 + 32) + 112) safari_BOOLForKey:@"com.apple.bookmarks.IsBuiltinBookmark"])
  {
    v2 = [*(*(a1 + 32) + 112) mutableCopy];
    [v2 removeObjectForKey:@"com.apple.bookmarks.IsBuiltinBookmark"];
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
    *(v3 + 112) = v2;
  }
}

- (void)markSpecial:(int)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__WebBookmark_markSpecial___block_invoke;
  v3[3] = &unk_279E75D28;
  v3[4] = self;
  v4 = a3;
  [(WebBookmark *)self performWithFieldsWriteLock:v3];
}

uint64_t __27__WebBookmark_markSpecial___block_invoke(uint64_t result)
{
  *(*(result + 32) + 64) = 0;
  *(*(result + 32) + 65) = 0;
  *(*(result + 32) + 124) = *(result + 40);
  return result;
}

- (int64_t)itemType
{
  os_unfair_recursive_lock_lock_with_options();
  folder = self->_folder;
  os_unfair_recursive_lock_unlock();
  return folder;
}

- (int64_t)bookmarkType
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = objc_alloc_init(MEMORY[0x277D49B60]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__WebBookmark_bookmarkType__block_invoke;
  v6[3] = &unk_279E751F0;
  v6[4] = self;
  [v3 setHandler:v6];
  if ([(WebBookmark *)self isReadingListItem])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (self->_subtype == 1);
  }

  return v4;
}

- (int64_t)folderType
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = objc_alloc_init(MEMORY[0x277D49B60]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__WebBookmark_folderType__block_invoke;
  v8[3] = &unk_279E751F0;
  v8[4] = self;
  [v3 setHandler:v8];
  specialID = self->_specialID;
  if (specialID != 4)
  {
    switch(specialID)
    {
      case 1:
        v5 = 1;
        goto LABEL_11;
      case 2:
        v5 = 2;
        goto LABEL_11;
      case 3:
        v5 = 3;
        goto LABEL_11;
    }

    v6 = self->_subtype - 1;
    if (v6 <= 3)
    {
      v5 = qword_272CCD280[v6];
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (NSNumber)isSelectedFavoritesFolder
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_isSelectedFavoritesFolderField value];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setSelectedFavoritesFolder:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__WebBookmark_setSelectedFavoritesFolder___block_invoke;
  v6[3] = &unk_279E753F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __42__WebBookmark_setSelectedFavoritesFolder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) isSelectedFavoritesFolder];
  LOBYTE(v2) = WBSIsEqual();

  if ((v2 & 1) == 0)
  {
    [*(*(a1 + 40) + 208) setValue:*(a1 + 32)];
    [*(*(a1 + 40) + 208) incrementGenerationIfNeeded];
    *(*(a1 + 40) + 154) = 1;
    v4 = *(a1 + 40);

    [v4 markAttributesAsModified:32];
  }
}

- (NSNumber)minimumSyncAPIVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_minimumSyncAPIVersionField value];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setMinimumSyncAPIVersion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__WebBookmark_setMinimumSyncAPIVersion___block_invoke;
  v6[3] = &unk_279E753F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __40__WebBookmark_setMinimumSyncAPIVersion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) integerValue];
  v3 = [*(a1 + 40) minimumSyncAPIVersion];
  v4 = [v3 integerValue];

  if (v2 != v4)
  {
    [*(*(a1 + 40) + 240) setValue:*(a1 + 32)];
    [*(*(a1 + 40) + 240) incrementGenerationIfNeeded];
    *(*(a1 + 40) + 154) = 1;
    v5 = *(a1 + 40);

    [v5 markAttributesAsModified:0x8000];
  }
}

- (NSNumber)syncState
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_syncStateField value];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setSyncState:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__WebBookmark_setSyncState___block_invoke;
  v6[3] = &unk_279E753F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __28__WebBookmark_setSyncState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) integerValue];
  v3 = [*(a1 + 40) syncState];
  v4 = [v3 integerValue];

  if (v2 != v4)
  {
    [*(*(a1 + 40) + 256) setValue:*(a1 + 32)];
    [*(*(a1 + 40) + 256) incrementGenerationIfNeeded];
    *(*(a1 + 40) + 154) = 1;
    v5 = *(a1 + 40);

    [v5 markAttributesAsModified:0x4000];
  }
}

- (NSNumber)backgroundImageModifiedState
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_backgroundImageModifiedField value];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setBackgroundImageModifiedState:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__WebBookmark_setBackgroundImageModifiedState___block_invoke;
  v6[3] = &unk_279E753F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __47__WebBookmark_setBackgroundImageModifiedState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) integerValue];
  v3 = [*(a1 + 40) backgroundImageModifiedState];
  v4 = [v3 integerValue];

  if (v2 != v4)
  {
    [*(*(a1 + 40) + 176) setValue:*(a1 + 32)];
    [*(*(a1 + 40) + 176) incrementGenerationIfNeeded];
    *(*(a1 + 40) + 154) = 1;
    v5 = *(a1 + 40);

    [v5 markAttributesAsModified:0x2000];
  }
}

- (WBSCRDTGeneration)backgroundImageGeneration
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_backgroundImageModifiedField generation];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSString)creationDeviceIdentifier
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_extraAttributes objectForKeyedSubscript:@"CreationDeviceIdentifier"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setCreationDeviceIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__WebBookmark_setCreationDeviceIdentifier___block_invoke;
  v6[3] = &unk_279E753F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

- (NSDate)dateLastViewed
{
  if ([(WebBookmark *)self isReadingListItem])
  {
    [(WebBookmark *)self readingListDateLastViewed];
  }

  else
  {
    [(WebBookmark *)self tabDateLastViewed];
  }
  v3 = ;

  return v3;
}

- (NSNumber)frequentlyVisitedSiteScore
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_localAttributes objectForKeyedSubscript:@"com.apple.bookmarks.FrequentlyVisitedSiteScore"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSString)deviceTypeIdentifier
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_extraAttributes objectForKeyedSubscript:@"DeviceTypeIdentifier"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setDeviceTypeIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__WebBookmark_setDeviceTypeIdentifier___block_invoke;
  v6[3] = &unk_279E753F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

- (NSDate)tabDateLastViewed
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_tabDateLastViewedField value];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setTabDateLastViewed:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__WebBookmark_setTabDateLastViewed___block_invoke;
  v6[3] = &unk_279E753F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __36__WebBookmark_setTabDateLastViewed___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 296) value];
  v3 = *(a1 + 40);
  v4 = WBSIsEqual();

  if ((v4 & 1) == 0)
  {
    [*(*(a1 + 32) + 296) setValue:*(a1 + 40) incrementGenerationIfNeeded:1];
    [*(a1 + 32) markAttributesAsModified:8];
    *(*(a1 + 32) + 154) = 1;
  }
}

- (void)setLocalAttributesValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__WebBookmark_setLocalAttributesValue_forKey___block_invoke;
  v10[3] = &unk_279E75D50;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(WebBookmark *)self performWithFieldsWriteLock:v10];
}

void __46__WebBookmark_setLocalAttributesValue_forKey___block_invoke(void *a1)
{
  v2 = *(a1[4] + 112);
  if (v2)
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = v3;
  [v3 setObject:a1[6] forKeyedSubscript:a1[5]];
  v4 = [v7 copy];
  v5 = a1[4];
  v6 = *(v5 + 112);
  *(v5 + 112) = v4;
}

- (void)setExtraAttributesValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__WebBookmark_setExtraAttributesValue_forKey___block_invoke;
  v10[3] = &unk_279E75D50;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(WebBookmark *)self performWithFieldsWriteLock:v10];
}

void __46__WebBookmark_setExtraAttributesValue_forKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 104) mutableCopy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v4;

  [v8 setObject:a1[6] forKeyedSubscript:a1[5]];
  v5 = [v8 copy];
  v6 = a1[4];
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;
}

- (void)setSymbolImageName:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__WebBookmark_setSymbolImageName___block_invoke;
  v6[3] = &unk_279E753F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __34__WebBookmark_setSymbolImageName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) symbolImageName];
  LOBYTE(v2) = WBSIsEqual();

  if ((v2 & 1) == 0)
  {
    v4 = [*(a1 + 32) copy];
    [*(*(a1 + 40) + 264) setValue:v4];

    [*(*(a1 + 40) + 264) incrementGenerationIfNeeded];
    *(*(a1 + 40) + 154) = 1;
    v5 = *(a1 + 40);

    [v5 markAttributesAsModified:4096];
  }
}

- (void)setCustomFavoritesFolderServerID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__WebBookmark_setCustomFavoritesFolderServerID___block_invoke;
  v6[3] = &unk_279E753F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __48__WebBookmark_setCustomFavoritesFolderServerID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) customFavoritesFolderServerID];
  LOBYTE(v2) = WBSIsEqual();

  if ((v2 & 1) == 0)
  {
    v4 = [*(a1 + 32) copy];
    [*(*(a1 + 40) + 272) setValue:v4];

    [*(*(a1 + 40) + 272) incrementGenerationIfNeeded];
    *(*(a1 + 40) + 154) = 1;
    v5 = *(a1 + 40);

    [v5 markAttributesAsModified:0x40000];
  }
}

- (NSData)startPageSectionsDataRepresentation
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_startPageSectionsDataField value];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setStartPageSectionsDataRepresentation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__WebBookmark_setStartPageSectionsDataRepresentation___block_invoke;
  v6[3] = &unk_279E753F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __54__WebBookmark_setStartPageSectionsDataRepresentation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) startPageSectionsDataRepresentation];
  LOBYTE(v2) = WBSIsEqual();

  if ((v2 & 1) == 0)
  {
    v4 = [*(a1 + 32) copy];
    [*(*(a1 + 40) + 280) setValue:v4];

    [*(*(a1 + 40) + 280) incrementGenerationIfNeeded];
    *(*(a1 + 40) + 154) = 1;
    v5 = *(a1 + 40);

    [v5 markAttributesAsModified:0x80000];
  }
}

- (BOOL)showIconOnly
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_showIconOnlyField value];
  v4 = [v3 BOOLValue];

  os_unfair_recursive_lock_unlock();
  return v4;
}

- (void)setShowIconOnly:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__WebBookmark_setShowIconOnly___block_invoke;
  v3[3] = &unk_279E75AB0;
  v4 = a3;
  v3[4] = self;
  [(WebBookmark *)self performWithFieldsWriteLock:v3];
}

uint64_t __31__WebBookmark_setShowIconOnly___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = [*(a1 + 32) showIconOnly];
  if (v2 != result)
  {
    v4 = *(*(a1 + 32) + 288);
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
    [v4 setValue:v5 incrementGenerationIfNeeded:1];

    *(*(a1 + 32) + 154) = 1;
    v6 = *(a1 + 32);

    return [v6 markAttributesAsModified:0x200000];
  }

  return result;
}

- (WBSCRDTPosition)syncPosition
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(WBSCRDTField *)self->_locationField value];
  v4 = [v3 position];

  os_unfair_recursive_lock_unlock();

  return v4;
}

- (void)setSyncPosition:(id)a3 incrementGeneration:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__WebBookmark_setSyncPosition_incrementGeneration___block_invoke;
  v8[3] = &unk_279E75D00;
  v9 = v6;
  v10 = self;
  v11 = a4;
  v7 = v6;
  [(WebBookmark *)self performWithFieldsWriteLock:v8];
}

void __51__WebBookmark_setSyncPosition_incrementGeneration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncPosition];
  LOBYTE(v2) = WBSIsEqual();

  if ((v2 & 1) == 0)
  {
    v4 = [*(*(a1 + 40) + 232) value];
    v5 = [v4 locationWithPosition:*(a1 + 32)];

    [*(*(a1 + 40) + 232) setValue:v5 incrementGenerationIfNeeded:*(a1 + 48)];
    *(*(a1 + 40) + 154) = 1;
    [*(a1 + 40) markAttributesAsModified:4];
  }
}

- (void)setPinned:(BOOL)a3 title:(id)a4 address:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__WebBookmark_setPinned_title_address___block_invoke;
  v12[3] = &unk_279E75D78;
  v15 = a3;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(WebBookmark *)self performWithFieldsWriteLock:v12];
}

void __39__WebBookmark_setPinned_title_address___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 != [*(a1 + 32) isPinned])
  {
    v3 = [*(*(a1 + 32) + 216) value];
    v8 = [v3 labelWithPinned:*(a1 + 56)];

    [*(*(a1 + 32) + 216) setValue:v8 incrementGenerationIfNeeded:1];
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
    [v4 setExtraAttributesValue:v5 forKey:@"IsPinned"];

    if (*(a1 + 56) == 1)
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 32) setExtraAttributesValue:v6 forKey:@"PinnedTitle"];
    if (*(a1 + 56) == 1)
    {
      v7 = *(a1 + 48);
    }

    else
    {
      v7 = 0;
    }

    [*(a1 + 32) setExtraAttributesValue:v7 forKey:@"PinnedAddress"];
    *(*(a1 + 32) + 154) = 1;
    [*(a1 + 32) markAttributesAsModified:0x10000];
  }
}

- (BOOL)isMarkedAsRead
{
  v3 = [(WebBookmark *)self lastReadGeneration];
  if (v3)
  {
    v4 = [(WebBookmark *)self labelField];
    v5 = [v4 generation];

    v6 = [v3 compare:v5] != -1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WBSCRDTGeneration)lastReadGeneration
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = objc_alloc_init(MEMORY[0x277D49B60]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__WebBookmark_lastReadGeneration__block_invoke;
  v9[3] = &unk_279E751F0;
  v9[4] = self;
  [v3 setHandler:v9];
  v4 = [(NSDictionary *)self->_extraAttributes objectForKeyedSubscript:@"ReadStatusGeneration"];
  v5 = [(NSDictionary *)self->_extraAttributes objectForKeyedSubscript:@"DeviceIdentifier"];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D49E78]) initWithDeviceIdentifier:v5 generation:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  return v7;
}

- (void)setLastReadGeneration:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmark *)self lastReadGeneration];
  v6 = WBSIsEqual();

  if ((v6 & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__WebBookmark_setLastReadGeneration___block_invoke;
    v7[3] = &unk_279E75DA0;
    v8 = v4;
    [(WebBookmark *)self _updateExtraAttributeValuesUsingBlock:v7];
  }
}

uint64_t __37__WebBookmark_setLastReadGeneration___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "generation")}];
  [v5 setObject:v6 forKeyedSubscript:@"ReadStatusGeneration"];

  v7 = [*(a1 + 32) deviceIdentifier];
  [v5 setObject:v7 forKeyedSubscript:@"DeviceIdentifier"];

  return 1;
}

- (void)markAsRead
{
  v5 = [(WBSCRDTField *)self->_labelField generation];
  v3 = [(WebBookmark *)self lastReadGeneration];
  v4 = WBSIsEqual();

  if ((v4 & 1) == 0)
  {
    [(WebBookmark *)self setLastReadGeneration:v5];
    [(WebBookmark *)self markAttributesAsModified:0x20000];
  }
}

- (WebBookmark)initWithBookmark:(id)a3
{
  v4 = a3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(objc_opt_class()) _initForCopy];
  *(v4 + 16) = self->_folder;
  v5 = [(NSString *)self->_UUID copy];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  v7 = [(NSString *)self->_serverID copy];
  v8 = *(v4 + 32);
  *(v4 + 32) = v7;

  v9 = [(NSString *)self->_syncKey copy];
  v10 = *(v4 + 40);
  *(v4 + 40) = v9;

  v11 = [(NSData *)self->_syncData copy];
  v12 = *(v4 + 48);
  *(v4 + 48) = v11;

  *(v4 + 64) = self->_editable;
  *(v4 + 65) = self->_deletable;
  *(v4 + 66) = self->_hidden;
  *(v4 + 67) = self->_syncable;
  *(v4 + 69) = self->_fetchedIconData;
  *(v4 + 80) = self->_addedLocally;
  *(v4 + 88) = self->_archiveStatus;
  *(v4 + 96) = self->_webFilterStatus;
  v13 = [(NSDictionary *)self->_extraAttributes copy];
  v14 = *(v4 + 104);
  *(v4 + 104) = v13;

  v15 = [(NSDictionary *)self->_localAttributes copy];
  v16 = *(v4 + 112);
  *(v4 + 112) = v15;

  *(v4 + 120) = self->_id;
  *(v4 + 124) = self->_specialID;
  *(v4 + 128) = self->_orderIndex;
  *(v4 + 152) = self->_inserted;
  *(v4 + 153) = self->_loadedFromDatabase;
  *(v4 + 154) = self->_needsSyncUpdate;
  *(v4 + 160) = self->_modifiedAttributes;
  *(v4 + 168) = self->_usedForInMemoryChangeTracking;
  v17 = [(NSString *)self->_deviceIdentifier copy];
  v18 = *(v4 + 312);
  *(v4 + 312) = v17;

  *(v4 + 144) = self->_collectionType;
  v19 = [(WebBookmark *)self wbSyncData];
  v20 = [v19 readOnlyProxy];
  v21 = *(v4 + 56);
  *(v4 + 56) = v20;

  v22 = [(WBSCRDTField *)self->_backgroundImageModifiedField copyWithValueSource:v4];
  v23 = *(v4 + 176);
  *(v4 + 176) = v22;

  v24 = [(WBSCRDTField *)self->_dateAddedField copyWithValueSource:v4];
  v25 = *(v4 + 184);
  *(v4 + 184) = v24;

  v26 = [(WBSCRDTField *)self->_dateLastViewedField copyWithValueSource:v4];
  v27 = *(v4 + 192);
  *(v4 + 192) = v26;

  v28 = [(WBSCRDTField *)self->_iconURLField copyWithValueSource:v4];
  v29 = *(v4 + 200);
  *(v4 + 200) = v28;

  v30 = [(WBSCRDTField *)self->_isSelectedFavoritesFolderField copyWithValueSource:v4];
  v31 = *(v4 + 208);
  *(v4 + 208) = v30;

  v32 = [(WBSCRDTField *)self->_labelField copy];
  v33 = *(v4 + 216);
  *(v4 + 216) = v32;

  v34 = [(WBSCRDTField *)self->_lastSelectedChildField copy];
  v35 = *(v4 + 224);
  *(v4 + 224) = v34;

  v36 = [(WBSCRDTField *)self->_locationField copy];
  v37 = *(v4 + 232);
  *(v4 + 232) = v36;

  v38 = [(WBSCRDTField *)self->_minimumSyncAPIVersionField copy];
  v39 = *(v4 + 240);
  *(v4 + 240) = v38;

  v40 = [(WBSCRDTField *)self->_previewTextField copyWithValueSource:v4];
  v41 = *(v4 + 248);
  *(v4 + 248) = v40;

  v42 = [(WBSCRDTField *)self->_syncStateField copy];
  v43 = *(v4 + 256);
  *(v4 + 256) = v42;

  v44 = [(WBSCRDTField *)self->_symbolImageNameField copyWithValueSource:v4];
  v45 = *(v4 + 264);
  *(v4 + 264) = v44;

  v46 = [(WBSCRDTField *)self->_customFavoritesFolderServerIDField copyWithValueSource:v4];
  v47 = *(v4 + 272);
  *(v4 + 272) = v46;

  v48 = [(WBSCRDTField *)self->_startPageSectionsDataField copyWithValueSource:v4];
  v49 = *(v4 + 280);
  *(v4 + 280) = v48;

  v50 = [(WBSCRDTField *)self->_showIconOnlyField copyWithValueSource:v4];
  v51 = *(v4 + 288);
  *(v4 + 288) = v50;

  v52 = [(WBSCRDTField *)self->_tabDateLastViewedField copyWithValueSource:v4];
  v53 = *(v4 + 296);
  *(v4 + 296) = v52;

  v54 = [v4 fields];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v55 = [v54 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v63;
    do
    {
      v58 = 0;
      do
      {
        if (*v63 != v57)
        {
          objc_enumerationMutation(v54);
        }

        [*(*(&v62 + 1) + 8 * v58++) setShouldIncrementGeneration:1];
      }

      while (v56 != v58);
      v56 = [v54 countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v56);
  }

  v59 = [v19 shareRecord];
  *(v4 + 68) = v59 != 0;

  *(v4 + 136) = self->_subtype;
  v60 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setDeviceIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__WebBookmark_setDeviceIdentifier___block_invoke;
  v6[3] = &unk_279E753F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __35__WebBookmark_setDeviceIdentifier___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 312);
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [*(a1 + 32) copy];
    v5 = *(a1 + 40);
    v6 = *(v5 + 312);
    *(v5 + 312) = v4;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [*(a1 + 40) fields];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) setDeviceIdentifier:*(a1 + 32)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)fieldForAttribute:(unint64_t)a3
{
  if (a3)
  {
    v3 = [(WebBookmark *)self _fieldsForAttributes:?];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)getReadOnlyCachedBookmarkSyncDataUsingBlock:(id)a3
{
  v5 = a3;
  v6 = [(WebBookmark *)self wbSyncData];
  (*(a3 + 2))(v5, v6);
}

- (void)updateGenerationsInSyncData:(id)a3 forAttributes:(unint64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__WebBookmark_updateGenerationsInSyncData_forAttributes___block_invoke;
  v8[3] = &unk_279E75DC8;
  v9 = v6;
  v10 = a4;
  v8[4] = self;
  v7 = v6;
  [(WebBookmark *)self performWithFieldsWriteLock:v8];
}

void __57__WebBookmark_updateGenerationsInSyncData_forAttributes___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) _fieldsForAttributes:{*(a1 + 48), 0}];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 generation];
        v10 = [*(a1 + 32) generationKeyForField:v7];
        [v8 setGeneration:v9 forKey:v10];

        [v7 setShouldIncrementGeneration:1];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)_mergeFields:(id)a3 withFields:(id)a4 forBookmark:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__WebBookmark__mergeFields_withFields_forBookmark___block_invoke;
  v17[3] = &unk_279E75E18;
  v11 = v8;
  v18 = v11;
  v12 = v9;
  v19 = v12;
  v22 = &v24;
  v23 = &v28;
  v13 = v10;
  v20 = v13;
  v21 = self;
  [(WebBookmark *)self performWithFieldsWriteLock:v17];
  v14 = v25[3];
  if (!v29[3])
  {
    if (v14)
    {
      v15 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v15 = 2;
    goto LABEL_7;
  }

  if (v14)
  {
    goto LABEL_6;
  }

  v15 = 0;
LABEL_7:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v15;
}

void __51__WebBookmark__mergeFields_withFields_forBookmark___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __51__WebBookmark__mergeFields_withFields_forBookmark___block_invoke_2;
  v9 = &unk_279E75DF0;
  v12 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10 = v4;
  v11 = v5;
  [v2 safari_enumerateZippedValuesWithArray:v3 withBlock:&v6];
  *(*(a1 + 56) + 154) = *(*(a1 + 56) + 160) != 0;
  [*(a1 + 48) setNeedsSyncUpdate:{objc_msgSend(*(a1 + 48), "modifiedAttributes", v6, v7, v8, v9) != 0}];
}

uint64_t __51__WebBookmark__mergeFields_withFields_forBookmark___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 mergeWithField:a3];
  if (v6 == -1)
  {
    v7 = 48;
  }

  else
  {
    if (v6 != 1)
    {
      goto LABEL_6;
    }

    v7 = 56;
  }

  ++*(*(*(a1 + v7) + 8) + 24);
LABEL_6:
  v8 = 40;
  if (v6 == -1)
  {
    v8 = 32;
  }

  v9 = *(*(a1 + v8) + 160);
  v10 = [*(a1 + 40) _attributesForField:v5];

  *(*(a1 + 40) + 160) = *(*(a1 + 40) + 160) & ~v10 | v10 & v9;
  v11 = [*(a1 + 32) modifiedAttributes] & ~v10;
  v12 = *(a1 + 32);

  return [v12 setModifiedAttributes:v11 | v10 & v9];
}

- (void)mergeWithBookmark:(id)a3
{
  v4 = a3;
  v6 = [(WebBookmark *)self fields];
  v5 = [v4 fields];
  [(WebBookmark *)self _mergeFields:v6 withFields:v5 forBookmark:v4];
}

- (int64_t)mergeAttributes:(unint64_t)a3 withBookmark:(id)a4
{
  v6 = a4;
  v7 = [(WebBookmark *)self _fieldsForAttributes:a3];
  v8 = [v6 _fieldsForAttributes:a3];
  v9 = [(WebBookmark *)self _mergeFields:v7 withFields:v8 forBookmark:v6];

  return v9;
}

- (void)clearModifiedAttributes
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__WebBookmark_clearModifiedAttributes__block_invoke;
  v2[3] = &unk_279E751F0;
  v2[4] = self;
  [(WebBookmark *)self performWithFieldsWriteLock:v2];
}

uint64_t __38__WebBookmark_clearModifiedAttributes__block_invoke(uint64_t result)
{
  *(*(result + 32) + 160) = 0;
  *(*(result + 32) + 154) = 0;
  return result;
}

- (BOOL)attributesMarkedAsModified:(unint64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  LOBYTE(a3) = (a3 & ~self->_modifiedAttributes) == 0;
  os_unfair_recursive_lock_unlock();
  return a3;
}

- (void)performWithFieldsWriteLock:(id)a3
{
  v3 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v3[2](v3);

  os_unfair_recursive_lock_unlock();
}

+ (NSDictionary)modifiedAttributesToFieldNames
{
  if (modifiedAttributesToFieldNames_onceToken != -1)
  {
    +[WebBookmark(Internal) modifiedAttributesToFieldNames];
  }

  v3 = modifiedAttributesToFieldNames_modifiedAttributesToFieldNames;

  return v3;
}

void __55__WebBookmark_Internal__modifiedAttributesToFieldNames__block_invoke()
{
  v4[15] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_288269520;
  v3[1] = &unk_288269538;
  v4[0] = @"Title";
  v4[1] = @"URL";
  v3[2] = &unk_288269550;
  v3[3] = &unk_288269568;
  v4[2] = @"Position";
  v4[3] = @"DateLastViewed";
  v3[4] = &unk_288269580;
  v3[5] = &unk_288269598;
  v4[4] = @"DateAdded";
  v4[5] = @"IsSelectedFavoritesFolder";
  v3[6] = &unk_2882695B0;
  v3[7] = &unk_2882695C8;
  v4[6] = @"ParentFolder";
  v4[7] = @"ImageURL";
  v3[8] = &unk_2882695E0;
  v3[9] = &unk_2882695F8;
  v4[8] = @"PreviewText";
  v4[9] = @"LastSelectedTab";
  v3[10] = &unk_288269610;
  v3[11] = &unk_288269628;
  v4[10] = @"SymbolImageName";
  v4[11] = @"CustomFavoritesFolderServerID";
  v3[12] = &unk_288269640;
  v3[13] = &unk_288269658;
  v4[12] = @"BackgroundImage";
  v4[13] = @"CustomStartPageSectionsData";
  v3[14] = &unk_288269670;
  v4[14] = @"ShowIconOnly";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:15];
  v1 = modifiedAttributesToFieldNames_modifiedAttributesToFieldNames;
  modifiedAttributesToFieldNames_modifiedAttributesToFieldNames = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)_allowedSiteBookmarkWithTitle:(id)a3 address:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 address:v6 collectionType:0];

  v8[65] = 0;
  v8[64] = 0;
  v8[80] = 1;
  v8[154] = 0;

  return v8;
}

- (WebBookmark)initWithSQLiteStatement:(sqlite3_stmt *)a3 deviceIdentifier:(id)a4 hasIcon:(BOOL)a5 collectionType:(int64_t)a6 skipDecodingSyncData:(BOOL)a7
{
  v9 = a5;
  v12 = a4;
  v52.receiver = self;
  v52.super_class = WebBookmark;
  v13 = [(WebBookmark *)&v52 init];
  v14 = v13;
  if (v13)
  {
    v47 = a7;
    [(WebBookmark *)v13 setDeviceIdentifier:v12];
    v14->_folder = sqlite3_column_int(a3, 0) != 0;
    v49 = WBUTF8StringFromSQLStatement(a3, 1);
    v48 = WBUTF8StringFromSQLStatement(a3, 2);
    v14->_id = sqlite3_column_int(a3, 3);
    v14->_editable = sqlite3_column_int(a3, 4) != 0;
    v14->_deletable = sqlite3_column_int(a3, 5) != 0;
    v14->_hidden = sqlite3_column_int(a3, 6) != 0;
    v46 = sqlite3_column_int(a3, 7);
    v14->_orderIndex = sqlite3_column_int(a3, 8);
    v15 = WBUTF8StringFromSQLStatement(a3, 9);
    UUID = v14->_UUID;
    v14->_UUID = v15;

    v14->_specialID = sqlite3_column_int(a3, 10);
    v14->_inserted = 1;
    v14->_loadedFromDatabase = 1;
    v14->_collectionType = a6;
    v17 = newStringFromNullableColumn(a3, 11);
    serverID = v14->_serverID;
    v14->_serverID = v17;

    v19 = newStringFromNullableColumn(a3, 12);
    syncKey = v14->_syncKey;
    v14->_syncKey = v19;

    v21 = WBDataFromNullableColumn(a3, 13);
    syncData = v14->_syncData;
    v14->_syncData = v21;

    v23 = WBDataFromNullableColumn(a3, 14);
    if (v23)
    {
      v51 = 0;
      v24 = [MEMORY[0x277CCAC58] propertyListWithData:v23 options:0 format:0 error:&v51];
      v25 = v51;
      [(WebBookmark *)v14 setExtraAttributes:v24];

      v26 = [(WebBookmark *)v14 extraAttributes];

      if (!v26)
      {
        v27 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [WebBookmark(Internal) initWithSQLiteStatement:v27 deviceIdentifier:v25 hasIcon:? collectionType:? skipDecodingSyncData:?];
        }
      }
    }

    else
    {
      v25 = 0;
    }

    v28 = WBDataFromNullableColumn(a3, 15);
    if (v28)
    {
      v50 = 0;
      v29 = [MEMORY[0x277CCAC58] propertyListWithData:v28 options:0 format:0 error:&v50];
      v30 = v50;

      [(WebBookmark *)v14 setLocalAttributes:v29];
      v31 = [(WebBookmark *)v14 localAttributes];

      if (!v31)
      {
        v32 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [WebBookmark(Internal) initWithSQLiteStatement:v32 deviceIdentifier:v30 hasIcon:? collectionType:? skipDecodingSyncData:?];
        }
      }
    }

    else
    {
      v30 = v25;
    }

    v14->_fetchedIconData = sqlite3_column_int(a3, 16) != 0;
    if (v9)
    {
      v33 = WBDataFromNullableColumn(a3, 17);
      iconData = v14->_iconData;
      v14->_iconData = v33;

      v35 = 18;
    }

    else
    {
      v35 = 17;
    }

    v14->_addedLocally = sqlite3_column_int(a3, v35) != 0;
    v14->_archiveStatus = sqlite3_column_int(a3, v35 + 1);
    v14->_syncable = sqlite3_column_int(a3, v35 + 2) != 0;
    v14->_webFilterStatus = sqlite3_column_int(a3, v35 + 3);
    v14->_modifiedAttributes = sqlite3_column_int64(a3, v35 | 4u);
    v36 = sqlite3_column_int(a3, v35 + 5);
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0x7FFFFFFFLL;
    }

    v38 = [[WBBookmarkLabel alloc] initWithTitle:v49 address:v48 pinned:[(WebBookmark *)v14 isPinned]];
    if (v47)
    {
      v39 = 0;
    }

    else
    {
      v39 = [(WebBookmark *)v14 wbSyncData];
    }

    v40 = [v39 shareRecord];
    v14->_hasShareRecord = v40 != 0;

    v14->_subtype = sqlite3_column_int(a3, v35 + 6);
    v41 = [WBBookmarkLocation alloc];
    v42 = [v39 position];
    v43 = [(WBBookmarkLocation *)v41 initWithParentID:v46 position:v42];

    [(WebBookmark *)v14 _setUpFieldsWithLabel:v38 lastSelectedChild:v37 location:v43 syncData:v39];
    v44 = v14;
  }

  return v14;
}

- (WebBookmark)initWithDictionaryRepresentationForInMemoryChangeTracking:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = WebBookmark;
  v5 = [(WebBookmark *)&v41 init];
  if (v5 && (v40 = 0, [v4 wb_numberForKey:@"IsFolder" isValid:&v40], v6 = objc_claimAutoreleasedReturnValue(), v5->_folder = objc_msgSend(v6, "BOOLValue"), v6, v40 == 1))
  {
    v7 = [v4 wb_stringForKey:@"Title" isValid:&v40];
    v8 = [v7 copy];

    if (v40 == 1)
    {
      v9 = [v4 wb_stringForKey:@"URL" isValid:&v40];
      v10 = [v9 copy];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v11 = [v4 wb_stringForKey:@"UUID" isValid:&v40];
      v12 = [v11 copy];
      UUID = v5->_UUID;
      v5->_UUID = v12;

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v14 = [v4 wb_numberForKey:@"IsEditable" isValid:&v40];
      v5->_editable = [v14 BOOLValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v15 = [v4 wb_numberForKey:@"IsDeletable" isValid:&v40];
      v5->_deletable = [v15 BOOLValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v16 = [v4 wb_numberForKey:@"IsHidden" isValid:&v40];
      v5->_hidden = [v16 BOOLValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v17 = [v4 wb_numberForKey:@"IsSyncable" isValid:&v40];
      v5->_syncable = [v17 BOOLValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v18 = [v4 wb_numberForKey:@"IsLocallyAdded" isValid:&v40];
      v5->_addedLocally = [v18 BOOLValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v19 = [v4 wb_numberForKey:@"BookmarkID" isValid:&v40];
      v5->_id = [v19 intValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v20 = [v4 wb_numberForKey:@"ParentID" isValid:&v40];
      v21 = [v20 intValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v22 = [v4 wb_numberForKey:@"SpecialID" isValid:&v40];
      v5->_specialID = [v22 intValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v23 = [v4 wb_numberForKey:@"OrderIndex" isValid:&v40];
      v5->_orderIndex = [v23 unsignedIntValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v24 = [v4 wb_numberForKey:@"IsInserted" isValid:&v40];
      v5->_inserted = [v24 BOOLValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v25 = [v4 wb_numberForKey:@"WasLoadedFromDatabase" isValid:&v40];
      v5->_loadedFromDatabase = [v25 BOOLValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v26 = [v4 wb_numberForKey:@"NeedsSyncUpdate" isValid:&v40];
      v5->_needsSyncUpdate = [v26 BOOLValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v27 = [v4 wb_numberForKey:@"UsedForInMemoryChangeTracking" isValid:&v40];
      v5->_usedForInMemoryChangeTracking = [v27 BOOLValue];

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v28 = [v4 wb_dictionaryForKey:@"LocalAttributes" isValid:&v40];
      localAttributes = v5->_localAttributes;
      v5->_localAttributes = v28;

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v30 = [v4 wb_dictionaryForKey:@"ExtraAttributes" isValid:&v40];
      extraAttributes = v5->_extraAttributes;
      v5->_extraAttributes = v30;

      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v32 = [v4 wb_numberForKey:@"LastSelectedChildID" isValid:&v40];
      v33 = [v32 intValue];

      if (v40 == 1)
      {
        v34 = [[WBBookmarkLabel alloc] initWithTitle:v8 address:v10 pinned:[(WebBookmark *)v5 isPinned]];
        v35 = [[WBBookmarkLocation alloc] initWithParentID:v21 position:0];
        [(WebBookmark *)v5 _setUpFieldsWithLabel:v34 lastSelectedChild:v33 location:v35 syncData:0];
        v36 = [v4 wb_numberForKey:@"Subtype" isValid:&v40];
        v5->_subtype = [v36 intValue];

        if (v40 == 1 && ([v4 wb_numberForKey:@"CollectionType" isValid:&v40], v37 = objc_claimAutoreleasedReturnValue(), v5->_collectionType = objc_msgSend(v37, "integerValue"), v37, v40 == 1))
        {
          v38 = v5;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
LABEL_27:
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (WebBookmark)initWithCoder:(id)a3
{
  v57[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v54.receiver = self;
  v54.super_class = WebBookmark;
  v5 = [(WebBookmark *)&v54 init];
  if (v5)
  {
    v5->_folder = [v4 decodeBoolForKey:@"IsFolder"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerID"];
    serverID = v5->_serverID;
    v5->_serverID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Sync"];
    syncKey = v5->_syncKey;
    v5->_syncKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SyncData"];
    syncData = v5->_syncData;
    v5->_syncData = v12;

    v5->_editable = [v4 decodeBoolForKey:@"IsEditable"];
    v5->_deletable = [v4 decodeBoolForKey:@"IsDeletable"];
    v5->_hidden = [v4 decodeBoolForKey:@"IsHidden"];
    v5->_syncable = [v4 decodeBoolForKey:@"IsSyncable"];
    v5->_fetchedIconData = [v4 decodeBoolForKey:@"FetchedIconData"];
    v5->_addedLocally = [v4 decodeBoolForKey:@"IsLocallyAdded"];
    v5->_archiveStatus = [v4 decodeIntegerForKey:@"ArchiveStatus"];
    v5->_webFilterStatus = [v4 decodeIntegerForKey:@"WebFilterStatus"];
    v14 = objc_alloc(MEMORY[0x277CBEB98]);
    v57[0] = objc_opt_class();
    v57[1] = objc_opt_class();
    v57[2] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
    v16 = [v14 initWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"ExtraAttributes"];
    extraAttributes = v5->_extraAttributes;
    v5->_extraAttributes = v17;

    v19 = objc_alloc(MEMORY[0x277CBEB98]);
    v56[0] = objc_opt_class();
    v56[1] = objc_opt_class();
    v56[2] = objc_opt_class();
    v56[3] = objc_opt_class();
    v56[4] = objc_opt_class();
    v56[5] = objc_opt_class();
    v56[6] = objc_opt_class();
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:7];
    v21 = [v19 initWithArray:v20];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"LocalAttributes"];
    localAttributes = v5->_localAttributes;
    v5->_localAttributes = v22;

    v5->_id = [v4 decodeInt32ForKey:@"BookmarkID"];
    v5->_specialID = [v4 decodeInt32ForKey:@"SpecialID"];
    v5->_orderIndex = [v4 decodeInt32ForKey:@"OrderIndex"];
    v5->_inserted = [v4 decodeBoolForKey:@"IsInserted"];
    v5->_loadedFromDatabase = [v4 decodeBoolForKey:@"WasLoadedFromDatabase"];
    v5->_needsSyncUpdate = [v4 decodeBoolForKey:@"NeedsSyncUpdate"];
    v5->_modifiedAttributes = [v4 decodeInt64ForKey:@"ModifiedAttributes"];
    v5->_usedForInMemoryChangeTracking = [v4 decodeBoolForKey:@"UsedForInMemoryChangeTracking"];
    v5->_collectionType = [v4 decodeIntegerForKey:@"CollectionType"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentifier"];
    [(WebBookmark *)v5 setDeviceIdentifier:v24];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    v49 = v25;
    v26 = [[WBBookmarkLabel alloc] initWithTitle:v25 address:v48 pinned:[(WebBookmark *)v5 isPinned]];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastSelectedChildID"];
    v28 = [v4 decodeInt32ForKey:@"ParentID"];
    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SyncPosition"];
    v29 = [[WBBookmarkLocation alloc] initWithParentID:v28 position:v45];
    [(WebBookmark *)v5 wbSyncData];
    v46 = v27;
    v43 = v47 = v26;
    v44 = v29;
    -[WebBookmark _setUpFieldsWithLabel:lastSelectedChild:location:syncData:](v5, "_setUpFieldsWithLabel:lastSelectedChild:location:syncData:", v26, [v27 intValue], v29, v43);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v30 = [(WebBookmark *)v5 fields];
    v31 = [v30 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v51;
      do
      {
        v34 = 0;
        do
        {
          if (*v51 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v50 + 1) + 8 * v34);
          v36 = objc_opt_class();
          v37 = [(WebBookmark *)v5 generationKeyForField:v35];
          v38 = [v4 decodeObjectOfClass:v36 forKey:v37];
          [v35 setGeneration:v38];

          ++v34;
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v32);
    }

    v39 = [v43 shareRecord];
    v5->_hasShareRecord = v39 != 0;

    v5->_subtype = [v4 decodeIntegerForKey:@"Subtype"];
    v40 = v5;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 encodeBool:self->_folder forKey:@"IsFolder"];
  [v4 encodeObject:self->_UUID forKey:@"UUID"];
  [v4 encodeObject:self->_serverID forKey:@"ServerID"];
  [v4 encodeObject:self->_syncKey forKey:@"Sync"];
  [v4 encodeObject:self->_syncData forKey:@"SyncData"];
  [v4 encodeBool:self->_editable forKey:@"IsEditable"];
  [v4 encodeBool:self->_deletable forKey:@"IsDeletable"];
  [v4 encodeBool:self->_hidden forKey:@"IsHidden"];
  [v4 encodeBool:self->_syncable forKey:@"IsSyncable"];
  [v4 encodeBool:self->_fetchedIconData forKey:@"FetchedIconData"];
  [v4 encodeBool:self->_addedLocally forKey:@"IsLocallyAdded"];
  [v4 encodeInteger:self->_archiveStatus forKey:@"ArchiveStatus"];
  [v4 encodeInteger:self->_webFilterStatus forKey:@"WebFilterStatus"];
  [v4 encodeObject:self->_extraAttributes forKey:@"ExtraAttributes"];
  [v4 encodeObject:self->_localAttributes forKey:@"LocalAttributes"];
  [v4 encodeInt32:self->_id forKey:@"BookmarkID"];
  [v4 encodeInt32:self->_specialID forKey:@"SpecialID"];
  [v4 encodeBool:self->_inserted forKey:@"IsInserted"];
  [v4 encodeBool:-[WebBookmark wasLoadedFromDatabase](self forKey:{"wasLoadedFromDatabase"), @"WasLoadedFromDatabase"}];
  [v4 encodeBool:self->_needsSyncUpdate forKey:@"NeedsSyncUpdate"];
  [v4 encodeInt64:self->_modifiedAttributes forKey:@"ModifiedAttributes"];
  [v4 encodeBool:self->_usedForInMemoryChangeTracking forKey:@"UsedForInMemoryChangeTracking"];
  [v4 encodeInteger:self->_subtype forKey:@"Subtype"];
  [v4 encodeInteger:self->_collectionType forKey:@"CollectionType"];
  v5 = [(WebBookmark *)self deviceIdentifier];
  [v4 encodeObject:v5 forKey:@"DeviceIdentifier"];

  v6 = [(WebBookmark *)self title];
  [v4 encodeObject:v6 forKey:@"Title"];

  v7 = [(WebBookmark *)self address];
  [v4 encodeObject:v7 forKey:@"URL"];

  v8 = [(WBSCRDTField *)self->_lastSelectedChildField value];
  [v4 encodeObject:v8 forKey:@"LastSelectedChildID"];

  [v4 encodeInt32:-[WebBookmark parentID](self forKey:{"parentID"), @"ParentID"}];
  [v4 encodeInt32:self->_orderIndex forKey:@"OrderIndex"];
  v9 = [(WebBookmark *)self syncPosition];
  [v4 encodeObject:v9 forKey:@"SyncPosition"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(WebBookmark *)self fields];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v15 generation];
        v17 = [(WebBookmark *)self generationKeyForField:v15];
        [v4 encodeObject:v16 forKey:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)dictionaryRepresentationForInMemoryChangeTracking
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_folder];
  [v3 setObject:v4 forKeyedSubscript:@"IsFolder"];

  v5 = [(WebBookmark *)self title];
  v6 = [v5 copy];
  [v3 setObject:v6 forKeyedSubscript:@"Title"];

  v7 = [(WebBookmark *)self address];
  v8 = [v7 copy];
  [v3 setObject:v8 forKeyedSubscript:@"URL"];

  v9 = [(NSString *)self->_UUID copy];
  [v3 setObject:v9 forKeyedSubscript:@"UUID"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_editable];
  [v3 setObject:v10 forKeyedSubscript:@"IsEditable"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_deletable];
  [v3 setObject:v11 forKeyedSubscript:@"IsDeletable"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidden];
  [v3 setObject:v12 forKeyedSubscript:@"IsHidden"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_syncable];
  [v3 setObject:v13 forKeyedSubscript:@"IsSyncable"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_addedLocally];
  [v3 setObject:v14 forKeyedSubscript:@"IsLocallyAdded"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_id];
  [v3 setObject:v15 forKeyedSubscript:@"BookmarkID"];

  v16 = [MEMORY[0x277CCABB0] numberWithInt:{-[WebBookmark parentID](self, "parentID")}];
  [v3 setObject:v16 forKeyedSubscript:@"ParentID"];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_specialID];
  [v3 setObject:v17 forKeyedSubscript:@"SpecialID"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[WebBookmark orderIndex](self, "orderIndex")}];
  [v3 setObject:v18 forKeyedSubscript:@"OrderIndex"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_inserted];
  [v3 setObject:v19 forKeyedSubscript:@"IsInserted"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[WebBookmark wasLoadedFromDatabase](self, "wasLoadedFromDatabase")}];
  [v3 setObject:v20 forKeyedSubscript:@"WasLoadedFromDatabase"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_needsSyncUpdate];
  [v3 setObject:v21 forKeyedSubscript:@"NeedsSyncUpdate"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_usedForInMemoryChangeTracking];
  [v3 setObject:v22 forKeyedSubscript:@"UsedForInMemoryChangeTracking"];

  [v3 setObject:self->_localAttributes forKeyedSubscript:@"LocalAttributes"];
  [v3 setObject:self->_extraAttributes forKeyedSubscript:@"ExtraAttributes"];
  v23 = [(WBSCRDTField *)self->_lastSelectedChildField value];
  [v3 setObject:v23 forKeyedSubscript:@"LastSelectedChildID"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:self->_collectionType];
  [v3 setObject:v24 forKeyedSubscript:@"CollectionType"];

  v25 = [MEMORY[0x277CCABB0] numberWithInteger:self->_subtype];
  [v3 setObject:v25 forKeyedSubscript:@"Subtype"];

  return v3;
}

- (void)_setOrderIndex:(unsigned int)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__WebBookmark_Internal___setOrderIndex___block_invoke;
  v3[3] = &unk_279E75D28;
  v4 = a3;
  v3[4] = self;
  [(WebBookmark *)self performWithFieldsWriteLock:v3];
}

uint64_t __40__WebBookmark_Internal___setOrderIndex___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 128))
  {
    *(v2 + 128) = v1;
    *(*(result + 32) + 154) = 1;
    return [*(result + 32) markAttributesAsModified:4];
  }

  return result;
}

- (void)_setParentID:(int)a3 incrementGeneration:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__WebBookmark_Internal___setParentID_incrementGeneration___block_invoke;
  v4[3] = &unk_279E76F50;
  v5 = a3;
  v4[4] = self;
  v6 = a4;
  [(WebBookmark *)self performWithFieldsWriteLock:v4];
}

void __58__WebBookmark_Internal___setParentID_incrementGeneration___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v3 != 0x7FFFFFFF && v3 == v4[30])
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__WebBookmark_Internal___setParentID_incrementGeneration___block_invoke_cold_1(v2, v6);
    }

    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
  }

  if (v3 != [v4 parentID])
  {
    v7 = [*(*(a1 + 32) + 232) value];
    v8 = [v7 locationWithParentID:*(a1 + 40)];

    [*(*(a1 + 32) + 232) setValue:v8 incrementGenerationIfNeeded:*(a1 + 44)];
    *(*(a1 + 32) + 154) = 1;
    [*(a1 + 32) markAttributesAsModified:64];
  }
}

- (void)_setID:(int)a3
{
  v5 = [(WebBookmark *)self parentID];
  if (a3 != 0x7FFFFFFF && v5 == a3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WebBookmark(Internal) *)a3 _setID:v6];
    }
  }

  os_unfair_recursive_lock_lock_with_options();
  self->_id = a3;
  os_unfair_recursive_lock_unlock();
}

- (void)_setUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__WebBookmark_Internal___setUUID___block_invoke;
  v6[3] = &unk_279E753F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __34__WebBookmark_Internal___setUUID___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 24) isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = (*(a1 + 32) + 24);

    objc_storeStrong(v3, v2);
  }
}

- (void)_setServerID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__WebBookmark_Internal___setServerID___block_invoke;
  v6[3] = &unk_279E753F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

- (void)_setInserted:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__WebBookmark_Internal___setInserted___block_invoke;
  v3[3] = &unk_279E75AB0;
  v3[4] = self;
  v4 = a3;
  [(WebBookmark *)self performWithFieldsWriteLock:v3];
}

- (void)_setHidden:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__WebBookmark_Internal___setHidden___block_invoke;
  v3[3] = &unk_279E75AB0;
  v3[4] = self;
  v4 = a3;
  [(WebBookmark *)self performWithFieldsWriteLock:v3];
}

- (void)_setSyncable:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__WebBookmark_Internal___setSyncable___block_invoke;
  v3[3] = &unk_279E75AB0;
  v3[4] = self;
  v4 = a3;
  [(WebBookmark *)self performWithFieldsWriteLock:v3];
}

- (BOOL)_usedForInMemoryChangeTracking
{
  os_unfair_recursive_lock_lock_with_options();
  usedForInMemoryChangeTracking = self->_usedForInMemoryChangeTracking;
  os_unfair_recursive_lock_unlock();
  return usedForInMemoryChangeTracking;
}

- (void)_setUsedForInMemoryChangeTracking:(BOOL)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_usedForInMemoryChangeTracking = a3;

  os_unfair_recursive_lock_unlock();
}

- (void)setSyncKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__WebBookmark_Internal__setSyncKey___block_invoke;
  v6[3] = &unk_279E753F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

uint64_t __36__WebBookmark_Internal__setSyncKey___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (NSString)syncKey
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_syncKey;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setSyncData:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__WebBookmark_Internal__setSyncData___block_invoke;
  v6[3] = &unk_279E753F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __37__WebBookmark_Internal__setSyncData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 48);
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [*(a1 + 32) copy];
    v5 = *(a1 + 40);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    v7 = *(a1 + 40);
    v8 = *(v7 + 56);
    *(v7 + 56) = 0;
  }
}

- (NSData)syncData
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_syncData;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_setSyncData:(id)a3 cachedWBSyncData:(id)a4
{
  v6 = a4;
  [(WebBookmark *)self setSyncData:a3];
  os_unfair_recursive_lock_lock_with_options();
  v7 = [v6 readOnlyProxy];

  cachedWBSyncData = self->_cachedWBSyncData;
  self->_cachedWBSyncData = v7;

  os_unfair_recursive_lock_unlock();
}

- (void)setSubtype:(int64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_subtype = a3;

  os_unfair_recursive_lock_unlock();
}

- (void)_updateExtraAttributeValuesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__WebBookmark_Internal___updateExtraAttributeValuesUsingBlock___block_invoke;
  v6[3] = &unk_279E75530;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

void __63__WebBookmark_Internal___updateExtraAttributeValuesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) mutableCopy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v4;

  if ((*(*(a1 + 40) + 16))())
  {
    v5 = [v8 copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 104);
    *(v6 + 104) = v5;
  }
}

id __58__WebBookmark_Internal__isSelectedFavoritesFolderProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_recursive_lock_lock_with_options();
  v3 = [v2[13] objectForKeyedSubscript:@"com.apple.bookmarks.SelectedFavoritesFolder"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

id __45__WebBookmark_Internal__showIconOnlyProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_recursive_lock_lock_with_options();
  v3 = [v2[13] objectForKeyedSubscript:@"ShowIconOnly"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

id __50__WebBookmark_Internal__tabDateLastViewedProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_recursive_lock_lock_with_options();
  v3 = [v2[13] objectForKeyedSubscript:@"DateLastViewed"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

id __61__WebBookmark_Internal__backgroundImageModifiedStateProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_recursive_lock_lock_with_options();
  v3 = [v2[13] objectForKeyedSubscript:@"BackgroundImageModifiedState"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

id __60__WebBookmark_Internal__customStartPageSectionsDataProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_recursive_lock_lock_with_options();
  v3 = [v2[13] objectForKeyedSubscript:@"StartPageSectionsData"];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)_fieldWithValue:(id)a3 generationKey:(id)a4 modifiedAttributes:(unint64_t)a5 syncData:(id)a6
{
  v10 = MEMORY[0x277D49E70];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = [v11 generationForKey:v12];

  v16 = [(WebBookmark *)self deviceIdentifier];
  v17 = [v14 initWithValue:v13 generation:v15 deviceIdentifier:v16];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  [v17 setObject:v18 forKeyedSubscript:@"Attributes"];

  [v17 setObject:v12 forKeyedSubscript:@"GenerationKey"];

  return v17;
}

- (id)_fieldWithValueProvider:(id)a3 valueUpdater:(id)a4 generationKey:(id)a5 modifiedAttributes:(unint64_t)a6 syncData:(id)a7
{
  v12 = MEMORY[0x277D49E70];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 alloc];
  v18 = [v13 generationForKey:v14];

  v19 = [(WebBookmark *)self deviceIdentifier];
  v20 = [v17 initWithValueSource:self valueProvider:v16 valueUpdater:v15 generation:v18 deviceIdentifier:v19];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a6];
  [v20 setObject:v21 forKeyedSubscript:@"Attributes"];

  [v20 setObject:v14 forKeyedSubscript:@"GenerationKey"];

  return v20;
}

- (unint64_t)_attributesForField:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Attributes"];
  v4 = [v3 integerValue];

  return v4;
}

- (void)_setUpFieldsWithLabel:(id)a3 lastSelectedChild:(int)a4 location:(id)a5 syncData:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__WebBookmark_Internal___setUpFieldsWithLabel_lastSelectedChild_location_syncData___block_invoke;
  v16[3] = &unk_279E77078;
  v16[4] = self;
  v17 = v12;
  v20 = a4;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v12;
  [(WebBookmark *)self performWithFieldsWriteLock:v16];
}

void __83__WebBookmark_Internal___setUpFieldsWithLabel_lastSelectedChild_location_syncData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 backgroundImageModifiedStateProvider];
  v4 = [*(a1 + 32) backgroundImageModifiedStateUpdater];
  v5 = [v2 _fieldWithValueProvider:v3 valueUpdater:v4 generationKey:@"BackgroundImage" modifiedAttributes:0x2000 syncData:*(a1 + 40)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 176);
  *(v6 + 176) = v5;

  v8 = *(a1 + 32);
  v9 = [v8 dateAddedProvider];
  v10 = [*(a1 + 32) dateAddedUpdater];
  v11 = [v8 _fieldWithValueProvider:v9 valueUpdater:v10 generationKey:@"DateAdded" modifiedAttributes:16 syncData:*(a1 + 40)];
  v12 = *(a1 + 32);
  v13 = *(v12 + 184);
  *(v12 + 184) = v11;

  v14 = *(a1 + 32);
  v15 = [v14 dateLastViewedProvider];
  v16 = [*(a1 + 32) dateLastViewedUpdater];
  v17 = [v14 _fieldWithValueProvider:v15 valueUpdater:v16 generationKey:@"DateLastViewed" modifiedAttributes:8 syncData:*(a1 + 40)];
  v18 = *(a1 + 32);
  v19 = *(v18 + 192);
  *(v18 + 192) = v17;

  v20 = *(a1 + 32);
  v21 = [v20 iconURLProvider];
  v22 = [*(a1 + 32) iconURLUpdater];
  v23 = [v20 _fieldWithValueProvider:v21 valueUpdater:v22 generationKey:@"ImageURL" modifiedAttributes:128 syncData:*(a1 + 40)];
  v24 = *(a1 + 32);
  v25 = *(v24 + 200);
  *(v24 + 200) = v23;

  v26 = *(a1 + 32);
  v27 = [v26 isSelectedFavoritesFolderProvider];
  v28 = [*(a1 + 32) selectedFavoritesFolderUpdater];
  v29 = [v26 _fieldWithValueProvider:v27 valueUpdater:v28 generationKey:@"IsSelectedFavoritesFolder" modifiedAttributes:32 syncData:*(a1 + 40)];
  v30 = *(a1 + 32);
  v31 = *(v30 + 208);
  *(v30 + 208) = v29;

  v32 = *(a1 + 32);
  v33 = *(a1 + 48);
  v34 = [v32 _labelGenerationKey];
  v35 = [v32 _fieldWithValue:v33 generationKey:v34 modifiedAttributes:65539 syncData:*(a1 + 40)];
  v36 = *(a1 + 32);
  v37 = *(v36 + 216);
  *(v36 + 216) = v35;

  v38 = *(a1 + 32);
  v39 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v40 = [v38 _fieldWithValue:v39 generationKey:@"LastSelectedTab" modifiedAttributes:512 syncData:*(a1 + 40)];
  v41 = *(a1 + 32);
  v42 = *(v41 + 224);
  *(v41 + 224) = v40;

  v43 = [*(a1 + 32) _fieldWithValue:*(a1 + 56) generationKey:@"ParentAndPosition" modifiedAttributes:68 syncData:*(a1 + 40)];
  v44 = *(a1 + 32);
  v45 = *(v44 + 232);
  *(v44 + 232) = v43;

  v46 = *(a1 + 32);
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "minimumAPIVersion")}];
  v48 = [v46 _fieldWithValue:v47 generationKey:@"MinimumAPIVersion" modifiedAttributes:0x8000 syncData:*(a1 + 40)];
  v49 = *(a1 + 32);
  v50 = *(v49 + 240);
  *(v49 + 240) = v48;

  v51 = *(a1 + 32);
  v52 = [v51 previewTextProvider];
  v53 = [*(a1 + 32) previewTextUpdater];
  v54 = [v51 _fieldWithValueProvider:v52 valueUpdater:v53 generationKey:@"PreviewText" modifiedAttributes:256 syncData:*(a1 + 40)];
  v55 = *(a1 + 32);
  v56 = *(v55 + 248);
  *(v55 + 248) = v54;

  v57 = *(a1 + 32);
  v58 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "state")}];
  v59 = [v57 _fieldWithValue:v58 generationKey:@"Deleted" modifiedAttributes:0x4000 syncData:*(a1 + 40)];
  v60 = *(a1 + 32);
  v61 = *(v60 + 256);
  *(v60 + 256) = v59;

  v62 = *(a1 + 32);
  v63 = [v62 symbolImageNameProvider];
  v64 = [*(a1 + 32) symbolImageNameUpdater];
  v65 = [v62 _fieldWithValueProvider:v63 valueUpdater:v64 generationKey:@"SymbolImageName" modifiedAttributes:4096 syncData:*(a1 + 40)];
  v66 = *(a1 + 32);
  v67 = *(v66 + 264);
  *(v66 + 264) = v65;

  v68 = *(a1 + 32);
  v69 = [v68 customFavoritesFolderServerIDProvider];
  v70 = [*(a1 + 32) customFavoritesFolderServerIDUpdater];
  v71 = [v68 _fieldWithValueProvider:v69 valueUpdater:v70 generationKey:@"CustomFavoritesFolderServerID" modifiedAttributes:0x40000 syncData:*(a1 + 40)];
  v72 = *(a1 + 32);
  v73 = *(v72 + 272);
  *(v72 + 272) = v71;

  v74 = *(a1 + 32);
  v75 = [v74 customStartPageSectionsDataProvider];
  v76 = [*(a1 + 32) customStartPageSectionsDataUpdater];
  v77 = [v74 _fieldWithValueProvider:v75 valueUpdater:v76 generationKey:@"CustomStartPageSectionsData" modifiedAttributes:0x80000 syncData:*(a1 + 40)];
  v78 = *(a1 + 32);
  v79 = *(v78 + 280);
  *(v78 + 280) = v77;

  v80 = *(a1 + 32);
  v81 = [v80 showIconOnlyProvider];
  v82 = [*(a1 + 32) showIconOnlyUpdater];
  v83 = [v80 _fieldWithValueProvider:v81 valueUpdater:v82 generationKey:@"ShowIconOnly" modifiedAttributes:0x200000 syncData:*(a1 + 40)];
  v84 = *(a1 + 32);
  v85 = *(v84 + 288);
  *(v84 + 288) = v83;

  v86 = *(a1 + 32);
  v91 = [v86 tabDateLastViewedProvider];
  v87 = [*(a1 + 32) tabDateLastViewedUpdater];
  v88 = [v86 _fieldWithValueProvider:v91 valueUpdater:v87 generationKey:@"DateLastViewed" modifiedAttributes:8 syncData:*(a1 + 40)];
  v89 = *(a1 + 32);
  v90 = *(v89 + 296);
  *(v89 + 296) = v88;
}

- (WBSCRDTField)labelField
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_labelField;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (WBSCRDTField)locationField
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_locationField;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)_fieldsForAttributes:(unint64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(WebBookmark *)self fields];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__WebBookmark_Internal___fieldsForAttributes___block_invoke;
  v8[3] = &unk_279E770A0;
  v8[4] = self;
  v8[5] = a3;
  v6 = [v5 safari_filterObjectsUsingBlock:v8];

  os_unfair_recursive_lock_unlock();

  return v6;
}

- (id)initReadingListBookmarkWithTitle:(id)a3 address:(id)a4 previewText:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(WebBookmark *)self initWithTitle:a3 address:v8 collectionType:0];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    [v11 setValue:v9 forKey:@"PreviewText"];
    v12 = [MEMORY[0x277CBEAA8] date];
    [v11 setValue:v12 forKey:@"DateAdded"];

    v13 = +[WBWebFilterSettings sharedWebFilterSettings];
    v14 = [v13 userSettings];
    v15 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    v16 = [v14 contentFilterListsAllowURL:v15];

    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    [(WebBookmark *)v10 setWebFilterStatus:v17];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v11 forKey:@"com.apple.ReadingList"];
    [(WebBookmark *)v10 setExtraAttributes:v18];

    v19 = v10;
  }

  return v10;
}

- (void)migrateToReadingListItem
{
  if (![(WebBookmark *)self isReadingListItem])
  {
    v3 = [(WebBookmark *)self extraAttributes];
    v4 = [v3 objectForKeyedSubscript:@"com.apple.Bookmark"];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CBEAC0] dictionary];
    }

    v7 = v6;

    [(WebBookmark *)self setExtraAttributesValue:v7 forKey:@"com.apple.ReadingList"];
    [(WebBookmark *)self setExtraAttributesValue:0 forKey:@"com.apple.Bookmark"];
  }
}

- (void)migrateToBookmarkItem
{
  if ([(WebBookmark *)self isReadingListItem])
  {
    v3 = [(WebBookmark *)self extraAttributes];
    v4 = [v3 objectForKeyedSubscript:@"com.apple.ReadingList"];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CBEAC0] dictionary];
    }

    v7 = v6;

    [(WebBookmark *)self setExtraAttributesValue:v7 forKey:@"com.apple.Bookmark"];
    [(WebBookmark *)self setExtraAttributesValue:0 forKey:@"com.apple.ReadingList"];
  }
}

- (void)setPreviewText:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__WebBookmark_ReadingList__setPreviewText___block_invoke;
  v6[3] = &unk_279E77100;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

uint64_t __43__WebBookmark_ReadingList__setPreviewText___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 248) setValue:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 248);

  return [v2 incrementGenerationIfNeeded];
}

- (id)_stringForReadingListArchiveStatus:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"ReadingListArchiveStatusPending";
  }

  else
  {
    return off_279E771B0[a3 - 1];
  }
}

- (void)setArchiveStatus:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(WebBookmark *)self _stringForReadingListArchiveStatus:a3];
    v7 = [(WebBookmark *)self UUID];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Setting ReadingList item bookmark archive status to %{public}@ for bookmark with UUID %{public}@", &v9, 0x16u);
  }

  self->_archiveStatus = a3;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setWebFilterStatus:(int64_t)a3
{
  if (self->_webFilterStatus != a3)
  {
    self->_webFilterStatus = a3;
  }
}

- (void)setDateLastArchived:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__WebBookmark_ReadingList__setDateLastArchived___block_invoke;
  v6[3] = &unk_279E77128;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self _modifyLocalReadingListAttributes:v6];
}

- (void)setReadingListIconURL:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__WebBookmark_ReadingList__setReadingListIconURL___block_invoke;
  v6[3] = &unk_279E77100;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

uint64_t __50__WebBookmark_ReadingList__setReadingListIconURL___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 200) setValue:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 200);

  return [v2 incrementGenerationIfNeeded];
}

- (void)setReadingListIconUUID:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmark *)self readingListIconUUID];
  if (v5 != v4 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__WebBookmark_ReadingList__setReadingListIconUUID___block_invoke;
    v6[3] = &unk_279E77128;
    v7 = v4;
    [(WebBookmark *)self _modifyLocalReadingListAttributes:v6];
  }
}

- (void)setDateAdded:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__WebBookmark_ReadingList__setDateAdded___block_invoke;
  v6[3] = &unk_279E77100;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

uint64_t __41__WebBookmark_ReadingList__setDateAdded___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 184) setValue:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 184);

  return [v2 incrementGenerationIfNeeded];
}

- (void)setReadingListDateLastViewed:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WebBookmark_ReadingList__setReadingListDateLastViewed___block_invoke;
  v6[3] = &unk_279E77100;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self performWithFieldsWriteLock:v6];
}

uint64_t __57__WebBookmark_ReadingList__setReadingListDateLastViewed___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 192) setValue:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 192);

  return [v2 incrementGenerationIfNeeded];
}

- (void)setDateLastFetched:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__WebBookmark_ReadingList__setDateLastFetched___block_invoke;
  v6[3] = &unk_279E77128;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self _modifyExtraReadingListAttributes:v6];
}

- (void)setTitle:(id)a3 previewText:(id)a4 dateLastFetched:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(WebBookmark *)self setTitle:a3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__WebBookmark_ReadingList__setTitle_previewText_dateLastFetched___block_invoke;
  v12[3] = &unk_279E77150;
  v10 = v8;
  v13 = v10;
  v11 = v9;
  v14 = v11;
  [(WebBookmark *)self _modifyExtraReadingListAttributes:v12];
}

void __65__WebBookmark_ReadingList__setTitle_previewText_dateLastFetched___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setValue:*(a1 + 32) forKey:@"PreviewText"];
  [v3 setValue:*(a1 + 40) forKey:@"DateLastFetched"];
}

- (void)setNextPageURLs:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__WebBookmark_ReadingList__setNextPageURLs___block_invoke;
  v6[3] = &unk_279E77128;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self _modifyLocalReadingListAttributes:v6];
}

- (void)setLocalPreviewText:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__WebBookmark_ReadingList__setLocalPreviewText___block_invoke;
  v6[3] = &unk_279E77128;
  v7 = v4;
  v5 = v4;
  [(WebBookmark *)self _modifyLocalReadingListAttributes:v6];
}

- (BOOL)hasFetchedMetadata
{
  v2 = [(WebBookmark *)self _readingListPropertyNamed:@"HasFetchedMetadata"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setHasFetchedMetadata:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__WebBookmark_ReadingList__setHasFetchedMetadata___block_invoke;
  v3[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  v4 = a3;
  [(WebBookmark *)self _modifyLocalReadingListAttributes:v3];
}

void __50__WebBookmark_ReadingList__setHasFetchedMetadata___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  [v4 setValue:v3 forKey:@"HasFetchedMetadata"];
}

- (void)cleanUpRedundantPreviewText
{
  v3 = [(WebBookmark *)self previewText];
  if (v3)
  {
    v4 = v3;
    v5 = [(WebBookmark *)self localPreviewText];

    if (v5)
    {

      [(WebBookmark *)self _modifyLocalReadingListAttributes:&__block_literal_global_19];
    }
  }
}

+ (id)_trimmedTitle:(id)a3
{
  v3 = a3;
  if ([v3 length] >= 0xDD)
  {
    v4 = [v3 substringToIndex:220];

    v3 = v4;
  }

  return v3;
}

+ (id)_trimmedPreviewText:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if ([v5 length] >= 0xDD)
  {
    v6 = [v5 substringToIndex:220];

    v5 = v6;
  }

  v7 = [v5 stringByReplacingOccurrencesOfString:@"\\s+" withString:@" " options:1024 range:{0, objc_msgSend(v5, "length")}];

  return v7;
}

- (id)webarchivePathInReaderForm:(BOOL)a3 fileExists:(BOOL *)a4
{
  v5 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = +[WebBookmarkCollection readingListArchivesDirectoryPath];
  v9 = [(WebBookmark *)self UUID];
  v10 = [v8 stringByAppendingPathComponent:v9];

  v11 = [v10 stringByAppendingPathComponent:@"/file"];
  if ([v7 fileExistsAtPath:v11 isDirectory:0])
  {
    v12 = [v11 stringByResolvingSymlinksInPath];
  }

  else
  {
    if (v5)
    {
      v13 = @"Reader.webarchive";
    }

    else
    {
      v13 = @"Page.webarchive";
    }

    v12 = [v10 stringByAppendingPathComponent:v13];
  }

  v14 = v12;

  if (a4)
  {
    *a4 = [v7 fileExistsAtPath:v14 isDirectory:0];
  }

  return v14;
}

- (id)webarchivePathForNextPageURL:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmark *)self nextPageURLs];
  v6 = [v4 _wb_userVisibleString];
  v7 = [v5 objectForKey:v6];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v7 isDirectory:0];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (!v9)
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)offlineArchiveDirectoryPath
{
  v3 = +[WebBookmarkCollection readingListArchivesDirectoryPath];
  v4 = [(WebBookmark *)self UUID];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (unint64_t)_sizeForFileOrDirectory:(id)a3 withAttributes:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22 = a4;
  v6 = [v22 fileSize];
  v7 = [v22 fileType];
  v8 = [v7 isEqualToString:*MEMORY[0x277CCA1E8]];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v27 = 0;
    v21 = [v9 subpathsOfDirectoryAtPath:v5 error:&v27];
    v20 = v27;
    if (v20)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WebBookmark(ReadingListArchives) _sizeForFileOrDirectory:v5 withAttributes:v10];
      }
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v21;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [v5 stringByAppendingPathComponent:*(*(&v23 + 1) + 8 * i)];
            v16 = [v9 attributesOfItemAtPath:v15 error:0];
            v17 = [v16 fileSize];

            v6 += v17;
          }

          v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v12);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)archiveSize
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = +[WebBookmarkCollection readingListArchivesDirectoryPath];
  v5 = [(WebBookmark *)self UUID];
  v6 = [v4 stringByAppendingPathComponent:v5];

  if ([v3 fileExistsAtPath:v6])
  {
    v11 = 0;
    v7 = [v3 attributesOfItemAtPath:v6 error:&v11];
    v8 = v11;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(WebBookmark *)self _sizeForFileOrDirectory:v6 withAttributes:v7];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_removeDirectoryAtPath:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  if ([v4 fileExistsAtPath:v3 isDirectory:&v12] && (v12 & 1) != 0)
  {
    v11 = 0;
    v5 = [v4 removeItemAtPath:v3 error:&v11];
    v6 = v11;
    if (v5)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v14 = v3;
        _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Deleted %{public}@ as a result of deleting the bookmark", buf, 0xCu);
      }
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 wb_privacyPreservingDescription];
        [(WebBookmark(ReadingListArchives) *)v3 _removeDirectoryAtPath:v9, buf, v8];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clearArchive
{
  v3 = [(WebBookmark *)self UUID];
  if ([v3 length])
  {
    v4 = +[WebBookmarkCollection readingListArchivesDirectoryPath];
    v5 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__WebBookmark_ReadingListArchives__clearArchive__block_invoke;
    block[3] = &unk_279E752A8;
    block[4] = self;
    v8 = v4;
    v9 = v3;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

void __48__WebBookmark_ReadingListArchives__clearArchive__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) stringByAppendingPathComponent:*(a1 + 48)];
  [v1 _removeDirectoryAtPath:?];
}

- (void)clearArchiveSynchronously
{
  v3 = [(WebBookmark *)self UUID];
  if (v3)
  {
    v6 = v3;
    if ([v3 length])
    {
      v4 = +[WebBookmarkCollection readingListArchivesDirectoryPath];
      v5 = [v4 stringByAppendingPathComponent:v6];
      [(WebBookmark *)self _removeDirectoryAtPath:v5];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)shouldReattemptArchiveWithAutomaticArchivingEnabled:(BOOL)a3
{
  v3 = self->_archiveStatus - 1;
  if (v3 >= 6)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0x24u >> v3;
  }

  return v4 & 1;
}

- (void)setShouldArchive:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v5 = WBS_LOG_CHANNEL_PREFIXReadingList();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v7 = [(WebBookmark *)self UUID];
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "setShouldArchive: setting ReadingList item bookmark archive status to ReadingListArchiveStatusShouldArchive for bookmark with UUID %{public}@", &v11, 0xCu);
    }

    v8 = 6;
  }

  else
  {
    if (v6)
    {
      v9 = [(WebBookmark *)self UUID];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "setShouldArchive: setting ReadingList item bookmark archive status to ReadingListArchiveStatusPending for bookmark with UUID %{public}@", &v11, 0xCu);
    }

    v8 = 0;
  }

  self->_archiveStatus = v8;
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_readingListPropertyNamed:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmark *)self extraAttributes];
  v6 = [(WebBookmark *)self localAttributes];
  v7 = [v5 objectForKeyedSubscript:@"com.apple.ReadingList"];
  v8 = [v7 objectForKeyedSubscript:v4];

  if (!v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"com.apple.ReadingList"];
    v8 = [v9 objectForKeyedSubscript:v4];

    if (!v8)
    {
      v10 = [v5 objectForKeyedSubscript:@"com.apple.Bookmark"];
      v8 = [v10 objectForKeyedSubscript:v4];

      if (!v8)
      {
        v11 = [v6 objectForKeyedSubscript:@"com.apple.Bookmark"];
        v8 = [v11 objectForKeyedSubscript:v4];
      }
    }
  }

  return v8;
}

- (void)_modifyExtraReadingListAttributes:(id)a3
{
  v18 = a3;
  v4 = [(WebBookmark *)self extraAttributes];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;

  if ([(WebBookmark *)self isReadingListItem])
  {
    v9 = [v8 objectForKeyedSubscript:@"com.apple.ReadingList"];
    v10 = [v9 mutableCopy];

    v18[2](v18, v10);
    v11 = v8;
    v12 = v10;
    v13 = @"com.apple.ReadingList";
  }

  else
  {
    v14 = [v8 objectForKeyedSubscript:@"com.apple.Bookmark"];
    v15 = [v14 mutableCopy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
    }

    v10 = v17;

    v18[2](v18, v10);
    v13 = @"com.apple.Bookmark";
    v11 = v8;
    v12 = v10;
  }

  [v11 setObject:v12 forKeyedSubscript:v13];

  [(WebBookmark *)self setExtraAttributes:v8];
  self->_needsSyncUpdate = 1;
}

- (void)_modifyLocalReadingListAttributes:(id)a3
{
  v19 = a3;
  v4 = [(WebBookmark *)self localAttributes];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;

  if ([(WebBookmark *)self isReadingListItem])
  {
    v9 = [v8 objectForKeyedSubscript:@"com.apple.ReadingList"];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
    }

    v17 = v12;

    v19[2](v19, v17);
    v18 = @"com.apple.ReadingList";
  }

  else
  {
    v13 = [v8 objectForKeyedSubscript:@"com.apple.Bookmark"];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB38] dictionary];
    }

    v17 = v16;

    v19[2](v19, v17);
    v18 = @"com.apple.Bookmark";
  }

  [v8 setObject:v17 forKeyedSubscript:v18];

  [(WebBookmark *)self setLocalAttributes:v8];
}

void __57__WebBookmark_ReadingListInternal__dateLastViewedUpdater__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__WebBookmark_ReadingListInternal__dateLastViewedUpdater__block_invoke_2;
  v7[3] = &unk_279E77250;
  v8 = v4;
  v5 = v4;
  v6 = a2;
  [v6 _modifyExtraReadingListAttributes:v7];
  [v6 markAttributesAsModified:8];
}

void __50__WebBookmark_ReadingListInternal__iconURLUpdater__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__WebBookmark_ReadingListInternal__iconURLUpdater__block_invoke_2;
  v7[3] = &unk_279E77250;
  v8 = v4;
  v5 = v4;
  v6 = a2;
  [v6 _modifyExtraReadingListAttributes:v7];
  [v6 markAttributesAsModified:128];
}

void __54__WebBookmark_ReadingListInternal__previewTextUpdater__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WebBookmark_ReadingListInternal__previewTextUpdater__block_invoke_2;
  v7[3] = &unk_279E77250;
  v8 = v4;
  v5 = v4;
  v6 = a2;
  [v6 _modifyExtraReadingListAttributes:v7];
  [v6 markAttributesAsModified:256];
  [v6 cleanUpRedundantPreviewText];
}

void __58__WebBookmark_Internal___setParentID_incrementGeneration___block_invoke_cold_1(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "Setting bookmark with identifier %d as its own parent", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end