@interface PLQuickActionManager
+ (BOOL)shouldShowInternalQuickActions;
+ (void)setShouldShowInternalQuickActions:(BOOL)a3;
- (BOOL)_userHasPhotos;
- (BOOL)_userHasPhotosFromLastYear;
- (PLQuickActionManager)initWithDatabaseContext:(id)a3;
- (id)_buildFavoritesQuickAction;
- (id)_buildMostRecentPhotoQuickAction;
- (id)_buildOneYearAgoQuickAction;
- (id)_buildSearchQuickAction;
- (id)_shortcutItemWithType:(id)a3 localizedTitle:(id)a4 iconName:(id)a5;
- (id)_shortcutSystemImageNamed:(id)a3;
- (void)buildQuickActionItemsInvalidateMostRecentPhoto:(BOOL)a3;
- (void)dealloc;
@end

@implementation PLQuickActionManager

- (BOOL)_userHasPhotosFromLastYear
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v19 = [MEMORY[0x1E695DF00] date];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setYear:-1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v19 options:0];
  [v4 setYear:0];
  [v4 setDay:-3];
  v18 = [v3 dateByAddingComponents:v4 toDate:v5 options:0];
  [v4 setDay:3];
  v6 = [v3 dateByAddingComponents:v4 toDate:v5 options:0];
  v7 = MEMORY[0x1E696AB28];
  v8 = [PLManagedAsset isEligibleForSearchIndexingPredicateForLibraryIdentifier:[(PLDatabaseContext *)self->_databaseContext wellKnownPhotoLibraryIdentifier]];
  v27[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"dateCreated >= %@ AND dateCreated <= %@", v18, v6];
  v27[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v11 = [v7 andPredicateWithSubpredicates:v10];

  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  [v14 setFetchLimit:1];
  [v14 setPredicate:v11];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  databaseContext = self->_databaseContext;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__PLQuickActionManager__userHasPhotosFromLastYear__block_invoke;
  v20[3] = &unk_1E7573DF8;
  v22 = &v23;
  v16 = v14;
  v21 = v16;
  [(PLDatabaseContext *)databaseContext performSync:v20 withName:"[PLQuickActionManager _userHasPhotosFromLastYear]"];
  LOBYTE(databaseContext) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return databaseContext & 1;
}

void __50__PLQuickActionManager__userHasPhotosFromLastYear__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 managedObjectContext];
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = [v3 countForFetchRequest:v4 error:&v10];
  v6 = v10;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  *(*(*(a1 + 40) + 8) + 24) = v9;
}

- (BOOL)_userHasPhotos
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setFetchLimit:1];
  v6 = MEMORY[0x1E696AB28];
  v7 = +[PLManagedAsset predicateToExcludeTrashedAssets];
  v21[0] = v7;
  v8 = +[PLManagedAsset predicateToExcludeHiddenAssets];
  v21[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];
  [v5 setPredicate:v10];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  databaseContext = self->_databaseContext;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__PLQuickActionManager__userHasPhotos__block_invoke;
  v14[3] = &unk_1E7573DF8;
  v16 = &v17;
  v12 = v5;
  v15 = v12;
  [(PLDatabaseContext *)databaseContext performSync:v14 withName:"[PLQuickActionManager _userHasPhotos]"];
  LOBYTE(v5) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v5 & 1;
}

void __38__PLQuickActionManager__userHasPhotos__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 managedObjectContext];
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = [v3 countForFetchRequest:v4 error:&v10];
  v6 = v10;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  *(*(*(a1 + 40) + 8) + 24) = v9;
}

- (id)_shortcutSystemImageNamed:(id)a3
{
  v3 = MEMORY[0x1E69D41C8];
  v4 = a3;
  v5 = [[v3 alloc] initWithSystemImageName:v4];

  return v5;
}

- (id)_shortcutItemWithType:(id)a3 localizedTitle:(id)a4 iconName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init([(PLQuickActionManager *)self _SBSApplicationShortcutItemClass]);
  [v11 setType:v10];

  [v11 setLocalizedTitle:v9];
  v12 = [(PLQuickActionManager *)self _shortcutSystemImageNamed:v8];

  [v11 setIcon:v12];

  return v11;
}

- (id)_buildSearchQuickAction
{
  v3 = objc_alloc_init([(PLQuickActionManager *)self _SBSApplicationShortcutItemClass]);
  [v3 setType:@"com.apple.photos.shortcuts.search"];
  [v3 setLocalizedTitle:@"SEARCH"];
  v4 = [(PLQuickActionManager *)self _shortcutSystemImageNamed:@"magnifyingglass"];
  [v3 setIcon:v4];

  return v3;
}

- (id)_buildFavoritesQuickAction
{
  v3 = objc_alloc_init([(PLQuickActionManager *)self _SBSApplicationShortcutItemClass]);
  [v3 setType:@"com.apple.photos.shortcuts.favorites"];
  [v3 setLocalizedTitle:@"FAVORITES"];
  v4 = [(PLQuickActionManager *)self _shortcutSystemImageNamed:@"heart"];
  [v3 setIcon:v4];

  return v3;
}

- (id)_buildOneYearAgoQuickAction
{
  v3 = +[PLSearchIndexConfiguration locale];
  if (![PLNLP nlpSearchSupportsLocale:v3])
  {
    v5 = 0;
    goto LABEL_5;
  }

  v4 = [(PLQuickActionManager *)self _userHasPhotosFromLastYear];

  if (v4)
  {
    v5 = objc_alloc_init([(PLQuickActionManager *)self _SBSApplicationShortcutItemClass]);
    [v5 setType:@"com.apple.photos.shortcuts.oneyearago"];
    [v5 setLocalizedTitle:@"ONE_YEAR_AGO"];
    v3 = [(PLQuickActionManager *)self _shortcutSystemImageNamed:@"clock"];
    [v5 setIcon:v3];
LABEL_5:

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_buildMostRecentPhotoQuickAction
{
  v3 = objc_alloc_init([(PLQuickActionManager *)self _SBSApplicationShortcutItemClass]);
  [v3 setType:@"com.apple.photos.shortcuts.recentphoto"];
  [v3 setLocalizedTitle:@"MOST_RECENT_PHOTO"];
  v4 = PLResultWithUnfairLock();
  v5 = [objc_alloc(-[PLQuickActionManager _SBSApplicationShortcutCustomImageIconClass](self "_SBSApplicationShortcutCustomImageIconClass"))];
  [v3 setIcon:v5];

  return v3;
}

- (void)buildQuickActionItemsInvalidateMostRecentPhoto:(BOOL)a3
{
  v10 = MEMORY[0x1E69E9820];
  LOBYTE(v12) = a3;
  PLRunWithUnfairLock();
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PLQuickActionManager *)self _userHasPhotos:v10])
  {
    v5 = [(PLQuickActionManager *)self _buildMostRecentPhotoQuickAction];
    if (v5)
    {
      [v4 addObject:v5];
    }

    v6 = [(PLQuickActionManager *)self _buildFavoritesQuickAction];
    if (v6)
    {
      [v4 addObject:v6];
    }

    v7 = [(PLQuickActionManager *)self _buildOneYearAgoQuickAction];
    if (v7)
    {
      [v4 addObject:v7];
    }

    v8 = [(PLQuickActionManager *)self _buildSearchQuickAction];
    if (v8)
    {
      [v4 addObject:v8];
    }
  }

  v9 = [(PLQuickActionManager *)self _appShortcutService];
  [v9 updateDynamicApplicationShortcutItems:v4 forBundleIdentifier:@"com.apple.mobileslideshow"];
}

void __71__PLQuickActionManager_buildQuickActionItemsInvalidateMostRecentPhoto___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    *(*(a1 + 32) + 32) = 1;
  }

  v2 = *(a1 + 32);
  if (!*(v2 + 24) || *(v2 + 32) == 1)
  {
    v7 = [MEMORY[0x1E69BF170] cameraPreviewWellImageFileURL];
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v7];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;
    v6 = v3;

    *(*(a1 + 32) + 32) = 0;
  }
}

- (void)dealloc
{
  [(SBSApplicationShortcutService *)self->__appShortcutService invalidate];
  v3 = +[PLChangeNotificationCenter defaultCenter];
  [v3 removeCameraPreviewWellImageChangeObserver:self];

  v4.receiver = self;
  v4.super_class = PLQuickActionManager;
  [(PLQuickActionManager *)&v4 dealloc];
}

- (PLQuickActionManager)initWithDatabaseContext:(id)a3
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PLQuickActionManager;
  v7 = [(PLQuickActionManager *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v7->_databaseContext, a3);
    if (!dlopen([@"/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices" fileSystemRepresentation], 4))
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v8 file:@"PLQuickActionManager.m" lineNumber:66 description:@"No SpringBoardServices!"];
    }

    [(PLQuickActionManager *)v8 _setSBSApplicationShortcutItemClass:NSClassFromString(&cfstr_Sbsapplication.isa)];
    if (![(PLQuickActionManager *)v8 _SBSApplicationShortcutItemClass])
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:v8 file:@"PLQuickActionManager.m" lineNumber:69 description:@"No SBSApplicationShortcutItem"];
    }

    [(PLQuickActionManager *)v8 _setSBSApplicationShortcutServiceClass:NSClassFromString(&cfstr_Sbsapplication_0.isa)];
    if (![(PLQuickActionManager *)v8 _SBSApplicationShortcutServiceClass])
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:v8 file:@"PLQuickActionManager.m" lineNumber:72 description:@"No _setSBSApplicationShortcutService"];
    }

    [(PLQuickActionManager *)v8 _setSBSApplicationShortcutCustomImageIconClass:NSClassFromString(&cfstr_Sbsapplication_1.isa)];
    if (![(PLQuickActionManager *)v8 _SBSApplicationShortcutCustomImageIconClass])
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:v8 file:@"PLQuickActionManager.m" lineNumber:75 description:@"No SBSApplicationShortcutCustomImageIcon"];
    }

    v9 = objc_alloc_init([(PLQuickActionManager *)v8 _SBSApplicationShortcutServiceClass]);
    [(PLQuickActionManager *)v8 _setAppShortcutService:v9];
    v10 = +[PLChangeNotificationCenter defaultCenter];
    [v10 addCameraPreviewWellImageChangeObserver:v8];
  }

  return v8;
}

+ (void)setShouldShowInternalQuickActions:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  CFPreferencesSetAppValue(@"showInternalQuickActions", v3, @"com.apple.mobileslideshow");

  notify_post("cameraPreviewImageWellChanged");
}

+ (BOOL)shouldShowInternalQuickActions
{
  v2 = MEMORY[0x19EAEE240](a1, a2);
  if (v2)
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"showInternalQuickActions", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
    {
      v3 = 1;
    }

    else
    {
      v3 = keyExistsAndHasValidFormat == 0;
    }

    LOBYTE(v2) = v3;
  }

  return v2;
}

@end