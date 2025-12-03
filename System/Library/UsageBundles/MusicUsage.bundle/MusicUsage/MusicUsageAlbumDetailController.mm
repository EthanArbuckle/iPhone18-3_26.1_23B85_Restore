@interface MusicUsageAlbumDetailController
- (MusicUsageAlbumDetailController)initWithFileSizeDidChangeHandler:(id)handler;
- (id)_specifiersFromUsageItem;
- (id)sizeForSpecifier:(id)specifier;
- (id)specifiers;
- (void)_removeSpecifierAtIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MusicUsageAlbumDetailController

- (MusicUsageAlbumDetailController)initWithFileSizeDidChangeHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = MusicUsageAlbumDetailController;
  v5 = [(MusicUsageAlbumDetailController *)&v9 init];
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
  v8.receiver = self;
  v8.super_class = MusicUsageAlbumDetailController;
  [(MusicUsageAlbumDetailController *)&v8 viewDidLoad];
  [(MusicUsageAlbumDetailController *)self setEditingButtonHidden:0 animated:0];
  table = [(MusicUsageAlbumDetailController *)self table];
  tableHeaderView = [table tableHeaderView];
  [tableHeaderView setBounds:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  specifier = [(MusicUsageAlbumDetailController *)self specifier];
  v6 = [specifier propertyForKey:@"MusicUsageItemPropertyKey"];

  title = [v6 title];
  [(MusicUsageAlbumDetailController *)self setTitle:title];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _specifiersFromUsageItem = [(MusicUsageAlbumDetailController *)self _specifiersFromUsageItem];
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
    groupSize = [childUsageGroup2 groupSize];
LABEL_5:
    v10 = [NSByteCountFormatter stringFromByteCount:groupSize countStyle:2];

    goto LABEL_6;
  }

  itemCollection = [v5 itemCollection];

  if (itemCollection)
  {
    childUsageGroup2 = [v5 itemCollection];
    groupSize = MusicUsageFileSizeForMediaItemCollection(childUsageGroup2);
    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = MusicUsageAlbumDetailController;
  v10 = [(MusicUsageAlbumDetailController *)&v12 sizeForSpecifier:specifierCopy];
LABEL_6:

  return v10;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  [(MusicUsageAlbumDetailController *)self _removeSpecifierAtIndexPath:path, style];
  specifier = [(MusicUsageAlbumDetailController *)self specifier];
  v11 = [specifier propertyForKey:@"MusicUsageItemPropertyKey"];

  childUsageGroup = [v11 childUsageGroup];
  numberOfUsageItems = [childUsageGroup numberOfUsageItems];

  if (!numberOfUsageItems)
  {
    navigationController = [(MusicUsageAlbumDetailController *)self navigationController];
    v10 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)_removeSpecifierAtIndexPath:(id)path
{
  v4 = [(MusicUsageAlbumDetailController *)self specifierAtIndex:[(MusicUsageAlbumDetailController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"MusicUsageItemPropertyKey"];
  usageGroup = [v5 usageGroup];
  groupSpecifierIdentifier = [usageGroup groupSpecifierIdentifier];
  v8 = [(MusicUsageAlbumDetailController *)self specifierForID:groupSpecifierIdentifier];

  [usageGroup removeUsageItem:v5];
  itemCollection = [v5 itemCollection];
  items = [itemCollection items];

  if ([items count])
  {
    v11 = +[MPMediaLibrary defaultMediaLibrary];
    [v11 removeItems:items];
  }

  [usageGroup updateGroupSize];
  fileSizeDidChangeHandler = self->_fileSizeDidChangeHandler;
  if (fileSizeDidChangeHandler)
  {
    fileSizeDidChangeHandler[2]();
  }

  if ([usageGroup numberOfUsageItems])
  {
    [(MusicUsageAlbumDetailController *)self removeSpecifier:v4 animated:1];
    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [usageGroup groupSize]);
    [v8 setProperty:v13 forKey:@"SIZE"];

    v14 = [v8 propertyForKey:PSHeaderViewKey];
    [v14 configureForSpecifier:v8];
  }

  else
  {
    v16[0] = v8;
    v16[1] = v4;
    v15 = [NSArray arrayWithObjects:v16 count:2];
    [(MusicUsageAlbumDetailController *)self removeContiguousSpecifiers:v15 animated:1];
  }
}

- (id)_specifiersFromUsageItem
{
  v37 = +[NSMutableArray array];
  memset(v44, 0, sizeof(v44));
  specifier = [(MusicUsageAlbumDetailController *)self specifier];
  v4 = [specifier propertyForKey:@"MusicUsageItemPropertyKey"];

  childUsageGroup = [v4 childUsageGroup];
  if (childUsageGroup)
  {
    parentController = [(MusicUsageAlbumDetailController *)self parentController];
    specifier2 = [parentController specifier];
    name = [specifier2 name];

    v30 = name;
    v9 = [PSSpecifier preferenceSpecifierNamed:name target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v9 setProperty:@"MusicUsageDetailHeaderView" forKey:PSHeaderCellClassGroupKey];
    groupSpecifierIdentifier = [childUsageGroup groupSpecifierIdentifier];
    [v9 setIdentifier:groupSpecifierIdentifier];

    v31 = v4;
    [v9 setProperty:v4 forKey:@"MusicUsageItemPropertyKey"];
    v29 = v9;
    [v37 addObject:v9];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [childUsageGroup usageItems];
    v38 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v38)
    {
      v36 = *v41;
      v34 = PSTableCellHeightKey;
      v35 = PSCellClassKey;
      v32 = PSLazyIconLoading;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v41 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          title = [v12 title];
          itemCollection = [v12 itemCollection];
          categoryIdentifier = [childUsageGroup categoryIdentifier];
          v16 = [categoryIdentifier stringByAppendingFormat:@"-%llu-%d", objc_msgSend(itemCollection, "persistentID"), objc_msgSend(itemCollection, "groupingType")];

          [v12 setSpecifierIdentifier:v16];
          v39 = title;
          v17 = [PSSpecifier preferenceSpecifierNamed:title target:self set:0 get:"sizeForSpecifier:" detail:0 cell:4 edit:0];
          [v17 setIdentifier:v16];
          [v17 setProperty:v12 forKey:@"MusicUsageItemPropertyKey"];
          [v17 setProperty:objc_opt_class() forKey:v35];
          artworkCatalogBlock = [v12 artworkCatalogBlock];
          v19 = childUsageGroup;
          v20 = artworkCatalogBlock != 0;

          subtitlesBlock = [v12 subtitlesBlock];
          v22 = subtitlesBlock != 0;

          selfCopy = self;
          traitCollection = [(MusicUsageAlbumDetailController *)self traitCollection];
          [MusicUsageTableViewCell maximumRowHeightIncludingArtwork:v20 includingSubtitle:v22 traitCollection:traitCollection sizingCache:v44];
          v26 = v25;

          v27 = [NSNumber numberWithDouble:v26];
          [v17 setProperty:v27 forKey:v34];

          childUsageGroup = v19;
          if ([v19 showsItemArtwork])
          {
            [v17 setProperty:&__kCFBooleanTrue forKey:v32];
          }

          [v37 addObject:v17];

          self = selfCopy;
        }

        v38 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v38);
    }

    v4 = v31;
  }

  return v37;
}

@end