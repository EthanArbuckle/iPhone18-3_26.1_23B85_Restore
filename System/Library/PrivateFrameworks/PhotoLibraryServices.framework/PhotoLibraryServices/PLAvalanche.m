@interface PLAvalanche
+ (BOOL)isValidBurstWithAssets:(id)a3;
+ (CGRect)frameOfTopImageInStackForStackFrame:(CGRect)result;
+ (id)_assetAmongAssets:(id)a3 fromIndexes:(id)a4 excludingIndexes:(id)a5;
+ (id)_fetchRequestForAssetsWithAvalancheUUID:(id)a3 sourceType:(int64_t)a4;
+ (id)_visibleIndexesAmongAssets:(id)a3 fromUserFavoriteIndexes:(id)a4 stackIndex:(unint64_t)a5;
+ (id)assetsWithAvalancheUUID:(id)a3 sourceType:(int64_t)a4 inManagedObjectContext:(id)a5;
+ (id)revalidateAvalancheAssets:(id)a3 inLibrary:(id)a4 deleteNonPicks:(BOOL)a5 allowDissolve:(BOOL)a6;
+ (id)updatePropertiesForAssets:(id)a3 autoPicks:(id)a4 stackAsset:(id)a5 userFavorites:(id)a6 deleteNonPicks:(BOOL)a7 setFirstPick:(BOOL)a8 allowDissolve:(BOOL)a9;
+ (unint64_t)_calculateStackAssetForAssetCount:(unint64_t)a3 autoPicks:(id)a4 userFavorites:(id)a5;
+ (unint64_t)countForAssetsWithAvalancheUUID:(id)a3 sourceType:(int64_t)a4 inLibrary:(id)a5;
+ (unsigned)_maskForAvalancheSupportedAssetsWithSourceType:(int64_t)a3;
+ (void)disolveBurstForAssets:(id)a3 permanently:(BOOL)a4;
+ (void)handleUpdatesForContextWillSave:(id)a3;
+ (void)removeFavoriteStatus:(id)a3;
+ (void)updateMembershipForAssets:(id)a3 autoPicks:(id)a4 stackAsset:(id)a5 userFavorites:(id)a6 deleteNonPicks:(BOOL)a7 allowDissolve:(BOOL)a8 inLibrary:(id)a9;
- (BOOL)isAutoPick:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isUserFavorite:(id)a3;
- (NSString)description;
- (PLAvalanche)initWithUUID:(id)a3 sourceType:(int64_t)a4 photoLibrary:(id)a5;
- (id)autoPicks;
- (id)proposedStackAssetAfterRemovingFavorite:(id)a3;
- (id)stackAsset;
- (id)userFavorites;
- (unint64_t)approximateCount;
- (unint64_t)assetsCount;
- (unint64_t)photosCount;
- (void)_recalculateStackAsset;
- (void)addUserFavorite:(id)a3;
- (void)applyChangesAndDeleteNonPicks:(BOOL)a3 currentContainer:(id)a4 completionHandler:(id)a5;
- (void)applyTrashedState:(signed __int16)a3 withTrashedReason:(unsigned __int16)a4;
- (void)assetsDidChange:(id)a3;
- (void)dealloc;
- (void)removeUserFavorite:(id)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation PLAvalanche

- (BOOL)isEmpty
{
  v2 = [(PLAvalanche *)self assets];
  v3 = [v2 count] == 0;

  return v3;
}

- (unint64_t)photosCount
{
  v2 = [(PLAvalanche *)self assets];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)assetsCount
{
  v2 = [(PLAvalanche *)self assets];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)approximateCount
{
  v2 = [(PLAvalanche *)self assets];
  v3 = [v2 count];

  return v3;
}

- (id)proposedStackAssetAfterRemovingFavorite:(id)a3
{
  v4 = a3;
  v5 = [(PLAvalanche *)self stackAsset];
  v6 = [(PLAvalanche *)self assets];
  v7 = [v6 indexOfObject:v4];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(PLAvalanche *)self _userFavoriteIndexes];
    v9 = [v8 mutableCopy];

    [v9 removeIndex:v7];
    v10 = [(PLAvalanche *)self assets];
    v11 = [v10 count];
    v12 = [(PLAvalanche *)self _originalAutoPickIndexes];
    v13 = [PLAvalanche _calculateStackAssetForAssetCount:v11 autoPicks:v12 userFavorites:v9];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [(PLAvalanche *)self assets];
      v15 = [v14 objectAtIndex:v13];

      v5 = v15;
    }
  }

  return v5;
}

- (BOOL)isAutoPick:(id)a3
{
  v4 = a3;
  v5 = [(PLAvalanche *)self assets];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(PLAvalanche *)self _autoPickIndexes];
  v9 = [v8 containsIndex:v6];

  return v9;
}

- (BOOL)isUserFavorite:(id)a3
{
  v4 = a3;
  v5 = [(PLAvalanche *)self assets];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(PLAvalanche *)self _userFavoriteIndexes];
  v9 = [v8 containsIndex:v6];

  return v9;
}

- (void)removeUserFavorite:(id)a3
{
  v4 = a3;
  v5 = [(PLAvalanche *)self assets];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(PLAvalanche *)self _userFavoriteIndexes];
    [v7 removeIndex:v6];

    [(PLAvalanche *)self _recalculateStackAsset];
  }
}

- (void)addUserFavorite:(id)a3
{
  v4 = a3;
  v5 = [(PLAvalanche *)self assets];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(PLAvalanche *)self _userFavoriteIndexes];
    [v7 addIndex:v6];

    [(PLAvalanche *)self _recalculateStackAsset];
  }
}

- (void)_recalculateStackAsset
{
  v6 = [(PLAvalanche *)self assets];
  v3 = [v6 count];
  v4 = [(PLAvalanche *)self _originalAutoPickIndexes];
  v5 = [(PLAvalanche *)self _userFavoriteIndexes];
  self->__stackIndex = [PLAvalanche _calculateStackAssetForAssetCount:v3 autoPicks:v4 userFavorites:v5];
}

- (id)stackAsset
{
  if ([(PLAvalanche *)self _stackIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PLAvalanche *)self assets];
    v3 = [v4 objectAtIndex:{-[PLAvalanche _stackIndex](self, "_stackIndex")}];
  }

  return v3;
}

- (id)userFavorites
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = [(PLAvalanche *)self assets];
  v5 = [(PLAvalanche *)self _userFavoriteIndexes];
  v6 = [v4 objectsAtIndexes:v5];
  v7 = [v3 orderedSetWithArray:v6];

  return v7;
}

- (id)autoPicks
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = [(PLAvalanche *)self assets];
  v5 = [(PLAvalanche *)self _autoPickIndexes];
  v6 = [v4 objectsAtIndexes:v5];
  v7 = [v3 orderedSetWithArray:v6];

  return v7;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(PLAvalanche *)self assets];
  v6 = [v5 mutableCopy];

  v7 = [(PLAvalanche *)self userFavorites];
  [v6 minusOrderedSet:v7];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setHidden:{v3, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)applyTrashedState:(signed __int16)a3 withTrashedReason:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v7 = [(PLAvalanche *)self assets];
  v8 = [v7 mutableCopy];

  v9 = [(PLAvalanche *)self userFavorites];
  [v8 minusOrderedSet:v9];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) applyTrashedState:v5 withTrashedReason:v4 expungeReasonFromClient:{0, v16}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  if (v5 == 2)
  {
    v15 = [v9 array];
    [PLAvalanche disolveBurstForAssets:v15 permanently:1];
  }
}

- (void)assetsDidChange:(id)a3
{
  v12 = [a3 updatedAssets];
  if ([v12 count])
  {
    v4 = [(PLAvalanche *)self _anOldPick];
    v5 = [(PLAvalanche *)self _aNewPick];
    v6 = v5;
    if (!(v5 | v4))
    {
      goto LABEL_14;
    }

    if (v5)
    {
      if ([v12 containsObject:v5])
      {
        v7 = [v6 moment];
        v8 = v7 == 0;

        if (!v4)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }

      v8 = 1;
      if (!v4)
      {
LABEL_11:
        v10 = 0;
LABEL_12:
        if (!v8 && !v10)
        {
          v11 = [(PLAvalanche *)self _completionHandler];
          pl_dispatch_async();

          [(PLAvalanche *)self _setAnOldPick:0];
          [(PLAvalanche *)self _setANewPick:0];
          [(PLAvalanche *)self _setCompletionHandler:0];
        }

        goto LABEL_14;
      }
    }

    else
    {
      v8 = 0;
      if (!v4)
      {
        goto LABEL_11;
      }
    }

LABEL_8:
    if ([v12 containsObject:v4])
    {
      v9 = [v4 moment];
      v10 = v9 != 0;

      goto LABEL_12;
    }

LABEL_14:
  }
}

- (void)applyChangesAndDeleteNonPicks:(BOOL)a3 currentContainer:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v41 = *MEMORY[0x1E69E9840];
  v34 = a4;
  v8 = a5;
  v9 = [(PLAvalanche *)self assets];
  if ([v9 count] == 1)
  {
    v10 = [v9 firstObject];
    [(PLAvalanche *)self addUserFavorite:v10];
  }

  v33 = v8;
  v11 = [(PLAvalanche *)self autoPicks];
  v12 = [(PLAvalanche *)self userFavorites];
  v13 = [(PLAvalanche *)self stackAsset];
  [(PLAvalanche *)self _originalStackIndex];
  v30 = [(PLAvalanche *)self _originalUserFavoriteIndexes];
  v35 = [PLAvalanche _visibleIndexesAmongAssets:"_visibleIndexesAmongAssets:fromUserFavoriteIndexes:stackIndex:" fromUserFavoriteIndexes:v9 stackIndex:?];
  LOBYTE(v29) = 1;
  v31 = v13;
  v32 = v11;
  v14 = [PLAvalanche updatePropertiesForAssets:v9 autoPicks:v11 stackAsset:v13 userFavorites:v12 deleteNonPicks:v6 setFirstPick:0 allowDissolve:v29];
  if (([v9 isSubsetOfOrderedSet:v12] & 1) == 0)
  {
    v15 = [v9 firstObject];
    v16 = [v15 photoLibrary];

    v17 = [v9 array];
    v18 = [PLAvalanche revalidateAvalancheAssets:v17 inLibrary:v16 deleteNonPicks:v6 allowDissolve:1];
  }

  v19 = [(PLAvalanche *)self _stackIndex];
  v20 = [(PLAvalanche *)self _userFavoriteIndexes];
  v21 = [PLAvalanche _visibleIndexesAmongAssets:v9 fromUserFavoriteIndexes:v20 stackIndex:v19];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = [v9 objectsAtIndexes:v21];
  v23 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v36 + 1) + 8 * i) generateLargeThumbnailFileIfNecessary];
      }

      v24 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v24);
  }

  if (v33)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [PLAvalanche _assetAmongAssets:v9 fromIndexes:v35 excludingIndexes:v21];
      v28 = [PLAvalanche _assetAmongAssets:v9 fromIndexes:v21 excludingIndexes:v35];
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    if (v27 | v28)
    {
      [(PLAvalanche *)self _setAnOldPick:v27];
      [(PLAvalanche *)self _setANewPick:v28];
      [(PLAvalanche *)self _setCompletionHandler:v33];
    }

    else
    {
      pl_dispatch_async();
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = PLAvalanche;
  v4 = [(PLAvalanche *)&v12 description];
  uuid = self->_uuid;
  v6 = [(NSOrderedSet *)self->_assets valueForKey:@"shortObjectIDURI"];
  v7 = [(PLAvalanche *)self _autoPickIndexes];
  v8 = [(PLAvalanche *)self _stackIndex];
  v9 = [(PLAvalanche *)self _userFavoriteIndexes];
  v10 = [v3 stringWithFormat:@"%@ uuid %@, assets %@, autoPicks %@ stackAsset %lu userFavorites %@ ", v4, uuid, v6, v7, v8, v9];

  return v10;
}

- (void)dealloc
{
  if ((PLIsAssetsd() & 1) == 0)
  {
    v3 = +[PLChangeNotificationCenter defaultCenter];
    [v3 removeAssetChangeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = PLAvalanche;
  [(PLAvalanche *)&v4 dealloc];
}

- (PLAvalanche)initWithUUID:(id)a3 sourceType:(int64_t)a4 photoLibrary:(id)a5
{
  v9 = a3;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = PLAvalanche;
  v11 = [(PLAvalanche *)&v31 init];
  if (v11)
  {
    if (!v9)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"tried to create with nil uuid"];
    }

    objc_storeStrong(&v11->_uuid, a3);
    objc_storeStrong(&v11->_photoLibrary, a5);
    v11->_sourceType = a4;
    v12 = [v10 managedObjectContext];
    v13 = [PLAvalanche assetsWithAvalancheUUID:v9 sourceType:a4 inManagedObjectContext:v12];

    v14 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v13];
    assets = v11->_assets;
    v11->_assets = v14;

    v16 = objc_opt_new();
    autoPickIndexes = v11->__autoPickIndexes;
    v11->__autoPickIndexes = v16;

    v18 = objc_opt_new();
    userFavoriteIndexes = v11->__userFavoriteIndexes;
    v11->__userFavoriteIndexes = v18;

    v11->__stackIndex = 0x7FFFFFFFFFFFFFFFLL;
    v11->_supportedEditOperations = 1;
    v20 = v11->_assets;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __52__PLAvalanche_initWithUUID_sourceType_photoLibrary___block_invoke;
    v29[3] = &unk_1E7575368;
    v21 = v11;
    v30 = v21;
    [(NSOrderedSet *)v20 enumerateObjectsUsingBlock:v29];
    v22 = [(NSMutableIndexSet *)v11->__autoPickIndexes copy];
    originalAutoPickIndexes = v21->__originalAutoPickIndexes;
    v21->__originalAutoPickIndexes = v22;

    v24 = [(NSMutableIndexSet *)v11->__userFavoriteIndexes copy];
    originalUserFavoriteIndexes = v21->__originalUserFavoriteIndexes;
    v21->__originalUserFavoriteIndexes = v24;

    stackIndex = v11->__stackIndex;
    v21->__originalStackIndex = stackIndex;
    if (stackIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PLAvalanche *)v21 _recalculateStackAsset];
    }

    if ((PLIsAssetsd() & 1) == 0)
    {
      v27 = +[PLChangeNotificationCenter defaultCenter];
      [v27 addAssetChangeObserver:v21];
    }
  }

  return v11;
}

void __52__PLAvalanche_initWithUUID_sourceType_photoLibrary___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [v7 avalanchePickType];
  v6 = v5;
  if ((v5 & 4) != 0)
  {
    [*(*(a1 + 32) + 48) addIndex:a3];
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(*(a1 + 32) + 80) = a3;
  if ((v6 & 8) != 0)
  {
LABEL_4:
    [*(*(a1 + 32) + 64) addIndex:a3];
  }

LABEL_5:
  if (([v7 canPerformDeleteOperation] & 1) == 0)
  {
    *(*(a1 + 32) + 112) = 0;
  }
}

uint64_t __43__PLAvalanche_shouldOnlyShowAvalanchePicks__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"PLOnlyShowAvalanchePicks", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = result == 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = !v1;
  shouldOnlyShowAvalanchePicks_sOnlyShowPicks = v2;
  return result;
}

+ (CGRect)frameOfTopImageInStackForStackFrame:(CGRect)result
{
  v3 = result.origin.x + 0.0;
  v4 = result.origin.y + 5.0;
  v5 = result.size.height + -5.0;
  result.size.height = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (void)removeFavoriteStatus:(id)a3
{
  v10 = a3;
  v3 = [v10 isAvalanchePhoto];
  v4 = v10;
  if (v3)
  {
    v5 = [v10 avalanchePickType];
    v6 = [v10 visibilityState];
    if ((v5 & 4) != 0)
    {
      v7 = 36;
    }

    else
    {
      v7 = 34;
    }

    if (v5 != (v7 & v5))
    {
      [v10 setAvalanchePickType:?];
    }

    v8 = +[PLAvalanche shouldOnlyShowAvalanchePicks];
    v4 = v10;
    if (v8)
    {
      v9 = v10;
      if (v6 != 2)
      {
        [v10 setVisibilityState:2];
        v9 = v10;
      }

      [v9 setAlbums:0];
      [v10 setNeedsMomentUpdate:1];
      v4 = v10;
    }
  }
}

+ (unint64_t)_calculateStackAssetForAssetCount:(unint64_t)a3 autoPicks:(id)a4 userFavorites:(id)a5
{
  v7 = a4;
  v8 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __73__PLAvalanche__calculateStackAssetForAssetCount_autoPicks_userFavorites___block_invoke;
  v16 = &unk_1E75734D0;
  v9 = v8;
  v17 = v9;
  v18 = &v19;
  [v7 enumerateIndexesUsingBlock:&v13];
  v10 = v20[3];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL && a3 != 0)
  {
    v10 = 0;
    while (([v9 containsIndex:{v10, v13, v14, v15, v16}] & 1) != 0)
    {
      if (a3 == ++v10)
      {
        v10 = v20[3];
        goto LABEL_10;
      }
    }

    v20[3] = v10;
  }

LABEL_10:

  _Block_object_dispose(&v19, 8);
  return v10;
}

uint64_t __73__PLAvalanche__calculateStackAssetForAssetCount_autoPicks_userFavorites___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsIndex:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

+ (id)_assetAmongAssets:(id)a3 fromIndexes:(id)a4 excludingIndexes:(id)a5
{
  v7 = a3;
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__PLAvalanche__assetAmongAssets_fromIndexes_excludingIndexes___block_invoke;
  v13[3] = &unk_1E75734A8;
  v14 = v8;
  v9 = v8;
  v10 = [a4 indexPassingTest:v13];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v7 objectAtIndex:v10];
  }

  return v11;
}

+ (id)_visibleIndexesAmongAssets:(id)a3 fromUserFavoriteIndexes:(id)a4 stackIndex:(unint64_t)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E696AD50];
  v9 = a4;
  v10 = [v8 indexSet];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PLAvalanche__visibleIndexesAmongAssets_fromUserFavoriteIndexes_stackIndex___block_invoke;
  aBlock[3] = &unk_1E7573458;
  v22 = v7;
  v11 = v7;
  v12 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__PLAvalanche__visibleIndexesAmongAssets_fromUserFavoriteIndexes_stackIndex___block_invoke_2;
  v18[3] = &unk_1E7573480;
  v13 = v12;
  v20 = v13;
  v14 = v10;
  v19 = v14;
  [v9 enumerateIndexesUsingBlock:v18];

  if (a5 != 0x7FFFFFFFFFFFFFFFLL && (*(v13 + 2))(v13, a5))
  {
    [v14 addIndex:a5];
  }

  v15 = v19;
  v16 = v14;

  return v14;
}

BOOL __77__PLAvalanche__visibleIndexesAmongAssets_fromUserFavoriteIndexes_stackIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndex:a2];
  if ([v2 visibilityState])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 trashedState] == 0;
  }

  return v3;
}

uint64_t __77__PLAvalanche__visibleIndexesAmongAssets_fromUserFavoriteIndexes_stackIndex___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 addIndex:a2];
  }

  return result;
}

+ (void)updateMembershipForAssets:(id)a3 autoPicks:(id)a4 stackAsset:(id)a5 userFavorites:(id)a6 deleteNonPicks:(BOOL)a7 allowDissolve:(BOOL)a8 inLibrary:(id)a9
{
  v9 = a8;
  v10 = a7;
  v31 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if (+[PLAvalanche shouldOnlyShowAvalanchePicks])
  {
    if (v9)
    {
      LOBYTE(v9) = [v13 isSubsetOfOrderedSet:v15];
    }

    v16 = [v13 mutableCopy];
    [v16 minusOrderedSet:v15];
    if (v14)
    {
      v17 = v9;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17 | v10;
    if (((v17 | v10) & 1) == 0 && ([v14 isDeleted] & 1) == 0)
    {
      [v16 removeObject:v14];
    }

    v19 = [MEMORY[0x1E695DFA0] orderedSetWithOrderedSet:v15];
    if ((v18 & 1) == 0 && ([v14 isDeleted] & 1) == 0)
    {
      [v19 insertObject:v14 atIndex:0];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v16;
    v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v27;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v26 + 1) + 8 * i);
          if (v10 && [*(*(&v26 + 1) + 8 * i) canMoveToTrash])
          {
            [v25 trashWithReason:5];
          }

          else
          {
            [v25 setAlbums:{0, v26}];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v22);
    }
  }
}

+ (id)updatePropertiesForAssets:(id)a3 autoPicks:(id)a4 stackAsset:(id)a5 userFavorites:(id)a6 deleteNonPicks:(BOOL)a7 setFirstPick:(BOOL)a8 allowDissolve:(BOOL)a9
{
  v54 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v40 = a4;
  v14 = a5;
  v15 = a6;
  v39 = a7;
  if (a9)
  {
    v16 = [v13 isSubsetOfOrderedSet:v15];
  }

  else
  {
    v16 = 0;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v13;
  v17 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  v41 = v15;
  if (v17)
  {
    v18 = v17;
    v19 = *v49;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v48 + 1) + 8 * i);
        if (([v21 isDeleted] & 1) == 0)
        {
          v22 = [v21 avalanchePickType];
          v23 = [v21 visibilityState];
          if ([v15 containsObject:v21])
          {
            if (v16)
            {
              v24 = 0;
            }

            else
            {
              v24 = v22 & 0x24 | 8;
            }

            if ([v21 isInTrash])
            {
              [v21 setTrashedState:0];
              [v21 setTrashedDate:0];
            }

            v25 = 0;
          }

          else
          {
            if ([v40 containsObject:v21])
            {
              if (!v14)
              {
                v14 = v21;
                a8 = 0;
              }

              v24 = v22 & 0x20 | 4;
            }

            else
            {
              v24 = v22 & 0x20 | 2;
            }

            v25 = 2;
          }

          if (a8)
          {
            v26 = 48;
          }

          else
          {
            v26 = 16;
          }

          if (v14 == v21)
          {
            v27 = 0;
          }

          else
          {
            v27 = v25;
          }

          if (v14 == v21)
          {
            v28 = v26 | v24 & 0x2D;
          }

          else
          {
            v28 = v24;
          }

          if (v22 != v28)
          {
            [v21 setAvalanchePickType:?];
          }

          if (+[PLAvalanche shouldOnlyShowAvalanchePicks])
          {
            if (v23 != v27)
            {
              [v21 setVisibilityState:v27];
            }

            [v21 setNeedsMomentUpdate:1];
          }

          if (v16)
          {
            [v21 setAvalancheUUID:0];
            v29 = [v21 additionalAttributes];
            [v29 setCloudAvalanchePickType:0];
          }

          v15 = v41;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v18);
  }

  if ((v14 != 0) | v16 & 1)
  {
    v30 = v14;
  }

  else
  {
    v30 = 0;
  }

  if (!((v14 != 0) | v16 & 1) && !v39)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v31 = obj;
    v32 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v45;
      while (2)
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v44 + 1) + 8 * j);
          if (([v36 isDeleted] & 1) == 0)
          {
            v37 = [v36 avalanchePickType];
            if ((v37 & 8) == 0)
            {
              if (v37 != (v37 & 0x24 | 0x10))
              {
                [v36 setAvalanchePickType:?];
              }

              v15 = v41;
              if (+[PLAvalanche shouldOnlyShowAvalanchePicks](PLAvalanche, "shouldOnlyShowAvalanchePicks") && [v36 visibilityState])
              {
                [v36 setVisibilityState:0];
              }

              v30 = v36;
              goto LABEL_65;
            }
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }

      v30 = 0;
      v15 = v41;
    }

    else
    {
      v30 = 0;
    }

LABEL_65:
  }

  return v30;
}

+ (void)handleUpdatesForContextWillSave:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 object];
  if (v4)
  {
    v18 = v3;
    context = objc_autoreleasePoolPush();
    [v4 getAndClearRecordedAvalancheUUIDsForUpdate];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v28 = 0u;
    v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(obj);
          }

          v9 = [a1 assetsWithAvalancheUUID:*(*(&v25 + 1) + 8 * i) sourceType:1 inManagedObjectContext:v4];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = 0;
            v14 = *v22;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v22 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v21 + 1) + 8 * j);
                if (([v16 isDeleted] & 1) == 0)
                {
                  if ([v16 isAvalancheStackPhoto])
                  {
                    goto LABEL_26;
                  }

                  if (!v13)
                  {
                    if ([v16 avalanchePickTypeIsVisible])
                    {
                      v13 = 0;
                    }

                    else
                    {
                      v13 = v16;
                    }
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v12);

            if (v13)
            {
              [v13 setAvalanchePickType:{objc_msgSend(v13, "avalanchePickType") & 0x24 | 0x10}];
              if (+[PLAvalanche shouldOnlyShowAvalanchePicks])
              {
                if ([v13 visibilityState])
                {
                  [v13 setVisibilityState:0];
                }

                [v13 setNeedsMomentUpdate:1];
              }
            }
          }

          else
          {
            v13 = 0;
LABEL_26:
          }
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
    }

    objc_autoreleasePoolPop(context);
    v3 = v18;
  }
}

+ (id)revalidateAvalancheAssets:(id)a3 inLibrary:(id)a4 deleteNonPicks:(BOOL)a5 allowDissolve:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v75 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ([v9 count] == 1)
  {
    [PLAvalanche disolveBurstForAssets:v9 permanently:0];
LABEL_45:
    v17 = 0;
    goto LABEL_56;
  }

  if (![v9 count])
  {
    goto LABEL_45;
  }

  v52 = v7;
  v55 = v6;
  v11 = [v9 firstObject];
  v12 = [v11 avalancheUUID];
  v54 = [v12 copy];

  v58 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E695DF70] array];
  v57 = [MEMORY[0x1E695DF70] array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v63 objects:v74 count:16];
  v56 = v13;
  v53 = v10;
  if (v15)
  {
    v16 = v15;
    v51 = v9;
    v17 = 0;
    v18 = *v64;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v64 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v63 + 1) + 8 * i);
        if ([v20 isFinderSyncedAsset])
        {
          v21 = PLBackendGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [v20 uuid];
            v23 = [v20 avalancheUUID];
            *buf = 138543618;
            v68 = v22;
            v69 = 2114;
            v70 = v23;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Finder synced asset %{public}@ cannot be revalidated as part of burst %{public}@", buf, 0x16u);

            v13 = v56;
          }
        }

        else
        {
          if (([v20 avalanchePickType] & 4) != 0)
          {
            [v58 addObject:v20];
          }

          if (([v20 avalanchePickType] & 0x20) != 0 && (objc_msgSend(v20, "avalanchePickType") & 8) == 0)
          {
            if (v17)
            {
              [v13 addObject:v17];
            }

            v24 = v20;

            v17 = v24;
          }

          if (([v20 avalanchePickType] & 8) == 0)
          {
            if (v17)
            {
              if (([v17 avalanchePickType] & 4) == 0 && (objc_msgSend(v20, "avalanchePickType") & 4) != 0)
              {
                v25 = v20;

                v17 = v25;
              }
            }

            else
            {
              v17 = v20;
            }
          }

          if (([v20 avalanchePickType] & 0x10) != 0)
          {
            [v13 addObject:v20];
          }

          if (([v20 avalanchePickType] & 8) != 0)
          {
            [v57 addObject:v20];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v16);

    if (!v17 || [v13 count] <= 1 && (objc_msgSend(v13, "firstObject"), v26 = objc_claimAutoreleasedReturnValue(), v26, v26 == v17))
    {
      v9 = v51;
    }

    else
    {
      [v13 removeObject:v17];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v27 = v13;
      v28 = [v27 countByEnumeratingWithState:&v59 objects:v73 count:16];
      v9 = v51;
      if (v28)
      {
        v29 = v28;
        v30 = *v60;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v60 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v59 + 1) + 8 * j);
            [v32 setAvalanchePickType:{objc_msgSend(v32, "avalanchePickType") & 0xFFFFFFEFLL}];
            if (([v32 avalanchePickType] & 4) == 0)
            {
              [v32 setAvalanchePickType:{objc_msgSend(v32, "avalanchePickType") | 2}];
            }

            [v32 setVisibilityState:2];
          }

          v29 = [v27 countByEnumeratingWithState:&v59 objects:v73 count:16];
        }

        while (v29);
      }

      [v17 setVisibilityState:0];
      [v17 setAvalanchePickType:{objc_msgSend(v17, "avalanchePickType") & 0xFFFFFFED | 0x10}];
    }
  }

  else
  {

    v17 = 0;
  }

  v33 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v34 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v17 avalancheUUID];
      v36 = [v17 uuid];
      *buf = 138412546;
      v68 = v35;
      v69 = 2112;
      v70 = v36;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Updating burst %@, stack will be set to %@", buf, 0x16u);
    }

    if ((*v33 & 1) == 0)
    {
      v37 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v68 = v58;
        v69 = 2112;
        v70 = v57;
        v71 = 2112;
        v72 = v14;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEBUG, "autoPicks are %@, favorites are %@, the rest of burst are %@", buf, 0x20u);
      }
    }
  }

  v38 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v14];
  v39 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v58];
  v40 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v57];
  LOBYTE(v50) = v55;
  v41 = [PLAvalanche updatePropertiesForAssets:v38 autoPicks:v39 stackAsset:v17 userFavorites:v40 deleteNonPicks:v52 setFirstPick:0 allowDissolve:v50];

  v42 = [[PLAvalanche alloc] initWithUUID:v54 sourceType:1 photoLibrary:v53];
  v43 = [(PLAvalanche *)v42 stackAsset];
  [v43 generateLargeThumbnailFileIfNecessary];

  v44 = [(PLAvalanche *)v42 assets];
  v45 = [(PLAvalanche *)v42 autoPicks];
  v46 = [(PLAvalanche *)v42 stackAsset];
  v47 = [(PLAvalanche *)v42 userFavorites];
  [PLAvalanche updateMembershipForAssets:v44 autoPicks:v45 stackAsset:v46 userFavorites:v47 deleteNonPicks:v52 allowDissolve:v55 inLibrary:v53];

  v10 = v53;
LABEL_56:
  v48 = [v17 uuid];

  return v48;
}

+ (void)disolveBurstForAssets:(id)a3 permanently:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v4)
        {
          [*(*(&v12 + 1) + 8 * v9) setAvalancheUUID:0];
          [v10 setAvalancheKind:0];
        }

        [v10 setAvalanchePickType:0];
        v11 = [v10 additionalAttributes];
        [v11 setCloudAvalanchePickType:0];

        [v10 setVisibilityState:0];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

+ (BOOL)isValidBurstWithAssets:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] >= 2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (!v5)
    {

      goto LABEL_29;
    }

    v6 = v5;
    v7 = 0;
    v8 = *v25;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = [*(*(&v24 + 1) + 8 * v9) avalanchePickType];
      if ((v10 & 0x10) != 0)
      {
        if (v7)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v14 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v4 firstObject];
              v16 = [v15 avalancheUUID];
              *buf = 138543362;
              v29 = v16;
              _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Invalid burst %{public}@, has more than 1 stack pick", buf, 0xCu);
            }
          }

          goto LABEL_33;
        }

        v7 = 1;
      }

      else if (!v10)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v17 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v4 firstObject];
            v19 = [v18 avalancheUUID];
            *buf = 138543362;
            v29 = v19;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Invalid burst %{public}@, burst marked as not in burst", buf, 0xCu);
          }
        }

        if (v7)
        {
          goto LABEL_34;
        }

LABEL_29:
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v20 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v4 firstObject];
            v22 = [v21 avalancheUUID];
            *buf = 138543362;
            v29 = v22;
            _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Invalid burst %{public}@, can't find a stack pick", buf, 0xCu);
          }

          v4 = v20;
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        if (v7)
        {
          v11 = 1;
          goto LABEL_35;
        }

        goto LABEL_29;
      }
    }
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v3 firstObject];
      v13 = [v12 avalancheUUID];
      *buf = 138543362;
      v29 = v13;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Invalid burst %{public}@, has only 1 asset", buf, 0xCu);
    }

LABEL_33:
  }

LABEL_34:
  v11 = 0;
LABEL_35:

  return v11;
}

+ (id)_fetchRequestForAssetsWithAvalancheUUID:(id)a3 sourceType:(int64_t)a4
{
  v18[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _maskForAvalancheSupportedAssetsWithSourceType:a4];
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLManagedAsset entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = MEMORY[0x1E696AB28];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"avalancheUUID", v6];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"avalancheKind", 1, v12];
  v18[1] = v13;
  v14 = [MEMORY[0x1E69BF328] predicateForIncludeMask:v7 useIndex:0];
  v18[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v16 = [v11 andPredicateWithSubpredicates:v15];

  [v10 setPredicate:v16];

  return v10;
}

+ (unsigned)_maskForAvalancheSupportedAssetsWithSourceType:(int64_t)a3
{
  if (a3 == 2)
  {
    return [MEMORY[0x1E69BF328] maskForAvalancheSupportedAssetsFromFinderSync];
  }

  if (a3 == 1)
  {
    return [MEMORY[0x1E69BF328] maskForAvalancheSupportedAssetsFromUserLibrary];
  }

  return 0;
}

+ (unint64_t)countForAssetsWithAvalancheUUID:(id)a3 sourceType:(int64_t)a4 inLibrary:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [a1 _fetchRequestForAssetsWithAvalancheUUID:v8 sourceType:a4];
  v11 = [v9 managedObjectContext];

  v16 = 0;
  v12 = [v11 countForFetchRequest:v10 error:&v16];
  v13 = v16;

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Error counting assets with avalancheUUID %@: %@", buf, 0x16u);
    }
  }

  return v12;
}

+ (id)assetsWithAvalancheUUID:(id)a3 sourceType:(int64_t)a4 inManagedObjectContext:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [a1 _fetchRequestForAssetsWithAvalancheUUID:v8 sourceType:a4];
  v25[0] = @"additionalAttributes";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v10 setRelationshipKeyPathsForPrefetching:v11];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v24[0] = v12;
  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"additionalAttributes.originalFilename" ascending:1];
  v24[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [v10 setSortDescriptors:v14];

  v19 = 0;
  v15 = [v9 executeFetchRequest:v10 error:&v19];

  v16 = v19;
  if (!v15)
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Error fetching assets with avalancheUUID %@: %@", buf, 0x16u);
    }
  }

  return v15;
}

@end