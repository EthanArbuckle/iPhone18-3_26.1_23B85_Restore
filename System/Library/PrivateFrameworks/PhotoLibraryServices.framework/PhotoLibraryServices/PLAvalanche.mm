@interface PLAvalanche
+ (BOOL)isValidBurstWithAssets:(id)assets;
+ (CGRect)frameOfTopImageInStackForStackFrame:(CGRect)result;
+ (id)_assetAmongAssets:(id)assets fromIndexes:(id)indexes excludingIndexes:(id)excludingIndexes;
+ (id)_fetchRequestForAssetsWithAvalancheUUID:(id)d sourceType:(int64_t)type;
+ (id)_visibleIndexesAmongAssets:(id)assets fromUserFavoriteIndexes:(id)indexes stackIndex:(unint64_t)index;
+ (id)assetsWithAvalancheUUID:(id)d sourceType:(int64_t)type inManagedObjectContext:(id)context;
+ (id)revalidateAvalancheAssets:(id)assets inLibrary:(id)library deleteNonPicks:(BOOL)picks allowDissolve:(BOOL)dissolve;
+ (id)updatePropertiesForAssets:(id)assets autoPicks:(id)picks stackAsset:(id)asset userFavorites:(id)favorites deleteNonPicks:(BOOL)nonPicks setFirstPick:(BOOL)pick allowDissolve:(BOOL)dissolve;
+ (unint64_t)_calculateStackAssetForAssetCount:(unint64_t)count autoPicks:(id)picks userFavorites:(id)favorites;
+ (unint64_t)countForAssetsWithAvalancheUUID:(id)d sourceType:(int64_t)type inLibrary:(id)library;
+ (unsigned)_maskForAvalancheSupportedAssetsWithSourceType:(int64_t)type;
+ (void)disolveBurstForAssets:(id)assets permanently:(BOOL)permanently;
+ (void)handleUpdatesForContextWillSave:(id)save;
+ (void)removeFavoriteStatus:(id)status;
+ (void)updateMembershipForAssets:(id)assets autoPicks:(id)picks stackAsset:(id)asset userFavorites:(id)favorites deleteNonPicks:(BOOL)nonPicks allowDissolve:(BOOL)dissolve inLibrary:(id)library;
- (BOOL)isAutoPick:(id)pick;
- (BOOL)isEmpty;
- (BOOL)isUserFavorite:(id)favorite;
- (NSString)description;
- (PLAvalanche)initWithUUID:(id)d sourceType:(int64_t)type photoLibrary:(id)library;
- (id)autoPicks;
- (id)proposedStackAssetAfterRemovingFavorite:(id)favorite;
- (id)stackAsset;
- (id)userFavorites;
- (unint64_t)approximateCount;
- (unint64_t)assetsCount;
- (unint64_t)photosCount;
- (void)_recalculateStackAsset;
- (void)addUserFavorite:(id)favorite;
- (void)applyChangesAndDeleteNonPicks:(BOOL)picks currentContainer:(id)container completionHandler:(id)handler;
- (void)applyTrashedState:(signed __int16)state withTrashedReason:(unsigned __int16)reason;
- (void)assetsDidChange:(id)change;
- (void)dealloc;
- (void)removeUserFavorite:(id)favorite;
- (void)setHidden:(BOOL)hidden;
@end

@implementation PLAvalanche

- (BOOL)isEmpty
{
  assets = [(PLAvalanche *)self assets];
  v3 = [assets count] == 0;

  return v3;
}

- (unint64_t)photosCount
{
  assets = [(PLAvalanche *)self assets];
  v3 = [assets count];

  return v3;
}

- (unint64_t)assetsCount
{
  assets = [(PLAvalanche *)self assets];
  v3 = [assets count];

  return v3;
}

- (unint64_t)approximateCount
{
  assets = [(PLAvalanche *)self assets];
  v3 = [assets count];

  return v3;
}

- (id)proposedStackAssetAfterRemovingFavorite:(id)favorite
{
  favoriteCopy = favorite;
  stackAsset = [(PLAvalanche *)self stackAsset];
  assets = [(PLAvalanche *)self assets];
  v7 = [assets indexOfObject:favoriteCopy];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    _userFavoriteIndexes = [(PLAvalanche *)self _userFavoriteIndexes];
    v9 = [_userFavoriteIndexes mutableCopy];

    [v9 removeIndex:v7];
    assets2 = [(PLAvalanche *)self assets];
    v11 = [assets2 count];
    _originalAutoPickIndexes = [(PLAvalanche *)self _originalAutoPickIndexes];
    v13 = [PLAvalanche _calculateStackAssetForAssetCount:v11 autoPicks:_originalAutoPickIndexes userFavorites:v9];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      assets3 = [(PLAvalanche *)self assets];
      v15 = [assets3 objectAtIndex:v13];

      stackAsset = v15;
    }
  }

  return stackAsset;
}

- (BOOL)isAutoPick:(id)pick
{
  pickCopy = pick;
  assets = [(PLAvalanche *)self assets];
  v6 = [assets indexOfObject:pickCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  _autoPickIndexes = [(PLAvalanche *)self _autoPickIndexes];
  v9 = [_autoPickIndexes containsIndex:v6];

  return v9;
}

- (BOOL)isUserFavorite:(id)favorite
{
  favoriteCopy = favorite;
  assets = [(PLAvalanche *)self assets];
  v6 = [assets indexOfObject:favoriteCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  _userFavoriteIndexes = [(PLAvalanche *)self _userFavoriteIndexes];
  v9 = [_userFavoriteIndexes containsIndex:v6];

  return v9;
}

- (void)removeUserFavorite:(id)favorite
{
  favoriteCopy = favorite;
  assets = [(PLAvalanche *)self assets];
  v6 = [assets indexOfObject:favoriteCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    _userFavoriteIndexes = [(PLAvalanche *)self _userFavoriteIndexes];
    [_userFavoriteIndexes removeIndex:v6];

    [(PLAvalanche *)self _recalculateStackAsset];
  }
}

- (void)addUserFavorite:(id)favorite
{
  favoriteCopy = favorite;
  assets = [(PLAvalanche *)self assets];
  v6 = [assets indexOfObject:favoriteCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    _userFavoriteIndexes = [(PLAvalanche *)self _userFavoriteIndexes];
    [_userFavoriteIndexes addIndex:v6];

    [(PLAvalanche *)self _recalculateStackAsset];
  }
}

- (void)_recalculateStackAsset
{
  assets = [(PLAvalanche *)self assets];
  v3 = [assets count];
  _originalAutoPickIndexes = [(PLAvalanche *)self _originalAutoPickIndexes];
  _userFavoriteIndexes = [(PLAvalanche *)self _userFavoriteIndexes];
  self->__stackIndex = [PLAvalanche _calculateStackAssetForAssetCount:v3 autoPicks:_originalAutoPickIndexes userFavorites:_userFavoriteIndexes];
}

- (id)stackAsset
{
  if ([(PLAvalanche *)self _stackIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    assets = [(PLAvalanche *)self assets];
    v3 = [assets objectAtIndex:{-[PLAvalanche _stackIndex](self, "_stackIndex")}];
  }

  return v3;
}

- (id)userFavorites
{
  v3 = MEMORY[0x1E695DFB8];
  assets = [(PLAvalanche *)self assets];
  _userFavoriteIndexes = [(PLAvalanche *)self _userFavoriteIndexes];
  v6 = [assets objectsAtIndexes:_userFavoriteIndexes];
  v7 = [v3 orderedSetWithArray:v6];

  return v7;
}

- (id)autoPicks
{
  v3 = MEMORY[0x1E695DFB8];
  assets = [(PLAvalanche *)self assets];
  _autoPickIndexes = [(PLAvalanche *)self _autoPickIndexes];
  v6 = [assets objectsAtIndexes:_autoPickIndexes];
  v7 = [v3 orderedSetWithArray:v6];

  return v7;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v18 = *MEMORY[0x1E69E9840];
  assets = [(PLAvalanche *)self assets];
  v6 = [assets mutableCopy];

  userFavorites = [(PLAvalanche *)self userFavorites];
  [v6 minusOrderedSet:userFavorites];
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

        [*(*(&v13 + 1) + 8 * v12++) setHidden:{hiddenCopy, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)applyTrashedState:(signed __int16)state withTrashedReason:(unsigned __int16)reason
{
  reasonCopy = reason;
  stateCopy = state;
  v21 = *MEMORY[0x1E69E9840];
  assets = [(PLAvalanche *)self assets];
  v8 = [assets mutableCopy];

  userFavorites = [(PLAvalanche *)self userFavorites];
  [v8 minusOrderedSet:userFavorites];
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

        [*(*(&v16 + 1) + 8 * v14++) applyTrashedState:stateCopy withTrashedReason:reasonCopy expungeReasonFromClient:{0, v16}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  if (stateCopy == 2)
  {
    array = [userFavorites array];
    [PLAvalanche disolveBurstForAssets:array permanently:1];
  }
}

- (void)assetsDidChange:(id)change
{
  updatedAssets = [change updatedAssets];
  if ([updatedAssets count])
  {
    _anOldPick = [(PLAvalanche *)self _anOldPick];
    _aNewPick = [(PLAvalanche *)self _aNewPick];
    v6 = _aNewPick;
    if (!(_aNewPick | _anOldPick))
    {
      goto LABEL_14;
    }

    if (_aNewPick)
    {
      if ([updatedAssets containsObject:_aNewPick])
      {
        moment = [v6 moment];
        v8 = moment == 0;

        if (!_anOldPick)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }

      v8 = 1;
      if (!_anOldPick)
      {
LABEL_11:
        v10 = 0;
LABEL_12:
        if (!v8 && !v10)
        {
          _completionHandler = [(PLAvalanche *)self _completionHandler];
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
      if (!_anOldPick)
      {
        goto LABEL_11;
      }
    }

LABEL_8:
    if ([updatedAssets containsObject:_anOldPick])
    {
      moment2 = [_anOldPick moment];
      v10 = moment2 != 0;

      goto LABEL_12;
    }

LABEL_14:
  }
}

- (void)applyChangesAndDeleteNonPicks:(BOOL)picks currentContainer:(id)container completionHandler:(id)handler
{
  picksCopy = picks;
  v41 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  handlerCopy = handler;
  assets = [(PLAvalanche *)self assets];
  if ([assets count] == 1)
  {
    firstObject = [assets firstObject];
    [(PLAvalanche *)self addUserFavorite:firstObject];
  }

  v33 = handlerCopy;
  autoPicks = [(PLAvalanche *)self autoPicks];
  userFavorites = [(PLAvalanche *)self userFavorites];
  stackAsset = [(PLAvalanche *)self stackAsset];
  [(PLAvalanche *)self _originalStackIndex];
  _originalUserFavoriteIndexes = [(PLAvalanche *)self _originalUserFavoriteIndexes];
  v35 = [PLAvalanche _visibleIndexesAmongAssets:"_visibleIndexesAmongAssets:fromUserFavoriteIndexes:stackIndex:" fromUserFavoriteIndexes:assets stackIndex:?];
  LOBYTE(v29) = 1;
  v31 = stackAsset;
  v32 = autoPicks;
  v14 = [PLAvalanche updatePropertiesForAssets:assets autoPicks:autoPicks stackAsset:stackAsset userFavorites:userFavorites deleteNonPicks:picksCopy setFirstPick:0 allowDissolve:v29];
  if (([assets isSubsetOfOrderedSet:userFavorites] & 1) == 0)
  {
    firstObject2 = [assets firstObject];
    photoLibrary = [firstObject2 photoLibrary];

    array = [assets array];
    v18 = [PLAvalanche revalidateAvalancheAssets:array inLibrary:photoLibrary deleteNonPicks:picksCopy allowDissolve:1];
  }

  _stackIndex = [(PLAvalanche *)self _stackIndex];
  _userFavoriteIndexes = [(PLAvalanche *)self _userFavoriteIndexes];
  v21 = [PLAvalanche _visibleIndexesAmongAssets:assets fromUserFavoriteIndexes:_userFavoriteIndexes stackIndex:_stackIndex];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = [assets objectsAtIndexes:v21];
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
      v27 = [PLAvalanche _assetAmongAssets:assets fromIndexes:v35 excludingIndexes:v21];
      v28 = [PLAvalanche _assetAmongAssets:assets fromIndexes:v21 excludingIndexes:v35];
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
  _autoPickIndexes = [(PLAvalanche *)self _autoPickIndexes];
  _stackIndex = [(PLAvalanche *)self _stackIndex];
  _userFavoriteIndexes = [(PLAvalanche *)self _userFavoriteIndexes];
  v10 = [v3 stringWithFormat:@"%@ uuid %@, assets %@, autoPicks %@ stackAsset %lu userFavorites %@ ", v4, uuid, v6, _autoPickIndexes, _stackIndex, _userFavoriteIndexes];

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

- (PLAvalanche)initWithUUID:(id)d sourceType:(int64_t)type photoLibrary:(id)library
{
  dCopy = d;
  libraryCopy = library;
  v31.receiver = self;
  v31.super_class = PLAvalanche;
  v11 = [(PLAvalanche *)&v31 init];
  if (v11)
  {
    if (!dCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"tried to create with nil uuid"];
    }

    objc_storeStrong(&v11->_uuid, d);
    objc_storeStrong(&v11->_photoLibrary, library);
    v11->_sourceType = type;
    managedObjectContext = [libraryCopy managedObjectContext];
    v13 = [PLAvalanche assetsWithAvalancheUUID:dCopy sourceType:type inManagedObjectContext:managedObjectContext];

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

+ (void)removeFavoriteStatus:(id)status
{
  statusCopy = status;
  isAvalanchePhoto = [statusCopy isAvalanchePhoto];
  v4 = statusCopy;
  if (isAvalanchePhoto)
  {
    avalanchePickType = [statusCopy avalanchePickType];
    visibilityState = [statusCopy visibilityState];
    if ((avalanchePickType & 4) != 0)
    {
      v7 = 36;
    }

    else
    {
      v7 = 34;
    }

    if (avalanchePickType != (v7 & avalanchePickType))
    {
      [statusCopy setAvalanchePickType:?];
    }

    v8 = +[PLAvalanche shouldOnlyShowAvalanchePicks];
    v4 = statusCopy;
    if (v8)
    {
      v9 = statusCopy;
      if (visibilityState != 2)
      {
        [statusCopy setVisibilityState:2];
        v9 = statusCopy;
      }

      [v9 setAlbums:0];
      [statusCopy setNeedsMomentUpdate:1];
      v4 = statusCopy;
    }
  }
}

+ (unint64_t)_calculateStackAssetForAssetCount:(unint64_t)count autoPicks:(id)picks userFavorites:(id)favorites
{
  picksCopy = picks;
  favoritesCopy = favorites;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __73__PLAvalanche__calculateStackAssetForAssetCount_autoPicks_userFavorites___block_invoke;
  v16 = &unk_1E75734D0;
  v9 = favoritesCopy;
  v17 = v9;
  v18 = &v19;
  [picksCopy enumerateIndexesUsingBlock:&v13];
  v10 = v20[3];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL && count != 0)
  {
    v10 = 0;
    while (([v9 containsIndex:{v10, v13, v14, v15, v16}] & 1) != 0)
    {
      if (count == ++v10)
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

+ (id)_assetAmongAssets:(id)assets fromIndexes:(id)indexes excludingIndexes:(id)excludingIndexes
{
  assetsCopy = assets;
  excludingIndexesCopy = excludingIndexes;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__PLAvalanche__assetAmongAssets_fromIndexes_excludingIndexes___block_invoke;
  v13[3] = &unk_1E75734A8;
  v14 = excludingIndexesCopy;
  v9 = excludingIndexesCopy;
  v10 = [indexes indexPassingTest:v13];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = [assetsCopy objectAtIndex:v10];
  }

  return v11;
}

+ (id)_visibleIndexesAmongAssets:(id)assets fromUserFavoriteIndexes:(id)indexes stackIndex:(unint64_t)index
{
  assetsCopy = assets;
  v8 = MEMORY[0x1E696AD50];
  indexesCopy = indexes;
  indexSet = [v8 indexSet];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PLAvalanche__visibleIndexesAmongAssets_fromUserFavoriteIndexes_stackIndex___block_invoke;
  aBlock[3] = &unk_1E7573458;
  v22 = assetsCopy;
  v11 = assetsCopy;
  v12 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__PLAvalanche__visibleIndexesAmongAssets_fromUserFavoriteIndexes_stackIndex___block_invoke_2;
  v18[3] = &unk_1E7573480;
  v13 = v12;
  v20 = v13;
  v14 = indexSet;
  v19 = v14;
  [indexesCopy enumerateIndexesUsingBlock:v18];

  if (index != 0x7FFFFFFFFFFFFFFFLL && (*(v13 + 2))(v13, index))
  {
    [v14 addIndex:index];
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

+ (void)updateMembershipForAssets:(id)assets autoPicks:(id)picks stackAsset:(id)asset userFavorites:(id)favorites deleteNonPicks:(BOOL)nonPicks allowDissolve:(BOOL)dissolve inLibrary:(id)library
{
  dissolveCopy = dissolve;
  nonPicksCopy = nonPicks;
  v31 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  assetCopy = asset;
  favoritesCopy = favorites;
  if (+[PLAvalanche shouldOnlyShowAvalanchePicks])
  {
    if (dissolveCopy)
    {
      LOBYTE(dissolveCopy) = [assetsCopy isSubsetOfOrderedSet:favoritesCopy];
    }

    v16 = [assetsCopy mutableCopy];
    [v16 minusOrderedSet:favoritesCopy];
    if (assetCopy)
    {
      v17 = dissolveCopy;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17 | nonPicksCopy;
    if (((v17 | nonPicksCopy) & 1) == 0 && ([assetCopy isDeleted] & 1) == 0)
    {
      [v16 removeObject:assetCopy];
    }

    v19 = [MEMORY[0x1E695DFA0] orderedSetWithOrderedSet:favoritesCopy];
    if ((v18 & 1) == 0 && ([assetCopy isDeleted] & 1) == 0)
    {
      [v19 insertObject:assetCopy atIndex:0];
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
          if (nonPicksCopy && [*(*(&v26 + 1) + 8 * i) canMoveToTrash])
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

+ (id)updatePropertiesForAssets:(id)assets autoPicks:(id)picks stackAsset:(id)asset userFavorites:(id)favorites deleteNonPicks:(BOOL)nonPicks setFirstPick:(BOOL)pick allowDissolve:(BOOL)dissolve
{
  v54 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  picksCopy = picks;
  assetCopy = asset;
  favoritesCopy = favorites;
  nonPicksCopy = nonPicks;
  if (dissolve)
  {
    v16 = [assetsCopy isSubsetOfOrderedSet:favoritesCopy];
  }

  else
  {
    v16 = 0;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = assetsCopy;
  v17 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  v41 = favoritesCopy;
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
          avalanchePickType = [v21 avalanchePickType];
          visibilityState = [v21 visibilityState];
          if ([favoritesCopy containsObject:v21])
          {
            if (v16)
            {
              v24 = 0;
            }

            else
            {
              v24 = avalanchePickType & 0x24 | 8;
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
            if ([picksCopy containsObject:v21])
            {
              if (!assetCopy)
              {
                assetCopy = v21;
                pick = 0;
              }

              v24 = avalanchePickType & 0x20 | 4;
            }

            else
            {
              v24 = avalanchePickType & 0x20 | 2;
            }

            v25 = 2;
          }

          if (pick)
          {
            v26 = 48;
          }

          else
          {
            v26 = 16;
          }

          if (assetCopy == v21)
          {
            v27 = 0;
          }

          else
          {
            v27 = v25;
          }

          if (assetCopy == v21)
          {
            v28 = v26 | v24 & 0x2D;
          }

          else
          {
            v28 = v24;
          }

          if (avalanchePickType != v28)
          {
            [v21 setAvalanchePickType:?];
          }

          if (+[PLAvalanche shouldOnlyShowAvalanchePicks])
          {
            if (visibilityState != v27)
            {
              [v21 setVisibilityState:v27];
            }

            [v21 setNeedsMomentUpdate:1];
          }

          if (v16)
          {
            [v21 setAvalancheUUID:0];
            additionalAttributes = [v21 additionalAttributes];
            [additionalAttributes setCloudAvalanchePickType:0];
          }

          favoritesCopy = v41;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v18);
  }

  if ((assetCopy != 0) | v16 & 1)
  {
    v30 = assetCopy;
  }

  else
  {
    v30 = 0;
  }

  if (!((assetCopy != 0) | v16 & 1) && !nonPicksCopy)
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
            avalanchePickType2 = [v36 avalanchePickType];
            if ((avalanchePickType2 & 8) == 0)
            {
              if (avalanchePickType2 != (avalanchePickType2 & 0x24 | 0x10))
              {
                [v36 setAvalanchePickType:?];
              }

              favoritesCopy = v41;
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
      favoritesCopy = v41;
    }

    else
    {
      v30 = 0;
    }

LABEL_65:
  }

  return v30;
}

+ (void)handleUpdatesForContextWillSave:(id)save
{
  v31 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  object = [saveCopy object];
  if (object)
  {
    v18 = saveCopy;
    context = objc_autoreleasePoolPush();
    [object getAndClearRecordedAvalancheUUIDsForUpdate];
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

          v9 = [self assetsWithAvalancheUUID:*(*(&v25 + 1) + 8 * i) sourceType:1 inManagedObjectContext:object];
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
    saveCopy = v18;
  }
}

+ (id)revalidateAvalancheAssets:(id)assets inLibrary:(id)library deleteNonPicks:(BOOL)picks allowDissolve:(BOOL)dissolve
{
  dissolveCopy = dissolve;
  picksCopy = picks;
  v75 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  libraryCopy = library;
  if ([assetsCopy count] == 1)
  {
    [PLAvalanche disolveBurstForAssets:assetsCopy permanently:0];
LABEL_45:
    v17 = 0;
    goto LABEL_56;
  }

  if (![assetsCopy count])
  {
    goto LABEL_45;
  }

  v52 = picksCopy;
  v55 = dissolveCopy;
  firstObject = [assetsCopy firstObject];
  avalancheUUID = [firstObject avalancheUUID];
  v54 = [avalancheUUID copy];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v14 = assetsCopy;
  v15 = [v14 countByEnumeratingWithState:&v63 objects:v74 count:16];
  v56 = array2;
  v53 = libraryCopy;
  if (v15)
  {
    v16 = v15;
    v51 = assetsCopy;
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
            uuid = [v20 uuid];
            avalancheUUID2 = [v20 avalancheUUID];
            *buf = 138543618;
            v68 = uuid;
            v69 = 2114;
            v70 = avalancheUUID2;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Finder synced asset %{public}@ cannot be revalidated as part of burst %{public}@", buf, 0x16u);

            array2 = v56;
          }
        }

        else
        {
          if (([v20 avalanchePickType] & 4) != 0)
          {
            [array addObject:v20];
          }

          if (([v20 avalanchePickType] & 0x20) != 0 && (objc_msgSend(v20, "avalanchePickType") & 8) == 0)
          {
            if (v17)
            {
              [array2 addObject:v17];
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
            [array2 addObject:v20];
          }

          if (([v20 avalanchePickType] & 8) != 0)
          {
            [array3 addObject:v20];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v16);

    if (!v17 || [array2 count] <= 1 && (objc_msgSend(array2, "firstObject"), v26 = objc_claimAutoreleasedReturnValue(), v26, v26 == v17))
    {
      assetsCopy = v51;
    }

    else
    {
      [array2 removeObject:v17];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v27 = array2;
      v28 = [v27 countByEnumeratingWithState:&v59 objects:v73 count:16];
      assetsCopy = v51;
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
      avalancheUUID3 = [v17 avalancheUUID];
      uuid2 = [v17 uuid];
      *buf = 138412546;
      v68 = avalancheUUID3;
      v69 = 2112;
      v70 = uuid2;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Updating burst %@, stack will be set to %@", buf, 0x16u);
    }

    if ((*v33 & 1) == 0)
    {
      v37 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v68 = array;
        v69 = 2112;
        v70 = array3;
        v71 = 2112;
        v72 = v14;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEBUG, "autoPicks are %@, favorites are %@, the rest of burst are %@", buf, 0x20u);
      }
    }
  }

  v38 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v14];
  v39 = [MEMORY[0x1E695DFB8] orderedSetWithArray:array];
  v40 = [MEMORY[0x1E695DFB8] orderedSetWithArray:array3];
  LOBYTE(v50) = v55;
  v41 = [PLAvalanche updatePropertiesForAssets:v38 autoPicks:v39 stackAsset:v17 userFavorites:v40 deleteNonPicks:v52 setFirstPick:0 allowDissolve:v50];

  v42 = [[PLAvalanche alloc] initWithUUID:v54 sourceType:1 photoLibrary:v53];
  stackAsset = [(PLAvalanche *)v42 stackAsset];
  [stackAsset generateLargeThumbnailFileIfNecessary];

  assets = [(PLAvalanche *)v42 assets];
  autoPicks = [(PLAvalanche *)v42 autoPicks];
  stackAsset2 = [(PLAvalanche *)v42 stackAsset];
  userFavorites = [(PLAvalanche *)v42 userFavorites];
  [PLAvalanche updateMembershipForAssets:assets autoPicks:autoPicks stackAsset:stackAsset2 userFavorites:userFavorites deleteNonPicks:v52 allowDissolve:v55 inLibrary:v53];

  libraryCopy = v53;
LABEL_56:
  uuid3 = [v17 uuid];

  return uuid3;
}

+ (void)disolveBurstForAssets:(id)assets permanently:(BOOL)permanently
{
  permanentlyCopy = permanently;
  v17 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [assetsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(assetsCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (permanentlyCopy)
        {
          [*(*(&v12 + 1) + 8 * v9) setAvalancheUUID:0];
          [v10 setAvalancheKind:0];
        }

        [v10 setAvalanchePickType:0];
        additionalAttributes = [v10 additionalAttributes];
        [additionalAttributes setCloudAvalanchePickType:0];

        [v10 setVisibilityState:0];
        ++v9;
      }

      while (v7 != v9);
      v7 = [assetsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

+ (BOOL)isValidBurstWithAssets:(id)assets
{
  v31 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ([assetsCopy count] >= 2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = assetsCopy;
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

      avalanchePickType = [*(*(&v24 + 1) + 8 * v9) avalanchePickType];
      if ((avalanchePickType & 0x10) != 0)
      {
        if (v7)
        {
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v14 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              firstObject = [v4 firstObject];
              avalancheUUID = [firstObject avalancheUUID];
              *buf = 138543362;
              v29 = avalancheUUID;
              _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Invalid burst %{public}@, has more than 1 stack pick", buf, 0xCu);
            }
          }

          goto LABEL_33;
        }

        v7 = 1;
      }

      else if (!avalanchePickType)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v17 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            firstObject2 = [v4 firstObject];
            avalancheUUID2 = [firstObject2 avalancheUUID];
            *buf = 138543362;
            v29 = avalancheUUID2;
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
            firstObject3 = [v4 firstObject];
            avalancheUUID3 = [firstObject3 avalancheUUID];
            *buf = 138543362;
            v29 = avalancheUUID3;
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
      firstObject4 = [assetsCopy firstObject];
      avalancheUUID4 = [firstObject4 avalancheUUID];
      *buf = 138543362;
      v29 = avalancheUUID4;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Invalid burst %{public}@, has only 1 asset", buf, 0xCu);
    }

LABEL_33:
  }

LABEL_34:
  v11 = 0;
LABEL_35:

  return v11;
}

+ (id)_fetchRequestForAssetsWithAvalancheUUID:(id)d sourceType:(int64_t)type
{
  v18[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = [self _maskForAvalancheSupportedAssetsWithSourceType:type];
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLManagedAsset entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = MEMORY[0x1E696AB28];
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"avalancheUUID", dCopy];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"avalancheKind", 1, dCopy];
  v18[1] = v13;
  v14 = [MEMORY[0x1E69BF328] predicateForIncludeMask:v7 useIndex:0];
  v18[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v16 = [v11 andPredicateWithSubpredicates:v15];

  [v10 setPredicate:v16];

  return v10;
}

+ (unsigned)_maskForAvalancheSupportedAssetsWithSourceType:(int64_t)type
{
  if (type == 2)
  {
    return [MEMORY[0x1E69BF328] maskForAvalancheSupportedAssetsFromFinderSync];
  }

  if (type == 1)
  {
    return [MEMORY[0x1E69BF328] maskForAvalancheSupportedAssetsFromUserLibrary];
  }

  return 0;
}

+ (unint64_t)countForAssetsWithAvalancheUUID:(id)d sourceType:(int64_t)type inLibrary:(id)library
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  v10 = [self _fetchRequestForAssetsWithAvalancheUUID:dCopy sourceType:type];
  managedObjectContext = [libraryCopy managedObjectContext];

  v16 = 0;
  v12 = [managedObjectContext countForFetchRequest:v10 error:&v16];
  v13 = v16;

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = dCopy;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Error counting assets with avalancheUUID %@: %@", buf, 0x16u);
    }
  }

  return v12;
}

+ (id)assetsWithAvalancheUUID:(id)d sourceType:(int64_t)type inManagedObjectContext:(id)context
{
  v25[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  v10 = [self _fetchRequestForAssetsWithAvalancheUUID:dCopy sourceType:type];
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
  v15 = [contextCopy executeFetchRequest:v10 error:&v19];

  v16 = v19;
  if (!v15)
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = dCopy;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Error fetching assets with avalancheUUID %@: %@", buf, 0x16u);
    }
  }

  return v15;
}

@end