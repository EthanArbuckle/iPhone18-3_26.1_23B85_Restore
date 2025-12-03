@interface PXStoryResourcesDataSource
- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo;
- (BOOL)hasSameResourcesOfKind:(int64_t)kind as:(id)as;
- (PXStoryColorResource)backgroundColorResource;
- (PXStoryResourcesDataSource)initWithKeyAsset:(id)asset displayAssets:(id)assets availableDisplayAssets:(id)displayAssets movieHighlights:(id)highlights detailedSaliency:(id)saliency chapterCollection:(id)collection audioAssets:(id)audioAssets assetCollection:(id)self0 overallDurationInfo:(id *)self1 storyConfiguration:(id)self2;
- (PXStoryResourcesDataSource)initWithStoryConfiguration:(id)configuration;
- (id)_createTextResourceAtIndex:(int64_t)index;
- (id)colorResourceAtIndex:(int64_t)index;
- (id)displayAssetResourceAtIndex:(int64_t)index;
- (id)frameFillingEffectResourceAtIndex:(int64_t)index;
- (id)movieHighlightsForDisplayAssetAtIndex:(int64_t)index;
- (id)resourceWithKind:(int64_t)kind atIndex:(int64_t)index;
- (id)songResourceAtIndex:(int64_t)index;
- (id)textResourceAtIndex:(int64_t)index;
- (int64_t)indexForDisplayAssetReference:(id)reference;
- (int64_t)numberOfDisplayAssetResources;
- (int64_t)numberOfResourcesWithKind:(int64_t)kind;
- (int64_t)numberOfSongResources;
- (void)enumerateTextResourcesForTitles:(unint64_t)titles displayAssetResourceAtIndex:(int64_t)index usingBlock:(id)block;
@end

@implementation PXStoryResourcesDataSource

- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo
{
  v3 = *&self[2].var1.var1.var1;
  v4 = *&self[2].var1.var2.var3;
  *&retstr->var1.var1.var0 = *&self[2].var1.var2.var0;
  *&retstr->var1.var1.var3 = v4;
  *&retstr->var1.var2.var1 = *&self[3].var1.var0.var0;
  *&retstr->var0 = *&self[2].var1.var0.var3;
  *&retstr->var1.var0.var1 = v3;
  return self;
}

- (BOOL)hasSameResourcesOfKind:(int64_t)kind as:(id)as
{
  asCopy = as;
  LOBYTE(v8) = 0;
  if (kind <= 2)
  {
    switch(kind)
    {
      case 1:
        keyAsset = [(PXStoryResourcesDataSource *)self keyAsset];
        keyAsset2 = [asCopy keyAsset];
        if (keyAsset == keyAsset2 || [keyAsset isEqual:keyAsset2])
        {
          displayAssets = [(PXStoryResourcesDataSource *)self displayAssets];
          displayAssets2 = [asCopy displayAssets];
          if (displayAssets == displayAssets2)
          {
            LOBYTE(v8) = 1;
          }

          else
          {
            LOBYTE(v8) = [displayAssets isEqual:displayAssets2];
          }
        }

        else
        {
          LOBYTE(v8) = 0;
        }

        break;
      case 2:
        audioAssets = [(PXStoryResourcesDataSource *)self audioAssets];
        audioAssets2 = [asCopy audioAssets];
        if (audioAssets == audioAssets2)
        {
          LOBYTE(v8) = 1;
        }

        else
        {
          LOBYTE(v8) = [audioAssets isEqual:audioAssets2];
        }

        break;
      case 0:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:317 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  else if ((kind - 3) >= 2)
  {
    if (kind == 5)
    {
      LOBYTE(v8) = [(PXStoryResourcesDataSource *)self hasSameResourcesOfKind:1 as:asCopy];
    }
  }

  else
  {
    v9 = [(PXStoryResourcesDataSource *)self numberOfResourcesWithKind:kind];
    if ([asCopy numberOfResourcesWithKind:kind] == v9)
    {
      v10 = v9 - 1;
      if (v9 < 1)
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        v11 = 0;
        do
        {
          v12 = [(PXStoryResourcesDataSource *)self resourceWithKind:kind atIndex:v11];
          v13 = [asCopy resourceWithKind:kind atIndex:v11];
          v8 = [v12 isEqual:v13];

          if (!v8)
          {
            break;
          }
        }

        while (v10 != v11++);
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)resourceWithKind:(int64_t)kind atIndex:(int64_t)index
{
  if (kind <= 2)
  {
    switch(kind)
    {
      case 1:
        v4 = [(PXStoryResourcesDataSource *)self displayAssetResourceAtIndex:index];
        break;
      case 2:
        v4 = [(PXStoryResourcesDataSource *)self songResourceAtIndex:index];
        break;
      case 0:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = currentHandler;
        v10 = a2;
        selfCopy2 = self;
        v12 = 298;
        goto LABEL_18;
      default:
LABEL_17:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = currentHandler;
        v10 = a2;
        selfCopy2 = self;
        v12 = 310;
LABEL_18:
        [currentHandler handleFailureInMethod:v10 object:selfCopy2 file:@"PXStoryResourcesDataSource.m" lineNumber:v12 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  else
  {
    switch(kind)
    {
      case 3:
        v4 = [(PXStoryResourcesDataSource *)self textResourceAtIndex:index];
        break;
      case 4:
        v4 = [(PXStoryResourcesDataSource *)self colorResourceAtIndex:index];
        break;
      case 5:
        v4 = [(PXStoryResourcesDataSource *)self frameFillingEffectResourceAtIndex:index];
        break;
      default:
        goto LABEL_17;
    }
  }

  return v4;
}

- (int64_t)numberOfResourcesWithKind:(int64_t)kind
{
  if (kind <= 2)
  {
    switch(kind)
    {
      case 1:

        return [(PXStoryResourcesDataSource *)self numberOfDisplayAssetResources];
      case 2:

        return [(PXStoryResourcesDataSource *)self numberOfSongResources];
      case 0:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = currentHandler;
        v8 = a2;
        selfCopy2 = self;
        v10 = 280;
        goto LABEL_25;
      default:
LABEL_24:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = currentHandler;
        v8 = a2;
        selfCopy2 = self;
        v10 = 292;
LABEL_25:
        [currentHandler handleFailureInMethod:v8 object:selfCopy2 file:@"PXStoryResourcesDataSource.m" lineNumber:v10 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  else
  {
    switch(kind)
    {
      case 3:

        return [(PXStoryResourcesDataSource *)self numberOfTextResources];
      case 4:

        return [(PXStoryResourcesDataSource *)self numberOfColorResources];
      case 5:

        return [(PXStoryResourcesDataSource *)self numberOfFrameFillingEffectResources];
      default:
        goto LABEL_24;
    }
  }
}

- (id)frameFillingEffectResourceAtIndex:(int64_t)index
{
  v3 = [(PXStoryResourcesDataSource *)self displayAssetResourceAtIndex:index];
  v4 = [PXStoryConcreteFrameFillingEffectResource alloc];
  px_storyResourceDisplayAsset = [v3 px_storyResourceDisplayAsset];
  v6 = +[PXStorySettings sharedInstance];
  v7 = -[PXStoryConcreteFrameFillingEffectResource initWithDisplayAsset:useSmartColor:](v4, "initWithDisplayAsset:useSmartColor:", px_storyResourceDisplayAsset, [v6 smartGradientUseSmartColor]);

  return v7;
}

- (PXStoryColorResource)backgroundColorResource
{
  os_unfair_lock_lock(&self->_lock);
  lock_backgroundColorResource = self->_lock_backgroundColorResource;
  if (!lock_backgroundColorResource)
  {
    v4 = +[PXStorySettings sharedInstance];
    if ([v4 wantsHighContrastColors])
    {
      [MEMORY[0x1E69DC888] magentaColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v5 = ;

    v6 = [[PXStoryConcreteColorResource alloc] initWithColor:v5 type:1];
    v7 = self->_lock_backgroundColorResource;
    self->_lock_backgroundColorResource = v6;

    lock_backgroundColorResource = self->_lock_backgroundColorResource;
  }

  v8 = lock_backgroundColorResource;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)colorResourceAtIndex:(int64_t)index
{
  if ([(PXStoryResourcesDataSource *)self numberOfColorResources]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:247 description:{@"index %li out of bounds 0 ..< %li", index, -[PXStoryResourcesDataSource numberOfColorResources](self, "numberOfColorResources")}];
  }

  if (index != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:251 description:{@"invalid color resource index %li", index}];

    abort();
  }

  return [(PXStoryResourcesDataSource *)self backgroundColorResource];
}

- (id)songResourceAtIndex:(int64_t)index
{
  audioAssets = [(PXStoryResourcesDataSource *)self audioAssets];
  v5 = [audioAssets objectAtIndexedSubscript:index];

  return v5;
}

- (int64_t)numberOfSongResources
{
  audioAssets = [(PXStoryResourcesDataSource *)self audioAssets];
  v3 = [audioAssets count];

  return v3;
}

- (id)movieHighlightsForDisplayAssetAtIndex:(int64_t)index
{
  if (index == -1)
  {
    keyAsset = [(PXStoryResourcesDataSource *)self keyAsset];
    if (keyAsset)
    {
      goto LABEL_3;
    }
  }

  else
  {
    displayAssets = [(PXStoryResourcesDataSource *)self displayAssets];
    keyAsset = [displayAssets objectAtIndexedSubscript:index];

    if (keyAsset)
    {
LABEL_3:
      movieHighlights = [(PXStoryResourcesDataSource *)self movieHighlights];
      v8 = [movieHighlights movieHighlightsForDisplayAsset:keyAsset];

      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (int64_t)indexForDisplayAssetReference:(id)reference
{
  referenceCopy = reference;
  displayAssets = [(PXStoryResourcesDataSource *)self displayAssets];
  v7 = 0u;
  if (referenceCopy)
  {
    [referenceCopy indexPath];
  }

  v9.length = [displayAssets count];
  v8.length = 11;
  v8.location = 0;
  v9.location = 0;
  if (NSIntersectionRange(v8, v9).length)
  {
    [referenceCopy asset];
    objc_claimAutoreleasedReturnValue();
    PXSectionedFetchResultIndexOfObjectInRange();
  }

  [referenceCopy asset];
  objc_claimAutoreleasedReturnValue();
  PXSectionedFetchResultIndexOfObject();
}

- (id)displayAssetResourceAtIndex:(int64_t)index
{
  if (index != -1)
  {
    displayAssets = [(PXStoryResourcesDataSource *)self displayAssets];
    keyAssetResource = [displayAssets objectAtIndexedSubscript:index];
LABEL_3:

    goto LABEL_5;
  }

  keyAssetResource = [(PXStoryResourcesDataSource *)self keyAssetResource];
  if (!keyAssetResource)
  {
    displayAssets = [MEMORY[0x1E696AAA8] currentHandler];
    [displayAssets handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:198 description:@"key asset resource doesn't exist"];
    goto LABEL_3;
  }

LABEL_5:

  return keyAssetResource;
}

- (int64_t)numberOfDisplayAssetResources
{
  displayAssets = [(PXStoryResourcesDataSource *)self displayAssets];
  v3 = [displayAssets count];

  return v3;
}

- (void)enumerateTextResourcesForTitles:(unint64_t)titles displayAssetResourceAtIndex:(int64_t)index usingBlock:(id)block
{
  titlesCopy = titles;
  blockCopy = block;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__PXStoryResourcesDataSource_enumerateTextResourcesForTitles_displayAssetResourceAtIndex_usingBlock___block_invoke;
  aBlock[3] = &unk_1E7747398;
  v20 = v26;
  v9 = blockCopy;
  v19 = v9;
  v21 = &v22;
  v10 = _Block_copy(aBlock);
  if ((titlesCopy & 1) != 0 && self->_initialDisplayAssetIndex == index)
  {
    v10[2](v10, [(PXStoryResourcesDataSource *)self initialTitleTextResourceIndex], 0);
    v10[2](v10, [(PXStoryResourcesDataSource *)self initialSubtitleTextResourceIndex], 1);
  }

  if ((v23[3] & 1) == 0)
  {
    chapterCollection = [(PXStoryResourcesDataSource *)self chapterCollection];
    v12 = chapterCollection;
    if ((titlesCopy & 2) != 0 && chapterCollection)
    {
      v13 = [(PXStoryResourcesDataSource *)self displayAssetResourceAtIndex:index];
      px_storyResourceDisplayAsset = [v13 px_storyResourceDisplayAsset];

      if ([v12 containsChapterBeginningWithAsset:px_storyResourceDisplayAsset])
      {
        v15 = [v12 chapterContainingAsset:px_storyResourceDisplayAsset];
        identifier = [v15 identifier];

        v17 = [v12 indexOfChapterWithIdentifier:identifier];
        v10[2](v10, self->_chapterTitleTextResourceIndexes.location + v17, 0);
        v10[2](v10, self->_chapterSubtitleTextResourceIndexes.location + v17, 1);
      }
    }
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

uint64_t __101__PXStoryResourcesDataSource_enumerateTextResourcesForTitles_displayAssetResourceAtIndex_usingBlock___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = result;
    if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
    {
      result = (*(*(result + 32) + 16))();
      *(*(*(v2 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

- (id)_createTextResourceAtIndex:(int64_t)index
{
  if ([(PXStoryResourcesDataSource *)self initialTitleTextResourceIndex]== index)
  {
    v6 = [PXStoryConcreteTextResource alloc];
    assetCollection = [(PXStoryResourcesDataSource *)self assetCollection];
    v8 = v6;
    v9 = assetCollection;
    v10 = 0;
LABEL_5:
    v12 = [(PXStoryConcreteTextResource *)v8 initWithAssetCollection:v9 type:v10];
    goto LABEL_16;
  }

  if ([(PXStoryResourcesDataSource *)self initialSubtitleTextResourceIndex]== index)
  {
    v11 = [PXStoryConcreteTextResource alloc];
    assetCollection = [(PXStoryResourcesDataSource *)self assetCollection];
    v8 = v11;
    v9 = assetCollection;
    v10 = 1;
    goto LABEL_5;
  }

  location = self->_chapterTitleTextResourceIndexes.location;
  v15 = index >= location;
  v14 = index - location;
  v15 = !v15 || v14 >= self->_chapterTitleTextResourceIndexes.length;
  if (v15)
  {
    v16 = self->_chapterSubtitleTextResourceIndexes.location;
    v15 = index >= v16;
    v17 = index - v16;
    if (!v15 || v17 >= self->_chapterSubtitleTextResourceIndexes.length)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:156 description:{@"invalid text resource index %li", index}];

      abort();
    }

    chapterCollection = [(PXStoryResourcesDataSource *)self chapterCollection];
    assetCollection = [chapterCollection chapterAtIndex:index - self->_chapterSubtitleTextResourceIndexes.location];

    v20 = [PXStoryConcreteTextResource alloc];
    v21 = assetCollection;
    v22 = 1;
  }

  else
  {
    chapterCollection2 = [(PXStoryResourcesDataSource *)self chapterCollection];
    assetCollection = [chapterCollection2 chapterAtIndex:index - self->_chapterTitleTextResourceIndexes.location];

    v20 = [PXStoryConcreteTextResource alloc];
    v21 = assetCollection;
    v22 = 0;
  }

  v12 = [(PXStoryConcreteTextResource *)v20 initWithChapter:v21 type:v22];
LABEL_16:
  v23 = v12;

  return v23;
}

- (id)textResourceAtIndex:(int64_t)index
{
  if ([(PXStoryResourcesDataSource *)self numberOfTextResources]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:127 description:{@"index %li out of bounds 0 ..< %li", index, -[PXStoryResourcesDataSource numberOfTextResources](self, "numberOfTextResources")}];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  v8 = [(NSMutableDictionary *)selfCopy->_cachedTextResources objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [(PXStoryResourcesDataSource *)selfCopy _createTextResourceAtIndex:index];
    cachedTextResources = selfCopy->_cachedTextResources;
    if (!cachedTextResources)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = selfCopy->_cachedTextResources;
      selfCopy->_cachedTextResources = v10;

      cachedTextResources = selfCopy->_cachedTextResources;
    }

    [(NSMutableDictionary *)cachedTextResources setObject:v8 forKeyedSubscript:v7];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (PXStoryResourcesDataSource)initWithKeyAsset:(id)asset displayAssets:(id)assets availableDisplayAssets:(id)displayAssets movieHighlights:(id)highlights detailedSaliency:(id)saliency chapterCollection:(id)collection audioAssets:(id)audioAssets assetCollection:(id)self0 overallDurationInfo:(id *)self1 storyConfiguration:(id)self2
{
  assetCopy = asset;
  assetsCopy = assets;
  displayAssetsCopy = displayAssets;
  highlightsCopy = highlights;
  *(&v54 + 1) = saliency;
  obj = collection;
  collectionCopy = collection;
  audioAssetsCopy = audioAssets;
  *&v54 = assetCollection;
  configurationCopy = configuration;
  v57.receiver = self;
  v57.super_class = PXStoryResourcesDataSource;
  v20 = [(PXStoryResourcesDataSource *)&v57 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_keyAsset, asset);
    objc_storeStrong(&v21->_displayAssets, assets);
    objc_storeStrong(&v21->_availableDisplayAssets, displayAssets);
    objc_storeStrong(&v21->_audioAssets, audioAssets);
    objc_storeStrong(&v21->_assetCollection, assetCollection);
    objc_storeStrong(&v21->_movieHighlights, highlights);
    objc_storeStrong(&v21->_detailedSaliency, saliency);
    objc_storeStrong(&v21->_chapterCollection, obj);
    *&v21->_overallDurationInfo.kind = *&info->var0;
    v22 = *&info->var1.var0.var1;
    v23 = *&info->var1.var1.var0;
    v24 = *&info->var1.var1.var3;
    *&v21->_overallDurationInfo.specificDurationInfo.maximumDuration.timescale = *&info->var1.var2.var1;
    *&v21->_overallDurationInfo.specificDurationInfo.preferredDuration.epoch = v24;
    *&v21->_overallDurationInfo.specificDurationInfo.preferredDuration.value = v23;
    *&v21->_overallDurationInfo.specificDurationInfo.minimumDuration.timescale = v22;
    v21->_lock._os_unfair_lock_opaque = 0;
    v21->_shouldOptimizeForInlinePlayback = ([configurationCopy options] & 0x8000) != 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __202__PXStoryResourcesDataSource_initWithKeyAsset_displayAssets_availableDisplayAssets_movieHighlights_detailedSaliency_chapterCollection_audioAssets_assetCollection_overallDurationInfo_storyConfiguration___block_invoke;
    aBlock[3] = &unk_1E7747348;
    v25 = v21;
    aBlock[4] = v25;
    v26 = _Block_copy(aBlock);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __202__PXStoryResourcesDataSource_initWithKeyAsset_displayAssets_availableDisplayAssets_movieHighlights_detailedSaliency_chapterCollection_audioAssets_assetCollection_overallDurationInfo_storyConfiguration___block_invoke_2;
    v55[3] = &unk_1E7747370;
    v27 = v25;
    v55[4] = v27;
    v28 = _Block_copy(v55);
    if (v54)
    {
      v27->_initialTitleTextResourceIndex = v26[2](v26);
      v29 = v26[2](v26);
    }

    else
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      v27->_initialTitleTextResourceIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    v27->_initialSubtitleTextResourceIndex = v29;
    numberOfChapters = [(PXStoryChapterCollection *)v21->_chapterCollection numberOfChapters];
    v27->_chapterTitleTextResourceIndexes.location = v28[2](v28, numberOfChapters);
    v27->_chapterTitleTextResourceIndexes.length = v31;
    v27->_chapterSubtitleTextResourceIndexes.location = v28[2](v28, numberOfChapters);
    v27->_chapterSubtitleTextResourceIndexes.length = v32;
    v27->_numberOfColorResources = 2;
    userInfo = [configurationCopy userInfo];
    v34 = userInfo;
    if (v54 == 0 || !userInfo)
    {
      v42 = objc_alloc_init(PXStoryBaseDisplayAssetCroppingContext);
      croppingContext = v27->_croppingContext;
      v27->_croppingContext = v42;
      goto LABEL_17;
    }

    croppingContext = [userInfo objectForKeyedSubscript:@"defaultCroppingContext"];
    v36 = [v34 objectForKeyedSubscript:@"cachingCroppingContext"];
    assetCollection = [croppingContext assetCollection];
    v38 = assetCollection;
    if (assetCollection == v21->_assetCollection || ([(PXDisplayAssetCollection *)assetCollection isEqual:?]& 1) != 0)
    {
      detailedSaliency = [croppingContext detailedSaliency];
      v40 = detailedSaliency;
      if (detailedSaliency == v21->_detailedSaliency)
      {

        goto LABEL_16;
      }

      v41 = [(PXStorySaliencyDataSource *)detailedSaliency isEqual:?];

      if (v41)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v43 = [[PXStoryDefaultDisplayAssetCroppingContext alloc] initWithAssetCollection:v21->_assetCollection detailedSaliency:v21->_detailedSaliency];

    v44 = [[PXStoryCachingDisplayAssetCroppingContext alloc] initWithCroppingContext:v43];
    [v34 setObject:v44 forKeyedSubscript:@"cachingCroppingContext"];
    [v34 setObject:v43 forKeyedSubscript:@"defaultCroppingContext"];
    croppingContext = v43;
    v36 = v44;
LABEL_16:
    v45 = v27->_croppingContext;
    v27->_croppingContext = v36;

LABEL_17:
    sub_1A52458F4();
  }

  return 0;
}

uint64_t __202__PXStoryResourcesDataSource_initWithKeyAsset_displayAssets_availableDisplayAssets_movieHighlights_detailedSaliency_chapterCollection_audioAssets_assetCollection_overallDurationInfo_storyConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 80);
  *(v1 + 80) = result + 1;
  return result;
}

uint64_t __202__PXStoryResourcesDataSource_initWithKeyAsset_displayAssets_availableDisplayAssets_movieHighlights_detailedSaliency_chapterCollection_audioAssets_assetCollection_overallDurationInfo_storyConfiguration___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  result = *(v2 + 80);
  *(v2 + 80) = result + a2;
  return result;
}

- (PXStoryResourcesDataSource)initWithStoryConfiguration:(id)configuration
{
  v3 = *(MEMORY[0x1E69C0DB8] + 48);
  v6[2] = *(MEMORY[0x1E69C0DB8] + 32);
  v6[3] = v3;
  v6[4] = *(MEMORY[0x1E69C0DB8] + 64);
  v4 = *(MEMORY[0x1E69C0DB8] + 16);
  v6[0] = *MEMORY[0x1E69C0DB8];
  v6[1] = v4;
  return [(PXStoryResourcesDataSource *)self initWithKeyAsset:0 displayAssets:0 availableDisplayAssets:0 movieHighlights:0 detailedSaliency:0 chapterCollection:0 audioAssets:0 assetCollection:0 overallDurationInfo:v6 storyConfiguration:configuration];
}

@end