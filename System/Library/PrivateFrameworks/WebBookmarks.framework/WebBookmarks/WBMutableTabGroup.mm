@interface WBMutableTabGroup
+ (id)localTabGroup;
+ (id)localTabGroupWithUUID:(id)a3;
+ (id)privateTabGroup;
+ (id)unnamedTabGroupWithDeviceIdentifier:(id)a3;
+ (id)unnamedTabGroupWithUUID:(id)a3 profileIdentifier:(id)a4 deviceIdentifier:(id)a5;
- (NSArray)deletedTabs;
- (WBMutableTabGroup)initWithBookmark:(id)a3 tabs:(id)a4 lastSelectedTabUUID:(id)a5 kind:(int64_t)a6;
- (WBMutableTabGroup)initWithTitle:(id)a3 deviceIdentifier:(id)a4 profileIdentifier:(id)a5;
- (WBSCRDTPosition)syncPosition;
- (id)duplicateTabs:(id)a3;
- (void)_fixLastSelectedTabIfNeeded;
- (void)_performWithMutableTabs:(id)a3;
- (void)appendTabs:(id)a3;
- (void)clearDeletedTabs;
- (void)deleteTabs:(id)a3;
- (void)insertTabs:(id)a3 afterTab:(id)a4;
- (void)markBackgroundImageAsModified;
- (void)mergeWithTabGroup:(id)a3;
- (void)removeTab:(id)a3;
- (void)reorderTab:(id)a3 afterTab:(id)a4;
- (void)setDeletedTabs:(id)a3;
- (void)setDisplayTitleProvider:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setKind:(int64_t)a3;
- (void)setLastSelectedTabUUID:(id)a3;
- (void)setProfileIdentifier:(id)a3;
- (void)setSyncPosition:(id)a3;
- (void)setTabs:(id)a3;
- (void)setTitle:(id)a3;
- (void)truncateToNumberOfTabs:(unint64_t)a3;
- (void)updateLastSelectedTab;
@end

@implementation WBMutableTabGroup

- (void)_fixLastSelectedTabIfNeeded
{
  v5 = [(NSArray *)self->super._tabs safari_setByApplyingBlock:&__block_literal_global_12];
  if (([v5 containsObject:self->super._lastSelectedTabUUID] & 1) == 0)
  {
    v3 = [(NSArray *)self->super._tabs lastObject];
    v4 = [v3 uuid];
    [(WBMutableTabGroup *)self setLastSelectedTabUUID:v4];
  }
}

- (void)updateLastSelectedTab
{
  [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
  lastSelectedTabUUID = self->super._lastSelectedTabUUID;
  if (lastSelectedTabUUID)
  {
    v6 = [(WBTabGroup *)self tabWithUUID:self->super._lastSelectedTabUUID];
    v4 = [v6 identifier];
  }

  else
  {
    v4 = 0x7FFFFFFFLL;
  }

  v5 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [v5 setLastSelectedChildID:v4];

  if (lastSelectedTabUUID)
  {
  }
}

- (NSArray)deletedTabs
{
  v2 = [(NSMutableArray *)self->super._deletedTabs copy];

  return v2;
}

- (void)clearDeletedTabs
{
  v3 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "Clearing deleted tabs", v4, 2u);
  }

  [(NSMutableArray *)self->super._deletedTabs removeAllObjects];
}

- (WBMutableTabGroup)initWithBookmark:(id)a3 tabs:(id)a4 lastSelectedTabUUID:(id)a5 kind:(int64_t)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = [(WBTabGroup *)self initWithBookmark:a3 lastSelectedTabUUID:a5 kind:a6];
  if (v11)
  {
    v12 = [v10 mutableCopy];
    tabs = v11->super._tabs;
    v11->super._tabs = v12;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v11->super._tabs;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v22 + 1) + 8 * v18++) _setPropertiesFromTabGroup:{v11, v22}];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [(WBTabGroup *)v11 _tabsDidChange];
    v19 = v11;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)localTabGroup
{
  v2 = objc_opt_class();
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 localTabGroupWithUUID:v4];

  return v5;
}

+ (id)localTabGroupWithUUID:(id)a3
{
  v3 = a3;
  v4 = [[WebBookmark alloc] initFolderWithParentID:0x7FFFFFFFLL collectionType:1];
  [v4 setTitle:@"Local"];
  [v4 _setUUID:v3];

  v5 = [(WBTabGroup *)[WBMutableTabGroup alloc] initWithBookmark:v4];
  [(WBMutableTabGroup *)v5 setHidden:1];
  [(WBMutableTabGroup *)v5 setSyncable:0];
  [(WBMutableTabGroup *)v5 setKind:0];

  return v5;
}

+ (id)privateTabGroup
{
  v2 = [[WebBookmark alloc] initFolderWithParentID:0x7FFFFFFFLL collectionType:1];
  [v2 setTitle:@"Private"];
  v3 = [(WBTabGroup *)[WBMutableTabGroup alloc] initWithBookmark:v2];
  [(WBMutableTabGroup *)v3 setHidden:1];
  [(WBMutableTabGroup *)v3 setSyncable:0];
  [(WBMutableTabGroup *)v3 setKind:1];

  return v3;
}

+ (id)unnamedTabGroupWithUUID:(id)a3 profileIdentifier:(id)a4 deviceIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[WebBookmark alloc] initFolderWithParentID:0 deviceIdentifier:v8 collectionType:1];

  [v11 setTitle:@"Unnamed"];
  [v11 _setUUID:v10];

  v12 = [[a1 alloc] initWithBookmark:v11];
  [v12 setKind:3];
  [v12 setSyncable:1];
  v13 = [v9 copy];

  [v12 setProfileIdentifier:v13];

  return v12;
}

+ (id)unnamedTabGroupWithDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDeviceIdentifier:v4];

  [v5 setKind:3];

  return v5;
}

- (WBMutableTabGroup)initWithTitle:(id)a3 deviceIdentifier:(id)a4 profileIdentifier:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277CCAD78];
  v10 = a4;
  v11 = a3;
  v12 = [v9 UUID];
  v13 = [v12 UUIDString];
  v14 = [(WBTabGroup *)self initWithTitle:v11 uuid:v13 deviceIdentifier:v10];

  if (v14)
  {
    [(WBMutableTabGroup *)v14 setProfileIdentifier:v8];
    v15 = v14;
  }

  return v14;
}

- (void)setDisplayTitleProvider:(id)a3
{
  v4 = [a3 copy];
  displayTitleProvider = self->super._displayTitleProvider;
  self->super._displayTitleProvider = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setLastSelectedTabUUID:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._lastSelectedTabUUID] & 1) == 0)
  {
    v4 = [v6 copy];
    lastSelectedTabUUID = self->super._lastSelectedTabUUID;
    self->super._lastSelectedTabUUID = v4;

    [(WBMutableTabGroup *)self updateLastSelectedTab];
  }
}

- (void)setTabs:(id)a3
{
  v4 = a3;
  if (([v4 isEqual:self->super._tabs] & 1) == 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__WBMutableTabGroup_setTabs___block_invoke;
    v5[3] = &unk_279E756B0;
    v6 = v4;
    v7 = self;
    [(WBMutableTabGroup *)self _performWithMutableTabs:v5];
  }
}

void __29__WBMutableTabGroup_setTabs___block_invoke(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) differenceFromArray:a2 withOptions:4];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [v3 insertions];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 object];
        if ([v9 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v10 didInsertIntoTabGroup:*(a1 + 40)];
        }

        else
        {
          [v10 setMoved:1];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
  }

  v11 = [v3 removals];
  v12 = [v11 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_5];

  v13 = [v12 count];
  if (v13)
  {
    v14 = v13;
    v15 = a1 + 40;
    [*(a1 + 40) _fixLastSelectedTabIfNeeded];
    v16 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *v15;
      v18 = v16;
      v19 = [v17 privacyPreservingDescription];
      *buf = 134349314;
      v30 = v14;
      v31 = 2114;
      v32 = v19;
      _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_DEFAULT, "Deleting %{public}zu tabs from tab group after set: %{public}@", buf, 0x16u);
    }

    if (v14 == [*(*v15 + 8) count])
    {
      v20 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __29__WBMutableTabGroup_setTabs___block_invoke_cold_1((a1 + 40), v20);
      }
    }
  }

  [*(*(a1 + 40) + 24) addObjectsFromArray:v12];
  [v12 makeObjectsPerformSelector:sel_markClean];
  v21 = [*(a1 + 32) mutableCopy];
  v22 = *(a1 + 40);
  v23 = *(v22 + 8);
  *(v22 + 8) = v21;

  v24 = *MEMORY[0x277D85DE8];
}

id __29__WBMutableTabGroup_setTabs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v2 object];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setKind:(int64_t)a3
{
  if (self->super._kind != a3)
  {
    self->super._kind = a3;
    v6 = [(WBTabGroup *)self isLocal]|| [(WBTabGroup *)self isPrivateBrowsing];
    [(WBMutableTabGroup *)self setHidden:v6];
    [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
    v7 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    v9 = v7;
    if (a3 == 3)
    {
      v8 = MEMORY[0x277CBEC38];
    }

    else
    {
      v8 = 0;
    }

    [v7 setExtraAttributesValue:v8 forKey:@"IsUnnamed"];
  }
}

- (void)setTitle:(id)a3
{
  bookmarkStorage = self->super._bookmarkStorage;
  v5 = a3;
  [(WBSCopyOnWriteValue *)bookmarkStorage willModify];
  v6 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [v6 setTitle:v5];
}

- (void)setDeletedTabs:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToArray:self->super._deletedTabs] & 1) == 0)
  {
    v4 = [v6 mutableCopy];
    deletedTabs = self->super._deletedTabs;
    self->super._deletedTabs = v4;
  }
}

- (void)setProfileIdentifier:(id)a3
{
  v4 = a3;
  profileIdentifier = self->super._profileIdentifier;
  v8 = v4;
  if ((WBSIsEqual() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._profileIdentifier;
    self->super._profileIdentifier = v6;
  }
}

- (void)setHidden:(BOOL)a3
{
  if ([(WBTabGroup *)self isHidden]!= a3)
  {
    v4 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    v5 = [v4 extraAttributes];
    if (v5)
    {
      v6 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
      v7 = [v6 extraAttributes];
      v9 = [v7 mutableCopy];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
    }

    [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"com.apple.bookmarks.OmitFromUI"];
    [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
    v8 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    [v8 setExtraAttributes:v9];
  }
}

- (void)markBackgroundImageAsModified
{
  [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
  v3 = MEMORY[0x277CCABB0];
  v7 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  v4 = [v7 backgroundImageModifiedState];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "BOOLValue") ^ 1}];
  v6 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [v6 setBackgroundImageModifiedState:v5];
}

- (WBSCRDTPosition)syncPosition
{
  v2 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  v3 = [v2 syncPosition];

  return v3;
}

- (void)setSyncPosition:(id)a3
{
  bookmarkStorage = self->super._bookmarkStorage;
  v5 = a3;
  [(WBSCopyOnWriteValue *)bookmarkStorage willModify];
  v6 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [v6 setSyncPosition:v5];
}

- (void)appendTabs:(id)a3
{
  tabs = self->super._tabs;
  v5 = a3;
  v6 = [(NSArray *)tabs lastObject];
  [(WBMutableTabGroup *)self insertTabs:v5 afterTab:v6];
}

- (void)_performWithMutableTabs:(id)a3
{
  (*(a3 + 2))(a3, self->super._tabs);

  [(WBTabGroup *)self _tabsDidChange];
}

- (void)insertTabs:(id)a3 afterTab:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    *buf = 134217984;
    v32 = [v6 count];
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Inserting %zu tabs", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = WBS_LOG_CHANNEL_PREFIXTabGroup();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = v15;
          v17 = [v14 privacyPreservingDescription];
          *buf = 138543362;
          v32 = v17;
          _os_log_impl(&dword_272C20000, v16, OS_LOG_TYPE_INFO, "Tab marked as added: %{public}@", buf, 0xCu);
        }

        [v14 didInsertIntoTabGroup:self];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __41__WBMutableTabGroup_insertTabs_afterTab___block_invoke;
  v22[3] = &unk_279E756D8;
  v23 = v9;
  v24 = self;
  v25 = v21;
  v18 = v21;
  v19 = v9;
  [(WBMutableTabGroup *)self _performWithMutableTabs:v22];

  v20 = *MEMORY[0x277D85DE8];
}

void __41__WBMutableTabGroup_insertTabs_afterTab___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v7 = [v4 uuid];
  v6 = [v3 mutableTabWithUUID:v7];
  [v5 safari_insertObjects:v2 afterObject:v6];
}

- (id)duplicateTabs:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    *buf = 134217984;
    v18 = [v4 count];
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "Duplicating %zu tabs", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CBEB18] array];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __35__WBMutableTabGroup_duplicateTabs___block_invoke;
  v13[3] = &unk_279E756D8;
  v14 = v4;
  v15 = self;
  v16 = v7;
  v8 = v7;
  v9 = v4;
  [(WBMutableTabGroup *)self _performWithMutableTabs:v13];
  v10 = [v8 copy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __35__WBMutableTabGroup_duplicateTabs___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v3 indexOfObject:{v9, v16}];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v10;
          v12 = [v9 mutableDuplicate];
          [v12 didInsertIntoTabGroup:*(a1 + 40)];
          [v3 insertObject:v12 atIndex:v11 + 1];
          v13 = *(a1 + 48);
          v14 = [v12 copy];
          [v13 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deleteTabs:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __32__WBMutableTabGroup_deleteTabs___block_invoke;
  v16[3] = &unk_279E75700;
  v16[4] = self;
  v5 = [v4 safari_mapObjectsUsingBlock:v16];
  v6 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v4 count];
    *buf = 134217984;
    v18 = v8;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "%zu tabs deleted", buf, 0xCu);
  }

  [v5 makeObjectsPerformSelector:sel_markClean];
  [(NSMutableArray *)self->super._deletedTabs addObjectsFromArray:v5];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __32__WBMutableTabGroup_deleteTabs___block_invoke_9;
  v14 = &unk_279E75728;
  v15 = v5;
  v9 = v5;
  [(WBMutableTabGroup *)self _performWithMutableTabs:&v11];
  [(WBMutableTabGroup *)self _fixLastSelectedTabIfNeeded:v11];

  v10 = *MEMORY[0x277D85DE8];
}

id __32__WBMutableTabGroup_deleteTabs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 mutableTabWithUUID:v3];

  return v4;
}

- (void)removeTab:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 privacyPreservingDescription];
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "Removing tab %{public}@", buf, 0xCu);
  }

  v8 = [v4 uuid];
  v9 = [(WBMutableTabGroup *)self mutableTabWithUUID:v8];

  [v9 didRemoveFromTabGroup];
  [v9 markClean];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__WBMutableTabGroup_removeTab___block_invoke;
  v12[3] = &unk_279E75728;
  v13 = v9;
  v10 = v9;
  [(WBMutableTabGroup *)self _performWithMutableTabs:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reorderTab:(id)a3 afterTab:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 privacyPreservingDescription];
    v11 = [v7 privacyPreservingDescription];
    *buf = 138543618;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Reordering tab %{public}@ after tab %{public}@", buf, 0x16u);
  }

  v12 = [v6 uuid];
  v13 = [(WBMutableTabGroup *)self mutableTabWithUUID:v12];

  if (v13)
  {
    if (v7)
    {
      v14 = [v7 uuid];
      v15 = [(WBMutableTabGroup *)self mutableTabWithUUID:v14];
    }

    else
    {
      v15 = 0;
    }

    [v13 setMoved:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__WBMutableTabGroup_reorderTab_afterTab___block_invoke;
    v18[3] = &unk_279E756B0;
    v19 = v13;
    v20 = v15;
    v16 = v15;
    [(WBMutableTabGroup *)self _performWithMutableTabs:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __41__WBMutableTabGroup_reorderTab_afterTab___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 removeObject:v3];
  [v4 safari_insertObject:*(a1 + 32) afterObject:*(a1 + 40)];
}

- (void)truncateToNumberOfTabs:(unint64_t)a3
{
  if ([(NSArray *)self->super._tabs count]>= a3 && [(WBTabGroup *)self isSyncable])
  {
    v9 = [(NSArray *)self->super._tabs subarrayWithRange:0, a3];
    v5 = [(NSArray *)self->super._tabs subarrayWithRange:a3, [(NSArray *)self->super._tabs count]- a3];
    overflowRemoteTabs = self->super._overflowRemoteTabs;
    self->super._overflowRemoteTabs = v5;

    v7 = [v9 mutableCopy];
    tabs = self->super._tabs;
    self->super._tabs = v7;

    [(WBTabGroup *)self _tabsDidChange];
  }
}

- (void)mergeWithTabGroup:(id)a3
{
  bookmarkStorage = self->super._bookmarkStorage;
  v5 = a3;
  [(WBSCopyOnWriteValue *)bookmarkStorage willModify];
  v6 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  v7 = [v5[5] value];
  [v6 mergeWithBookmark:v7];

  v11 = [v5 displayTitleProvider];

  displayTitleProvider = v11;
  if (!v11)
  {
    displayTitleProvider = self->super._displayTitleProvider;
  }

  v9 = MEMORY[0x2743D6830](displayTitleProvider);
  v10 = self->super._displayTitleProvider;
  self->super._displayTitleProvider = v9;
}

void __29__WBMutableTabGroup_setTabs___block_invoke_cold_1(void **a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_272C20000, v3, OS_LOG_TYPE_ERROR, "Deleted all previous tabs from tab group after set: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end