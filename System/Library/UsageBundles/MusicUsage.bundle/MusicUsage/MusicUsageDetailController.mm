@interface MusicUsageDetailController
- (id)_placeholderAlbumArtistArtworkCatalog;
- (id)sizeForSpecifier:(id)specifier;
- (id)specifiers;
- (id)specifiersFromUsageGroups;
- (void)addUsageGroup:(id)group;
- (void)buildUsageGroupForCategory:(id)category usingStorageReporter:(id)reporter;
- (void)deleteUsageItemAtIndexPath:(id)path;
- (void)reloadSpecifiers;
- (void)removeSpecifierAtIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateLocalSongsGroupSize;
- (void)updateUsageBundleSizeForCategoryIdentifier:(id)identifier;
- (void)viewDidLoad;
@end

@implementation MusicUsageDetailController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = MusicUsageDetailController;
  [(MusicUsageDetailController *)&v10 viewDidLoad];
  [(MusicUsageDetailController *)self setEditingButtonHidden:0 animated:0];
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[NSOperationQueue mainQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6028;
  v7[3] = &unk_10528;
  objc_copyWeak(&v8, &location);
  v5 = [v3 addObserverForName:UISceneWillEnterForegroundNotification object:0 queue:v4 usingBlock:v7];
  sceneDidEnterForegroundObserver = self->sceneDidEnterForegroundObserver;
  self->sceneDidEnterForegroundObserver = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    specifier = [(MusicUsageDetailController *)self specifier];
    v6 = [specifier propertyForKey:PSUsageBundleAppKey];

    usageBundleStorageReporter = [v6 usageBundleStorageReporter];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    categories = [v6 categories];
    v9 = [categories countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(categories);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          [usageBundleStorageReporter sizeForCategory:v13];
          if (fabsf(v14) >= 0.00000011921)
          {
            [(MusicUsageDetailController *)self buildUsageGroupForCategory:v13 usingStorageReporter:usageBundleStorageReporter];
          }
        }

        v10 = [categories countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    specifiersFromUsageGroups = [(MusicUsageDetailController *)self specifiersFromUsageGroups];
    v16 = *&self->PSUsageBundleDetailController_opaque[v3];
    *&self->PSUsageBundleDetailController_opaque[v3] = specifiersFromUsageGroups;

    v4 = *&self->PSUsageBundleDetailController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(MusicUsageDetailController *)self specifierAtIndex:[(MusicUsageDetailController *)self indexForIndexPath:pathCopy]];
  v9 = [v8 propertyForKey:@"MusicUsageItemPropertyKey"];
  childUsageGroup = [v9 childUsageGroup];
  numberOfUsageItems = [childUsageGroup numberOfUsageItems];

  if (numberOfUsageItems)
  {
    specifier = [(MusicUsageDetailController *)self specifier];
    v13 = PSUsageBundleAppKey;
    v14 = [specifier propertyForKey:PSUsageBundleAppKey];
    [v8 setProperty:v14 forKey:v13];

    v15 = [MusicUsageArtistDetailController alloc];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_6694;
    v19[3] = &unk_10440;
    v20 = v9;
    selfCopy = self;
    v16 = v8;
    v22 = v16;
    v17 = [(MusicUsageArtistDetailController *)v15 initWithFileSizeDidChangeHandler:v19];
    [(MusicUsageArtistDetailController *)v17 setParentController:self];
    [(MusicUsageArtistDetailController *)v17 setSpecifier:v16];
    rootController = [(MusicUsageDetailController *)self rootController];
    [(MusicUsageArtistDetailController *)v17 setRootController:rootController];

    [(MusicUsageDetailController *)self showController:v17 animate:1];
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  [(MusicUsageDetailController *)self removeSpecifierAtIndexPath:path, style];
  if (![(NSMutableArray *)self->_usageGroups count])
  {
    navigationController = [(MusicUsageDetailController *)self navigationController];
    v6 = [navigationController popViewControllerAnimated:1];
  }
}

- (id)sizeForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"MusicUsageItemPropertyKey"];
  itemCollection = [v5 itemCollection];

  if (itemCollection)
  {
    itemCollection2 = [v5 itemCollection];
    v8 = [NSByteCountFormatter stringFromByteCount:MusicUsageFileSizeForMediaItemCollection(itemCollection2) countStyle:2];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MusicUsageDetailController;
    v8 = [(MusicUsageDetailController *)&v10 sizeForSpecifier:specifierCopy];
  }

  return v8;
}

- (void)reloadSpecifiers
{
  [(NSMutableArray *)self->_usageGroups removeAllObjects];
  v3.receiver = self;
  v3.super_class = MusicUsageDetailController;
  [(MusicUsageDetailController *)&v3 reloadSpecifiers];
}

- (void)updateLocalSongsGroupSize
{
  [(MusicUsageGroup *)self->_localSongsGroup updateGroupSize];
  groupSpecifierIdentifier = [(MusicUsageGroup *)self->_localSongsGroup groupSpecifierIdentifier];
  v4 = [(MusicUsageDetailController *)self specifierForID:groupSpecifierIdentifier];

  if ([(MusicUsageGroup *)self->_localSongsGroup groupSize])
  {
    v5 = [NSNumber numberWithUnsignedLongLong:[(MusicUsageGroup *)self->_localSongsGroup groupSize]];
    [v4 setProperty:v5 forKey:@"SIZE"];

    v6 = [NSByteCountFormatter stringFromByteCount:[(MusicUsageGroup *)self->_localSongsGroup groupSize] countStyle:2];
    v7 = [v4 propertyForKey:PSHeaderViewKey];
    [v7 setSize:v6];

    groupSpecifierIdentifier2 = [(MusicUsageGroup *)self->_localSongsGroup groupSpecifierIdentifier];
    [(MusicUsageDetailController *)self reloadSpecifierID:groupSpecifierIdentifier2];
  }

  else
  {
    [(NSMutableArray *)self->_usageGroups removeObject:self->_localSongsGroup];
    usageItems = [(MusicUsageGroup *)self->_localSongsGroup usageItems];
    firstObject = [usageItems firstObject];
    specifierIdentifier = [firstObject specifierIdentifier];
    v12 = [(MusicUsageDetailController *)self specifierForID:specifierIdentifier];

    v15[0] = v4;
    v15[1] = v12;
    v13 = [NSArray arrayWithObjects:v15 count:2];
    [(MusicUsageDetailController *)self removeContiguousSpecifiers:v13 animated:1];
  }

  categoryIdentifier = [(MusicUsageGroup *)self->_localSongsGroup categoryIdentifier];
  [(MusicUsageDetailController *)self updateUsageBundleSizeForCategoryIdentifier:categoryIdentifier];
}

- (void)updateUsageBundleSizeForCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  specifier = [(MusicUsageDetailController *)self specifier];
  v12 = [specifier propertyForKey:PSUsageBundleAppKey];

  usageBundleStorageReporter = [v12 usageBundleStorageReporter];
  [usageBundleStorageReporter reloadSizeForCategoryIdentifier:identifierCopy];

  *&v7 = [usageBundleStorageReporter totalSize];
  [v12 setTotalSize:v7];
  specifier2 = [(MusicUsageDetailController *)self specifier];
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [usageBundleStorageReporter totalSize]);
  [specifier2 setProperty:v9 forKey:@"TOTAL_SIZE"];

  WeakRetained = objc_loadWeakRetained(&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSViewController__parentController]);
  specifier3 = [(MusicUsageDetailController *)self specifier];
  [WeakRetained reloadSpecifier:specifier3];
}

- (void)removeSpecifierAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(MusicUsageDetailController *)self specifierAtIndex:[(MusicUsageDetailController *)self indexForIndexPath:pathCopy]];
  v6 = [v5 propertyForKey:@"MusicUsageItemPropertyKey"];
  usageGroup = [v6 usageGroup];
  v8 = usageGroup;
  if (usageGroup == self->_localSongsGroup)
  {
    v31 = usageGroup;
    v32 = v5;
    v9 = +[MPMediaLibrary defaultMediaLibrary];
    itemCollection = [v6 itemCollection];
    items = [itemCollection items];
    [v9 removeItems:items];

    v12 = +[MPMediaQuery albumsQuery];
    [v12 setIgnoreSystemFilterPredicates:1];
    [v12 setIgnoreRestrictionsPredicates:1];
    [v12 setShouldIncludeNonLibraryEntities:1];
    v13 = [MPMediaPropertyPredicate predicateWithValue:&off_10D78 forProperty:MPMediaItemPropertyAlbumKeepLocal comparisonType:101];
    [v12 addFilterPredicate:v13];

    v30 = v12;
    collections = [v12 collections];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = [collections countByEnumeratingWithState:&v38 objects:v43 count:16];
    v16 = MPMediaEntityPropertyKeepLocal;
    if (v15)
    {
      v17 = v15;
      v18 = *v39;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(collections);
          }

          [*(*(&v38 + 1) + 8 * i) setValue:&off_10D78 forProperty:v16];
        }

        v17 = [collections countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v17);
    }

    v33 = pathCopy;
    v20 = +[MPMediaQuery playlistsQuery];
    [v20 setIgnoreSystemFilterPredicates:1];
    [v20 setIgnoreRestrictionsPredicates:1];
    [v20 setShouldIncludeNonLibraryEntities:1];
    v21 = [MPMediaPropertyPredicate predicateWithValue:&off_10D78 forProperty:v16 comparisonType:101];
    [v20 addFilterPredicate:v21];

    collections2 = [v20 collections];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = [collections2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(collections2);
          }

          [*(*(&v34 + 1) + 8 * j) setValue:&off_10D78 forProperty:v16];
        }

        v24 = [collections2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
    }

    categoryIdentifier = [(MusicUsageGroup *)self->_localSongsGroup categoryIdentifier];
    [(MusicUsageDetailController *)self updateUsageBundleSizeForCategoryIdentifier:categoryIdentifier];

    navigationController = [(MusicUsageDetailController *)self navigationController];
    v29 = [navigationController popViewControllerAnimated:1];

    v5 = v32;
    pathCopy = v33;
    v8 = v31;
  }

  else
  {
    [(MusicUsageDetailController *)self deleteUsageItemAtIndexPath:pathCopy];
  }
}

- (void)deleteUsageItemAtIndexPath:(id)path
{
  v4 = [(MusicUsageDetailController *)self specifierAtIndex:[(MusicUsageDetailController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"MusicUsageItemPropertyKey"];
  usageGroup = [v5 usageGroup];
  [usageGroup removeUsageItem:v5];
  itemCollection = [v5 itemCollection];
  items = [itemCollection items];

  if ([items count])
  {
    v9 = +[MPMediaLibrary defaultMediaLibrary];
    [v9 removeItems:items];

    if ([usageGroup isIncludedInLocalGroup])
    {
      [(MusicUsageDetailController *)self updateLocalSongsGroupSize];
    }

    else
    {
      categoryIdentifier = [usageGroup categoryIdentifier];
      [(MusicUsageDetailController *)self updateUsageBundleSizeForCategoryIdentifier:categoryIdentifier];
    }
  }

  groupSpecifierIdentifier = [usageGroup groupSpecifierIdentifier];
  v12 = [(MusicUsageDetailController *)self specifierForID:groupSpecifierIdentifier];

  if ([usageGroup numberOfUsageItems])
  {
    [(MusicUsageDetailController *)self removeSpecifier:v4 animated:1];
    [usageGroup updateGroupSize];
    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [usageGroup groupSize]);
    [v12 setProperty:v13 forKey:@"SIZE"];

    v14 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [usageGroup groupSize], 2);
    v15 = [v12 propertyForKey:PSHeaderViewKey];
    [v15 setSize:v14];
  }

  else
  {
    [(NSMutableArray *)self->_usageGroups removeObject:usageGroup];
    v17[0] = v12;
    v17[1] = v4;
    v16 = [NSArray arrayWithObjects:v17 count:2];
    [(MusicUsageDetailController *)self removeContiguousSpecifiers:v16 animated:1];
  }
}

- (void)addUsageGroup:(id)group
{
  groupCopy = group;
  usageGroups = self->_usageGroups;
  v8 = groupCopy;
  if (!usageGroups)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_usageGroups;
    self->_usageGroups = v6;

    groupCopy = v8;
    usageGroups = self->_usageGroups;
  }

  [(NSMutableArray *)usageGroups addObject:groupCopy];
}

- (void)buildUsageGroupForCategory:(id)category usingStorageReporter:(id)reporter
{
  categoryCopy = category;
  reporterCopy = reporter;
  identifier = [categoryCopy identifier];
  v51 = categoryCopy;
  if ([identifier isEqualToString:@"MusicUsageCategoryLocalMusic"])
  {
    v9 = objc_alloc_init(MusicUsageGroup);
    localSongsGroup = self->_localSongsGroup;
    self->_localSongsGroup = v9;

    [(MusicUsageGroup *)self->_localSongsGroup setGroupSpecifierIdentifier:@"local_songs"];
    name = [categoryCopy name];
    [(MusicUsageGroup *)self->_localSongsGroup setGroupName:name];

    [(MusicUsageGroup *)self->_localSongsGroup setCategoryIdentifier:identifier];
    [(MusicUsageGroup *)self->_localSongsGroup setShowsItemArtwork:0];
    v54 = [reporterCopy queryForCategoryIdentifier:identifier];
    v47 = [[MPMediaItemCollection alloc] initWithItemsQuery:v54];
    v50 = [MusicUsageItem usageItemWithItemCollection:"usageItemWithItemCollection:displayNameBlock:" displayNameBlock:?];
    [(MusicUsageGroup *)self->_localSongsGroup addUsageItem:v50];
    [(MusicUsageGroup *)self->_localSongsGroup updateGroupSize];
    [(MusicUsageDetailController *)self addUsageGroup:self->_localSongsGroup];
    v12 = +[MPMediaQuery albumArtistsQuery];
    [v12 setIgnoreSystemFilterPredicates:1];
    [v12 setIgnoreRestrictionsPredicates:1];
    [v12 setShouldIncludeNonLibraryEntities:1];
    v45 = MPMediaItemPropertyHasNonPurgeableAsset;
    v13 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:?];
    [v12 addFilterPredicate:v13];

    collections = [v12 collections];
    v15 = objc_alloc_init(MusicUsageGroup);
    [(MusicUsageGroup *)v15 setGroupSpecifierIdentifier:@"artists"];
    v16 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
    v17 = [v16 localizedStringForKey:@"ARTISTS_HEADER" value:&stru_108A0 table:@"MusicUsage"];
    [(MusicUsageGroup *)v15 setGroupName:v17];

    [(MusicUsageGroup *)v15 setCategoryIdentifier:identifier];
    [(MusicUsageGroup *)v15 setIncludedInLocalGroup:1];
    v18 = v15;
    [(MusicUsageGroup *)v15 setShowsItemArtwork:1];
    v46 = v12;
    if ([collections count])
    {
      selfCopy = self;
      v49 = identifier;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = collections;
      v20 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v64;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v64 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = [MusicUsageItem usageItemWithItemCollection:*(*(&v63 + 1) + 8 * i) displayNameBlock:&stru_10568];
            [v24 setSubtitlesBlock:&stru_105A8];
            v62[0] = _NSConcreteStackBlock;
            v62[1] = 3221225472;
            v62[2] = sub_82DC;
            v62[3] = &unk_105D0;
            v62[4] = selfCopy;
            [v24 setArtworkCatalogBlock:v62];
            [v24 setArtworkWantsCircleTreatment:1];
            [(MusicUsageGroup *)v18 addUsageItem:v24];
          }

          v21 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v21);
      }

      identifier = v49;
      self = selfCopy;
    }

    v25 = +[MPMediaQuery songsQuery];
    [v25 setIgnoreSystemFilterPredicates:1];
    [v25 setIgnoreRestrictionsPredicates:1];
    [v25 setShouldIncludeNonLibraryEntities:1];
    v26 = [MPMediaPropertyPredicate predicateWithValue:&off_10D78 forProperty:MPMediaItemPropertyAlbumArtistPersistentID];
    [v25 addFilterPredicate:v26];

    v27 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:v45];
    [v25 addFilterPredicate:v27];

    v28 = v18;
    if ([v25 _countOfItems])
    {
      v29 = +[MPMediaQuery albumArtistsQuery];
      [v29 setIgnoreSystemFilterPredicates:1];
      [v29 setIgnoreRestrictionsPredicates:1];
      [v29 setShouldIncludeNonLibraryEntities:1];
      v30 = [MPMediaPropertyPredicate predicateWithValue:&off_10D78 forProperty:MPMediaItemPropertyAlbumArtistPersistentID];
      [v29 addFilterPredicate:v30];

      v31 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:v45];
      [v29 addFilterPredicate:v31];

      collections2 = [v29 collections];
      firstObject = [collections2 firstObject];

      v34 = [MusicUsageItem usageItemWithItemCollection:firstObject displayNameBlock:&stru_105F0];
      [v34 setSubtitlesBlock:&stru_10610];
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_84C0;
      v61[3] = &unk_105D0;
      v61[4] = self;
      [v34 setArtworkCatalogBlock:v61];
      [v34 setArtworkWantsCircleTreatment:1];
      [(MusicUsageGroup *)v28 addUsageItem:v34];
    }

    [(MusicUsageGroup *)v28 updateGroupSize];
    if ([(MusicUsageGroup *)v28 numberOfUsageItems])
    {
      [(MusicUsageDetailController *)self addUsageGroup:v28];
    }

    v35 = v47;
    v36 = reporterCopy;
    v37 = v51;
  }

  else
  {
    selfCopy2 = self;
    v54 = MPMediaItemPropertyTitle;
    v35 = objc_alloc_init(MusicUsageGroup);
    [(MusicUsageGroup *)v35 setGroupSpecifierIdentifier:identifier];
    name2 = [categoryCopy name];
    [(MusicUsageGroup *)v35 setGroupName:name2];

    [(MusicUsageGroup *)v35 setCategoryIdentifier:identifier];
    [(MusicUsageGroup *)v35 setShowsItemArtwork:1];
    [reporterCopy queryForCategoryIdentifier:identifier];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v50 = v60 = 0u;
    obja = [v50 collections];
    v39 = [obja countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v58;
      do
      {
        for (j = 0; j != v40; j = j + 1)
        {
          if (*v58 != v41)
          {
            objc_enumerationMutation(obja);
          }

          v43 = *(*(&v57 + 1) + 8 * j);
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_84C8;
          v55[3] = &unk_10638;
          v56 = v54;
          v44 = [MusicUsageItem usageItemWithItemCollection:v43 displayNameBlock:v55];
          [v44 setArtworkCatalogBlock:&stru_10658];
          [(MusicUsageGroup *)v35 addUsageItem:v44];
        }

        v40 = [obja countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v40);
    }

    [(MusicUsageGroup *)v35 updateGroupSize];
    [(MusicUsageDetailController *)selfCopy2 addUsageGroup:v35];
    v36 = reporterCopy;
    v37 = categoryCopy;
  }
}

- (id)specifiersFromUsageGroups
{
  memset(v93, 0, sizeof(v93));
  v68 = +[NSMutableArray array];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  selfCopy = self;
  obj = self->_usageGroups;
  v56 = [(NSMutableArray *)obj countByEnumeratingWithState:&v89 objects:v97 count:16];
  if (v56)
  {
    v54 = PSHeaderCellClassGroupKey;
    v55 = *v90;
    v64 = PSCellClassKey;
    v65 = PSLazyIconLoading;
    v63 = PSTableCellHeightKey;
    v59 = MPMediaItemPropertyHasNonPurgeableAsset;
    do
    {
      v3 = 0;
      do
      {
        if (*v90 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v58 = v3;
        v4 = *(*(&v89 + 1) + 8 * v3);
        groupName = [v4 groupName];
        v6 = [PSSpecifier preferenceSpecifierNamed:groupName target:0 set:0 get:0 detail:0 cell:0 edit:0];

        [v6 setProperty:@"PSUsageSizeHeader" forKey:v54];
        groupSpecifierIdentifier = [v4 groupSpecifierIdentifier];
        [v6 setIdentifier:groupSpecifierIdentifier];

        v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 groupSize]);
        [v6 setProperty:v8 forKey:@"SIZE"];

        v57 = v6;
        [v68 addObject:v6];
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v76 = v4;
        usageItems = [v4 usageItems];
        v69 = [usageItems countByEnumeratingWithState:&v85 objects:v96 count:16];
        if (v69)
        {
          v67 = *v86;
          do
          {
            for (i = 0; i != v69; i = i + 1)
            {
              if (*v86 != v67)
              {
                objc_enumerationMutation(usageItems);
              }

              v10 = *(*(&v85 + 1) + 8 * i);
              title = [v10 title];
              itemCollection = [v10 itemCollection];
              categoryIdentifier = [v76 categoryIdentifier];
              v14 = [categoryIdentifier stringByAppendingFormat:@"-%llu-%d", objc_msgSend(itemCollection, "persistentID"), objc_msgSend(itemCollection, "groupingType")];

              v15 = v14;
              v16 = v10;
              [v10 setSpecifierIdentifier:v15];
              v74 = title;
              v17 = [PSSpecifier preferenceSpecifierNamed:title target:selfCopy set:0 get:"sizeForSpecifier:" detail:0 cell:4 edit:0];
              [v17 setIdentifier:v15];
              [v17 setProperty:v16 forKey:@"MusicUsageItemPropertyKey"];
              if ([v76 showsItemArtwork])
              {
                [v17 setProperty:&__kCFBooleanTrue forKey:v65];
                v71 = itemCollection;
                [v17 setProperty:objc_opt_class() forKey:v64];
                artworkCatalogBlock = [v16 artworkCatalogBlock];
                v75 = v16;
                v19 = artworkCatalogBlock != 0;

                subtitlesBlock = [v75 subtitlesBlock];
                v21 = subtitlesBlock != 0;

                v72 = i;
                [(MusicUsageDetailController *)selfCopy traitCollection];
                v22 = v70 = v17;
                [MusicUsageTableViewCell maximumRowHeightIncludingArtwork:v19 includingSubtitle:v21 traitCollection:v22 sizingCache:v93];
                v24 = v23;

                v17 = v70;
                v25 = [NSNumber numberWithDouble:v24];
                [v70 setProperty:v25 forKey:v63];

                if ([itemCollection groupingType] == &dword_0 + 2 || objc_msgSend(itemCollection, "groupingType") == &dword_0 + 3)
                {
                  itemCollection2 = [v75 itemCollection];
                  groupingType = [itemCollection2 groupingType];

                  if (groupingType == &dword_0 + 3)
                  {
                    v61 = v15;
                    itemCollection3 = [v75 itemCollection];
                    persistentID = [itemCollection3 persistentID];

                    v30 = +[MPMediaQuery albumsQuery];
                    [v30 setIgnoreSystemFilterPredicates:1];
                    [v30 setIgnoreRestrictionsPredicates:1];
                    [v30 setShouldIncludeNonLibraryEntities:1];
                    v31 = [NSNumber numberWithUnsignedLongLong:persistentID];
                    v32 = [MPMediaPropertyPredicate predicateWithValue:v31 forProperty:MPMediaItemPropertyAlbumArtistPersistentID];
                    [v30 addFilterPredicate:v32];

                    v33 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:v59];
                    [v30 addFilterPredicate:v33];

                    v60 = v30;
                    collections = [v30 collections];
                    v35 = +[NSMutableArray array];
                    v62 = collections;
                    if ([collections count])
                    {
                      v83 = 0u;
                      v84 = 0u;
                      v81 = 0u;
                      v82 = 0u;
                      v36 = collections;
                      v37 = [v36 countByEnumeratingWithState:&v81 objects:v95 count:16];
                      if (v37)
                      {
                        v38 = v37;
                        v39 = *v82;
                        do
                        {
                          for (j = 0; j != v38; j = j + 1)
                          {
                            if (*v82 != v39)
                            {
                              objc_enumerationMutation(v36);
                            }

                            v41 = [MusicUsageItem usageItemWithItemCollection:*(*(&v81 + 1) + 8 * j) displayNameBlock:&stru_10678];
                            [v41 setSubtitlesBlock:&stru_10698];
                            [v41 setArtworkCatalogBlock:&stru_106B8];
                            [v35 addObject:v41];
                          }

                          v38 = [v36 countByEnumeratingWithState:&v81 objects:v95 count:16];
                        }

                        while (v38);
                      }
                    }

                    v42 = [v35 sortedArrayUsingComparator:&stru_106F8];
                    v43 = objc_alloc_init(MusicUsageGroup);
                    v44 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
                    v45 = [v44 localizedStringForKey:@"ALBUMS_HEADER" value:&stru_108A0 table:@"MusicUsage"];
                    [(MusicUsageGroup *)v43 setGroupName:v45];

                    [(MusicUsageGroup *)v43 setGroupSpecifierIdentifier:@"albums"];
                    categoryIdentifier2 = [v76 categoryIdentifier];
                    [(MusicUsageGroup *)v43 setCategoryIdentifier:categoryIdentifier2];

                    [(MusicUsageGroup *)v43 setShowsItemArtwork:1];
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v47 = v42;
                    v48 = [v47 countByEnumeratingWithState:&v77 objects:v94 count:16];
                    if (v48)
                    {
                      v49 = v48;
                      v50 = *v78;
                      do
                      {
                        for (k = 0; k != v49; k = k + 1)
                        {
                          if (*v78 != v50)
                          {
                            objc_enumerationMutation(v47);
                          }

                          [(MusicUsageGroup *)v43 addUsageItem:*(*(&v77 + 1) + 8 * k)];
                        }

                        v49 = [v47 countByEnumeratingWithState:&v77 objects:v94 count:16];
                      }

                      while (v49);
                    }

                    [(MusicUsageGroup *)v43 updateGroupSize];
                    [v75 setChildUsageGroup:v43];

                    itemCollection = v71;
                    i = v72;
                    v15 = v61;
                    v17 = v70;
                  }
                }
              }

              [v68 addObject:v17];
            }

            v69 = [usageItems countByEnumeratingWithState:&v85 objects:v96 count:16];
          }

          while (v69);
        }

        v3 = v58 + 1;
      }

      while ((v58 + 1) != v56);
      v56 = [(NSMutableArray *)obj countByEnumeratingWithState:&v89 objects:v97 count:16];
    }

    while (v56);
  }

  return v68;
}

- (id)_placeholderAlbumArtistArtworkCatalog
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_9170;
  v9 = sub_9180;
  v10 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9188;
  block[3] = &unk_10720;
  block[4] = &v5;
  if (qword_15BF8 != -1)
  {
    dispatch_once(&qword_15BF8, block);
  }

  v2 = [MPArtworkCatalog staticArtworkCatalogWithImage:v6[5]];
  _Block_object_dispose(&v5, 8);

  return v2;
}

@end