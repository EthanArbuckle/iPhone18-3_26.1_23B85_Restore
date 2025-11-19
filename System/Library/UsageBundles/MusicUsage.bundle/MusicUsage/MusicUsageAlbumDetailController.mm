@interface MusicUsageAlbumDetailController
- (MusicUsageAlbumDetailController)initWithFileSizeDidChangeHandler:(id)a3;
- (id)_specifiersFromUsageItem;
- (id)sizeForSpecifier:(id)a3;
- (id)specifiers;
- (void)_removeSpecifierAtIndexPath:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation MusicUsageAlbumDetailController

- (MusicUsageAlbumDetailController)initWithFileSizeDidChangeHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MusicUsageAlbumDetailController;
  v5 = [(MusicUsageAlbumDetailController *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v3 = [(MusicUsageAlbumDetailController *)self table];
  v4 = [v3 tableHeaderView];
  [v4 setBounds:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  v5 = [(MusicUsageAlbumDetailController *)self specifier];
  v6 = [v5 propertyForKey:@"MusicUsageItemPropertyKey"];

  v7 = [v6 title];
  [(MusicUsageAlbumDetailController *)self setTitle:v7];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(MusicUsageAlbumDetailController *)self _specifiersFromUsageItem];
    v6 = *&self->PSUsageBundleDetailController_opaque[v3];
    *&self->PSUsageBundleDetailController_opaque[v3] = v5;

    v4 = *&self->PSUsageBundleDetailController_opaque[v3];
  }

  return v4;
}

- (id)sizeForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"MusicUsageItemPropertyKey"];
  v6 = [v5 childUsageGroup];

  if (v6)
  {
    v7 = [v5 childUsageGroup];
    v8 = [v7 groupSize];
LABEL_5:
    v10 = [NSByteCountFormatter stringFromByteCount:v8 countStyle:2];

    goto LABEL_6;
  }

  v9 = [v5 itemCollection];

  if (v9)
  {
    v7 = [v5 itemCollection];
    v8 = MusicUsageFileSizeForMediaItemCollection(v7);
    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = MusicUsageAlbumDetailController;
  v10 = [(MusicUsageAlbumDetailController *)&v12 sizeForSpecifier:v4];
LABEL_6:

  return v10;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  [(MusicUsageAlbumDetailController *)self _removeSpecifierAtIndexPath:a5, a4];
  v6 = [(MusicUsageAlbumDetailController *)self specifier];
  v11 = [v6 propertyForKey:@"MusicUsageItemPropertyKey"];

  v7 = [v11 childUsageGroup];
  v8 = [v7 numberOfUsageItems];

  if (!v8)
  {
    v9 = [(MusicUsageAlbumDetailController *)self navigationController];
    v10 = [v9 popViewControllerAnimated:1];
  }
}

- (void)_removeSpecifierAtIndexPath:(id)a3
{
  v4 = [(MusicUsageAlbumDetailController *)self specifierAtIndex:[(MusicUsageAlbumDetailController *)self indexForIndexPath:a3]];
  v5 = [v4 propertyForKey:@"MusicUsageItemPropertyKey"];
  v6 = [v5 usageGroup];
  v7 = [v6 groupSpecifierIdentifier];
  v8 = [(MusicUsageAlbumDetailController *)self specifierForID:v7];

  [v6 removeUsageItem:v5];
  v9 = [v5 itemCollection];
  v10 = [v9 items];

  if ([v10 count])
  {
    v11 = +[MPMediaLibrary defaultMediaLibrary];
    [v11 removeItems:v10];
  }

  [v6 updateGroupSize];
  fileSizeDidChangeHandler = self->_fileSizeDidChangeHandler;
  if (fileSizeDidChangeHandler)
  {
    fileSizeDidChangeHandler[2]();
  }

  if ([v6 numberOfUsageItems])
  {
    [(MusicUsageAlbumDetailController *)self removeSpecifier:v4 animated:1];
    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 groupSize]);
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
  v3 = [(MusicUsageAlbumDetailController *)self specifier];
  v4 = [v3 propertyForKey:@"MusicUsageItemPropertyKey"];

  v5 = [v4 childUsageGroup];
  if (v5)
  {
    v6 = [(MusicUsageAlbumDetailController *)self parentController];
    v7 = [v6 specifier];
    v8 = [v7 name];

    v30 = v8;
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v9 setProperty:@"MusicUsageDetailHeaderView" forKey:PSHeaderCellClassGroupKey];
    v10 = [v5 groupSpecifierIdentifier];
    [v9 setIdentifier:v10];

    v31 = v4;
    [v9 setProperty:v4 forKey:@"MusicUsageItemPropertyKey"];
    v29 = v9;
    [v37 addObject:v9];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [v5 usageItems];
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
          v13 = [v12 title];
          v14 = [v12 itemCollection];
          v15 = [v5 categoryIdentifier];
          v16 = [v15 stringByAppendingFormat:@"-%llu-%d", objc_msgSend(v14, "persistentID"), objc_msgSend(v14, "groupingType")];

          [v12 setSpecifierIdentifier:v16];
          v39 = v13;
          v17 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"sizeForSpecifier:" detail:0 cell:4 edit:0];
          [v17 setIdentifier:v16];
          [v17 setProperty:v12 forKey:@"MusicUsageItemPropertyKey"];
          [v17 setProperty:objc_opt_class() forKey:v35];
          v18 = [v12 artworkCatalogBlock];
          v19 = v5;
          v20 = v18 != 0;

          v21 = [v12 subtitlesBlock];
          v22 = v21 != 0;

          v23 = self;
          v24 = [(MusicUsageAlbumDetailController *)self traitCollection];
          [MusicUsageTableViewCell maximumRowHeightIncludingArtwork:v20 includingSubtitle:v22 traitCollection:v24 sizingCache:v44];
          v26 = v25;

          v27 = [NSNumber numberWithDouble:v26];
          [v17 setProperty:v27 forKey:v34];

          v5 = v19;
          if ([v19 showsItemArtwork])
          {
            [v17 setProperty:&__kCFBooleanTrue forKey:v32];
          }

          [v37 addObject:v17];

          self = v23;
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