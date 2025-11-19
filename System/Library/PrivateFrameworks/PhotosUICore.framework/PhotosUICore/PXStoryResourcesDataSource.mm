@interface PXStoryResourcesDataSource
- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo;
- (BOOL)hasSameResourcesOfKind:(int64_t)a3 as:(id)a4;
- (PXStoryColorResource)backgroundColorResource;
- (PXStoryResourcesDataSource)initWithKeyAsset:(id)a3 displayAssets:(id)a4 availableDisplayAssets:(id)a5 movieHighlights:(id)a6 detailedSaliency:(id)a7 chapterCollection:(id)a8 audioAssets:(id)a9 assetCollection:(id)a10 overallDurationInfo:(id *)a11 storyConfiguration:(id)a12;
- (PXStoryResourcesDataSource)initWithStoryConfiguration:(id)a3;
- (id)_createTextResourceAtIndex:(int64_t)a3;
- (id)colorResourceAtIndex:(int64_t)a3;
- (id)displayAssetResourceAtIndex:(int64_t)a3;
- (id)frameFillingEffectResourceAtIndex:(int64_t)a3;
- (id)movieHighlightsForDisplayAssetAtIndex:(int64_t)a3;
- (id)resourceWithKind:(int64_t)a3 atIndex:(int64_t)a4;
- (id)songResourceAtIndex:(int64_t)a3;
- (id)textResourceAtIndex:(int64_t)a3;
- (int64_t)indexForDisplayAssetReference:(id)a3;
- (int64_t)numberOfDisplayAssetResources;
- (int64_t)numberOfResourcesWithKind:(int64_t)a3;
- (int64_t)numberOfSongResources;
- (void)enumerateTextResourcesForTitles:(unint64_t)a3 displayAssetResourceAtIndex:(int64_t)a4 usingBlock:(id)a5;
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

- (BOOL)hasSameResourcesOfKind:(int64_t)a3 as:(id)a4
{
  v7 = a4;
  LOBYTE(v8) = 0;
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 1:
        v17 = [(PXStoryResourcesDataSource *)self keyAsset];
        v18 = [v7 keyAsset];
        if (v17 == v18 || [v17 isEqual:v18])
        {
          v19 = [(PXStoryResourcesDataSource *)self displayAssets];
          v20 = [v7 displayAssets];
          if (v19 == v20)
          {
            LOBYTE(v8) = 1;
          }

          else
          {
            LOBYTE(v8) = [v19 isEqual:v20];
          }
        }

        else
        {
          LOBYTE(v8) = 0;
        }

        break;
      case 2:
        v15 = [(PXStoryResourcesDataSource *)self audioAssets];
        v16 = [v7 audioAssets];
        if (v15 == v16)
        {
          LOBYTE(v8) = 1;
        }

        else
        {
          LOBYTE(v8) = [v15 isEqual:v16];
        }

        break;
      case 0:
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:317 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  else if ((a3 - 3) >= 2)
  {
    if (a3 == 5)
    {
      LOBYTE(v8) = [(PXStoryResourcesDataSource *)self hasSameResourcesOfKind:1 as:v7];
    }
  }

  else
  {
    v9 = [(PXStoryResourcesDataSource *)self numberOfResourcesWithKind:a3];
    if ([v7 numberOfResourcesWithKind:a3] == v9)
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
          v12 = [(PXStoryResourcesDataSource *)self resourceWithKind:a3 atIndex:v11];
          v13 = [v7 resourceWithKind:a3 atIndex:v11];
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

- (id)resourceWithKind:(int64_t)a3 atIndex:(int64_t)a4
{
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 1:
        v4 = [(PXStoryResourcesDataSource *)self displayAssetResourceAtIndex:a4];
        break;
      case 2:
        v4 = [(PXStoryResourcesDataSource *)self songResourceAtIndex:a4];
        break;
      case 0:
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = v8;
        v10 = a2;
        v11 = self;
        v12 = 298;
        goto LABEL_18;
      default:
LABEL_17:
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = v8;
        v10 = a2;
        v11 = self;
        v12 = 310;
LABEL_18:
        [v8 handleFailureInMethod:v10 object:v11 file:@"PXStoryResourcesDataSource.m" lineNumber:v12 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v4 = [(PXStoryResourcesDataSource *)self textResourceAtIndex:a4];
        break;
      case 4:
        v4 = [(PXStoryResourcesDataSource *)self colorResourceAtIndex:a4];
        break;
      case 5:
        v4 = [(PXStoryResourcesDataSource *)self frameFillingEffectResourceAtIndex:a4];
        break;
      default:
        goto LABEL_17;
    }
  }

  return v4;
}

- (int64_t)numberOfResourcesWithKind:(int64_t)a3
{
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 1:

        return [(PXStoryResourcesDataSource *)self numberOfDisplayAssetResources];
      case 2:

        return [(PXStoryResourcesDataSource *)self numberOfSongResources];
      case 0:
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = v6;
        v8 = a2;
        v9 = self;
        v10 = 280;
        goto LABEL_25;
      default:
LABEL_24:
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = v6;
        v8 = a2;
        v9 = self;
        v10 = 292;
LABEL_25:
        [v6 handleFailureInMethod:v8 object:v9 file:@"PXStoryResourcesDataSource.m" lineNumber:v10 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  else
  {
    switch(a3)
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

- (id)frameFillingEffectResourceAtIndex:(int64_t)a3
{
  v3 = [(PXStoryResourcesDataSource *)self displayAssetResourceAtIndex:a3];
  v4 = [PXStoryConcreteFrameFillingEffectResource alloc];
  v5 = [v3 px_storyResourceDisplayAsset];
  v6 = +[PXStorySettings sharedInstance];
  v7 = -[PXStoryConcreteFrameFillingEffectResource initWithDisplayAsset:useSmartColor:](v4, "initWithDisplayAsset:useSmartColor:", v5, [v6 smartGradientUseSmartColor]);

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

- (id)colorResourceAtIndex:(int64_t)a3
{
  if ([(PXStoryResourcesDataSource *)self numberOfColorResources]<= a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:247 description:{@"index %li out of bounds 0 ..< %li", a3, -[PXStoryResourcesDataSource numberOfColorResources](self, "numberOfColorResources")}];
  }

  if (a3 != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:251 description:{@"invalid color resource index %li", a3}];

    abort();
  }

  return [(PXStoryResourcesDataSource *)self backgroundColorResource];
}

- (id)songResourceAtIndex:(int64_t)a3
{
  v4 = [(PXStoryResourcesDataSource *)self audioAssets];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (int64_t)numberOfSongResources
{
  v2 = [(PXStoryResourcesDataSource *)self audioAssets];
  v3 = [v2 count];

  return v3;
}

- (id)movieHighlightsForDisplayAssetAtIndex:(int64_t)a3
{
  if (a3 == -1)
  {
    v6 = [(PXStoryResourcesDataSource *)self keyAsset];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = [(PXStoryResourcesDataSource *)self displayAssets];
    v6 = [v5 objectAtIndexedSubscript:a3];

    if (v6)
    {
LABEL_3:
      v7 = [(PXStoryResourcesDataSource *)self movieHighlights];
      v8 = [v7 movieHighlightsForDisplayAsset:v6];

      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (int64_t)indexForDisplayAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryResourcesDataSource *)self displayAssets];
  v7 = 0u;
  if (v4)
  {
    [v4 indexPath];
  }

  v9.length = [v5 count];
  v8.length = 11;
  v8.location = 0;
  v9.location = 0;
  if (NSIntersectionRange(v8, v9).length)
  {
    [v4 asset];
    objc_claimAutoreleasedReturnValue();
    PXSectionedFetchResultIndexOfObjectInRange();
  }

  [v4 asset];
  objc_claimAutoreleasedReturnValue();
  PXSectionedFetchResultIndexOfObject();
}

- (id)displayAssetResourceAtIndex:(int64_t)a3
{
  if (a3 != -1)
  {
    v5 = [(PXStoryResourcesDataSource *)self displayAssets];
    v6 = [v5 objectAtIndexedSubscript:a3];
LABEL_3:

    goto LABEL_5;
  }

  v6 = [(PXStoryResourcesDataSource *)self keyAssetResource];
  if (!v6)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:198 description:@"key asset resource doesn't exist"];
    goto LABEL_3;
  }

LABEL_5:

  return v6;
}

- (int64_t)numberOfDisplayAssetResources
{
  v2 = [(PXStoryResourcesDataSource *)self displayAssets];
  v3 = [v2 count];

  return v3;
}

- (void)enumerateTextResourcesForTitles:(unint64_t)a3 displayAssetResourceAtIndex:(int64_t)a4 usingBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
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
  v9 = v8;
  v19 = v9;
  v21 = &v22;
  v10 = _Block_copy(aBlock);
  if ((v6 & 1) != 0 && self->_initialDisplayAssetIndex == a4)
  {
    v10[2](v10, [(PXStoryResourcesDataSource *)self initialTitleTextResourceIndex], 0);
    v10[2](v10, [(PXStoryResourcesDataSource *)self initialSubtitleTextResourceIndex], 1);
  }

  if ((v23[3] & 1) == 0)
  {
    v11 = [(PXStoryResourcesDataSource *)self chapterCollection];
    v12 = v11;
    if ((v6 & 2) != 0 && v11)
    {
      v13 = [(PXStoryResourcesDataSource *)self displayAssetResourceAtIndex:a4];
      v14 = [v13 px_storyResourceDisplayAsset];

      if ([v12 containsChapterBeginningWithAsset:v14])
      {
        v15 = [v12 chapterContainingAsset:v14];
        v16 = [v15 identifier];

        v17 = [v12 indexOfChapterWithIdentifier:v16];
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

- (id)_createTextResourceAtIndex:(int64_t)a3
{
  if ([(PXStoryResourcesDataSource *)self initialTitleTextResourceIndex]== a3)
  {
    v6 = [PXStoryConcreteTextResource alloc];
    v7 = [(PXStoryResourcesDataSource *)self assetCollection];
    v8 = v6;
    v9 = v7;
    v10 = 0;
LABEL_5:
    v12 = [(PXStoryConcreteTextResource *)v8 initWithAssetCollection:v9 type:v10];
    goto LABEL_16;
  }

  if ([(PXStoryResourcesDataSource *)self initialSubtitleTextResourceIndex]== a3)
  {
    v11 = [PXStoryConcreteTextResource alloc];
    v7 = [(PXStoryResourcesDataSource *)self assetCollection];
    v8 = v11;
    v9 = v7;
    v10 = 1;
    goto LABEL_5;
  }

  location = self->_chapterTitleTextResourceIndexes.location;
  v15 = a3 >= location;
  v14 = a3 - location;
  v15 = !v15 || v14 >= self->_chapterTitleTextResourceIndexes.length;
  if (v15)
  {
    v16 = self->_chapterSubtitleTextResourceIndexes.location;
    v15 = a3 >= v16;
    v17 = a3 - v16;
    if (!v15 || v17 >= self->_chapterSubtitleTextResourceIndexes.length)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:156 description:{@"invalid text resource index %li", a3}];

      abort();
    }

    v18 = [(PXStoryResourcesDataSource *)self chapterCollection];
    v7 = [v18 chapterAtIndex:a3 - self->_chapterSubtitleTextResourceIndexes.location];

    v20 = [PXStoryConcreteTextResource alloc];
    v21 = v7;
    v22 = 1;
  }

  else
  {
    v19 = [(PXStoryResourcesDataSource *)self chapterCollection];
    v7 = [v19 chapterAtIndex:a3 - self->_chapterTitleTextResourceIndexes.location];

    v20 = [PXStoryConcreteTextResource alloc];
    v21 = v7;
    v22 = 0;
  }

  v12 = [(PXStoryConcreteTextResource *)v20 initWithChapter:v21 type:v22];
LABEL_16:
  v23 = v12;

  return v23;
}

- (id)textResourceAtIndex:(int64_t)a3
{
  if ([(PXStoryResourcesDataSource *)self numberOfTextResources]<= a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSource.m" lineNumber:127 description:{@"index %li out of bounds 0 ..< %li", a3, -[PXStoryResourcesDataSource numberOfTextResources](self, "numberOfTextResources")}];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [(NSMutableDictionary *)v6->_cachedTextResources objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [(PXStoryResourcesDataSource *)v6 _createTextResourceAtIndex:a3];
    cachedTextResources = v6->_cachedTextResources;
    if (!cachedTextResources)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = v6->_cachedTextResources;
      v6->_cachedTextResources = v10;

      cachedTextResources = v6->_cachedTextResources;
    }

    [(NSMutableDictionary *)cachedTextResources setObject:v8 forKeyedSubscript:v7];
  }

  objc_sync_exit(v6);

  return v8;
}

- (PXStoryResourcesDataSource)initWithKeyAsset:(id)a3 displayAssets:(id)a4 availableDisplayAssets:(id)a5 movieHighlights:(id)a6 detailedSaliency:(id)a7 chapterCollection:(id)a8 audioAssets:(id)a9 assetCollection:(id)a10 overallDurationInfo:(id *)a11 storyConfiguration:(id)a12
{
  v53 = a3;
  v52 = a4;
  v51 = a5;
  v50 = a6;
  *(&v54 + 1) = a7;
  obj = a8;
  v49 = a8;
  v48 = a9;
  *&v54 = a10;
  v19 = a12;
  v57.receiver = self;
  v57.super_class = PXStoryResourcesDataSource;
  v20 = [(PXStoryResourcesDataSource *)&v57 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_keyAsset, a3);
    objc_storeStrong(&v21->_displayAssets, a4);
    objc_storeStrong(&v21->_availableDisplayAssets, a5);
    objc_storeStrong(&v21->_audioAssets, a9);
    objc_storeStrong(&v21->_assetCollection, a10);
    objc_storeStrong(&v21->_movieHighlights, a6);
    objc_storeStrong(&v21->_detailedSaliency, a7);
    objc_storeStrong(&v21->_chapterCollection, obj);
    *&v21->_overallDurationInfo.kind = *&a11->var0;
    v22 = *&a11->var1.var0.var1;
    v23 = *&a11->var1.var1.var0;
    v24 = *&a11->var1.var1.var3;
    *&v21->_overallDurationInfo.specificDurationInfo.maximumDuration.timescale = *&a11->var1.var2.var1;
    *&v21->_overallDurationInfo.specificDurationInfo.preferredDuration.epoch = v24;
    *&v21->_overallDurationInfo.specificDurationInfo.preferredDuration.value = v23;
    *&v21->_overallDurationInfo.specificDurationInfo.minimumDuration.timescale = v22;
    v21->_lock._os_unfair_lock_opaque = 0;
    v21->_shouldOptimizeForInlinePlayback = ([v19 options] & 0x8000) != 0;
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
    v30 = [(PXStoryChapterCollection *)v21->_chapterCollection numberOfChapters];
    v27->_chapterTitleTextResourceIndexes.location = v28[2](v28, v30);
    v27->_chapterTitleTextResourceIndexes.length = v31;
    v27->_chapterSubtitleTextResourceIndexes.location = v28[2](v28, v30);
    v27->_chapterSubtitleTextResourceIndexes.length = v32;
    v27->_numberOfColorResources = 2;
    v33 = [v19 userInfo];
    v34 = v33;
    if (v54 == 0 || !v33)
    {
      v42 = objc_alloc_init(PXStoryBaseDisplayAssetCroppingContext);
      croppingContext = v27->_croppingContext;
      v27->_croppingContext = v42;
      goto LABEL_17;
    }

    croppingContext = [v33 objectForKeyedSubscript:@"defaultCroppingContext"];
    v36 = [v34 objectForKeyedSubscript:@"cachingCroppingContext"];
    v37 = [croppingContext assetCollection];
    v38 = v37;
    if (v37 == v21->_assetCollection || ([(PXDisplayAssetCollection *)v37 isEqual:?]& 1) != 0)
    {
      v39 = [croppingContext detailedSaliency];
      v40 = v39;
      if (v39 == v21->_detailedSaliency)
      {

        goto LABEL_16;
      }

      v41 = [(PXStorySaliencyDataSource *)v39 isEqual:?];

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

- (PXStoryResourcesDataSource)initWithStoryConfiguration:(id)a3
{
  v3 = *(MEMORY[0x1E69C0DB8] + 48);
  v6[2] = *(MEMORY[0x1E69C0DB8] + 32);
  v6[3] = v3;
  v6[4] = *(MEMORY[0x1E69C0DB8] + 64);
  v4 = *(MEMORY[0x1E69C0DB8] + 16);
  v6[0] = *MEMORY[0x1E69C0DB8];
  v6[1] = v4;
  return [(PXStoryResourcesDataSource *)self initWithKeyAsset:0 displayAssets:0 availableDisplayAssets:0 movieHighlights:0 detailedSaliency:0 chapterCollection:0 audioAssets:0 assetCollection:0 overallDurationInfo:v6 storyConfiguration:a3];
}

@end