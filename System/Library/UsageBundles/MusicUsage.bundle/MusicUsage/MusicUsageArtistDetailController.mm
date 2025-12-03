@interface MusicUsageArtistDetailController
- (MusicUsageArtistDetailController)initWithFileSizeDidChangeHandler:(id)handler;
- (id)_specifiersFromUsageItem;
- (id)sizeForSpecifier:(id)specifier;
- (id)specifiers;
- (void)_removeSpecifierAtIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MusicUsageArtistDetailController

- (MusicUsageArtistDetailController)initWithFileSizeDidChangeHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = MusicUsageArtistDetailController;
  v5 = [(MusicUsageArtistDetailController *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    fileSizeDidChangeHandler = v5->_fileSizeDidChangeHandler;
    v5->_fileSizeDidChangeHandler = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MusicUsageArtistDetailController;
  [(MusicUsageArtistDetailController *)&v6 viewDidLoad];
  [(MusicUsageArtistDetailController *)self setEditingButtonHidden:0 animated:0];
  specifier = [(MusicUsageArtistDetailController *)self specifier];
  v4 = [specifier propertyForKey:@"MusicUsageItemPropertyKey"];

  title = [v4 title];
  [(MusicUsageArtistDetailController *)self setTitle:title];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _specifiersFromUsageItem = [(MusicUsageArtistDetailController *)self _specifiersFromUsageItem];
    v6 = *&self->PSUsageBundleDetailController_opaque[v3];
    *&self->PSUsageBundleDetailController_opaque[v3] = _specifiersFromUsageItem;

    v4 = *&self->PSUsageBundleDetailController_opaque[v3];
  }

  return v4;
}

- (id)sizeForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"MusicUsageItemPropertyKey"];
  childUsageGroup = [v5 childUsageGroup];

  if (childUsageGroup)
  {
    childUsageGroup2 = [v5 childUsageGroup];
    v8 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [childUsageGroup2 groupSize], 2);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MusicUsageArtistDetailController;
    v8 = [(MusicUsageArtistDetailController *)&v10 sizeForSpecifier:specifierCopy];
  }

  return v8;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  [(MusicUsageArtistDetailController *)self _removeSpecifierAtIndexPath:path, style];
  specifier = [(MusicUsageArtistDetailController *)self specifier];
  v11 = [specifier propertyForKey:@"MusicUsageItemPropertyKey"];

  childUsageGroup = [v11 childUsageGroup];
  numberOfUsageItems = [childUsageGroup numberOfUsageItems];

  if (!numberOfUsageItems)
  {
    navigationController = [(MusicUsageArtistDetailController *)self navigationController];
    v10 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(MusicUsageArtistDetailController *)self specifierAtIndex:[(MusicUsageArtistDetailController *)self indexForIndexPath:pathCopy]];
  v9 = [v8 propertyForKey:@"MusicUsageItemPropertyKey"];
  childUsageGroup = [v9 childUsageGroup];
  numberOfUsageItems = [childUsageGroup numberOfUsageItems];

  if (numberOfUsageItems)
  {
    specifier = [(MusicUsageArtistDetailController *)self specifier];
    v13 = PSUsageBundleAppKey;
    v14 = [specifier propertyForKey:PSUsageBundleAppKey];
    [v8 setProperty:v14 forKey:v13];

    v15 = [MusicUsageAlbumDetailController alloc];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_40BC;
    v19[3] = &unk_10440;
    v20 = v9;
    selfCopy = self;
    v16 = v8;
    v22 = v16;
    v17 = [(MusicUsageAlbumDetailController *)v15 initWithFileSizeDidChangeHandler:v19];
    [(MusicUsageAlbumDetailController *)v17 setSpecifier:v16];
    rootController = [(MusicUsageArtistDetailController *)self rootController];
    [(MusicUsageAlbumDetailController *)v17 setRootController:rootController];

    [(MusicUsageAlbumDetailController *)v17 setParentController:self];
    [(MusicUsageArtistDetailController *)self showController:v17 animate:1];
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (void)_removeSpecifierAtIndexPath:(id)path
{
  v4 = [(MusicUsageArtistDetailController *)self specifierAtIndex:[(MusicUsageArtistDetailController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"MusicUsageItemPropertyKey"];
  specifier = [(MusicUsageArtistDetailController *)self specifier];
  v7 = [specifier propertyForKey:@"MusicUsageItemPropertyKey"];

  childUsageGroup = [v7 childUsageGroup];
  groupSpecifierIdentifier = [childUsageGroup groupSpecifierIdentifier];
  v10 = [(MusicUsageArtistDetailController *)self specifierForID:groupSpecifierIdentifier];

  itemCollection = [v5 itemCollection];
  items = [itemCollection items];

  childUsageGroup2 = [v7 childUsageGroup];
  [childUsageGroup2 removeUsageItem:v5];

  if ([items count])
  {
    v14 = +[MPMediaLibrary defaultMediaLibrary];
    [v14 removeItems:items];
  }

  childUsageGroup3 = [v7 childUsageGroup];
  [childUsageGroup3 updateGroupSize];

  fileSizeDidChangeHandler = self->_fileSizeDidChangeHandler;
  if (fileSizeDidChangeHandler)
  {
    fileSizeDidChangeHandler[2]();
  }

  childUsageGroup4 = [v7 childUsageGroup];
  numberOfUsageItems = [childUsageGroup4 numberOfUsageItems];

  if (numberOfUsageItems)
  {
    [(MusicUsageArtistDetailController *)self removeSpecifier:v4 animated:1];
    childUsageGroup5 = [v7 childUsageGroup];
    v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [childUsageGroup5 groupSize]);
    [v10 setProperty:v20 forKey:@"SIZE"];

    childUsageGroup6 = [v7 childUsageGroup];
    v22 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [childUsageGroup6 groupSize], 2);

    v23 = [v10 propertyForKey:PSHeaderViewKey];
    [v23 setSize:v22];
  }

  else
  {
    v25[0] = v10;
    v25[1] = v4;
    v24 = [NSArray arrayWithObjects:v25 count:2];
    [(MusicUsageArtistDetailController *)self removeContiguousSpecifiers:v24 animated:1];
  }
}

- (id)_specifiersFromUsageItem
{
  v55 = +[NSMutableArray array];
  memset(v73, 0, sizeof(v73));
  selfCopy = self;
  specifier = [(MusicUsageArtistDetailController *)self specifier];
  v4 = [specifier propertyForKey:?];

  childUsageGroup = [v4 childUsageGroup];
  v6 = childUsageGroup;
  if (childUsageGroup)
  {
    v47 = v4;
    groupName = [childUsageGroup groupName];
    v8 = [PSSpecifier preferenceSpecifierNamed:groupName target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v8 setProperty:@"PSUsageSizeHeader" forKey:PSHeaderCellClassGroupKey];
    groupSpecifierIdentifier = [v6 groupSpecifierIdentifier];
    [v8 setIdentifier:groupSpecifierIdentifier];

    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 groupSize]);
    [v8 setProperty:v10 forKey:@"SIZE"];

    [v55 addObject:v8];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = [v6 usageItems];
    v56 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
    if (v56)
    {
      v50 = PSLazyIconLoading;
      v49 = PSCellClassKey;
      v48 = PSTableCellHeightKey;
      v53 = *v70;
      v52 = MPMediaItemPropertyHasNonPurgeableAsset;
      v54 = v6;
      do
      {
        v11 = 0;
        do
        {
          if (*v70 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v63 = v11;
          v12 = *(*(&v69 + 1) + 8 * v11);
          title = [v12 title];
          itemCollection = [v12 itemCollection];
          categoryIdentifier = [v6 categoryIdentifier];
          v61 = itemCollection;
          v16 = [categoryIdentifier stringByAppendingFormat:@"-%llu-%d", objc_msgSend(itemCollection, "persistentID"), objc_msgSend(itemCollection, "groupingType")];

          [v12 setSpecifierIdentifier:v16];
          [v12 setArtworkCatalogBlock:&stru_10480];
          v62 = title;
          v17 = [PSSpecifier preferenceSpecifierNamed:title target:selfCopy set:0 get:"sizeForSpecifier:" detail:0 cell:4 edit:0];
          v59 = v16;
          [v17 setIdentifier:v16];
          v64 = v17;
          [v17 setProperty:v12 forKey:@"MusicUsageItemPropertyKey"];
          if ([v6 showsItemArtwork])
          {
            [v17 setProperty:&__kCFBooleanTrue forKey:v50];
            [v17 setProperty:objc_opt_class() forKey:v49];
            artworkCatalogBlock = [v12 artworkCatalogBlock];
            v19 = artworkCatalogBlock != 0;

            subtitlesBlock = [v12 subtitlesBlock];
            v21 = subtitlesBlock != 0;

            traitCollection = [(MusicUsageArtistDetailController *)selfCopy traitCollection];
            [MusicUsageTableViewCell maximumRowHeightIncludingArtwork:v19 includingSubtitle:v21 traitCollection:traitCollection sizingCache:v73];
            v24 = v23;

            v25 = [NSNumber numberWithDouble:v24];
            [v17 setProperty:v25 forKey:v48];
          }

          v26 = objc_alloc_init(MusicUsageGroup);
          v60 = v12;
          itemCollection2 = [v12 itemCollection];
          persistentID = [itemCollection2 persistentID];

          v29 = +[MPMediaQuery songsQuery];
          [v29 setIgnoreSystemFilterPredicates:1];
          [v29 setIgnoreRestrictionsPredicates:1];
          [v29 setShouldIncludeNonLibraryEntities:1];
          v30 = [NSNumber numberWithUnsignedLongLong:persistentID];
          v31 = [MPMediaPropertyPredicate predicateWithValue:v30 forProperty:MPMediaItemPropertyAlbumPersistentID];
          [v29 addFilterPredicate:v31];

          v32 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:v52];
          [v29 addFilterPredicate:v32];

          v58 = v29;
          items = [v29 items];
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v34 = [items countByEnumeratingWithState:&v65 objects:v75 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v66;
            do
            {
              for (i = 0; i != v35; i = i + 1)
              {
                if (*v66 != v36)
                {
                  objc_enumerationMutation(items);
                }

                v38 = *(*(&v65 + 1) + 8 * i);
                v39 = [MPMediaItemCollection alloc];
                v74 = v38;
                v40 = [NSArray arrayWithObjects:&v74 count:1];
                v41 = [v39 initWithItems:v40];

                v42 = [MusicUsageItem usageItemWithItemCollection:v41 displayNameBlock:&stru_104C0];
                [(MusicUsageGroup *)v26 addUsageItem:v42];
              }

              v35 = [items countByEnumeratingWithState:&v65 objects:v75 count:16];
            }

            while (v35);
          }

          v43 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
          v44 = [v43 localizedStringForKey:@"SONGS_HEADER" value:&stru_108A0 table:@"MusicUsage"];
          [(MusicUsageGroup *)v26 setGroupName:v44];

          [(MusicUsageGroup *)v26 setGroupSpecifierIdentifier:@"songs"];
          v6 = v54;
          categoryIdentifier2 = [v54 categoryIdentifier];
          [(MusicUsageGroup *)v26 setCategoryIdentifier:categoryIdentifier2];

          [(MusicUsageGroup *)v26 setShowsItemArtwork:0];
          [(MusicUsageGroup *)v26 updateGroupSize];
          [v60 setChildUsageGroup:v26];
          [v55 addObject:v64];

          v11 = v63 + 1;
        }

        while ((v63 + 1) != v56);
        v56 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
      }

      while (v56);
    }

    v4 = v47;
  }

  return v55;
}

@end