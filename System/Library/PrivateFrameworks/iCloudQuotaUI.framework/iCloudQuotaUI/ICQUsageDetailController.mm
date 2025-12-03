@interface ICQUsageDetailController
+ (BOOL)hasMediaForGroups:(id)groups;
+ (float)totalSizeForGroups:(id)groups;
+ (id)mpKeyTranslations;
+ (void)setupSpecifier:(id)specifier forMediaGroups:(id)groups;
- (BOOL)hasMedia;
- (BOOL)isAppController;
- (BOOL)removeMediaEntry:(id)entry inSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BOOL)updateSizesAfterDeletingMediaKind:(id)kind deletedSection:(BOOL)section shouldPop:(BOOL)pop;
- (ICQUsageStorageController)storageController;
- (id)copyMediaSpecifiers;
- (id)documentsAndDataSpecifiers;
- (id)dynamicSize:(id)size;
- (id)size:(id)size;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)confirmAppDeletion;
- (void)deleteApp;
- (void)loadView;
- (void)showMore:(id)more;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation ICQUsageDetailController

+ (id)mpKeyTranslations
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"name";
  v2 = *MEMORY[0x277CD5800];
  v7[0] = @"audiopodcasts";
  v7[1] = @"videopodcasts";
  v8[0] = v2;
  v8[1] = v2;
  v3 = *MEMORY[0x277CD56D0];
  v7[2] = @"audiocourses";
  v7[3] = @"videocourses";
  v8[2] = v3;
  v8[3] = v3;
  v7[4] = @"audiobooks";
  v8[4] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v5;
}

+ (float)totalSizeForGroups:(id)groups
{
  v19 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v4 = +[ICQUsageStorageMonitor sharedMonitor];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = groupsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v4 mediaCollectionForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        [v11 totalSize];
        v9 = v9 + v12;
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

+ (BOOL)hasMediaForGroups:(id)groups
{
  v18 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  if ([groupsCopy count])
  {
    v4 = +[ICQUsageStorageMonitor sharedMonitor];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = groupsCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [v4 mediaCollectionForKey:{*(*(&v13 + 1) + 8 * i), v13}];
          items = [v9 items];
          v11 = [items count];

          if (v11)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (void)setupSpecifier:(id)specifier forMediaGroups:(id)groups
{
  specifierCopy = specifier;
  groupsCopy = groups;
  v7 = [specifierCopy propertyForKey:@"USAGE_APP"];
  [ICQUsageDetailController totalSizeForGroups:groupsCopy];
  v9 = v8;
  v10 = MEMORY[0x277CCABB0];
  [v7 totalSize];
  *&v12 = v9 + v11;
  v13 = [v10 numberWithFloat:v12];
  [specifierCopy setProperty:v13 forKey:kTotalSizeProperty];

  if (v7)
  {
    v14 = 2;
  }

  else
  {
    [self totalSizeForGroups:groupsCopy];
    if (v15 <= 0.0)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }
  }

  [specifierCopy setCellType:v14];
}

- (BOOL)hasMedia
{
  mediaGroups = [objc_opt_class() mediaGroups];
  v3 = [objc_opt_class() hasMediaForGroups:mediaGroups];

  return v3;
}

- (BOOL)isAppController
{
  specifier = [(ICQUsageDetailController *)self specifier];
  v3 = [specifier propertyForKey:@"USAGE_APP"];
  v4 = v3 != 0;

  return v4;
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = ICQUsageDetailController;
  [(ICQUsageDetailController *)&v15 loadView];
  table = [(ICQUsageDetailController *)self table];
  if ([(ICQUsageDetailController *)self isAppController])
  {
    v4 = [ICQUsageDetailHeader alloc];
    +[ICQUsageDetailHeader usageDetailHeaderHeight];
    v6 = [(ICQUsageDetailHeader *)v4 initWithFrame:0.0, 0.0, 0.0, v5];
    [(ICQUsageDetailHeader *)v6 setLabelTextAndIconWithSpecifier:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
    [table setTableHeaderView:v6];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"INFO" value:&stru_28844FC60 table:@"Usage Statistics"];
    [(ICQUsageDetailController *)self setTitle:v8];

    navigationItem = [(ICQUsageDetailController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D75D18]);
    if (PSIsiPad())
    {
      v12 = 20.0;
    }

    else
    {
      v12 = 10.0;
    }

    v6 = [v11 initWithFrame:{0.0, 0.0, 0.0, v12}];
    [table setTableHeaderView:v6];
  }

  if (![(ICQUsageDetailController *)self hasMedia])
  {
    [(PSEditableListController *)self setEditingButtonHidden:1 animated:0];
  }

  v13 = +[ICQUsageStorageMonitor sharedMonitor];
  footerItems = [v13 footerItems];
  [(ICQUsageDetailController *)self setToolbarItems:footerItems animated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ICQUsageDetailController;
  [(ICQUsageDetailController *)&v4 viewDidDisappear:disappear];
  if ([(ICQUsageDetailController *)self isMovingFromParentViewController])
  {
    [(ICQUsageDetailController *)self setStorageController:0];
  }
}

- (void)showMore:(id)more
{
  moreCopy = more;
  v12 = 0;
  [(ICQUsageDetailController *)self getGroup:&v12 row:0 ofSpecifier:moreCopy];
  media = self->_media;
  v6 = [moreCopy propertyForKey:@"mediaKind"];
  v7 = [(NSMutableDictionary *)media objectForKey:v6];

  v8 = [v7 objectForKey:@"usageGroupSpecifiers"];
  v9 = [v8 count];
  v10 = 0;
  if (v9 >= 7)
  {
    v10 = [v8 subarrayWithRange:{6, v9 - 6}];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v7 setObject:v11 forKey:@"usageGroupShowAll"];

  [v7 removeObjectForKey:@"usageGroupShowAllSpecifier"];
  [(ICQUsageDetailController *)self beginUpdates];
  [(ICQUsageDetailController *)self removeSpecifier:moreCopy];
  if (v10)
  {
    [(ICQUsageDetailController *)self insertContiguousSpecifiers:v10 atEndOfGroup:v12 animated:1];
  }

  [(ICQUsageDetailController *)self endUpdates];
}

- (BOOL)removeMediaEntry:(id)entry inSection:(int64_t)section
{
  entryCopy = entry;
  v7 = [entryCopy propertyForKey:@"mediaKind"];
  v8 = [(NSMutableDictionary *)self->_media objectForKey:v7];
  v9 = [v8 objectForKey:@"usageGroupSpecifiers"];
  [(ICQUsageDetailController *)self beginUpdates];
  v10 = [v8 objectForKey:@"usageGroupShowAll"];
  bOOLValue = [v10 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [v9 removeObject:entryCopy];
    if ([v9 count] > 6)
    {
      [(ICQUsageDetailController *)self removeSpecifier:entryCopy animated:1];
      v17 = [v9 objectAtIndex:5];
      v18 = [v8 objectForKey:@"usageGroupShowAllSpecifier"];
      [(ICQUsageDetailController *)self insertSpecifier:v17 atIndex:[(ICQUsageDetailController *)self indexOfSpecifier:v18] animated:1];
    }

    else
    {
      v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v8 setObject:v12 forKey:@"usageGroupShowAll"];

      v13 = [v8 objectForKey:@"usageGroupShowAllSpecifier"];
      [(ICQUsageDetailController *)self removeSpecifier:v13 animated:1];

      [(ICQUsageDetailController *)self removeSpecifier:entryCopy animated:1];
      [v8 removeObjectForKey:@"usageGroupShowAllSpecifier"];
      v14 = [v9 objectAtIndex:5];
      [(ICQUsageDetailController *)self insertSpecifier:v14 atEndOfGroup:section animated:1];
    }

    goto LABEL_8;
  }

  if ([v9 count] >= 3)
  {
    [(ICQUsageDetailController *)self removeSpecifier:entryCopy animated:1];
    [v9 removeObject:entryCopy];
LABEL_8:
    v16 = v9;
    goto LABEL_9;
  }

  [(ICQUsageDetailController *)self removeContiguousSpecifiers:v9 animated:1];
  [(NSMutableDictionary *)self->_media removeObjectForKey:v7];
  v15 = +[ICQUsageStorageMonitor sharedMonitor];
  [v15 removeMediaCollectionCacheForKey:v7];

  v16 = 0;
LABEL_9:

  [(ICQUsageDetailController *)self endUpdates];
  return v16 == 0;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v27[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = [pathCopy row];
  section = [pathCopy section];
  v9 = [(ICQUsageDetailController *)self indexForIndexPath:pathCopy];

  v10 = [(ICQUsageDetailController *)self specifierAtIndex:v9];
  v11 = [v10 propertyForKey:@"mediaKind"];
  v12 = [(NSMutableDictionary *)self->_media objectForKey:v11];
  v13 = +[ICQUsageStorageMonitor sharedMonitor];
  v14 = [v13 mediaCollectionForKey:v11];
  v15 = [(ICQUsageDetailController *)self removeMediaEntry:v10 inSection:section];
  v16 = [v12 objectForKey:@"usageGroupMediaType"];
  intValue = [v16 intValue];

  if (intValue)
  {
    if (intValue != 1)
    {
      v22 = 0;
      goto LABEL_7;
    }

    items = [v14 items];
    v19 = [items objectAtIndex:v7];

    v27[0] = v19;
    items3 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  }

  else
  {
    items2 = [v14 items];
    v19 = [items2 objectAtIndex:v7];

    items3 = [v19 items];
  }

  v22 = items3;

LABEL_7:
  v23 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ICQUsageDetailController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
  block[3] = &unk_27A65A820;
  v26 = v22;
  v24 = v22;
  dispatch_async(v23, block);

  [v14 removeItemAtIndex:v7];
  [(ICQUsageDetailController *)self updateSizesAfterDeletingMediaKind:v11 deletedSection:v15 shouldPop:1];
}

void __75__ICQUsageDetailController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [v2 removeItems:*(a1 + 32)];

  v3 = MEMORY[0x277D85CD0];

  dispatch_async(v3, &__block_literal_global_3);
}

void __75__ICQUsageDetailController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2()
{
  v0 = +[ICQUsageStorageMonitor sharedMonitor];
  [v0 fetchSystemSizeStrings];
}

- (BOOL)updateSizesAfterDeletingMediaKind:(id)kind deletedSection:(BOOL)section shouldPop:(BOOL)pop
{
  popCopy = pop;
  kindCopy = kind;
  if (!section)
  {
    v9 = [(NSMutableDictionary *)self->_media objectForKey:kindCopy];
    v10 = [v9 objectForKey:@"usageGroupSpecifiers"];
    v11 = +[ICQUsageStorageMonitor sharedMonitor];
    v12 = [v11 mediaCollectionForKey:kindCopy];

    v13 = [v10 objectAtIndex:0];
    [v12 totalSize];
    v15 = v14;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v13 setProperty:v16 forKey:@"SIZE"];

    v17 = [MEMORY[0x277CCA8E8] stringFromByteCount:v15 countStyle:2];
    v18 = [v13 propertyForKey:*MEMORY[0x277D3FFB0]];
    [v18 setSize:v17];
  }

  isAppController = [(ICQUsageDetailController *)self isAppController];
  v20 = objc_opt_class();
  v21 = *MEMORY[0x277D3FD20];
  v22 = *(&self->super.super.super.super.super.super.isa + v21);
  mediaGroups = [objc_opt_class() mediaGroups];
  [v20 setupSpecifier:v22 forMediaGroups:mediaGroups];

  if (!isAppController && ![(NSMutableDictionary *)self->_media count])
  {
    [*(&self->super.super.super.super.super.super.isa + v21) setCellType:4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_storageController);
  if (!WeakRetained)
  {
    [ICQUsageDetailController updateSizesAfterDeletingMediaKind:deletedSection:shouldPop:];
  }

  v25 = objc_loadWeakRetained(&self->_storageController);
  [v25 sizeChangedForSpecifier:*(&self->super.super.super.super.super.super.isa + v21)];

  if (isAppController || !popCopy || [(NSMutableDictionary *)self->_media count])
  {
    v26 = 0;
  }

  else
  {
    navigationController = [(ICQUsageDetailController *)self navigationController];
    parentController = [(ICQUsageDetailController *)self parentController];
    v26 = 1;
    v30 = [navigationController popToViewController:parentController animated:1];
  }

  return v26;
}

- (id)size:(id)size
{
  sizeCopy = size;
  v5 = [sizeCopy propertyForKey:@"mediaKind"];
  v20 = 0;
  [(ICQUsageDetailController *)self getGroup:0 row:&v20 ofSpecifier:sizeCopy];

  v6 = +[ICQUsageStorageMonitor sharedMonitor];
  v7 = [(NSMutableDictionary *)self->_media objectForKey:v5];
  v8 = [v7 objectForKey:@"usageGroupMediaType"];
  intValue = [v8 intValue];

  if (intValue)
  {
    v10 = 0;
    if (intValue != 1)
    {
      goto LABEL_6;
    }

    v11 = [v6 mediaCollectionForKey:v5];
    items = [v11 items];
    v13 = [items objectAtIndex:v20];
    v14 = [v13 valueForProperty:*MEMORY[0x277CD5748]];
    [v14 floatValue];
    v16 = v15;
  }

  else
  {
    v11 = [v6 mediaCollectionForKey:v5];
    items = [v11 itemSizes];
    v13 = [items objectAtIndex:v20];
    [v13 floatValue];
    v16 = v17;
  }

  v10 = v16;
LABEL_6:
  v18 = [MEMORY[0x277CCA8E8] stringFromByteCount:v10 countStyle:2];

  return v18;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(ICQUsageDetailController *)self indexForIndexPath:path];
  v6 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v5];
  v7 = (*&v6[*MEMORY[0x277D3FC90]] - 1) < 4;
  identifier = [v6 identifier];
  v9 = [identifier isEqualToString:@"DOCS_AND_DATA"];

  v10 = v7 & ((v9 | [MEMORY[0x277D75128] isRunningInStoreDemoMode]) ^ 1);
  return v10;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(ICQUsageDetailController *)self tableView:view editingStyleForRowAtIndexPath:pathCopy])
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:{-[ICQUsageDetailController indexForIndexPath:](self, "indexForIndexPath:", pathCopy)}];
    v9 = [v8 propertyForKey:*MEMORY[0x277D3FFB8]];
    v7 = [v9 isEqualToString:@"SHOW_ALL"];
  }

  return v7;
}

- (id)dynamicSize:(id)size
{
  v4 = *MEMORY[0x277D3FD20];
  v5 = [*(&self->super.super.super.super.super.super.isa + v4) propertyForKey:@"USAGE_APP"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [*(&self->super.super.super.super.super.super.isa + v4) propertyForKey:@"USAGE_APP"];
    v8 = MEMORY[0x277CCA8E8];
    [v7 dataSize];
    v10 = [v8 stringFromByteCount:v9 countStyle:2];
  }

  else
  {
    v10 = &stru_28844FC60;
  }

  return v10;
}

- (void)confirmAppDeletion
{
  v21 = objc_alloc_init(MEMORY[0x277D3F9C8]);
  v19 = MEMORY[0x277CBEAC0];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v20 localizedStringForKey:@"DELETE" value:&stru_28844FC60 table:@"Usage Statistics"];
  v15 = *MEMORY[0x277D3FE88];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v18 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"Usage Statistics"];
  v14 = *MEMORY[0x277D3FE78];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DELETE_APP_EXPLANATION" value:&stru_28844FC60 table:@"Usage Statistics"];
  name = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) name];
  v8 = [v4 stringWithFormat:v6, name];
  v9 = *MEMORY[0x277D3FE90];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"DELETE_APP" value:&stru_28844FC60 table:@"Usage Statistics"];
  v12 = [v19 dictionaryWithObjectsAndKeys:{v16, v15, v3, v14, v8, v9, v11, *MEMORY[0x277D3FE98], 0}];
  [v21 setupWithDictionary:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v21 setProperty:v13 forKey:*MEMORY[0x277D3FE80]];

  objc_storeWeak(&v21[*MEMORY[0x277D3FCB8]], self);
  [v21 setConfirmationAction:sel_deleteApp];
  [(ICQUsageDetailController *)self showConfirmationViewForSpecifier:v21];
}

- (void)deleteApp
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  selfCopy = self;
  v4 = 2080;
  v5 = "[ICQUsageDetailController deleteApp]";
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "%@-%s: This class should no longer be used.", &v2, 0x16u);
}

- (id)documentsAndDataSpecifiers
{
  navigationItem = [(ICQUsageDetailController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  array = [MEMORY[0x277CBEB18] array];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [array addObject:emptyGroupSpecifier];

  v7 = MEMORY[0x277D3FAD8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DOCUMENTS_AND_DATA" value:&stru_28844FC60 table:@"Usage Statistics"];
  v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:sel_dynamicSize_ detail:0 cell:4 edit:0];

  [v10 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v10 setIdentifier:@"DOCS_AND_DATA"];
  [array addObject:v10];

  return array;
}

- (id)copyMediaSpecifiers
{
  v101 = *MEMORY[0x277D85DE8];
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!self->_media)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
    media = self->_media;
    self->_media = v3;
  }

  v5 = +[ICQUsageStorageMonitor sharedMonitor];
  mediaGroups = [objc_opt_class() mediaGroups];
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __47__ICQUsageDetailController_copyMediaSpecifiers__block_invoke;
  v96[3] = &unk_27A65AF08;
  v7 = v5;
  v97 = v7;
  v8 = [mediaGroups sortedArrayUsingComparator:v96];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v92 objects:v100 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v93;
    v67 = *MEMORY[0x277CD5748];
    v76 = *MEMORY[0x277CD58B8];
    v81 = *MEMORY[0x277D3FE58];
    v80 = *MEMORY[0x277D40020];
    v66 = *MEMORY[0x277D3FFA0];
    v65 = *MEMORY[0x277D3FFB8];
    v68 = *v93;
    v69 = v7;
    do
    {
      v12 = 0;
      v70 = v10;
      do
      {
        if (*v93 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v75 = v12;
        v13 = *(*(&v92 + 1) + 8 * v12);
        v77 = [v7 mediaCollectionForKey:v13];
        items = [v77 items];
        v15 = [items count];

        if (v15)
        {
          v16 = [(NSMutableDictionary *)self->_media objectForKey:v13];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 objectForKey:@"usageGroupSpecifiers"];
            v19 = [v17 objectForKey:@"usageGroupShowAll"];
            bOOLValue = [v19 BOOLValue];

            if (bOOLValue)
            {
              [v73 addObjectsFromArray:v18];
            }

            else
            {
              v38 = [v18 subarrayWithRange:{0, 6}];
              [v73 addObjectsFromArray:v38];

              v39 = [v17 objectForKey:@"usageGroupShowAllSpecifier"];
              [v73 addObject:v39];
            }
          }

          else
          {
            v83 = v13;
            [v77 sortItemsByMediaKey:v67];
            items2 = [v77 items];
            v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
            v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(items2, "count") + 1}];
            [v22 setObject:v23 forKey:@"usageGroupSpecifiers"];
            isGrouped = [v77 isGrouped];
            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:isGrouped ^ 1u];
            v71 = v22;
            [v22 setObject:v25 forKey:@"usageGroupMediaType"];

            v74 = items2;
            v82 = v23;
            if (isGrouped)
            {
              v86 = 0uLL;
              v87 = 0uLL;
              v84 = 0uLL;
              v85 = 0uLL;
              v78 = items2;
              v26 = [v78 countByEnumeratingWithState:&v84 objects:v98 count:16];
              if (v26)
              {
                v27 = v26;
                v79 = *v85;
                do
                {
                  for (i = 0; i != v27; ++i)
                  {
                    selfCopy = self;
                    if (*v85 != v79)
                    {
                      objc_enumerationMutation(v78);
                    }

                    representativeItem = [*(*(&v84 + 1) + 8 * i) representativeItem];
                    v31 = +[ICQUsageDetailController mpKeyTranslations];
                    v32 = [v31 objectForKey:@"name"];
                    v33 = [v32 objectForKey:v83];
                    v34 = [representativeItem valueForProperty:v33];

                    self = selfCopy;
                    v35 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v34 target:selfCopy set:0 get:sel_size_ detail:0 cell:4 edit:0];
                    [v35 setProperty:objc_opt_class() forKey:v81];
                    artworkCatalog = [representativeItem artworkCatalog];
                    [v35 setProperty:artworkCatalog forKey:@"ICON_LOADER"];

                    v37 = [MEMORY[0x277CCABB0] numberWithBool:1];
                    [v35 setProperty:v37 forKey:v80];

                    [v35 setProperty:v83 forKey:@"mediaKind"];
                    [v82 addObject:v35];
                  }

                  v27 = [v78 countByEnumeratingWithState:&v84 objects:v98 count:16];
                }

                while (v27);
              }
            }

            else
            {
              v90 = 0uLL;
              v91 = 0uLL;
              v88 = 0uLL;
              v89 = 0uLL;
              v40 = items2;
              v41 = [v40 countByEnumeratingWithState:&v88 objects:v99 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v89;
                do
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (*v89 != v43)
                    {
                      objc_enumerationMutation(v40);
                    }

                    v45 = *(*(&v88 + 1) + 8 * j);
                    v46 = [v45 valueForProperty:v76];
                    v47 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v46 target:self set:0 get:sel_size_ detail:0 cell:4 edit:0];
                    [v47 setProperty:objc_opt_class() forKey:v81];
                    artworkCatalog2 = [v45 artworkCatalog];
                    [v47 setProperty:artworkCatalog2 forKey:@"ICON_LOADER"];

                    v49 = [MEMORY[0x277CCABB0] numberWithBool:1];
                    [v47 setProperty:v49 forKey:v80];

                    [v47 setProperty:v83 forKey:@"mediaKind"];
                    [v82 addObject:v47];
                  }

                  v42 = [v40 countByEnumeratingWithState:&v88 objects:v99 count:16];
                }

                while (v42);
              }
            }

            v50 = MEMORY[0x277D3FAD8];
            v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v52 = [v51 localizedStringForKey:v83 value:&stru_28844FC60 table:@"Usage Statistics"];
            v53 = [v50 preferenceSpecifierNamed:v52 target:0 set:0 get:0 detail:0 cell:0 edit:0];

            v54 = v83;
            [v53 setProperty:@"PSUsageSizeHeader" forKey:v66];
            v55 = MEMORY[0x277CCABB0];
            [v77 totalSize];
            v56 = [v55 numberWithFloat:?];
            [v53 setProperty:v56 forKey:@"SIZE"];

            [v53 setProperty:v83 forKey:@"mediaKind"];
            [v82 insertObject:v53 atIndex:0];
            if (([v82 count] - 7) > 0xFFFFFFFFFFFFFFF9)
            {
              v63 = [MEMORY[0x277CCABB0] numberWithBool:1];
              v17 = v71;
              [v71 setObject:v63 forKey:@"usageGroupShowAll"];

              [v73 addObjectsFromArray:v82];
            }

            else
            {
              v57 = [v82 subarrayWithRange:{0, 6}];
              [v73 addObjectsFromArray:v57];

              v58 = MEMORY[0x277D3FAD8];
              v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v60 = [v59 localizedStringForKey:@"SHOW_ALL" value:&stru_28844FC60 table:@"Usage Statistics"];
              v61 = [v58 preferenceSpecifierNamed:v60 target:self set:0 get:0 detail:0 cell:13 edit:0];

              [v61 setProperty:@"SHOW_ALL" forKey:v65];
              [v61 setProperty:v83 forKey:@"mediaKind"];
              [v61 setProperty:objc_opt_class() forKey:v81];
              [v61 setButtonAction:sel_showMore_];
              [v73 addObject:v61];
              v62 = [MEMORY[0x277CCABB0] numberWithBool:0];
              v17 = v71;
              [v71 setObject:v62 forKey:@"usageGroupShowAll"];

              [v71 setObject:v61 forKey:@"usageGroupShowAllSpecifier"];
              v54 = v83;
            }

            v7 = v69;
            v10 = v70;
            v11 = v68;
            [(NSMutableDictionary *)self->_media setObject:v17 forKey:v54];

            v18 = v74;
          }
        }

        v12 = v75 + 1;
      }

      while (v75 + 1 != v10);
      v10 = [obj countByEnumeratingWithState:&v92 objects:v100 count:16];
    }

    while (v10);
  }

  return v73;
}

uint64_t __47__ICQUsageDetailController_copyMediaSpecifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 mediaCollectionForKey:a2];
  v8 = [*(a1 + 32) mediaCollectionForKey:v6];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    v11 = !v10;
    if (v7)
    {
      v12 = v8 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v17 = -1;
    }

    else
    {
      v17 = v11;
    }
  }

  else
  {
    v13 = MEMORY[0x277CCABB0];
    [v8 totalSize];
    v14 = [v13 numberWithFloat:?];
    v15 = MEMORY[0x277CCABB0];
    [v7 totalSize];
    v16 = [v15 numberWithFloat:?];
    v17 = [v14 compare:v16];
  }

  return v17;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    if ([(ICQUsageDetailController *)self hasMedia])
    {
      copyMediaSpecifiers = [(ICQUsageDetailController *)self copyMediaSpecifiers];
    }

    else
    {
      copyMediaSpecifiers = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v6 = copyMediaSpecifiers;
    if ([(ICQUsageDetailController *)self isAppController])
    {
      documentsAndDataSpecifiers = [(ICQUsageDetailController *)self documentsAndDataSpecifiers];
      [v6 addObjectsFromArray:documentsAndDataSpecifiers];
    }

    if (![(ICQUsageDetailController *)self isAppController])
    {
      goto LABEL_11;
    }

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    if ([mEMORY[0x277D262A0] effectiveRestrictedBoolValueForSetting:*MEMORY[0x277D25D20]] != 2)
    {
      isRunningInStoreDemoMode = [MEMORY[0x277D75128] isRunningInStoreDemoMode];

      if (isRunningInStoreDemoMode)
      {
        goto LABEL_11;
      }

      mEMORY[0x277D262A0] = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:@"USAGE_APP"];
      if (([mEMORY[0x277D262A0] isSystemApp] & 1) == 0)
      {
        emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        [v6 addObject:emptyGroupSpecifier];

        v13 = MEMORY[0x277D3FAD8];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"DELETE_APP" value:&stru_28844FC60 table:@"Usage Statistics"];
        v16 = [v13 deleteButtonSpecifierWithName:v15 target:self action:sel_confirmAppDeletion];
        [v6 addObject:v16];
      }
    }

LABEL_11:
    v10 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (ICQUsageStorageController)storageController
{
  WeakRetained = objc_loadWeakRetained(&self->_storageController);

  return WeakRetained;
}

@end