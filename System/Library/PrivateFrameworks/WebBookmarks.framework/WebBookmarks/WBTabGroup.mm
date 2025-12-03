@interface WBTabGroup
- (BOOL)hasDynamicTitle;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHidden;
- (BOOL)isIdentical:(id)identical;
- (BOOL)isInserted;
- (BOOL)isShared;
- (BOOL)isSyncable;
- (BOOL)isTabPinnable:(id)pinnable;
- (BOOL)supportsDeviceTabs;
- (BOOL)tabsAreIdentical:(id)identical;
- (NSArray)allTabs;
- (NSArray)unpinnedTabs;
- (NSDictionary)dictionaryRepresentation;
- (NSSet)emptyTabsUUIDSet;
- (NSSet)tabsUUIDSet;
- (NSString)debugRecursiveSyncDescription;
- (NSString)debugSyncDescription;
- (NSString)description;
- (NSString)deviceIdentifier;
- (NSString)displayTitle;
- (NSString)htmlString;
- (NSString)privacyPreservingDescription;
- (NSString)serverID;
- (NSString)title;
- (NSString)uuid;
- (NSURL)representativeURL;
- (WBSCRDTPosition)syncPosition;
- (WBTab)firstUnpinnedTab;
- (WBTab)lastPinnedTab;
- (WBTab)pinnedStartPage;
- (WBTabGroup)initWithBookmark:(id)bookmark lastSelectedTabUUID:(id)d kind:(int64_t)kind;
- (WBTabGroup)initWithBookmarkStorage:(id)storage lastSelectedTabUUID:(id)d kind:(int64_t)kind;
- (WBTabGroup)initWithCoder:(id)coder;
- (WBTabGroup)initWithDeviceIdentifier:(id)identifier;
- (WBTabGroup)initWithDictionaryRepresentation:(id)representation;
- (WBTabGroup)initWithTitle:(id)title deviceIdentifier:(id)identifier;
- (WBTabGroup)initWithTitle:(id)title uuid:(id)uuid deviceIdentifier:(id)identifier;
- (WebBookmark)bookmark;
- (id)_copyWithZone:(_NSZone *)zone isMutable:(BOOL)mutable;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayTitleProvider;
- (id)lastPinnedTabExcluding:(id)excluding;
- (int)identifier;
- (unint64_t)hash;
- (void)_tabsDidChange;
- (void)_updateTabLookupTable;
- (void)detectDuplicatedTabs;
- (void)encodeWithCoder:(id)coder;
- (void)setBookmark:(id)bookmark;
@end

@implementation WBTabGroup

- (NSString)uuid
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  uUID = [value UUID];

  return uUID;
}

- (BOOL)isShared
{
  isSyncable = [(WBTabGroup *)self isSyncable];
  if (isSyncable)
  {
    value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    hasShareRecord = [value hasShareRecord];

    LOBYTE(isSyncable) = hasShareRecord;
  }

  return isSyncable;
}

- (BOOL)isSyncable
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  isSyncable = [value isSyncable];

  return isSyncable;
}

- (void)_tabsDidChange
{
  [(WBTabGroup *)self _updateTabLookupTable];
  cachedUnpinnedTabs = self->_cachedUnpinnedTabs;
  self->_cachedUnpinnedTabs = 0;
}

- (void)_updateTabLookupTable
{
  v5 = [(NSArray *)self->_tabs safari_mapObjectsUsingBlock:&__block_literal_global_22];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObjects:self->_tabs forKeys:v5];
  tabsByUUID = self->_tabsByUUID;
  self->_tabsByUUID = v3;
}

- (NSArray)allTabs
{
  v3 = [(NSArray *)self->_overflowRemoteTabs count];
  tabs = [(WBTabGroup *)self tabs];
  if (v3)
  {
    overflowRemoteTabs = [(WBTabGroup *)self overflowRemoteTabs];
    v6 = [tabs arrayByAddingObjectsFromArray:overflowRemoteTabs];

    tabs = v6;
  }

  return tabs;
}

- (WBTab)firstUnpinnedTab
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_tabs;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (![v6 isPinned])
        {
          v3 = [v6 copy];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (WebBookmark)bookmark
{
  [(WBSCopyOnWriteValue *)self->_bookmarkStorage willModify];
  bookmarkStorage = self->_bookmarkStorage;

  return [(WBSCopyOnWriteValue *)bookmarkStorage value];
}

- (NSSet)tabsUUIDSet
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSArray *)self->_tabs safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_52];
  v4 = [v2 setWithArray:v3];

  return v4;
}

id __25__WBTabGroup_tabsUUIDSet__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uuid];

  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

- (BOOL)hasDynamicTitle
{
  if (self->_displayTitleProvider)
  {
    return ![(WBTabGroup *)self isPrivateBrowsing];
  }

  else
  {
    return 0;
  }
}

- (NSString)displayTitle
{
  displayTitleProvider = self->_displayTitleProvider;
  if (displayTitleProvider)
  {
    displayTitleProvider[2](displayTitleProvider, a2);
  }

  else
  {
    [(WBTabGroup *)self title];
  }
  v4 = ;

  return v4;
}

- (NSArray)unpinnedTabs
{
  cachedUnpinnedTabs = self->_cachedUnpinnedTabs;
  if (!cachedUnpinnedTabs)
  {
    tabs = [(WBTabGroup *)self tabs];
    v5 = [tabs safari_filterObjectsUsingBlock:&__block_literal_global_62_0];
    v6 = self->_cachedUnpinnedTabs;
    self->_cachedUnpinnedTabs = v5;

    cachedUnpinnedTabs = self->_cachedUnpinnedTabs;
  }

  return cachedUnpinnedTabs;
}

- (WBTab)pinnedStartPage
{
  tabs = [(WBTabGroup *)self tabs];
  v3 = [tabs indexOfObjectPassingTest:&__block_literal_global_60];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = [tabs objectAtIndexedSubscript:v3];
    v4 = [v5 copy];
  }

  return v4;
}

BOOL __29__WBTabGroup_pinnedStartPage__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPinned])
  {
    v3 = [v2 pinnedURL];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WBTabGroup)initWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[WebBookmark alloc] initFolderWithParentID:0 deviceIdentifier:identifierCopy collectionType:1];

  v6 = [(WBTabGroup *)self initWithBookmark:v5];
  return v6;
}

- (WBTabGroup)initWithTitle:(id)title deviceIdentifier:(id)identifier
{
  v6 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  titleCopy = title;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];
  v11 = [(WBTabGroup *)self initWithTitle:titleCopy uuid:uUIDString deviceIdentifier:identifierCopy];

  return v11;
}

- (WBTabGroup)initWithTitle:(id)title uuid:(id)uuid deviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uuidCopy = uuid;
  titleCopy = title;
  v11 = [[WebBookmark alloc] initFolderWithParentID:0 deviceIdentifier:identifierCopy collectionType:1];

  [v11 setTitle:titleCopy];
  [v11 _setUUID:uuidCopy];

  v12 = [(WBTabGroup *)self initWithBookmark:v11];
  return v12;
}

- (WBTabGroup)initWithBookmark:(id)bookmark lastSelectedTabUUID:(id)d kind:(int64_t)kind
{
  v8 = MEMORY[0x277D499E0];
  dCopy = d;
  bookmarkCopy = bookmark;
  v11 = [[v8 alloc] initWithValue:bookmarkCopy];

  v12 = [(WBTabGroup *)self initWithBookmarkStorage:v11 lastSelectedTabUUID:dCopy kind:kind];
  return v12;
}

- (WBTabGroup)initWithBookmarkStorage:(id)storage lastSelectedTabUUID:(id)d kind:(int64_t)kind
{
  storageCopy = storage;
  dCopy = d;
  v32.receiver = self;
  v32.super_class = WBTabGroup;
  v11 = [(WBTabGroup *)&v32 init];
  if (v11 && ([storageCopy value], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isFolder"), v12, v13))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11->_isMutable = isKindOfClass & 1;
    v15 = off_279E749E0;
    if ((isKindOfClass & 1) == 0)
    {
      v15 = off_279E74A10;
    }

    v16 = *v15;
    v17 = objc_opt_class();
    objc_storeStrong(&v11->_tabClass, v17);
    objc_storeStrong(&v11->_bookmarkStorage, storage);
    v18 = [dCopy copy];
    lastSelectedTabUUID = v11->_lastSelectedTabUUID;
    v11->_lastSelectedTabUUID = v18;

    if (v11->_isMutable)
    {
      v20 = 0x277CBEB18;
    }

    else
    {
      v20 = 0x277CBEA60;
    }

    array = [*v20 array];
    tabs = v11->_tabs;
    v11->_tabs = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tabsByUUID = v11->_tabsByUUID;
    v11->_tabsByUUID = dictionary;

    v11->_kind = kind;
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deletedTabs = v11->_deletedTabs;
    v11->_deletedTabs = v25;

    objc_storeStrong(&v11->_profileIdentifier, *MEMORY[0x277D49BD8]);
    uuid = [(WBTabGroup *)v11 uuid];
    if (!uuid || (v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:uuid], v28, !v28))
    {
      v29 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        [WBTabGroup initWithBookmarkStorage:v29 lastSelectedTabUUID:v11 kind:?];
      }
    }

    v30 = v11;
  }

  else
  {
    v30 = 0;
  }

  return v30;
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
      uuid = [(WBTabGroup *)equalCopy uuid];
      uuid2 = [(WBTabGroup *)self uuid];
      v7 = WBSIsEqual();
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
  uuid = [(WBTabGroup *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)_copyWithZone:(_NSZone *)zone isMutable:(BOOL)mutable
{
  mutableCopy = mutable;
  v7 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage copy];
  v8 = off_279E749E8;
  if (!mutableCopy)
  {
    v8 = off_279E74A20;
  }

  v9 = [[(__objc2_class *)*v8 allocWithZone:zone] initWithBookmarkStorage:v7 lastSelectedTabUUID:self->_lastSelectedTabUUID kind:self->_kind];
  v10 = MEMORY[0x2743D6830](self->_displayTitleProvider);
  v11 = *(v9 + 64);
  *(v9 + 64) = v10;

  v12 = [(NSString *)self->_profileIdentifier copy];
  v13 = *(v9 + 72);
  *(v9 + 72) = v12;

  if (mutableCopy)
  {
    v14 = [MEMORY[0x277CBEB18] safari_arrayWithArray:self->_tabs copyAction:2];
    v15 = *(v9 + 8);
    *(v9 + 8) = v14;

    v16 = [MEMORY[0x277CBEA60] safari_arrayWithArray:self->_overflowRemoteTabs copyAction:2];
  }

  else if (self->_isMutable)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_tabs copyItems:1];
    v18 = *(v9 + 8);
    *(v9 + 8) = v17;

    v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_overflowRemoteTabs copyItems:1];
  }

  else
  {
    objc_storeStrong((v9 + 8), self->_tabs);
    v16 = self->_overflowRemoteTabs;
  }

  v19 = *(v9 + 16);
  *(v9 + 16) = v16;

  v20 = [(NSMutableArray *)self->_deletedTabs mutableCopy];
  v21 = *(v9 + 24);
  *(v9 + 24) = v20;

  [v9 _tabsDidChange];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_isMutable)
  {
    return [(WBTabGroup *)self _copyWithZone:zone isMutable:0];
  }

  else
  {
    return self;
  }
}

- (WBTabGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmark"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSelectedTabUUID"];
  v7 = -[WBTabGroup initWithBookmark:lastSelectedTabUUID:kind:](self, "initWithBookmark:lastSelectedTabUUID:kind:", v5, v6, [coderCopy decodeIntegerForKey:@"type"]);
  if (v7)
  {
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"tabs"];

    if (v7->_isMutable)
    {
      v13 = [v12 mutableCopy];
    }

    else
    {
      v13 = [v12 copy];
    }

    tabs = v7->_tabs;
    v7->_tabs = v13;

    [(WBTabGroup *)v7 _tabsDidChange];
    v15 = v7;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  bookmarkStorage = self->_bookmarkStorage;
  coderCopy = coder;
  value = [(WBSCopyOnWriteValue *)bookmarkStorage value];
  [coderCopy encodeObject:value forKey:@"bookmark"];

  [coderCopy encodeObject:self->_tabs forKey:@"tabs"];
  [coderCopy encodeObject:self->_lastSelectedTabUUID forKey:@"lastSelectedTabUUID"];
  [coderCopy encodeInteger:self->_kind forKey:@"type"];
}

- (WBTabGroup)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [WebBookmark alloc];
  v6 = [representationCopy safari_dictionaryForKey:@"bookmark"];
  v7 = [(WebBookmark *)v5 initWithDictionaryRepresentationForInMemoryChangeTracking:v6];

  v8 = [representationCopy safari_stringForKey:@"lastSelectedTabUUID"];
  if (![v8 length])
  {

    v8 = 0;
  }

  v9 = [representationCopy safari_numberForKey:@"type"];
  integerValue = [v9 integerValue];

  v11 = [(WBTabGroup *)self initWithBookmark:v7 lastSelectedTabUUID:v8 kind:integerValue];
  if (v11)
  {
    v12 = [representationCopy safari_arrayForKey:@"tabs"];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __47__WBTabGroup_initWithDictionaryRepresentation___block_invoke;
    v19[3] = &unk_279E77298;
    v13 = v11;
    v20 = v13;
    v14 = [v12 safari_mapObjectsUsingBlock:v19];

    if (v13->_isMutable)
    {
      v15 = [v14 mutableCopy];
    }

    else
    {
      v15 = [v14 copy];
    }

    tabs = v13->_tabs;
    v13->_tabs = v15;

    [(WBTabGroup *)v13 _tabsDidChange];
    v17 = v13;
  }

  return v11;
}

id __47__WBTabGroup_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_alloc(objc_msgSend(v2 "_tabClass"))];

  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"bookmark";
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  dictionaryRepresentationForInMemoryChangeTracking = [value dictionaryRepresentationForInMemoryChangeTracking];
  v5 = dictionaryRepresentationForInMemoryChangeTracking;
  lastSelectedTabUUID = self->_lastSelectedTabUUID;
  if (!lastSelectedTabUUID)
  {
    lastSelectedTabUUID = &stru_288259858;
  }

  v13[0] = dictionaryRepresentationForInMemoryChangeTracking;
  v13[1] = lastSelectedTabUUID;
  v12[1] = @"lastSelectedTabUUID";
  v12[2] = @"tabs";
  v7 = [(NSArray *)self->_tabs valueForKey:@"dictionaryRepresentation"];
  v13[2] = v7;
  v12[3] = @"type";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_kind];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setBookmark:(id)bookmark
{
  v4 = MEMORY[0x277D499E0];
  bookmarkCopy = bookmark;
  v6 = [[v4 alloc] initWithValue:bookmarkCopy];

  bookmarkStorage = self->_bookmarkStorage;
  self->_bookmarkStorage = v6;
}

- (NSString)deviceIdentifier
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  deviceIdentifier = [value deviceIdentifier];

  return deviceIdentifier;
}

- (id)displayTitleProvider
{
  v2 = MEMORY[0x2743D6830](self->_displayTitleProvider, a2);

  return v2;
}

- (BOOL)isHidden
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  isHidden = [value isHidden];

  return isHidden;
}

- (NSString)htmlString
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:{70 * -[NSArray count](self->_tabs, "count") + 52}];
  [v3 appendString:@"<html><body>"];
  if ([(WBTabGroup *)self isSyncable])
  {
    title = [(WBTabGroup *)self title];
    [v3 appendFormat:@"<h>%@</h>", title];
  }

  [v3 appendString:@"<ul>"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_tabs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 url];
        title2 = [v10 title];
        [v3 appendFormat:@"<li><a href='%@'>%@</a></li>", v11, title2, v15];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v3 appendString:@"</ul>"];
  [v3 appendString:@"</body></html>"];
  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSSet)emptyTabsUUIDSet
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSArray *)self->_tabs safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_54_0];
  v4 = [v2 setWithArray:v3];

  return v4;
}

id __30__WBTabGroup_emptyTabsUUIDSet__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isBlank])
  {
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = [v2 uuid];
    v5 = [v3 initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSURL)representativeURL
{
  tabs = [(WBTabGroup *)self tabs];
  if (self->_lastSelectedTabUUID)
  {
    v4 = [(WBTabGroup *)self tabWithUUID:?];
    v5 = [v4 url];

    host = [v5 host];
    v7 = [host length];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  v8 = [tabs safari_lastObjectPassingTest:&__block_literal_global_57];
  v5 = [v8 url];

LABEL_5:

  return v5;
}

BOOL __31__WBTabGroup_representativeURL__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];
  v3 = v2 != 0;

  return v3;
}

- (int)identifier
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  identifier = [value identifier];

  return identifier;
}

- (BOOL)isInserted
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  isInserted = [value isInserted];

  return isInserted;
}

- (WBTab)lastPinnedTab
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_tabs;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isPinned])
        {
          v9 = v8;

          v5 = v9;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = [v5 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)lastPinnedTabExcluding:(id)excluding
{
  v23 = *MEMORY[0x277D85DE8];
  excludingCopy = excluding;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_tabs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        isPinned = [v11 isPinned];
        if (v11 != excludingCopy && isPinned != 0)
        {
          v14 = v11;

          v8 = v14;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = [v8 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSString)title
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  title = [value title];

  return title;
}

- (WBSCRDTPosition)syncPosition
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  syncPosition = [value syncPosition];

  return syncPosition;
}

- (NSString)serverID
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  serverID = [value serverID];

  return serverID;
}

- (BOOL)supportsDeviceTabs
{
  if ([(WBTabGroup *)self isNamed]|| [(WBTabGroup *)self isLocal])
  {
    return 0;
  }

  else
  {
    return ![(WBTabGroup *)self isPrivateBrowsing];
  }
}

- (BOOL)isIdentical:(id)identical
{
  identicalCopy = identical;
  if (WBSIsEqual())
  {
    title = [(WBTabGroup *)self title];
    title2 = [identicalCopy title];
    v7 = WBSIsEqual();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)tabsAreIdentical:(id)identical
{
  identicalCopy = identical;
  v5 = [(NSArray *)self->_tabs count];
  tabs = [identicalCopy tabs];
  if (v5 == [tabs count])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    tabs = self->_tabs;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__WBTabGroup_tabsAreIdentical___block_invoke;
    v10[3] = &unk_279E77300;
    v11 = tabs;
    v12 = &v13;
    [(NSArray *)tabs enumerateObjectsUsingBlock:v10];
    v8 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __31__WBTabGroup_tabsAreIdentical___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectAtIndexedSubscript:a3];
  LOBYTE(a3) = [v8 isIdentical:?];

  if ((a3 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)isTabPinnable:(id)pinnable
{
  pinnableCopy = pinnable;
  if ([pinnableCopy canSetPinned])
  {
    if ([pinnableCopy isBlank])
    {
      v5 = ![(WBTabGroup *)self usesGlobalPinnedTabs];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSString)description
{
  v17 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(WBTabGroup *)self identifier];
  isSyncable = [(WBTabGroup *)self isSyncable];
  v7 = @"NO";
  if (isSyncable)
  {
    v7 = @"YES";
  }

  v8 = v7;
  title = [(WBTabGroup *)self title];
  kind = [(WBTabGroup *)self kind];
  tabs = [(WBTabGroup *)self tabs];
  v12 = [tabs count];
  uuid = [(WBTabGroup *)self uuid];
  serverID = [(WBTabGroup *)self serverID];
  v15 = [v17 stringWithFormat:@"<%@: %p identifier = %d; syncable = %@; title = %@; kind = %ld; numberOfTabs = %zu; uuid = %@; serverID = %@>", v4, self, identifier, v8, title, kind, v12, uuid, serverID];;

  return v15;
}

- (NSString)privacyPreservingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WBTabGroup *)self identifier];
  isSyncable = [(WBTabGroup *)self isSyncable];
  v8 = @"NO";
  if (isSyncable)
  {
    v8 = @"YES";
  }

  v9 = v8;
  kind = [(WBTabGroup *)self kind];
  tabs = [(WBTabGroup *)self tabs];
  v12 = [tabs count];
  uuid = [(WBTabGroup *)self uuid];
  serverID = [(WBTabGroup *)self serverID];
  v15 = [v3 stringWithFormat:@"<%@: %p identifier = %d; syncable = %@; kind = %ld; numberOfTabs = %zu; uuid = %@; serverID = %@>", v5, self, identifier, v9, kind, v12, uuid, serverID];;

  return v15;
}

- (NSString)debugSyncDescription
{
  v3 = MEMORY[0x277CCAB68];
  title = [(WBTabGroup *)self title];
  uuid = [(WBTabGroup *)self uuid];
  v6 = [v3 stringWithFormat:@"%@, UUID: %@", title, uuid];

  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__WBTabGroup_debugSyncDescription__block_invoke;
  v11[3] = &unk_279E75E40;
  v12 = v6;
  v8 = v6;
  [value getReadOnlyCachedBookmarkSyncDataUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __34__WBTabGroup_debugSyncDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 record];
  v6 = [v5 recordID];
  v7 = [v6 ckShortDescription];
  [v3 appendFormat:@", recordID: %@", v7];

  v12 = [v4 shareRecord];

  v8 = v12;
  if (v12)
  {
    v9 = *(a1 + 32);
    v10 = [v12 recordID];
    v11 = [v10 ckShortDescription];
    [v9 appendFormat:@", share recordID: %@", v11];

    v8 = v12;
  }
}

- (NSString)debugRecursiveSyncDescription
{
  v18 = *MEMORY[0x277D85DE8];
  debugSyncDescription = [(WBTabGroup *)self debugSyncDescription];
  v4 = [debugSyncDescription mutableCopy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_tabs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        debugSyncDescription2 = [*(*(&v13 + 1) + 8 * i) debugSyncDescription];
        [v4 appendFormat:@"\n\t%@", debugSyncDescription2];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)detectDuplicatedTabs
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  tabs = [a2 tabs];
  v5 = [tabs safari_mapObjectsUsingBlock:&__block_literal_global_85];
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v6, v7, "All tabs: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEmpty
{
  if (![(NSArray *)self->_tabs count])
  {
    return 1;
  }

  tabs = self->_tabs;

  return [(NSArray *)tabs safari_allObjectsPassTest:&__block_literal_global_87];
}

- (void)initWithBookmarkStorage:(void *)a1 lastSelectedTabUUID:(void *)a2 kind:.cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_fault_impl(&dword_272C20000, v3, OS_LOG_TYPE_FAULT, "WBTabGroup must have a valid UUID %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end