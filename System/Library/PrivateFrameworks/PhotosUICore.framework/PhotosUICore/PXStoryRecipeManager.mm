@interface PXStoryRecipeManager
- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo;
- (BOOL)shouldAvoidSynchronousProductions;
- (BOOL)wantsAutoEditResults;
- (NSDictionary)resultsByComponent;
- (NSString)description;
- (PXAudioAssetFetchResult)curatedSongs;
- (PXStoryAutoEditMomentsProvider)diagnosticsMomentsProvider;
- (PXStoryRecipeManager)init;
- (PXStoryRecipeManager)initWithConfiguration:(id)a3;
- (PXStoryRecipeManager)initWithConfiguration:(id)a3 assetsProducerFactory:(id)a4 persistableRecipeProducerFactory:(id)a5 songsProducerFactory:(id)a6 movieHighlightsProducerFactory:(id)a7 detailedSaliencyProducerFactory:(id)a8 chapterCollectionProducerFactory:(id)a9 stylesProducerFactory:(id)a10 autoEditDecisionListsProducerFactory:(id)a11 autoCurationProducerFactory:(id)a12;
- (PXStorySongResource)initialSongResource;
- (id)_collectAutoEditDecisionListsBySong;
- (id)_diagnosticTextForGenericHUDAtDisplaySize:(CGSize)a3;
- (id)_monitorForProducer:(unint64_t)a3;
- (id)_resultForProducer:(unint64_t)a3;
- (id)_shortDescriptionOfPersistableRecipe:(id)a3;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)a3;
- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4;
- (id)fallbackSongResource;
- (void)_applyManuallyCuratedAssets:(id)a3 setAsCustomUserAssets:(BOOL)a4;
- (void)_handleAdditionalAutoEditDecisionListsResult:(id)a3;
- (void)_handleAssetsResult:(id)a3;
- (void)_handleAutoEditDecisionListsResult:(id)a3;
- (void)_handleAutoEditStylesResult:(id)a3;
- (void)_handleChapterCollectionResult:(id)a3;
- (void)_handleCuratedAssetsResult:(id)a3 targetOverallDurationInfo:(id *)a4;
- (void)_handleCurationLengthsResult:(id)a3;
- (void)_handleDetailedSaliencyResult:(id)a3;
- (void)_handleInitialAutoEditDecisionListResult:(id)a3;
- (void)_handleInitialStyleResult:(id)a3;
- (void)_handleMovieHighlightsResult:(id)a3;
- (void)_handlePersistableRecipeResult:(id)a3;
- (void)_handlePersistedSongResourceResult:(id)a3;
- (void)_handleResult:(id)a3 forProducer:(unint64_t)a4;
- (void)_handleSongsResult:(id)a3;
- (void)_invalidateAdditionalAutoEditDecisionLists;
- (void)_invalidateAllAssets;
- (void)_invalidateAssetCollection;
- (void)_invalidateAssets;
- (void)_invalidateAssetsProducer;
- (void)_invalidateAutoCurationProducer;
- (void)_invalidateAutoEditDecisionLists;
- (void)_invalidateAutoEditDecisionListsProducer;
- (void)_invalidateAutoEditStyles;
- (void)_invalidateAutoEditStylesProducer;
- (void)_invalidateChapterCollection;
- (void)_invalidateChapterCollectionProducer;
- (void)_invalidateChapterCollectionResult;
- (void)_invalidateCuratedAssets;
- (void)_invalidateCuratedSongs;
- (void)_invalidateCuratedSongsProducer;
- (void)_invalidateCurationLengths;
- (void)_invalidateDetailedSaliency;
- (void)_invalidateDetailedSaliencyProducer;
- (void)_invalidateInitialAutoEditDecisionList;
- (void)_invalidateInitialStyle;
- (void)_invalidateInitialStyleProducer;
- (void)_invalidateKeyAsset;
- (void)_invalidateManuallyCuratedAssets;
- (void)_invalidateMovieHighlights;
- (void)_invalidateMovieHighlightsProducer;
- (void)_invalidateOverallDurationInfo;
- (void)_invalidatePersistableRecipe;
- (void)_invalidatePersistableRecipeProducer;
- (void)_invalidatePersistedSong;
- (void)_invalidatePersistedSongProducer;
- (void)_invalidateProducerMonitors;
- (void)_invalidateProducersLikelyToKeepUp;
- (void)_invalidateRecipe;
- (void)_invalidateRecipeAttributes;
- (void)_storyQueue_handleChangedAssetsDataSource:(id)a3;
- (void)_updateAdditionalAutoEditDecisionLists;
- (void)_updateAllAssets;
- (void)_updateAssetCollection;
- (void)_updateAssets;
- (void)_updateAssetsProducer;
- (void)_updateAutoCurationProducer;
- (void)_updateAutoEditDecisionLists;
- (void)_updateAutoEditDecisionListsProducer;
- (void)_updateAutoEditStyles;
- (void)_updateAutoEditStylesProducer;
- (void)_updateChapterCollection;
- (void)_updateChapterCollectionProducer;
- (void)_updateChapterCollectionResult;
- (void)_updateCuratedAssets;
- (void)_updateCuratedSongs;
- (void)_updateCuratedSongsProducer;
- (void)_updateCurationLengths;
- (void)_updateDetailedSaliency;
- (void)_updateDetailedSaliencyProducer;
- (void)_updateInitialAutoEditDecisionList;
- (void)_updateInitialStyle;
- (void)_updateInitialStyleProducer;
- (void)_updateKeyAsset;
- (void)_updateManuallyCuratedAssets;
- (void)_updateMovieHighlights;
- (void)_updateMovieHighlightsProducer;
- (void)_updateOverallDurationInfo;
- (void)_updatePersistableRecipe;
- (void)_updatePersistableRecipeProducer;
- (void)_updatePersistedSong;
- (void)_updatePersistedSongProducer;
- (void)_updateProducerMonitors;
- (void)_updateProducersLikelyToKeepUp;
- (void)_updateRecipe;
- (void)_updateRecipeAttributes;
- (void)applyKeyAsset:(id)a3;
- (void)applyManuallyCuratedAssets:(id)a3;
- (void)applyManuallyRemovedAssets:(id)a3;
- (void)applyTargetOverallDurationInfo:(id *)a3;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)dealloc;
- (void)didPerformChanges;
- (void)ensureAutoEditDecisionListForSong:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setAdditionalAutoEditDecisionListsBySong:(id)a3;
- (void)setAllAssets:(id)a3;
- (void)setAssetCollection:(id)a3;
- (void)setAssetsAutoCurationProgress:(id)a3;
- (void)setAssetsDataSource:(id)a3;
- (void)setAssetsDataSourceManager:(id)a3;
- (void)setAssetsProducer:(id)a3;
- (void)setAssetsProgress:(id)a3;
- (void)setAssetsResult:(id)a3;
- (void)setAutoCurationProducer:(id)a3;
- (void)setAutoEditDecisionListsProducer:(id)a3;
- (void)setAutoEditDecisionListsProgress:(id)a3;
- (void)setAutoEditDecisionListsResult:(id)a3;
- (void)setAutoEditStylesProducer:(id)a3;
- (void)setAutoEditStylesProgress:(id)a3;
- (void)setAutoEditStylesResult:(id)a3;
- (void)setAvailableCurationLengths:(unint64_t)a3;
- (void)setChapterCollection:(id)a3;
- (void)setChapterCollectionManager:(id)a3;
- (void)setChapterCollectionProducer:(id)a3;
- (void)setChapterCollectionProgress:(id)a3;
- (void)setChapterCollectionResult:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setCuratedAssets:(id)a3;
- (void)setCuratedSongsProducer:(id)a3;
- (void)setCuratedSongsProgress:(id)a3;
- (void)setCuratedSongsResult:(id)a3;
- (void)setCurationLengthsProgress:(id)a3;
- (void)setCurationLengthsResult:(id)a3;
- (void)setDefaultCurationLength:(unint64_t)a3;
- (void)setDetailedSaliencyProducer:(id)a3;
- (void)setDetailedSaliencyProgress:(id)a3;
- (void)setDetailedSaliencyResult:(id)a3;
- (void)setFinalizedProducers:(unint64_t)a3;
- (void)setHasFinalChapterCollectionBeenProduced:(BOOL)a3;
- (void)setHasFinalDetailedSaliencyBeenProduced:(BOOL)a3;
- (void)setHasInitialPersistableRecipeBeenProduced:(BOOL)a3;
- (void)setHaveFinalMovieHighlightsBeenProduced:(BOOL)a3;
- (void)setInitialAutoEditDecisionListResult:(id)a3;
- (void)setInitialStyleProducer:(id)a3;
- (void)setInitialStyleProgress:(id)a3;
- (void)setInitialStyleResult:(id)a3;
- (void)setIsRecipeFinal:(BOOL)a3;
- (void)setKeyAsset:(id)a3;
- (void)setMovieHighlightsProducer:(id)a3;
- (void)setMovieHighlightsProgress:(id)a3;
- (void)setMovieHighlightsResult:(id)a3;
- (void)setOverallDurationInfo:(id *)a3;
- (void)setPersistableRecipeProducer:(id)a3;
- (void)setPersistableRecipeProgress:(id)a3;
- (void)setPersistableRecipeResult:(id)a3;
- (void)setPersistedRecipeAssetEdits:(id)a3;
- (void)setPersistedSongProducer:(id)a3;
- (void)setPersistedSongProgress:(id)a3;
- (void)setPersistedSongResult:(id)a3;
- (void)setProducersLikelyToKeepUp:(unint64_t)a3;
- (void)setProducersWithInitialResults:(unint64_t)a3;
- (void)setRecipe:(id)a3;
- (void)setRecipeAssetEdits:(id)a3;
- (void)setRecipeAttributes:(unint64_t)a3;
- (void)setRemainingProducers:(unint64_t)a3;
- (void)setUntruncatedCuratedAssets:(id)a3;
@end

@implementation PXStoryRecipeManager

- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo
{
  v3 = *&self[9].var1.var2.var1;
  *&retstr->var1.var1.var0 = *&self[9].var1.var1.var3;
  *&retstr->var1.var1.var3 = v3;
  *&retstr->var1.var2.var1 = *&self[10].var0;
  v4 = *&self[9].var1.var1.var0;
  *&retstr->var0 = *&self[9].var1.var0.var1;
  *&retstr->var1.var0.var1 = v4;
  return self;
}

- (void)_storyQueue_handleChangedAssetsDataSource:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PXStoryRecipeManager__storyQueue_handleChangedAssetsDataSource___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (AssetsDataSourceManagerObservationContext == a5)
  {
    if (v6)
    {
      v11 = [(PXStoryRecipeManager *)self assetsDataSourceManager];
      v12 = [v11 dataSource];

      v13 = [(PXStoryRecipeManager *)self storyQueue];
      v14 = MEMORY[0x1E69E96A0];

      if (v13 == v14)
      {
        [(PXStoryRecipeManager *)self _storyQueue_handleChangedAssetsDataSource:v12];
      }

      else
      {
        v15 = [(PXStoryRecipeManager *)self storyQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53__PXStoryRecipeManager_observable_didChange_context___block_invoke;
        block[3] = &unk_1E774C620;
        block[4] = self;
        v28 = v12;
        dispatch_async(v15, block);
      }
    }
  }

  else if (ChapterCollectionManagerObservationContext == a5)
  {
    if (v6)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __53__PXStoryRecipeManager_observable_didChange_context___block_invoke_2;
      v25 = &unk_1E773CCA8;
      v26 = self;
      v10 = &v22;
      goto LABEL_11;
    }
  }

  else
  {
    if (ProducerMonitorObservationContext != a5)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"PXStoryRecipeManager.m" lineNumber:2541 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (v6)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __53__PXStoryRecipeManager_observable_didChange_context___block_invoke_3;
      v20 = &unk_1E773CCA8;
      v21 = self;
      v10 = &v17;
LABEL_11:
      [(PXStoryRecipeManager *)self performChanges:v10, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26];
    }
  }
}

- (id)_collectAutoEditDecisionListsBySong
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
  v5 = [v4 object];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
    v8 = [v7 object];
    v9 = [v8 firstObject];

    v10 = [v9 song];
    if (v10)
    {
      [v3 setObject:v9 forKeyedSubscript:v10];
    }
  }

  v11 = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
  v12 = [v11 object];
  v13 = [v12 count];

  if (v13)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
    v15 = [v14 object];

    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          v21 = [v20 song];
          if (v21)
          {
            [v3 setObject:v20 forKeyedSubscript:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }
  }

  v22 = [(PXStoryRecipeManager *)self additionalAutoEditDecisionListsBySong];
  if ([v22 count])
  {
    v23 = [v3 mutableCopy];
    [v23 addEntriesFromDictionary:v22];
    v24 = [v23 copy];

    v3 = v24;
  }

  return v3;
}

- (NSDictionary)resultsByComponent
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __42__PXStoryRecipeManager_resultsByComponent__block_invoke;
  v10 = &unk_1E774A7B8;
  v4 = v3;
  v11 = v4;
  v12 = self;
  v13 = 0;
  v5 = 1;
  do
  {
    (v9)(v8, v5, &v13);
    if (v5 > 0xFFF)
    {
      break;
    }

    v5 *= 2;
  }

  while ((v13 & 1) == 0);
  v6 = [v4 copy];

  return v6;
}

void __42__PXStoryRecipeManager_resultsByComponent__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 40) _resultForProducer:a2];
  v4 = *(a1 + 32);
  v5 = PXStoryProducerName(a2);
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (id)_resultForProducer:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 63)
  {
    if (a3 > 7)
    {
      switch(a3)
      {
        case 8uLL:
          v4 = [(PXStoryRecipeManager *)self persistedSongResult];
          break;
        case 0x10uLL:
          v4 = [(PXStoryRecipeManager *)self curatedSongsResult];
          break;
        case 0x20uLL:
          v4 = [(PXStoryRecipeManager *)self movieHighlightsResult];
          break;
        default:
          goto LABEL_34;
      }
    }

    else
    {
      switch(a3)
      {
        case 1uLL:
          v4 = [(PXStoryRecipeManager *)self assetsResult];
          break;
        case 2uLL:
          goto LABEL_31;
        case 4uLL:
          v4 = [(PXStoryRecipeManager *)self persistableRecipeResult];
          break;
        default:
          goto LABEL_34;
      }
    }

    goto LABEL_30;
  }

  if (a3 <= 511)
  {
    switch(a3)
    {
      case 0x40uLL:
        v4 = [(PXStoryRecipeManager *)self initialStyleResult];
        break;
      case 0x80uLL:
        v4 = [(PXStoryRecipeManager *)self autoEditStylesResult];
        break;
      case 0x100uLL:
        v4 = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
        break;
      default:
        goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (a3 > 2047)
  {
    if (a3 == 2048)
    {
      v4 = [(PXStoryRecipeManager *)self chapterCollectionResult];
    }

    else
    {
      if (a3 != 4096)
      {
        goto LABEL_34;
      }

      v4 = [(PXStoryRecipeManager *)self detailedSaliencyResult];
    }

    goto LABEL_30;
  }

  if (a3 == 512)
  {
    v4 = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
LABEL_30:
    v3 = v4;
    goto LABEL_31;
  }

  if (a3 != 1024)
  {
LABEL_34:
    PXAssertGetLog();
  }

LABEL_31:

  return v3;
}

- (id)_monitorForProducer:(unint64_t)a3
{
  if (a3 == 4096)
  {
    v5 = [(PXStoryRecipeManager *)self detailedSaliencyProducerMonitor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateRecipeAttributes
{
  v3 = [(PXStoryRecipeManager *)self recipeAttributes];
  v4 = [(PXStoryRecipeManager *)self producersWithInitialResults];
  v5 = [(PXStoryRecipeManager *)self producersRequiredForPlayback]& ~v4;
  v6 = [(PXStoryRecipeManager *)self producersLikelyToKeepUp];
  v7 = [(PXStoryRecipeManager *)self producersToMonitor];
  v8 = 0;
  if (!v5 && v6 == v7)
  {
    v9 = [(PXStoryRecipeManager *)self loadingReadyForPlaybackDate];

    if (!v9)
    {
      v10 = [MEMORY[0x1E695DF00] date];
      [(PXStoryRecipeManager *)self setLoadingReadyForPlaybackDate:v10];
    }

    v8 = 1;
  }

  v11 = [(PXStoryRecipeManager *)self finalizedProducers];
  if ((~(v11 | [(PXStoryRecipeManager *)self optionalProducers]) & 0x1FFFLL) == 0 || (v3 & 2) != 0)
  {
    v8 |= 2uLL;
    v12 = [(PXStoryRecipeManager *)self loadingFinalDate];

    if (!v12)
    {
      v13 = [MEMORY[0x1E695DF00] date];
      [(PXStoryRecipeManager *)self setLoadingFinalDate:v13];
    }
  }

  [(PXStoryRecipeManager *)self setRecipeAttributes:v8];
}

- (void)_invalidateRecipeAttributes
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateRecipeAttributes];
}

- (void)_updateRecipe
{
  v3 = [(PXStoryRecipeManager *)self initialStyleResult];
  v4 = [v3 object];
  v5 = [v4 firstObject];

  v6 = [(PXStoryRecipeManager *)self autoEditStylesResult];
  v7 = [v6 object];

  v25 = v7;
  if (v5)
  {
    v27 = [[PXStoryStyleConfigurationList alloc] initWithAutoEditStyleConfigurations:v7 initialStyleConfiguration:v5];
  }

  else
  {
    v27 = 0;
  }

  v22 = [(PXStoryRecipeManager *)self _collectAutoEditDecisionListsBySong];
  v8 = [PXStoryRecipe alloc];
  v20 = [(PXStoryRecipeManager *)self assetCollection];
  v26 = [(PXStoryRecipeManager *)self keyAsset];
  v21 = [(PXStoryRecipeManager *)self curatedAssets];
  v19 = [(PXStoryRecipeManager *)self untruncatedCuratedAssets];
  v18 = [(PXStoryRecipeManager *)self allAssets];
  v24 = [(PXStoryRecipeManager *)self movieHighlightsResult];
  v16 = [v24 object];
  v23 = [(PXStoryRecipeManager *)self detailedSaliencyResult];
  v15 = [v23 object];
  v14 = [(PXStoryRecipeManager *)self chapterCollection];
  [(PXStoryRecipeManager *)self overallDurationInfo];
  v17 = [(PXStoryRecipeManager *)self persistableRecipeResult];
  v9 = [v17 object];
  v10 = [v9 recipe];
  v11 = [(PXStoryRecipeManager *)self initialSongResource];
  v12 = [(PXStoryRecipeManager *)self fallbackSongResource];
  v13 = [(PXStoryRecipe *)v8 initWithAssetCollection:v20 keyAsset:v26 curatedAssets:v21 untruncatedCuratedAssets:v19 allAssets:v18 movieHighlights:v16 detailedSaliency:v15 chapterCollection:v14 overallDurationInfo:v28 styleConfigurationList:v27 sourcePersistableRecipe:v10 initialSongResource:v11 fallbackSongResource:v12 autoEditDecisionListsBySong:v22];
  [(PXStoryRecipeManager *)self setRecipe:v13];

  [(PXStoryRecipeManager *)self _invalidateRecipeAttributes];
}

- (void)_invalidateRecipe
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateRecipe];
}

- (void)_updateProducersLikelyToKeepUp
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = [(PXStoryRecipeManager *)self producersToMonitor];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __54__PXStoryRecipeManager__updateProducersLikelyToKeepUp__block_invoke;
  v8 = &unk_1E7747118;
  v11 = v4;
  v12 = a2;
  v9 = self;
  v10 = &v13;
  v17 = 0;
  v5 = 1;
  do
  {
    (v7)(v6, v5, &v17);
    if (v5 > 0xFFF)
    {
      break;
    }

    v5 *= 2;
  }

  while ((v17 & 1) == 0);
  [(PXStoryRecipeManager *)self setProducersLikelyToKeepUp:v14[3]];
  _Block_object_dispose(&v13, 8);
}

void __54__PXStoryRecipeManager__updateProducersLikelyToKeepUp__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 & ~*(a1 + 48)) == 0)
  {
    v5 = [*(a1 + 32) _monitorForProducer:a2];
    v10 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = *(a1 + 56);
      v8 = *(a1 + 32);
      v9 = PXStoryProducerName(a2);
      [v6 handleFailureInMethod:v7 object:v8 file:@"PXStoryRecipeManager.m" lineNumber:2367 description:{@"no monitor for producer %@", v9}];

      v5 = 0;
    }

    if ([v5 isLikelyToKeepUp])
    {
      *(*(*(a1 + 40) + 8) + 24) |= a2;
    }
  }
}

- (void)_invalidateProducersLikelyToKeepUp
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateProducersLikelyToKeepUp];
}

- (void)_updateProducerMonitors
{
  v3 = [(PXStoryRecipeManager *)self curatedAssets];
  v4 = [v3 count];

  v5 = +[PXStorySettings sharedInstance];
  [v5 estimatedMinimumDurationPerCuratedAsset];
  v7 = v6;

  if (v4 < 1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0 / (v7 * v4);
  }

  v9 = [(PXStoryRecipeManager *)self detailedSaliencyProducerMonitor];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__PXStoryRecipeManager__updateProducerMonitors__block_invoke_2;
  v10[3] = &__block_descriptor_36_e41_v16__0___PXStoryMutableProducerMonitor__8l;
  v11 = v8;
  [v9 performChanges:v10];
}

- (void)_invalidateProducerMonitors
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateProducerMonitors];
}

- (void)_handleAutoEditDecisionListsResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXStoryRecipeManager__handleAutoEditDecisionListsResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

uint64_t __59__PXStoryRecipeManager__handleAutoEditDecisionListsResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAutoEditDecisionListsResult:*(a1 + 40)];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setAutoEditDecisionListsProgress:0];
  }

  return result;
}

- (void)_updateAutoEditDecisionLists
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__136816;
  v7[4] = __Block_byref_object_dispose__136817;
  v8 = 0;
  v3 = [(PXStoryRecipeManager *)self curatedSongs];
  if (v3)
  {
    v4 = [(PXStoryRecipeManager *)self persistedSongResult];
    v5 = [v4 isDegraded];

    if ((v5 & 1) == 0)
    {
      [(PXStoryRecipeManager *)self defaultRequestOptions];
      [(PXStoryRecipeManager *)self requiresAutoEditDecisionListsSynchronously];
      objc_initWeak(&location, self);
      [(PXStoryRecipeManager *)self storyQueue];
      objc_claimAutoreleasedReturnValue();
      PXSyncCallbackBegin();
    }
  }

  _Block_object_dispose(v7, 8);
}

void __52__PXStoryRecipeManager__updateAutoEditDecisionLists__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __52__PXStoryRecipeManager__updateAutoEditDecisionLists__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeAutoEditDecisionLists", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handleAutoEditDecisionListsResult:*(a1 + 48)];
  }
}

- (void)_invalidateAutoEditDecisionLists
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAutoEditDecisionLists];
}

- (void)_handleInitialAutoEditDecisionListResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PXStoryRecipeManager__handleInitialAutoEditDecisionListResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

uint64_t __65__PXStoryRecipeManager__handleInitialAutoEditDecisionListResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInitialAutoEditDecisionListResult:*(a1 + 40)];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setInitialAutoEditDecisionListProgress:0];
  }

  return result;
}

- (void)_updateInitialAutoEditDecisionList
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryRecipeManager *)self initialSongResource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 px_storyResourceSongAsset];
    v6 = [v5 flags];

    if ((v6 & 4) == 0)
    {
      [(PXStoryRecipeManager *)self defaultRequestOptions];
      [(PXStoryRecipeManager *)self requiresAutoEditDecisionListsSynchronously];
      [(PXStoryRecipeManager *)self storyQueue];
      objc_claimAutoreleasedReturnValue();
      objc_initWeak(&location, self);
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x3032000000;
      v7[3] = __Block_byref_object_copy__136816;
      v7[4] = __Block_byref_object_dispose__136817;
      v7[5] = 0;
      PXSyncCallbackBegin();
    }
  }
}

void __58__PXStoryRecipeManager__updateInitialAutoEditDecisionList__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __58__PXStoryRecipeManager__updateInitialAutoEditDecisionList__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeInitialAutoEditDecisionList", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handleInitialAutoEditDecisionListResult:*(a1 + 48)];
  }
}

- (void)_invalidateInitialAutoEditDecisionList
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateInitialAutoEditDecisionList];
}

- (void)_updateAutoEditDecisionListsProducer
{
  v12 = [(PXStoryRecipeManager *)self configuration];
  if (([v12 options] & 2) == 0)
  {
    v3 = [(PXStoryRecipeManager *)self curatedAssets];
    if (v3 && [(PXStoryRecipeManager *)self haveFinalMovieHighlightsBeenProduced])
    {
      v4 = [(PXStoryRecipeManager *)self hasFinalChapterCollectionBeenProduced];

      if (v4)
      {
        v5 = [(PXStoryRecipeManager *)self curatedAssets];
        v6 = [(PXStoryRecipeManager *)self movieHighlightsResult];
        v7 = [v6 object];

        v8 = [(PXStoryRecipeManager *)self chapterCollection];
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        [(PXStoryRecipeManager *)self overallDurationInfo];
        v9 = [(PXStoryRecipeManager *)self autoEditDecisionListsProducerFactory];
        v10 = [(PXStoryRecipeManager *)self assetCollection];
        v13[2] = v16;
        v13[3] = v17;
        v13[4] = v18;
        v13[0] = v14;
        v13[1] = v15;
        v11 = [v9 autoEditDecisionListsProducerForAssetCollection:v10 displayAssets:v5 movieHighlights:v7 chapterCollection:v8 targetOverallDurationInfo:v13];

        [(PXStoryRecipeManager *)self setAutoEditDecisionListsProducer:v11];
      }

      return;
    }
  }
}

- (void)_invalidateAutoEditDecisionListsProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAutoEditDecisionListsProducer];
}

- (void)_handleAutoEditStylesResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PXStoryRecipeManager__handleAutoEditStylesResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

uint64_t __52__PXStoryRecipeManager__handleAutoEditStylesResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAutoEditStylesResult:*(a1 + 40)];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setAutoEditStylesProgress:0];
  }

  return result;
}

- (void)_updateAutoEditStyles
{
  v6 = *MEMORY[0x1E69E9840];
  if (![(PXStoryRecipeManager *)self wantsAutoEditResults])
  {
    v3 = +[PXStoryProducerResult nullResult];
    [(PXStoryRecipeManager *)self _handleAutoEditStylesResult:v3];
  }

  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__136816;
  v5[4] = __Block_byref_object_dispose__136817;
  v5[5] = 0;
  [(PXStoryRecipeManager *)self defaultRequestOptions];
  [(PXStoryRecipeManager *)self requiresAutoEditStylesSynchronously];
  objc_initWeak(&location, self);
  [(PXStoryRecipeManager *)self storyQueue];
  objc_claimAutoreleasedReturnValue();
  PXSyncCallbackBegin();
}

void __45__PXStoryRecipeManager__updateAutoEditStyles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __45__PXStoryRecipeManager__updateAutoEditStyles__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeStyles", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handleAutoEditStylesResult:*(a1 + 48)];
  }
}

- (void)_invalidateAutoEditStyles
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAutoEditStyles];
}

- (void)_updateAutoEditStylesProducer
{
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = [v3 options];

  if ((v4 & 2) == 0)
  {
    v5 = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
    v8 = [v5 object];

    if (v8)
    {
      v6 = [(PXStoryRecipeManager *)self stylesProducerFactory];
      v7 = [v6 stylesProducerForAutoEditDecisionLists:v8];
      [(PXStoryRecipeManager *)self setAutoEditStylesProducer:v7];
    }
  }
}

- (void)_invalidateAutoEditStylesProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAutoEditStylesProducer];
}

- (void)_handleInitialStyleResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PXStoryRecipeManager__handleInitialStyleResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

uint64_t __50__PXStoryRecipeManager__handleInitialStyleResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInitialStyleResult:*(a1 + 40)];
  [*(a1 + 32) setHasInitialStyleBeenProduced:1];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setInitialStyleProgress:0];
  }

  return result;
}

- (void)_updateInitialStyle
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__136816;
  v4[4] = __Block_byref_object_dispose__136817;
  v4[5] = 0;
  [(PXStoryRecipeManager *)self defaultRequestOptions];
  [(PXStoryRecipeManager *)self requiresInitialStyleSynchronously];
  objc_initWeak(&location, self);
  [(PXStoryRecipeManager *)self storyQueue];
  objc_claimAutoreleasedReturnValue();
  PXSyncCallbackBegin();
}

void __43__PXStoryRecipeManager__updateInitialStyle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __43__PXStoryRecipeManager__updateInitialStyle__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeInitialStyle", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handleInitialStyleResult:*(a1 + 48)];
  }
}

- (void)_invalidateInitialStyle
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateInitialStyle];
}

- (void)_updateInitialStyleProducer
{
  if (!-[PXStoryRecipeManager hasInitialPersistableRecipeBeenProduced](self, "hasInitialPersistableRecipeBeenProduced") || (-[PXStoryRecipeManager configuration](self, "configuration"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 options], v3, (v4 & 2) != 0))
  {
    v15 = [(PXStoryRecipeManager *)self stylesProducerFactory];
    v9 = [(PXStoryRecipeManager *)self configuration];
    v10 = [v9 assetCollection];
    v13 = [v15 initialStyleProducerForAssetCollection:v10];
    [(PXStoryRecipeManager *)self setInitialStyleProducer:v13];
  }

  else
  {
    v5 = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
    v6 = [v5 object];
    v15 = [v6 firstObject];

    v7 = [(PXStoryRecipeManager *)self persistableRecipeResult];
    v8 = [v7 object];
    v9 = [v8 recipe];

    v10 = [(PXStoryRecipeManager *)self initialSongResource];
    v11 = [v10 px_storyResourceSongAsset];
    v12 = [v11 flags];

    if ((v12 & 4) != 0)
    {
      goto LABEL_7;
    }

    v13 = [(PXStoryRecipeManager *)self stylesProducerFactory];
    v14 = [v13 initialStyleProducerForPersistableRecipe:v9 songResource:v10 autoEditDecisionList:v15];
    [(PXStoryRecipeManager *)self setInitialStyleProducer:v14];
  }

LABEL_7:
}

- (void)_invalidateInitialStyleProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateInitialStyleProducer];
}

- (void)_updateManuallyCuratedAssets
{
  if (!self->_manuallyCuratedAssets)
  {
    v5 = [(PXStoryRecipeManager *)self curatedAssets];
    if ([v5 count] <= 0)
    {
    }

    else
    {
      [(PXStoryRecipeManager *)self overallDurationInfo];

      if (v6 == 2)
      {
        v3 = [(PXStoryRecipeManager *)self curatedAssets];
        manuallyCuratedAssets = self->_manuallyCuratedAssets;
        self->_manuallyCuratedAssets = v3;
      }
    }
  }
}

- (void)_invalidateManuallyCuratedAssets
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateManuallyCuratedAssets];
}

- (void)_updateKeyAsset
{
  v4 = [(PXStoryRecipeManager *)self assetsDataSource];
  v3 = [v4 keyAsset];
  [(PXStoryRecipeManager *)self setKeyAsset:v3];
}

- (void)_invalidateKeyAsset
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateKeyAsset];
}

- (void)_updateCuratedAssets
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryRecipeManager *)self assetsDataSource];
  if ([v3 numberOfSections] < 1)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (v3)
  {
    [v3 firstSectionIndexPath];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v4 = [v3 assetsInSectionIndexPath:v11];
  v5 = v4;
  if (v4 && ![v4 count])
  {
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PXStoryRecipeManager *)self assetCollection];
      LODWORD(v11[0]) = 138412546;
      *(v11 + 4) = v3;
      WORD6(v11[0]) = 2112;
      *(v11 + 14) = v7;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Assets datasource contains a section, but it has 0 curated assets %@ %@", v11, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:
  v8 = [PXStorySettings sharedInstance:v11[0]];
  v9 = [v8 curatedAssetsLimit];

  if ([v5 count] > v9 && v5 != 0)
  {
    PXDisplayAssetFetchResultSubfetchResultWithRange();
  }

  [(PXStoryRecipeManager *)self setCuratedAssets:v5];
  [(PXStoryRecipeManager *)self setUntruncatedCuratedAssets:0];
}

- (void)_invalidateCuratedAssets
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCuratedAssets];
}

- (void)_updateAllAssets
{
  v3 = [(PXStoryRecipeManager *)self assetsDataSource];
  if ([v3 numberOfSections] < 1)
  {
    [(PXStoryRecipeManager *)self setAllAssets:0];
  }

  else
  {
    if (v3)
    {
      [v3 firstSectionIndexPath];
    }

    else
    {
      memset(v5, 0, sizeof(v5));
    }

    v4 = [v3 uncuratedAssetsInSectionIndexPath:v5];
    [(PXStoryRecipeManager *)self setAllAssets:v4];
  }
}

- (void)_invalidateAllAssets
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAllAssets];
}

- (void)_updateOverallDurationInfo
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  [(PXStoryRecipeManager *)self overallDurationInfo];
  v3 = [(PXStoryRecipeManager *)self persistableRecipeResult];
  v4 = [v3 object];
  v5 = [v4 recipe];

  if (v5)
  {
    [v5 overallDurationInfo];
    v21 = v16;
    v22 = v17;
    v23 = v18;
    v19 = v14;
    v20 = v15;
  }

  v6 = [(PXStoryRecipeManager *)self curationLengthsResult];
  if (v6)
  {

    if (v19 <= 1)
    {
      v7 = [(PXStoryRecipeManager *)self defaultCurationLength];
      if (v7 > 4)
      {
        v8 = 0;
      }

      else
      {
        v8 = qword_1A5382640[v7];
      }

      *&v19 = v8;
    }
  }

  v9 = [(PXStoryRecipeManager *)self recipeAssetEdits];
  v10 = v9;
  if (v9)
  {
    [v9 overallDurationInfo];
    if (v14)
    {
      v11 = [(PXStoryRecipeManager *)self persistedRecipeAssetEdits];
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        v13 = [v10 isEqual:v11];

        if (!v13)
        {
          goto LABEL_16;
        }
      }

      [v10 overallDurationInfo];
      v21 = v16;
      v22 = v17;
      v23 = v18;
      v19 = v14;
      v20 = v15;
    }
  }

LABEL_16:
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v14 = v19;
  v15 = v20;
  [(PXStoryRecipeManager *)self setOverallDurationInfo:&v14];
}

- (void)_invalidateOverallDurationInfo
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateOverallDurationInfo];
}

- (void)_updateChapterCollection
{
  v4 = [(PXStoryRecipeManager *)self chapterCollectionManager];
  v3 = [v4 chapterCollection];
  [(PXStoryRecipeManager *)self setChapterCollection:v3];
}

- (void)_invalidateChapterCollection
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateChapterCollection];
}

- (void)_handleChapterCollectionResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXStoryRecipeManager__handleChapterCollectionResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

uint64_t __55__PXStoryRecipeManager__handleChapterCollectionResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setChapterCollectionResult:*(a1 + 40)];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setHasFinalChapterCollectionBeenProduced:1];
    v3 = *(a1 + 32);

    return [v3 setChapterCollectionProgress:0];
  }

  return result;
}

- (void)_updateChapterCollectionResult
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryRecipeManager *)self curatedAssets];
  if (v3)
  {
    v4 = [(PXStoryRecipeManager *)self keyAsset];

    if (v4)
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x3032000000;
      v6[3] = __Block_byref_object_copy__136816;
      v6[4] = __Block_byref_object_dispose__136817;
      v6[5] = 0;
      [(PXStoryRecipeManager *)self defaultRequestOptions];
      [(PXStoryRecipeManager *)self requiresChapterCollectionSynchronously];
      objc_initWeak(&location, self);
      [(PXStoryRecipeManager *)self storyQueue];
      objc_claimAutoreleasedReturnValue();
      PXSyncCallbackBegin();
    }
  }
}

void __54__PXStoryRecipeManager__updateChapterCollectionResult__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __54__PXStoryRecipeManager__updateChapterCollectionResult__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeChapterCollection", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handleChapterCollectionResult:*(a1 + 48)];
  }
}

- (void)_invalidateChapterCollectionResult
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateChapterCollectionResult];
}

- (void)_updateChapterCollectionProducer
{
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = [v3 options];

  if ((v4 & 2) == 0)
  {
    v7 = [(PXStoryRecipeManager *)self chapterCollectionProducerFactory];
    v5 = [(PXStoryRecipeManager *)self configuration];
    v6 = [v7 chapterCollectionProducerForConfiguration:v5];
    [(PXStoryRecipeManager *)self setChapterCollectionProducer:v6];
  }
}

- (void)_invalidateChapterCollectionProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateChapterCollectionProducer];
}

- (void)_handleDetailedSaliencyResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PXStoryRecipeManager__handleDetailedSaliencyResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

uint64_t __54__PXStoryRecipeManager__handleDetailedSaliencyResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDetailedSaliencyResult:*(a1 + 40)];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setHasFinalDetailedSaliencyBeenProduced:1];
    v3 = *(a1 + 32);

    return [v3 setDetailedSaliencyProgress:0];
  }

  return result;
}

- (void)_updateDetailedSaliency
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__136816;
  v4[4] = __Block_byref_object_dispose__136817;
  v4[5] = 0;
  [(PXStoryRecipeManager *)self defaultRequestOptions];
  [(PXStoryRecipeManager *)self requiresDetailedSaliencySynchronously];
  objc_initWeak(&location, self);
  [(PXStoryRecipeManager *)self storyQueue];
  objc_claimAutoreleasedReturnValue();
  PXSyncCallbackBegin();
}

void __47__PXStoryRecipeManager__updateDetailedSaliency__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __47__PXStoryRecipeManager__updateDetailedSaliency__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeDetailedSaliency", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handleDetailedSaliencyResult:*(a1 + 48)];
  }
}

- (void)_invalidateDetailedSaliency
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDetailedSaliency];
}

- (void)_updateDetailedSaliencyProducer
{
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = [v3 options];

  if ((v4 & 2) == 0)
  {
    v7 = [(PXStoryRecipeManager *)self detailedSaliencyProducerFactory];
    v5 = [(PXStoryRecipeManager *)self configuration];
    v6 = [v7 detailedSaliencyProducerForConfiguration:v5];
    [(PXStoryRecipeManager *)self setDetailedSaliencyProducer:v6];
  }
}

- (void)_invalidateDetailedSaliencyProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDetailedSaliencyProducer];
}

- (void)_handleMovieHighlightsResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXStoryRecipeManager__handleMovieHighlightsResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

uint64_t __53__PXStoryRecipeManager__handleMovieHighlightsResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMovieHighlightsResult:*(a1 + 40)];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setHaveFinalMovieHighlightsBeenProduced:1];
    v3 = *(a1 + 32);

    return [v3 setMovieHighlightsProgress:0];
  }

  return result;
}

- (void)_updateMovieHighlights
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__136816;
  v4[4] = __Block_byref_object_dispose__136817;
  v4[5] = 0;
  [(PXStoryRecipeManager *)self defaultRequestOptions];
  [(PXStoryRecipeManager *)self requiresMovieHighlightsSynchronously];
  objc_initWeak(&location, self);
  [(PXStoryRecipeManager *)self storyQueue];
  objc_claimAutoreleasedReturnValue();
  PXSyncCallbackBegin();
}

void __46__PXStoryRecipeManager__updateMovieHighlights__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __46__PXStoryRecipeManager__updateMovieHighlights__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeMovieHighlights", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handleMovieHighlightsResult:*(a1 + 48)];
  }
}

- (void)_invalidateMovieHighlights
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMovieHighlights];
}

- (void)_updateMovieHighlightsProducer
{
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = [v3 options];

  if ((v4 & 2) == 0)
  {
    v7 = [(PXStoryRecipeManager *)self movieHighlightsProducerFactory];
    v5 = [(PXStoryRecipeManager *)self configuration];
    v6 = [v7 movieHighlightsProducerWithConfiguration:v5];
    [(PXStoryRecipeManager *)self setMovieHighlightsProducer:v6];
  }
}

- (void)_invalidateMovieHighlightsProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMovieHighlightsProducer];
}

- (void)_handleCurationLengthsResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXStoryRecipeManager__handleCurationLengthsResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

void __53__PXStoryRecipeManager__handleCurationLengthsResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurationLengthsResult:*(a1 + 40)];
  v2 = [*(a1 + 40) object];
  [*(a1 + 32) setAvailableCurationLengths:{objc_msgSend(v2, "availableCurationLengths")}];
  [*(a1 + 32) setDefaultCurationLength:{objc_msgSend(v2, "defaultCurationLength")}];
  if (([*(a1 + 40) isDegraded] & 1) == 0)
  {
    [*(a1 + 32) setCurationLengthsProgress:0];
  }
}

- (void)_updateCurationLengths
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryRecipeManager *)self allAssets];
  if (v3)
  {
    v4 = [(PXStoryRecipeManager *)self curatedAssets];

    if (v4)
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x3032000000;
      v6[3] = __Block_byref_object_copy__136816;
      v6[4] = __Block_byref_object_dispose__136817;
      v6[5] = 0;
      objc_initWeak(&location, self);
      [(PXStoryRecipeManager *)self storyQueue];
      objc_claimAutoreleasedReturnValue();
      PXSyncCallbackBegin();
    }
  }
}

void __46__PXStoryRecipeManager__updateCurationLengths__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __46__PXStoryRecipeManager__updateCurationLengths__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeCurationLengths", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handleCurationLengthsResult:*(a1 + 48)];
  }
}

- (void)_invalidateCurationLengths
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurationLengths];
}

- (void)_updateAutoCurationProducer
{
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = [v3 options];

  if ((v4 & 2) == 0)
  {
    v7 = [(PXStoryRecipeManager *)self autoCurationProducerFactory];
    v5 = [(PXStoryRecipeManager *)self configuration];
    v6 = [v7 autoCurationProducerForConfiguration:v5];
    [(PXStoryRecipeManager *)self setAutoCurationProducer:v6];
  }
}

- (void)_invalidateAutoCurationProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAutoCurationProducer];
}

- (void)_handleSongsResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PXStoryRecipeManager__handleSongsResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

uint64_t __43__PXStoryRecipeManager__handleSongsResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCuratedSongsResult:*(a1 + 40)];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setCuratedSongsProgress:0];
  }

  return result;
}

- (void)_updateCuratedSongs
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryRecipeManager *)self persistedSongResult];
  if (v3)
  {
    v4 = [(PXStoryRecipeManager *)self finalizedProducers];

    if ((v4 & 0x10) == 0)
    {
      v5 = [(PXStoryRecipeManager *)self initialSongResource];
      if (!v5 || (v6 = [(PXStoryRecipeManager *)self wantsAutoEditResults], v5, v6))
      {
        v9[0] = 0;
        v9[1] = v9;
        v9[2] = 0x3032000000;
        v9[3] = __Block_byref_object_copy__136816;
        v9[4] = __Block_byref_object_dispose__136817;
        v9[5] = 0;
        [(PXStoryRecipeManager *)self defaultRequestOptions];
        [(PXStoryRecipeManager *)self requiresSongsSynchronously];
        objc_initWeak(&location, self);
        [(PXStoryRecipeManager *)self storyQueue];
        objc_claimAutoreleasedReturnValue();
        PXSyncCallbackBegin();
      }

      v7 = +[PXStoryProducerResult nullResult];
      [(PXStoryRecipeManager *)self _handleSongsResult:v7];
    }
  }
}

void __43__PXStoryRecipeManager__updateCuratedSongs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __43__PXStoryRecipeManager__updateCuratedSongs__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeSongs", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handleSongsResult:*(a1 + 48)];
  }
}

- (void)_invalidateCuratedSongs
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCuratedSongs];
}

- (void)_updateCuratedSongsProducer
{
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = [v3 options];

  if ((v4 & 2) == 0)
  {
    v7 = [(PXStoryRecipeManager *)self songsProducerFactory];
    v5 = [(PXStoryRecipeManager *)self configuration];
    v6 = [v7 songsProducerForConfiguration:v5];
    [(PXStoryRecipeManager *)self setCuratedSongsProducer:v6];
  }
}

- (void)_invalidateCuratedSongsProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCuratedSongsProducer];
}

- (PXStorySongResource)initialSongResource
{
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = [v3 songsConfiguration];
  v5 = [v4 currentAsset];

  if (!v5)
  {
    v6 = [(PXStoryRecipeManager *)self persistedSongResult];
    v5 = [v6 object];

    if (!v5)
    {
      v7 = [(PXStoryRecipeManager *)self curatedSongs];
      if ([v7 count] < 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = [v7 firstObject];
      }
    }
  }

  return v5;
}

- (void)_handlePersistedSongResourceResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXStoryRecipeManager__handlePersistedSongResourceResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

uint64_t __59__PXStoryRecipeManager__handlePersistedSongResourceResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPersistedSongResult:*(a1 + 40)];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setPersistedSongProgress:0];
  }

  return result;
}

- (void)_updatePersistedSong
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__136816;
  v4[4] = __Block_byref_object_dispose__136817;
  v4[5] = 0;
  [(PXStoryRecipeManager *)self defaultRequestOptions];
  [(PXStoryRecipeManager *)self requiresSongsSynchronously];
  objc_initWeak(&location, self);
  [(PXStoryRecipeManager *)self storyQueue];
  objc_claimAutoreleasedReturnValue();
  PXSyncCallbackBegin();
}

void __44__PXStoryRecipeManager__updatePersistedSong__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __44__PXStoryRecipeManager__updatePersistedSong__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipePersistedSong", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handlePersistedSongResourceResult:*(a1 + 48)];
  }
}

- (void)_invalidatePersistedSong
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePersistedSong];
}

- (void)_updatePersistedSongProducer
{
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = [v3 options];

  if ((v4 & 2) == 0)
  {
    v10 = [(PXStoryRecipeManager *)self songResourceProducerFactory];
    v5 = [(PXStoryRecipeManager *)self persistableRecipeResult];
    v6 = [v5 object];
    v7 = [v6 recipe];
    v8 = [(PXStoryRecipeManager *)self configuration];
    v9 = [v10 songResourceProducerForPersistableRecipe:v7 configuration:v8];
    [(PXStoryRecipeManager *)self setPersistedSongProducer:v9];
  }
}

- (void)_invalidatePersistedSongProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePersistedSongProducer];
}

- (void)_handlePersistableRecipeResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXStoryRecipeManager__handlePersistableRecipeResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

uint64_t __55__PXStoryRecipeManager__handlePersistableRecipeResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPersistableRecipeResult:*(a1 + 40)];
  [*(a1 + 32) setHasInitialPersistableRecipeBeenProduced:1];
  result = [*(a1 + 40) isDegraded];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setPersistableRecipeProgress:0];
  }

  return result;
}

- (void)_updatePersistableRecipe
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__136816;
  v4[4] = __Block_byref_object_dispose__136817;
  v4[5] = 0;
  [(PXStoryRecipeManager *)self defaultRequestOptions];
  [(PXStoryRecipeManager *)self requiresPersistableRecipeSynchronously];
  objc_initWeak(&location, self);
  [(PXStoryRecipeManager *)self storyQueue];
  objc_claimAutoreleasedReturnValue();
  PXSyncCallbackBegin();
}

void __48__PXStoryRecipeManager__updatePersistableRecipe__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __48__PXStoryRecipeManager__updatePersistableRecipe__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipePersistableRecipe", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handlePersistableRecipeResult:*(a1 + 48)];
  }
}

- (void)_invalidatePersistableRecipe
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePersistableRecipe];
}

- (void)_updatePersistableRecipeProducer
{
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = [v3 options];

  if ((v4 & 2) == 0)
  {
    v7 = [(PXStoryRecipeManager *)self persistableRecipeProducerFactory];
    v5 = [(PXStoryRecipeManager *)self configuration];
    v6 = [v7 persistableRecipeProducerForConfiguration:v5];
    [(PXStoryRecipeManager *)self setPersistableRecipeProducer:v6];
  }
}

- (void)_invalidatePersistableRecipeProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePersistableRecipeProducer];
}

- (void)_handleAssetsResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PXStoryRecipeManager__handleAssetsResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

- (void)_updateAssets
{
  v7 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__136816;
  v6[4] = __Block_byref_object_dispose__136817;
  v6[5] = 0;
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = ([v3 options] & 1) == 0;

  if (v4)
  {
    [(PXStoryRecipeManager *)self requiresAssetsSynchronously];
  }

  objc_initWeak(&location, self);
  [(PXStoryRecipeManager *)self storyQueue];
  objc_claimAutoreleasedReturnValue();
  PXSyncCallbackBegin();
}

void __37__PXStoryRecipeManager__updateAssets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 80);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 64));
  PXPerformWithSyncTokenOnQueue();
}

void __37__PXStoryRecipeManager__updateAssets__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    v14 = 134217984;
    v15 = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      v14 = 134217984;
      v15 = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    v14 = 134217984;
    v15 = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeAssets", v8, &v14, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _handleAssetsResult:*(a1 + 48)];
  }
}

- (void)_invalidateAssets
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAssets];
}

- (void)_updateAssetsProducer
{
  v5 = [(PXStoryRecipeManager *)self assetsProducerFactory];
  v3 = [(PXStoryRecipeManager *)self configuration];
  v4 = [v5 assetsProducerForConfiguration:v3];
  [(PXStoryRecipeManager *)self setAssetsProducer:v4];
}

- (void)_invalidateAssetsProducer
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAssetsProducer];
}

- (void)_updateAssetCollection
{
  v4 = [(PXStoryRecipeManager *)self assetsDataSource];
  v3 = [v4 firstAssetCollection];
  [(PXStoryRecipeManager *)self setAssetCollection:v3];
}

- (void)_invalidateAssetCollection
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAssetCollection];
}

- (PXStoryAutoEditMomentsProvider)diagnosticsMomentsProvider
{
  v2 = [(PXStoryRecipeManager *)self autoEditDecisionListsProducer];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 diagnosticsMomentsProvider];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)a3
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__136816;
  v28 = __Block_byref_object_dispose__136817;
  v29 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PXStoryRecipeManager_diagnosticErrorsByComponentForHUDType___block_invoke;
  aBlock[3] = &unk_1E773CA00;
  aBlock[4] = &v24;
  v4 = _Block_copy(aBlock);
  v5 = [(PXStoryRecipeManager *)self assetsResult];
  v6 = [v5 error];
  v4[2](v4, @"Assets", v6);

  v7 = [(PXStoryRecipeManager *)self persistableRecipeResult];
  v8 = [v7 error];
  v4[2](v4, @"Persistable Recipe", v8);

  v9 = [(PXStoryRecipeManager *)self persistedSongResult];
  v10 = [v9 error];
  v4[2](v4, @"Persisted Song", v10);

  v11 = [(PXStoryRecipeManager *)self curatedSongsResult];
  v12 = [v11 error];
  v4[2](v4, @"Curated Songs", v12);

  v13 = [(PXStoryRecipeManager *)self initialStyleResult];
  v14 = [v13 error];
  v4[2](v4, @"Initial Style", v14);

  v15 = [(PXStoryRecipeManager *)self autoEditStylesResult];
  v16 = [v15 error];
  v4[2](v4, @"AE Styles", v16);

  v17 = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
  v18 = [v17 error];
  v4[2](v4, @"Initial EDL", v18);

  v19 = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
  v20 = [v19 error];
  v4[2](v4, @"Auto EDL", v20);

  v21 = [v25[5] copy];
  _Block_object_dispose(&v24, 8);

  return v21;
}

- (id)_shortDescriptionOfPersistableRecipe:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PXStoryRecipeManager__shortDescriptionOfPersistableRecipe___block_invoke;
  aBlock[3] = &unk_1E774BE70;
  v5 = v4;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v7 = (v6 + 16);
  (*(v6 + 2))(v6, [v3 numberOfAssets], @"assets");
  v8 = [v3 currentStyle];
  v9 = @"Y\n";
  if (!v8)
  {
    v9 = @"N\n";
  }

  [v5 appendFormat:@"Custom Style?: %@", v9];

  (*v7)(v6, [v3 numberOfPresentations], @"presentations");
  v10 = [v3 autoEditDecisionLists];
  (*v7)(v6, [v10 count], @"AEDLs");

  if (v3)
  {
    [v3 overallDurationInfo];
  }

  [v5 appendFormat:@"v%li.%li", objc_msgSend(v3, "majorVersion"), objc_msgSend(v3, "minorVersion")];
  v11 = [v5 copy];

  return v11;
}

uint64_t __61__PXStoryRecipeManager__shortDescriptionOfPersistableRecipe___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return [*(result + 32) appendFormat:@"%li %@\n", a2, a3];
  }

  return result;
}

- (id)_diagnosticTextForGenericHUDAtDisplaySize:(CGSize)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (_diagnosticTextForGenericHUDAtDisplaySize__onceToken != -1)
  {
    dispatch_once(&_diagnosticTextForGenericHUDAtDisplaySize__onceToken, &__block_literal_global_353);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_2;
  aBlock[3] = &unk_1E773C908;
  v5 = v4;
  v39 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PXStoryRecipeManager *)self assetsProgress];
  v8 = [(PXStoryRecipeManager *)self assetsResult];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_3;
  v37[3] = &unk_1E773C930;
  v37[4] = self;
  v6[2](v6, @"Assets", v7, v8, v37);

  v9 = [(PXStoryRecipeManager *)self persistableRecipeProgress];
  v10 = [(PXStoryRecipeManager *)self persistableRecipeResult];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_4;
  v36[3] = &unk_1E773C958;
  v36[4] = self;
  v6[2](v6, @"Previously Persisted Recipe", v9, v10, v36);

  v11 = [(PXStoryRecipeManager *)self persistedSongProgress];
  v12 = [(PXStoryRecipeManager *)self persistedSongResult];
  v6[2](v6, @"Persisted Song", v11, v12, __block_literal_global_423);

  v13 = [(PXStoryRecipeManager *)self initialAutoEditDecisionListProgress];
  v14 = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
  v6[2](v6, @"Initial EDL", v13, v14, __block_literal_global_432_137008);

  v15 = [(PXStoryRecipeManager *)self initialStyleProgress];
  v16 = [(PXStoryRecipeManager *)self initialStyleResult];
  v6[2](v6, @"Persisted Style", v15, v16, __block_literal_global_444_137010);

  v17 = [(PXStoryRecipeManager *)self curatedSongsProgress];
  v18 = [(PXStoryRecipeManager *)self curatedSongsResult];
  v6[2](v6, @"Curated Songs", v17, v18, __block_literal_global_453);

  v19 = [(PXStoryRecipeManager *)self autoEditDecisionListsProgress];
  v20 = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
  v6[2](v6, @"Auto EDLs", v19, v20, __block_literal_global_461);

  v21 = [(PXStoryRecipeManager *)self autoEditStylesProgress];
  v22 = [(PXStoryRecipeManager *)self autoEditStylesResult];
  v6[2](v6, @"Auto Edit Styles", v21, v22, __block_literal_global_469_137013);

  v23 = PXStoryComponentAttributesDescription([(PXStoryRecipeManager *)self recipeAttributes]);
  [v5 appendFormat:@"\nAttributes: %@\n", v23];

  v24 = [(PXStoryRecipeManager *)self loadingReadyForPlaybackDate];

  if (v24)
  {
    v25 = _diagnosticTextForGenericHUDAtDisplaySize__productionDurationFormatter;
    v26 = [(PXStoryRecipeManager *)self loadingReadyForPlaybackDate];
    v27 = [(PXStoryRecipeManager *)self loadingStartDate];
    [v26 timeIntervalSinceDate:v27];
    v28 = [v25 stringFromTimeInterval:?];
    [v5 appendFormat:@"\nReady For Playback In: %@\n", v28];
  }

  v29 = [(PXStoryRecipeManager *)self loadingFinalDate];

  if (v29)
  {
    v30 = _diagnosticTextForGenericHUDAtDisplaySize__productionDurationFormatter;
    v31 = [(PXStoryRecipeManager *)self loadingFinalDate];
    v32 = [(PXStoryRecipeManager *)self loadingStartDate];
    [v31 timeIntervalSinceDate:v32];
    v33 = [v30 stringFromTimeInterval:?];
    [v5 appendFormat:@"\nFinal In: %@\n", v33];
  }

  v34 = [v5 copy];

  return v34;
}

void __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 object];
  v28 = v11;
  if (v12)
  {
    v13 = (*(v11 + 2))(v11, v12);
    v14 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];

    if ([(__CFString *)v14 hasSuffix:@"\n"])
    {
      v15 = [(__CFString *)v14 substringWithRange:0, [(__CFString *)v14 length]- 1];

      v14 = v15;
    }
  }

  else
  {
    v14 = @"n/a";
  }

  if ([v10 flags])
  {
    v16 = @"Degraded";
  }

  else
  {
    v16 = @"Final";
  }

  [v10 productionDuration];
  v17 = [_diagnosticTextForGenericHUDAtDisplaySize__productionDurationFormatter stringFromTimeInterval:?];
  v18 = [v10 error];
  if (v18)
  {
    v19 = @"❌";
  }

  else
  {
    v19 = @"🔳";
    if (!v9 && v12)
    {
      v24 = *(a1 + 32);
      v20 = (a1 + 32);
      [v24 appendFormat:@"%@:\n", v29];
      v19 = @"✅";
LABEL_16:
      [*v20 appendFormat:@"\t%@\n", v14];
      goto LABEL_17;
    }
  }

  v21 = *(a1 + 32);
  v20 = (a1 + 32);
  [v21 appendFormat:@"%@:\n", v29];
  if (!v9)
  {
    goto LABEL_16;
  }

  v22 = *v20;
  [v9 fractionCompleted];
  [v22 appendFormat:@"\tProgress: %0.1f%%\n", v23 * 100.0];
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_17:
  [*v20 appendFormat:@"\t%@ %@ %@\n", v19, v16, v17];
  if (v18)
  {
    v25 = *v20;
    v26 = [v18 localizedDescription];
    v27 = PXStoryErrorDetailsDescription(v18);
    [v25 appendFormat:@"\tError: %@ / %@\n", v26, v27];
  }

  [*v20 appendString:@"\n"];
}

uint64_t __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedAssetsCountHUDDescription];
  v3 = [v2 length];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [*(a1 + 32) assetCollection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [*(a1 + 32) assetCollection];
      v8 = [v7 photoLibrary];
      v9 = [v8 librarySpecificFetchOptions];

      v10 = [MEMORY[0x1E6978630] fetchCustomUserAssetsInMemory:v7 options:v9];
      v11 = [v10 count];

      v12 = [MEMORY[0x1E6978630] fetchUserCuratedAssetsInMemory:v7];
      v13 = [v12 count];

      v14 = [MEMORY[0x1E6978630] fetchCuratedAssetsInAssetCollection:v7];
      v15 = [v14 count];

      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CustomUser: %lu, UserCurated: %lu, RawCurated: %lu", v11, v13, v15];
      [v4 addObject:v16];
    }

    v17 = MEMORY[0x1E696AEC0];
    v18 = [*(a1 + 32) curatedAssets];
    v19 = [v17 stringWithFormat:@"Curated: %lu", objc_msgSend(v18, "count")];
    [v4 addObject:v19];

    v20 = MEMORY[0x1E696AEC0];
    v21 = [*(a1 + 32) allAssets];
    v22 = [v20 stringWithFormat:@"All: %lu", objc_msgSend(v21, "count")];
    [v4 addObject:v22];

    v23 = [v4 componentsJoinedByString:@"\n"];
    [*(a1 + 32) setCachedAssetsCountHUDDescription:v23];
  }

  v24 = *(a1 + 32);

  return [v24 cachedAssetsCountHUDDescription];
}

id __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 recipe];
  v6 = [v4 _shortDescriptionOfPersistableRecipe:v5];
  v7 = [v6 mutableCopy];

  v8 = [v3 miroInfo];
  LODWORD(v6) = [v8 containsAnyData];

  if (v6)
  {
    v9 = [v3 miroInfo];
    v10 = [v9 description];
    [v7 appendFormat:@"\nMiro: %@", v10];
  }

  return v7;
}

id __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 count];

  v6 = [v4 initWithFormat:@"Count: %li", v5];

  return v6;
}

id __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 count];

  v6 = [v4 initWithFormat:@"Count: %li", v5];

  return v6;
}

id __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 curatedAudioAssets];

  v6 = [v4 initWithFormat:@"Curated Songs: %li", objc_msgSend(v5, "count")];

  return v6;
}

id __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [v2 originalColorGradeCategory];
  [v2 customColorGradeKind];
  v5 = PFStoryColorGradeKindToString();
  v6 = [v2 songResource];
  v7 = [v6 px_storyResourceSongAsset];
  v8 = PXAudioAssetShortDescription(v7);
  [v3 appendFormat:@"Persisted Style:\n\t%@\n\t%@\n\t%@\n", v4, v5, v8];

  v9 = [v3 copy];

  return v9;
}

__CFString *__66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  if (v2)
  {
    v3 = @"Loaded";
  }

  else
  {
    v3 = @"Not Loaded";
  }

  v4 = v3;

  return v3;
}

__CFString *__66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_5(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 px_storyResourceSongAsset];
    v3 = PXAudioAssetShortDescription(v2);
  }

  else
  {
    v3 = @"None";
  }

  return v3;
}

void __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke()
{
  v0 = objc_alloc_init(PXStoryDurationFormatter);
  v1 = _diagnosticTextForGenericHUDAtDisplaySize__productionDurationFormatter;
  _diagnosticTextForGenericHUDAtDisplaySize__productionDurationFormatter = v0;
}

- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  if ([(PXStoryAutoEditDecisionListsProducer *)self->_autoEditDecisionListsProducer handlesDiagnosticTextForHUDType:?])
  {
    [(PXStoryAutoEditDecisionListsProducer *)self->_autoEditDecisionListsProducer diagnosticTextForHUDType:a3 displaySize:width, height];
  }

  else
  {
    [(PXStoryRecipeManager *)self _diagnosticTextForGenericHUDAtDisplaySize:width, height];
  }
  v8 = ;

  return v8;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v7 = [(PXStoryRecipeManager *)self diagnosticTextForHUDType:3 displaySize:*MEMORY[0x1E695F060], v6];
  if (v7)
  {
    [v4 addAttachmentWithText:v7 name:@"recipe_manager_diagnostic"];
  }

  v8 = [(PXStoryRecipeManager *)self diagnosticTextForHUDType:9 displaySize:v5, v6];
  if (v8)
  {
    [v4 addAttachmentWithText:v8 name:@"moments_diagnostic"];
  }

  v47 = v8;
  v9 = [(PXStoryRecipeManager *)self diagnosticsMomentsProvider];
  v10 = [v9 _diagnosticSwiftCodeForMomentsUnitTest];

  if (v10)
  {
    [v4 addAttachmentWithSwiftCode:v10 name:@"moments_testcase"];
  }

  v11 = [(PXStoryRecipeManager *)self diagnosticTextForHUDType:8 displaySize:v5, v6];
  if (v11)
  {
    [v4 addAttachmentWithText:v11 name:@"autoedit_diagnostic"];
  }

  v45 = v11;
  v12 = [(PXStoryRecipeManager *)self persistableRecipeResult];
  v13 = [v12 object];
  v14 = [v13 recipe];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E69C08B0]);
    v16 = [v15 archivedJSONDataWithRecipe:v14 options:3];
    [v4 addAttachmentWithData:v16 name:@"recipe.json"];
  }

  v44 = v14;
  v46 = v10;
  v17 = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
  v18 = [v17 object];
  v19 = [v18 firstObject];

  v20 = 0x1E696A000uLL;
  v49 = v7;
  v43 = v19;
  if (v19)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = [v19 song];
    [v22 pace];
    v23 = PFStoryRecipeSongPaceDescription();
    v24 = [v19 colorGradeCategory];
    v25 = [v21 stringWithFormat:@"autoEdit_decisionList_%d_%@_%@", 0, v23, v24];

    v26 = [v19 diagnosticDescription];
    [v4 addAttachmentWithText:v26 name:v25];

    v27 = [v19 decisionPapertrail];
    [v4 addAttachmentWithText:v27 name:@"autoedit_papertrail"];

    v19 = 1;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v48 = self;
  v28 = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
  v29 = [v28 object];

  obj = v29;
  v52 = [v29 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v52)
  {
    v51 = *v54;
    do
    {
      v30 = 0;
      v31 = v19;
      do
      {
        v32 = v4;
        if (*v54 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v53 + 1) + 8 * v30);
        v34 = *(v20 + 3776);
        v19 = (v31 + 1);
        v35 = [v33 song];
        [v35 pace];
        PFStoryRecipeSongPaceDescription();
        v37 = v36 = v20;
        v38 = [v33 colorGradeCategory];
        v39 = [v34 stringWithFormat:@"autoEdit_decisionList_%d_%@_%@", v31, v37, v38];

        v20 = v36;
        v40 = [v33 diagnosticDescription];
        v4 = v32;
        [v32 addAttachmentWithText:v40 name:v39];

        ++v30;
        v31 = v19;
      }

      while (v52 != v30);
      v52 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v52);
  }

  v41 = [(PXStoryRecipeManager *)v48 autoEditDecisionListsProducer];
  [v4 addSubprovider:v41];

  v42 = [(PXStoryRecipeManager *)v48 recipe];
  [v4 addSubprovider:v42];
}

- (void)setAdditionalAutoEditDecisionListsBySong:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_additionalAutoEditDecisionListsBySong != v4)
  {
    v9 = v4;
    v6 = [(NSDictionary *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      additionalAutoEditDecisionListsBySong = self->_additionalAutoEditDecisionListsBySong;
      self->_additionalAutoEditDecisionListsBySong = v7;

      [(PXStoryRecipeManager *)self _invalidateRecipe];
      v5 = v9;
    }
  }
}

- (void)_handleAdditionalAutoEditDecisionListsResult:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXStoryRecipeManager *)self additionalAutoEditDecisionListsBySong];
  v6 = [v5 mutableCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = v4;
  v7 = [v4 object];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 song];
        if (v13)
        {
          [v6 setObject:v12 forKeyedSubscript:v13];
        }

        else
        {
          v14 = PLStoryGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v26 = self;
            v27 = 2112;
            v28 = v12;
            _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "%@ received additional AEDL with no song! %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__PXStoryRecipeManager__handleAdditionalAutoEditDecisionListsResult___block_invoke;
  v18[3] = &unk_1E773C8E0;
  v18[4] = self;
  v19 = v17;
  v20 = v6;
  v15 = v6;
  v16 = v17;
  [(PXStoryRecipeManager *)self performChanges:v18];
}

void __69__PXStoryRecipeManager__handleAdditionalAutoEditDecisionListsResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleResult:*(a1 + 40) forProducer:1024];
  v2 = [*(a1 + 48) copy];
  [*(a1 + 32) setAdditionalAutoEditDecisionListsBySong:v2];
}

- (void)_updateAdditionalAutoEditDecisionLists
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryRecipeManager *)self additionalSongs];
  if ([v3 count])
  {
    objc_initWeak(&location, self);
    [(PXStoryRecipeManager *)self storyQueue];
    objc_claimAutoreleasedReturnValue();
    PXSyncCallbackBegin();
  }
}

void __62__PXStoryRecipeManager__updateAdditionalAutoEditDecisionLists__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 72);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 56));
  PXPerformWithSyncTokenOnQueue();
}

void __62__PXStoryRecipeManager__updateAdditionalAutoEditDecisionLists__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 72);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      v9 = *(a1 + 64);
      v14 = 134217984;
      v15 = v9;
      v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
      goto LABEL_9;
    }
  }

  else if (v2 == 1)
  {
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      v7 = *(a1 + 64);
      v14 = 134217984;
      v15 = v7;
      v8 = "Context=%{signpost.telemetry:string2}lu ";
LABEL_9:
      v10 = v4;
      v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeAdditionalAutoEditDecisionLists", v8, &v14, 0xCu);
    }
  }

  else if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v12 = *(a1 + 64);
    v14 = 134217984;
    v15 = v12;
    v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
    v10 = v4;
    v11 = OS_SIGNPOST_EVENT;
    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleAdditionalAutoEditDecisionListsResult:*(a1 + 48)];
}

- (void)_invalidateAdditionalAutoEditDecisionLists
{
  v2 = [(PXStoryRecipeManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAdditionalAutoEditDecisionLists];
}

- (void)ensureAutoEditDecisionListForSong:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXStoryRecipeManager *)self additionalSongs];
  if (([v5 containsObject:v4] & 1) == 0)
  {
    v6 = [v5 setByAddingObject:v4];
    [(PXStoryRecipeManager *)self setAdditionalSongs:v6];

    objc_initWeak(&location, self);
    [(PXStoryRecipeManager *)self storyQueue];
    objc_claimAutoreleasedReturnValue();
    PXSyncCallbackBegin();
  }
}

void __58__PXStoryRecipeManager_ensureAutoEditDecisionListForSong___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v5 = *(a1 + 72);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v4, (a1 + 56));
  PXPerformWithSyncTokenOnQueue();
}

void __58__PXStoryRecipeManager_ensureAutoEditDecisionListForSong___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 72);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      v9 = *(a1 + 64);
      v14 = 134217984;
      v15 = v9;
      v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
      goto LABEL_9;
    }
  }

  else if (v2 == 1)
  {
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      v7 = *(a1 + 64);
      v14 = 134217984;
      v15 = v7;
      v8 = "Context=%{signpost.telemetry:string2}lu ";
LABEL_9:
      v10 = v4;
      v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeSingleAdditionalAutoEditDecisionList", v8, &v14, 0xCu);
    }
  }

  else if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v12 = *(a1 + 64);
    v14 = 134217984;
    v15 = v12;
    v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
    v10 = v4;
    v11 = OS_SIGNPOST_EVENT;
    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleAdditionalAutoEditDecisionListsResult:*(a1 + 48)];
}

- (void)applyKeyAsset:(id)a3
{
  v4 = a3;
  v6 = [(PXStoryRecipeManager *)self recipeAssetEdits];
  v5 = [v6 copyWithKeyAsset:v4];

  [(PXStoryRecipeManager *)self setRecipeAssetEdits:v5];
}

- (void)applyManuallyRemovedAssets:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXStoryRecipeManager *)self curatedAssets];
  v6 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(v5, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v5 indexOfObject:{*(*(&v13 + 1) + 8 * v11), v13}];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v6 removeIndex:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  PXDisplayAssetFetchResultSubfetchResultWithIndexSet();
}

- (void)_applyManuallyCuratedAssets:(id)a3 setAsCustomUserAssets:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_storeStrong(&self->_manuallyCuratedAssets, a3);
  v8 = *MEMORY[0x1E69C0DB0];
  v19 = *(MEMORY[0x1E69C0DB0] + 16);
  v9 = *(MEMORY[0x1E69C0DB0] + 48);
  v20 = *(MEMORY[0x1E69C0DB0] + 32);
  v21 = v9;
  v22 = *(MEMORY[0x1E69C0DB0] + 64);
  v18 = v8;
  v10 = [(PXStoryRecipeManager *)self recipeAssetEdits];
  v17 = 2;
  v11 = [v10 copyWithOverallDurationInfo:&v17 userCuratedAssets:v7];

  if (v4)
  {
    v12 = [v11 copyWithCustomUserAssets:v7];

    v11 = v12;
  }

  v13 = [(PXStoryRecipeManager *)self assetsDataSource];
  v14 = [v13 keyAsset];

  if ([v7 count] >= 1 && v14 && (objc_msgSend(v7, "containsObject:", v14) & 1) == 0)
  {
    v15 = [v7 objectAtIndexedSubscript:0];
    v16 = [v11 copyWithKeyAsset:v15];

    v11 = v16;
  }

  [(PXStoryRecipeManager *)self setRecipeAssetEdits:v11];
}

- (void)applyManuallyCuratedAssets:(id)a3
{
  v8 = a3;
  v4 = [(PXStoryRecipeManager *)self recipeAssetEdits];
  v5 = [v4 customUserAssetsEdit];
  v6 = [v5 assets];
  v7 = [v6 count] > 0;

  [(PXStoryRecipeManager *)self _applyManuallyCuratedAssets:v8 setAsCustomUserAssets:v7];
}

- (void)_handleCuratedAssetsResult:(id)a3 targetOverallDurationInfo:(id *)a4
{
  v6 = a3;
  v7 = [v6 object];

  if (v7)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__PXStoryRecipeManager__handleCuratedAssetsResult_targetOverallDurationInfo___block_invoke;
    v21[3] = &unk_1E773C868;
    v21[4] = self;
    v8 = *&a4->var1.var1.var3;
    v25 = *&a4->var1.var1.var0;
    v26 = v8;
    v27 = *&a4->var1.var2.var1;
    v9 = *&a4->var1.var0.var1;
    v23 = *&a4->var0;
    v24 = v9;
    v22 = v6;
    [(PXStoryRecipeManager *)self performChanges:v21];
  }

  else
  {
    v10 = [v6 error];
    v17 = v10;
    if (v10)
    {
      v18 = v10;
    }

    else
    {
      v18 = PXStoryErrorCreateWithCodeDebugFormat(16, @"Target Duration Curation Failed", v11, v12, v13, v14, v15, v16, v21[0]);
    }

    v19 = v18;

    v20 = [(PXStoryRecipeManager *)self errorReporter];
    [v20 setError:v19 forComponent:@"TargetDurationCuration"];
  }
}

void __77__PXStoryRecipeManager__handleCuratedAssetsResult_targetOverallDurationInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recipeAssetEdits];
  v3 = [*(a1 + 40) object];
  v4 = *(a1 + 96);
  v8[2] = *(a1 + 80);
  v8[3] = v4;
  v8[4] = *(a1 + 112);
  v5 = *(a1 + 64);
  v8[0] = *(a1 + 48);
  v8[1] = v5;
  v6 = [v2 copyWithOverallDurationInfo:v8 userCuratedAssets:v3];

  v7 = [v6 copyWithCustomUserAssets:0];
  [*(a1 + 32) setRecipeAssetEdits:v7];
}

- (void)setAssetsAutoCurationProgress:(id)a3
{
  v5 = a3;
  assetsAutoCurationProgress = self->_assetsAutoCurationProgress;
  if (assetsAutoCurationProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)assetsAutoCurationProgress cancel];
    objc_storeStrong(&self->_assetsAutoCurationProgress, a3);
    v5 = v7;
  }
}

- (void)applyTargetOverallDurationInfo:(id *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  var0 = a3->var0;
  if (!a3->var0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXStoryRecipeManager.m" lineNumber:1183 description:{@"Invalid parameter not satisfying: %@", @"targetOverallDurationInfo.kind != PFStoryOverallDurationKindUndefined"}];

    var0 = a3->var0;
  }

  if (var0 != 2)
  {
    [PXProgressIndicatorAlertController beginShowingModalProgressWithConfiguration:0];
    objc_claimAutoreleasedReturnValue();
    objc_initWeak(&location, self);
    [(PXStoryRecipeManager *)self storyQueue];
    objc_claimAutoreleasedReturnValue();
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = __Block_byref_object_copy__136816;
    v10[4] = __Block_byref_object_dispose__136817;
    v10[5] = 0;
    [(PXStoryRecipeManager *)self storyQueue];
    objc_claimAutoreleasedReturnValue();
    PXSyncCallbackBegin();
  }

  v6 = [(PXStoryRecipeManager *)self manuallyCuratedAssets];

  if (!v6)
  {
    PXAssertGetLog();
  }

  v9 = [(PXStoryRecipeManager *)self manuallyCuratedAssets];
  [(PXStoryRecipeManager *)self applyCustomUserAssets:v9];
}

void __55__PXStoryRecipeManager_applyTargetOverallDurationInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 40);
  v6 = *(a1 + 88);
  *(a1 + 48);
  v3;
  objc_copyWeak(&v5, (a1 + 72));
  v4 = *(a1 + 136);
  v8 = *(a1 + 120);
  v9 = v4;
  v10 = *(a1 + 152);
  v11 = *(a1 + 168);
  v7 = *(a1 + 104);
  PXPerformWithSyncTokenOnQueue();
}

void __55__PXStoryRecipeManager_applyTargetOverallDurationInfo___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _ProducerRequestEnd(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 80);
  v6 = v5 - 1;
  if (v2 == 2)
  {
    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    LODWORD(v17[0]) = 134217984;
    *(v17 + 4) = v9;
    v8 = "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES ";
  }

  else
  {
    if (v2 != 1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 72);
      LODWORD(v17[0]) = 134217984;
      *(v17 + 4) = v12;
      v8 = "Context=%{signpost.telemetry:string2}lu degraded result";
      v10 = v4;
      v11 = OS_SIGNPOST_EVENT;
      goto LABEL_13;
    }

    if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 72);
    LODWORD(v17[0]) = 134217984;
    *(v17 + 4) = v7;
    v8 = "Context=%{signpost.telemetry:string2}lu ";
  }

  v10 = v4;
  v11 = OS_SIGNPOST_INTERVAL_END;
LABEL_13:
  _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v5, "PXStoryRecipeCuratedAssets", v8, v17, 0xCu);
LABEL_14:

  if (([*(*(*(a1 + 56) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v14 = *(a1 + 48);
    v15 = *(a1 + 104);
    v16 = *(a1 + 136);
    v17[2] = *(a1 + 120);
    v17[3] = v16;
    v17[4] = *(a1 + 152);
    v17[0] = *(a1 + 88);
    v17[1] = v15;
    [WeakRetained _handleCuratedAssetsResult:v14 targetOverallDurationInfo:v17];
  }
}

- (void)setPersistedRecipeAssetEdits:(id)a3
{
  v5 = a3;
  persistedRecipeAssetEdits = self->_persistedRecipeAssetEdits;
  if (persistedRecipeAssetEdits != v5 && ![(PXStoryRecipeAssetEdits *)persistedRecipeAssetEdits isEqual:v5])
  {
    v7 = [(PXStoryRecipeAssetEdits *)self->_persistedRecipeAssetEdits userCuratedAssets];
    v8 = [(PXStoryRecipeAssetEdits *)v5 userCuratedAssets];
    ResultsEqual = _areFetchResultsEqual(v7, v8);

    if (ResultsEqual)
    {
      v10 = [(PXStoryRecipeAssetEdits *)self->_persistedRecipeAssetEdits keyAsset];
      v11 = [(PXStoryRecipeAssetEdits *)v5 keyAsset];
      v12 = v11;
      if (v10 == v11)
      {

        objc_storeStrong(&self->_persistedRecipeAssetEdits, a3);
        [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
        goto LABEL_10;
      }

      v13 = [v10 isEqual:v11];

      objc_storeStrong(&self->_persistedRecipeAssetEdits, a3);
      [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      objc_storeStrong(&self->_persistedRecipeAssetEdits, a3);
      [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
    }

    v14 = [(PXStoryRecipeManager *)self assetsDataSourceManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__PXStoryRecipeManager_setPersistedRecipeAssetEdits___block_invoke;
    v15[3] = &unk_1E774A6B8;
    v15[4] = self;
    [v14 performChanges:v15];
  }

LABEL_10:
}

void __53__PXStoryRecipeManager_setPersistedRecipeAssetEdits___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 assetCollection];
  [v3 refreshResultsForAssetCollection:v4];
}

- (void)setRecipeAssetEdits:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  recipeAssetEdits = self->_recipeAssetEdits;
  if (recipeAssetEdits != v5 && ![(PXStoryRecipeAssetEdits *)recipeAssetEdits isEqual:v5])
  {
    objc_storeStrong(&self->_recipeAssetEdits, a3);
    [(PXStoryRecipeManager *)self signalChange:64];
    v7 = [(PXStoryRecipeManager *)self log];
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v18 = 134217984;
        v19 = [(PXStoryRecipeManager *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v9, "PXStoryRecipeManagerChangedAssetEdits", "Context=%{signpost.telemetry:string2}lu ", &v18, 0xCu);
      }
    }

    v10 = v7;
    v11 = os_signpost_id_make_with_pointer(v10, self);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        v13 = [(PXStoryRecipeManager *)self logContext];
        v18 = 134218242;
        v19 = v13;
        v20 = 2114;
        v21 = v5;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_EVENT, v12, "PXStoryRecipeManagerChangedAssetEdits", "Context=%{signpost.telemetry:string2}lu %{public}@", &v18, 0x16u);
      }
    }

    v14 = v10;
    v15 = os_signpost_id_make_with_pointer(v14, self);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        v17 = [(PXStoryRecipeManager *)self logContext];
        v18 = 134218242;
        v19 = v17;
        v20 = 2114;
        v21 = v5;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PXStoryRecipeManagerChangedAssetEdits", "Context=%{signpost.telemetry:string2}lu %{public}@", &v18, 0x16u);
      }
    }

    [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
  }
}

- (void)_handleResult:(id)a3 forProducer:(unint64_t)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(PXStoryRecipeManager *)self setProducersWithInitialResults:[(PXStoryRecipeManager *)self producersWithInitialResults]| a4];
  if ([v6 isDegraded])
  {
    v7 = [(PXStoryRecipeManager *)self finalizedProducers]& ~a4;
  }

  else
  {
    v7 = [(PXStoryRecipeManager *)self finalizedProducers]| a4;
  }

  [(PXStoryRecipeManager *)self setFinalizedProducers:v7];
  v8 = [v6 error];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E6991F28];
    v18 = *MEMORY[0x1E6991E28];
    v19[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v10 sendEvent:@"com.apple.photos.memory.interactiveMemoryRecipeErrorOccurred" withPayload:v11];
  }

  v12 = [(PXStoryRecipeManager *)self errorReporter];
  v13 = PXStoryProducerName(a4);
  [v12 setError:v9 forComponent:v13];

  v14 = [(PXStoryRecipeManager *)self _monitorForProducer:a4];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__PXStoryRecipeManager__handleResult_forProducer___block_invoke;
  v16[3] = &unk_1E773C7F0;
  v17 = v6;
  v15 = v6;
  [v14 performChanges:v16];
}

- (void)setRecipeAttributes:(unint64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  recipeAttributes = self->_recipeAttributes;
  if (recipeAttributes == a3)
  {
    return;
  }

  v4 = a3;
  if ((recipeAttributes & 2) == 0 || !(((self->_recipeAttributes & 1) == 0) | a3 & 1))
  {
    if ((((self->_recipeAttributes & 2) == 0) & (((self->_recipeAttributes & 1) == 0) | a3)) != 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    PXAssertGetLog();
  }

  if ((a3 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  self->_recipeAttributes = a3;
  [(PXStoryRecipeManager *)self signalChange:4];
  v6 = [(PXStoryRecipeManager *)self log];
  v7 = os_signpost_id_make_with_pointer(v6, self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      v9 = [(PXStoryRecipeManager *)self logContext];
      v20 = 134217984;
      v21 = v9;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v8, "PXStoryRecipeManagerChangedRecipeAttributes", "Context=%{signpost.telemetry:string2}lu ", &v20, 0xCu);
    }
  }

  v10 = v6;
  v11 = os_signpost_id_make_with_pointer(v10, self);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v13 = [(PXStoryRecipeManager *)self logContext];
      v14 = PXStoryComponentAttributesDescription(v4);
      v20 = 134218242;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_EVENT, v12, "PXStoryRecipeManagerChangedRecipeAttributes", "Context=%{signpost.telemetry:string2}lu %{public}@", &v20, 0x16u);
    }
  }

  v15 = v10;
  v16 = os_signpost_id_make_with_pointer(v15, self);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      v18 = [(PXStoryRecipeManager *)self logContext];
      v19 = PXStoryComponentAttributesDescription(v4);
      v20 = 134218242;
      v21 = v18;
      v22 = 2114;
      v23 = v19;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PXStoryRecipeManagerChangedRecipeAttributes", "Context=%{signpost.telemetry:string2}lu %{public}@", &v20, 0x16u);
    }
  }

  [(PXStoryRecipeManager *)self setIsRecipeFinal:(self->_recipeAttributes >> 1) & 1];
}

- (void)setIsRecipeFinal:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isRecipeFinal != a3)
  {
    v3 = a3;
    self->_isRecipeFinal = a3;
    [(PXStoryRecipeManager *)self signalChange:2];
    v5 = [(PXStoryRecipeManager *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        v17 = [(PXStoryRecipeManager *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryRecipeManagerChangedIsRecipeFinal", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        v11 = [(PXStoryRecipeManager *)self logContext];
        v16 = 134218240;
        v17 = v11;
        v18 = 1024;
        v19 = v3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryRecipeManagerChangedIsRecipeFinal", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = [(PXStoryRecipeManager *)self logContext];
        v16 = 134218240;
        v17 = v15;
        v18 = 1024;
        v19 = v3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryRecipeManagerChangedIsRecipeFinal", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setRecipe:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (self->_recipe != v5 && ([(PXStoryRecipe *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_recipe, a3);
    [(PXStoryRecipeManager *)self _invalidateRecipeAttributes];
    [(PXStoryRecipeManager *)self signalChange:1];
    v7 = [(PXStoryRecipeManager *)self log];
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v22 = 134217984;
        v23 = [(PXStoryRecipeManager *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v9, "PXStoryRecipeManagerChangedRecipe", "Context=%{signpost.telemetry:string2}lu ", &v22, 0xCu);
      }
    }

    v10 = v7;
    v11 = os_signpost_id_make_with_pointer(v10, self);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        v13 = [(PXStoryRecipeManager *)self logContext];
        v14 = [(PXStoryRecipe *)v6 curatedAssets];
        v15 = [v14 count];
        v22 = 134218496;
        v23 = v13;
        v24 = 2048;
        v25 = v6;
        v26 = 2048;
        v27 = v15;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_EVENT, v12, "PXStoryRecipeManagerChangedRecipe", "Context=%{signpost.telemetry:string2}lu %p curatedAssets:%ld", &v22, 0x20u);
      }
    }

    v16 = v10;
    v17 = os_signpost_id_make_with_pointer(v16, self);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v16))
      {
        v19 = [(PXStoryRecipeManager *)self logContext];
        v20 = [(PXStoryRecipe *)v6 curatedAssets];
        v21 = [v20 count];
        v22 = 134218496;
        v23 = v19;
        v24 = 2048;
        v25 = v6;
        v26 = 2048;
        v27 = v21;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PXStoryRecipeManagerChangedRecipe", "Context=%{signpost.telemetry:string2}lu %p curatedAssets:%ld", &v22, 0x20u);
      }
    }
  }
}

- (void)setAutoEditStylesResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_autoEditStylesResult != v5)
  {
    v8 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_autoEditStylesResult, a3);
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:128];
      v6 = v8;
    }
  }
}

- (void)setAutoEditStylesProgress:(id)a3
{
  v5 = a3;
  autoEditStylesProgress = self->_autoEditStylesProgress;
  if (autoEditStylesProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)autoEditStylesProgress cancel];
    objc_storeStrong(&self->_autoEditStylesProgress, a3);
    v5 = v7;
  }
}

- (void)setAutoEditStylesProducer:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_autoEditStylesProducer != v5)
  {
    v8 = v5;
    v7 = [(PXStoryStylesProducer *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_autoEditStylesProducer, a3);
      [(PXStoryRecipeManager *)self _updateAutoEditStyles];
      v6 = v8;
    }
  }
}

- (void)setAutoEditDecisionListsResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_autoEditDecisionListsResult != v5)
  {
    v8 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_autoEditDecisionListsResult, a3);
      [(PXStoryRecipeManager *)self _invalidateAutoEditStylesProducer];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:512];
      v6 = v8;
    }
  }
}

- (void)setAutoEditDecisionListsProgress:(id)a3
{
  v5 = a3;
  autoEditDecisionListsProgress = self->_autoEditDecisionListsProgress;
  if (autoEditDecisionListsProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)autoEditDecisionListsProgress cancel];
    objc_storeStrong(&self->_autoEditDecisionListsProgress, a3);
    v5 = v7;
  }
}

- (void)setAutoEditDecisionListsProducer:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_autoEditDecisionListsProducer != v5)
  {
    v8 = v5;
    v7 = [(PXStoryAutoEditDecisionListsProducer *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_autoEditDecisionListsProducer, a3);
      [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionLists];
      [(PXStoryRecipeManager *)self _invalidateAdditionalAutoEditDecisionLists];
      [(PXStoryRecipeManager *)self _invalidateInitialAutoEditDecisionList];
      v6 = v8;
    }
  }
}

- (void)setInitialStyleResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_initialStyleResult != v5)
  {
    v8 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_initialStyleResult, a3);
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:64];
      v6 = v8;
    }
  }
}

- (void)setInitialStyleProgress:(id)a3
{
  v5 = a3;
  initialStyleProgress = self->_initialStyleProgress;
  if (initialStyleProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)initialStyleProgress cancel];
    objc_storeStrong(&self->_initialStyleProgress, a3);
    v5 = v7;
  }
}

- (void)setInitialStyleProducer:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_initialStyleProducer != v5)
  {
    v8 = v5;
    v7 = [(PXStoryStylesProducer *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_initialStyleProducer, a3);
      [(PXStoryRecipeManager *)self setHasInitialStyleBeenProduced:0];
      [(PXStoryRecipeManager *)self _invalidateInitialStyle];
      v6 = v8;
    }
  }
}

- (void)setKeyAsset:(id)a3
{
  v5 = a3;
  if (self->_keyAsset != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_keyAsset, a3);
    [(PXStoryRecipeManager *)self _invalidateChapterCollectionResult];
    [(PXStoryRecipeManager *)self _invalidateRecipe];
    v5 = v6;
  }
}

- (void)setAllAssets:(id)a3
{
  v6 = a3;
  if ((_areFetchResultsEqual(v6, self->_allAssets) & 1) == 0)
  {
    objc_storeStrong(&self->_allAssets, a3);
    cachedAssetsCountHUDDescription = self->_cachedAssetsCountHUDDescription;
    self->_cachedAssetsCountHUDDescription = 0;

    [(PXStoryRecipeManager *)self _invalidateRecipe];
    [(PXStoryRecipeManager *)self _invalidateCurationLengths];
  }
}

- (void)setUntruncatedCuratedAssets:(id)a3
{
  v5 = a3;
  if ((_areFetchResultsEqual(v5, self->_untruncatedCuratedAssets) & 1) == 0)
  {
    objc_storeStrong(&self->_untruncatedCuratedAssets, a3);
    [(PXStoryRecipeManager *)self _invalidateRecipe];
  }
}

- (void)setCuratedAssets:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_areFetchResultsEqual(v5, self->_curatedAssets) & 1) == 0)
  {
    objc_storeStrong(&self->_curatedAssets, a3);
    cachedAssetsCountHUDDescription = self->_cachedAssetsCountHUDDescription;
    self->_cachedAssetsCountHUDDescription = 0;

    [(PXStoryRecipeManager *)self _invalidateMovieHighlights];
    [(PXStoryRecipeManager *)self _invalidateDetailedSaliency];
    [(PXStoryRecipeManager *)self _invalidateChapterCollectionResult];
    [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
    [(PXStoryRecipeManager *)self _invalidateRecipe];
    [(PXStoryRecipeManager *)self _invalidateCurationLengths];
    [(PXStoryRecipeManager *)self _invalidateManuallyCuratedAssets];
    [(PXStoryRecipeManager *)self _invalidateProducerMonitors];
    v7 = [(PXStoryRecipeManager *)self log];
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v10 = 134218240;
        v11 = [(PXStoryRecipeManager *)self logContext];
        v12 = 2048;
        v13 = [v5 count];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_EVENT, v9, "PXStoryRecipeManagerSetCuratedAssets", "Context=%{signpost.telemetry:string2}lu curatedAssets:%ld", &v10, 0x16u);
      }
    }
  }
}

- (void)setAvailableCurationLengths:(unint64_t)a3
{
  if (self->_availableCurationLengths != a3)
  {
    self->_availableCurationLengths = a3;
    [(PXStoryRecipeManager *)self signalChange:32];
  }
}

- (void)setDefaultCurationLength:(unint64_t)a3
{
  if (self->_defaultCurationLength != a3)
  {
    self->_defaultCurationLength = a3;
    [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];

    [(PXStoryRecipeManager *)self signalChange:32];
  }
}

- (void)setCurationLengthsResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_curationLengthsResult != v5)
  {
    v8 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_curationLengthsResult, a3);
      [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
      v6 = v8;
    }
  }
}

- (void)setAutoCurationProducer:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_autoCurationProducer != v5)
  {
    v8 = v5;
    v7 = [(PXStoryAutoCurationProducer *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_autoCurationProducer, a3);
      [(PXStoryRecipeManager *)self _invalidateCurationLengths];
      v6 = v8;
    }
  }
}

- (void)setCurationLengthsProgress:(id)a3
{
  v5 = a3;
  curationLengthsProgress = self->_curationLengthsProgress;
  if (curationLengthsProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)curationLengthsProgress cancel];
    objc_storeStrong(&self->_curationLengthsProgress, a3);
    v5 = v7;
  }
}

- (void)setOverallDurationInfo:(id *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  p_overallDurationInfo = &self->_overallDurationInfo;
  if (a3->var0 != self->_overallDurationInfo.kind || (v6 = *&a3->var1.var0.var3, v7 = *&a3->var1.var2.var0, *&buf[32] = *&a3->var1.var1.var1, v33 = v7, *&v34 = a3->var1.var2.var3, *buf = *&a3->var1.var0.var0, *&buf[16] = v6, specificDurationInfo = self->_overallDurationInfo.specificDurationInfo, time1 = a3->var1.var0, time2 = self->_overallDurationInfo.specificDurationInfo.minimumDuration, CMTimeCompare(&time1, &time2)) || (time1 = *&buf[24], time2 = specificDurationInfo.preferredDuration, CMTimeCompare(&time1, &time2)) || (*&time1.value = v33, time1.epoch = v34, time2 = specificDurationInfo.maximumDuration, CMTimeCompare(&time1, &time2)))
  {
    *&p_overallDurationInfo->kind = *&a3->var0;
    v8 = *&a3->var1.var0.var1;
    v9 = *&a3->var1.var1.var0;
    v10 = *&a3->var1.var2.var1;
    *&p_overallDurationInfo->specificDurationInfo.preferredDuration.epoch = *&a3->var1.var1.var3;
    *&p_overallDurationInfo->specificDurationInfo.maximumDuration.timescale = v10;
    *&p_overallDurationInfo->specificDurationInfo.minimumDuration.timescale = v8;
    *&p_overallDurationInfo->specificDurationInfo.preferredDuration.value = v9;
    [(PXStoryRecipeManager *)self signalChange:128, *&specificDurationInfo.minimumDuration.value, specificDurationInfo.minimumDuration.epoch];
    v11 = [(PXStoryRecipeManager *)self log];
    v12 = os_signpost_id_make_with_pointer(v11, self);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = v12;
      if (os_signpost_enabled(v11))
      {
        v14 = [(PXStoryRecipeManager *)self logContext];
        *buf = 134217984;
        *&buf[4] = v14;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_END, v13, "PXStoryRecipeManagerChangedOverallDurationInfo", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
      }
    }

    v15 = v11;
    v16 = os_signpost_id_make_with_pointer(v15, self);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v15))
      {
        v18 = [(PXStoryRecipeManager *)self logContext];
        v19 = *&a3->var1.var1.var3;
        *&buf[32] = *&a3->var1.var1.var0;
        v33 = v19;
        v34 = *&a3->var1.var2.var1;
        v20 = *&a3->var1.var0.var1;
        *buf = *&a3->var0;
        *&buf[16] = v20;
        v21 = PFStoryOverallDurationInfoDescription();
        *buf = 134218242;
        *&buf[4] = v18;
        *&buf[12] = 2114;
        *&buf[14] = v21;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_EVENT, v17, "PXStoryRecipeManagerChangedOverallDurationInfo", "Context=%{signpost.telemetry:string2}lu %{public}@", buf, 0x16u);
      }
    }

    v22 = v15;
    v23 = os_signpost_id_make_with_pointer(v22, self);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = v23;
      if (os_signpost_enabled(v22))
      {
        v25 = [(PXStoryRecipeManager *)self logContext];
        v26 = *&a3->var1.var1.var3;
        *&buf[32] = *&a3->var1.var1.var0;
        v33 = v26;
        v34 = *&a3->var1.var2.var1;
        v27 = *&a3->var1.var0.var1;
        *buf = *&a3->var0;
        *&buf[16] = v27;
        v28 = PFStoryOverallDurationInfoDescription();
        *buf = 134218242;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PXStoryRecipeManagerChangedOverallDurationInfo", "Context=%{signpost.telemetry:string2}lu %{public}@", buf, 0x16u);
      }
    }

    [(PXStoryRecipeManager *)self _invalidateRecipe];
    [(PXStoryRecipeManager *)self _invalidateManuallyCuratedAssets];
    [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
  }
}

- (void)setChapterCollection:(id)a3
{
  v5 = a3;
  if (self->_chapterCollection != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_chapterCollection, a3);
    [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
    [(PXStoryRecipeManager *)self _invalidateRecipe];
    v5 = v6;
  }
}

- (void)setChapterCollectionManager:(id)a3
{
  v5 = a3;
  chapterCollectionManager = self->_chapterCollectionManager;
  if (chapterCollectionManager != v5)
  {
    v7 = v5;
    [(PXStoryChapterCollectionManager *)chapterCollectionManager unregisterChangeObserver:self context:ChapterCollectionManagerObservationContext];
    objc_storeStrong(&self->_chapterCollectionManager, a3);
    [(PXStoryChapterCollectionManager *)self->_chapterCollectionManager registerChangeObserver:self context:ChapterCollectionManagerObservationContext];
    [(PXStoryRecipeManager *)self _invalidateChapterCollection];
    v5 = v7;
  }
}

- (void)setChapterCollectionResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_chapterCollectionResult != v5)
  {
    v9 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v9;
    if (!v7)
    {
      objc_storeStrong(&self->_chapterCollectionResult, a3);
      [(PXStoryRecipeManager *)self _handleResult:v9 forProducer:2048];
      v8 = [(PXStoryProducerResult *)self->_chapterCollectionResult object];
      [(PXStoryRecipeManager *)self setChapterCollectionManager:v8];

      v6 = v9;
    }
  }
}

- (void)setHasFinalChapterCollectionBeenProduced:(BOOL)a3
{
  if (self->_hasFinalChapterCollectionBeenProduced != a3)
  {
    self->_hasFinalChapterCollectionBeenProduced = a3;
    [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
  }
}

- (void)setChapterCollectionProgress:(id)a3
{
  v5 = a3;
  chapterCollectionProgress = self->_chapterCollectionProgress;
  if (chapterCollectionProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)chapterCollectionProgress cancel];
    objc_storeStrong(&self->_chapterCollectionProgress, a3);
    v5 = v7;
  }
}

- (void)setChapterCollectionProducer:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_chapterCollectionProducer != v5)
  {
    v8 = v5;
    v7 = [(PXStoryChapterCollectionProducer *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_chapterCollectionProducer, a3);
      [(PXStoryRecipeManager *)self setHasFinalChapterCollectionBeenProduced:0];
      [(PXStoryRecipeManager *)self _invalidateChapterCollectionResult];
      v6 = v8;
    }
  }
}

- (void)setDetailedSaliencyResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_detailedSaliencyResult != v5)
  {
    v8 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_detailedSaliencyResult, a3);
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:4096];
      v6 = v8;
    }
  }
}

- (void)setHasFinalDetailedSaliencyBeenProduced:(BOOL)a3
{
  if (self->_hasFinalDetailedSaliencyBeenProduced != a3)
  {
    self->_hasFinalDetailedSaliencyBeenProduced = a3;
    [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
  }
}

- (void)setDetailedSaliencyProgress:(id)a3
{
  v5 = a3;
  detailedSaliencyProgress = self->_detailedSaliencyProgress;
  if (detailedSaliencyProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)detailedSaliencyProgress cancel];
    objc_storeStrong(&self->_detailedSaliencyProgress, a3);
    v5 = v7;
  }
}

- (void)setDetailedSaliencyProducer:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_detailedSaliencyProducer != v5)
  {
    v9 = v5;
    v7 = [(PXStoryDetailedSaliencyProducer *)v5 isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_detailedSaliencyProducer, a3);
      [(PXStoryRecipeManager *)self setHasFinalDetailedSaliencyBeenProduced:0];
      v8 = [(PXStoryRecipeManager *)self detailedSaliencyProducerMonitor];
      [v8 performChanges:&__block_literal_global_137222];

      [(PXStoryRecipeManager *)self _invalidateDetailedSaliency];
      v6 = v9;
    }
  }
}

- (void)setMovieHighlightsResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_movieHighlightsResult != v5)
  {
    v8 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_movieHighlightsResult, a3);
      [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:32];
      v6 = v8;
    }
  }
}

- (void)setHaveFinalMovieHighlightsBeenProduced:(BOOL)a3
{
  if (self->_haveFinalMovieHighlightsBeenProduced != a3)
  {
    self->_haveFinalMovieHighlightsBeenProduced = a3;
    [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
  }
}

- (void)setMovieHighlightsProgress:(id)a3
{
  v5 = a3;
  movieHighlightsProgress = self->_movieHighlightsProgress;
  if (movieHighlightsProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)movieHighlightsProgress cancel];
    objc_storeStrong(&self->_movieHighlightsProgress, a3);
    v5 = v7;
  }
}

- (void)setMovieHighlightsProducer:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_movieHighlightsProducer != v5)
  {
    v8 = v5;
    v7 = [(PXStoryMovieHighlightsProducer *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_movieHighlightsProducer, a3);
      [(PXStoryRecipeManager *)self setHaveFinalMovieHighlightsBeenProduced:0];
      [(PXStoryRecipeManager *)self _invalidateMovieHighlights];
      v6 = v8;
    }
  }
}

- (id)fallbackSongResource
{
  v2 = [(PXStoryRecipeManager *)self curatedSongsResult];
  v3 = [v2 object];
  v4 = [v3 fallbackCuratedAssets];

  if ([v4 count] < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 firstObject];
  }

  return v5;
}

- (PXAudioAssetFetchResult)curatedSongs
{
  v2 = [(PXStoryRecipeManager *)self curatedSongsResult];
  v3 = [v2 object];
  v4 = [v3 curatedAudioAssets];

  return v4;
}

- (void)setCuratedSongsResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_curatedSongsResult != v5)
  {
    v8 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_curatedSongsResult, a3);
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionLists];
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      [(PXStoryRecipeManager *)self _invalidateInitialAutoEditDecisionList];
      [(PXStoryRecipeManager *)self _invalidateInitialStyleProducer];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:16];
      v6 = v8;
    }
  }
}

- (void)setCuratedSongsProgress:(id)a3
{
  v5 = a3;
  if (self->_curatedSongsProgress != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_curatedSongsProgress, a3);
    v5 = v6;
  }
}

- (void)setCuratedSongsProducer:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_curatedSongsProducer != v5)
  {
    v8 = v5;
    v7 = [(PXStorySongsProducer *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_curatedSongsProducer, a3);
      [(PXStorySongsProducer *)v8 setLogContext:[(PXStoryRecipeManager *)self logContext]];
      [(PXStoryRecipeManager *)self _invalidateCuratedSongs];
      v6 = v8;
    }
  }
}

- (void)setInitialAutoEditDecisionListResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_initialAutoEditDecisionListResult != v5)
  {
    v8 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:256];
      objc_storeStrong(&self->_initialAutoEditDecisionListResult, a3);
      [(PXStoryRecipeManager *)self _invalidateInitialStyleProducer];
      v6 = v8;
    }
  }
}

- (void)setPersistedSongProgress:(id)a3
{
  v5 = a3;
  persistedSongProgress = self->_persistedSongProgress;
  if (persistedSongProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)persistedSongProgress cancel];
    objc_storeStrong(&self->_persistedSongProgress, a3);
    v5 = v7;
  }
}

- (void)setPersistedSongResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_persistedSongResult != v5)
  {
    v8 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:8];
      objc_storeStrong(&self->_persistedSongResult, a3);
      [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionLists];
      [(PXStoryRecipeManager *)self _invalidateCuratedSongs];
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      [(PXStoryRecipeManager *)self _invalidateInitialAutoEditDecisionList];
      [(PXStoryRecipeManager *)self _invalidateInitialStyleProducer];
      v6 = v8;
    }
  }
}

- (void)setPersistedSongProducer:(id)a3
{
  v8 = a3;
  v5 = self->_persistedSongProgress;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSProgress *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_persistedSongProducer, a3);
      [(PXStoryRecipeManager *)self _invalidatePersistedSong];
    }
  }
}

- (void)setPersistableRecipeResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_persistableRecipeResult != v5 && ![(PXStoryProducerResult *)v5 isEqual:?])
  {
    objc_storeStrong(&self->_persistableRecipeResult, a3);
    v7 = [(PXStoryProducerResult *)v6 object];
    v8 = [v7 miroInfo];

    if ([v8 containsAnyData])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__PXStoryRecipeManager_setPersistableRecipeResult___block_invoke;
      v9[3] = &unk_1E773CCA8;
      v10 = v8;
      [(PXStoryRecipeManager *)self performChanges:v9];
    }

    [(PXStoryRecipeManager *)self _invalidateRecipe];
    [(PXStoryRecipeManager *)self _invalidateManuallyCuratedAssets];
    [(PXStoryRecipeManager *)self _invalidatePersistedSongProducer];
    [(PXStoryRecipeManager *)self _invalidatePersistedSong];
    [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
    [(PXStoryRecipeManager *)self _handleResult:v6 forProducer:4];
  }
}

void __51__PXStoryRecipeManager_setPersistableRecipeResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 curatedAssets];
  [v3 applyManuallyCuratedAssets:v4];
}

- (void)setHasInitialPersistableRecipeBeenProduced:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_hasInitialPersistableRecipeBeenProduced != a3)
  {
    v3 = a3;
    self->_hasInitialPersistableRecipeBeenProduced = a3;
    v5 = [(PXStoryRecipeManager *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        v17 = [(PXStoryRecipeManager *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryRecipeManager.hasInitialPersistableRecipeBeenProduced", "Context=%{signpost.telemetry:string2}lu ", &v16, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        v11 = [(PXStoryRecipeManager *)self logContext];
        v16 = 134218240;
        v17 = v11;
        v18 = 1024;
        v19 = v3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryRecipeManager.hasInitialPersistableRecipeBeenProduced", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    v12 = v8;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = [(PXStoryRecipeManager *)self logContext];
        v16 = 134218240;
        v17 = v15;
        v18 = 1024;
        v19 = v3;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryRecipeManager.hasInitialPersistableRecipeBeenProduced", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    [(PXStoryRecipeManager *)self _invalidateInitialStyleProducer];
  }
}

- (void)setPersistableRecipeProgress:(id)a3
{
  v5 = a3;
  persistableRecipeProgress = self->_persistableRecipeProgress;
  if (persistableRecipeProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)persistableRecipeProgress cancel];
    objc_storeStrong(&self->_persistableRecipeProgress, a3);
    v5 = v7;
  }
}

- (void)setPersistableRecipeProducer:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_persistableRecipeProducer != v5)
  {
    v8 = v5;
    v7 = [(PXStoryPersistableRecipeProducer *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_persistableRecipeProducer, a3);
      [(PXStoryRecipeManager *)self _invalidatePersistableRecipe];
      v6 = v8;
    }
  }
}

- (void)setAssetsDataSource:(id)a3
{
  v11 = a3;
  v5 = self->_assetsDataSource;
  v6 = v5;
  if (v5 != v11)
  {
    v7 = [(PXAssetsDataSource *)v5 isEqual:v11];

    v8 = v11;
    if (v7)
    {
      goto LABEL_7;
    }

    objc_storeStrong(&self->_assetsDataSource, a3);
    v6 = [[PXStoryProducerResult alloc] initWithObject:v11];
    if (([(PXAssetsDataSource *)v11 areAllSectionsConsideredAccurate]& 1) == 0)
    {
      v9 = [(PXStoryProducerResult *)v6 flags:1];
    }

    [(PXStoryRecipeManager *)self _handleResult:v6 forProducer:2];
    v10 = [(PXAssetsDataSource *)v11 firstAssetCollection];
    [(PXStoryRecipeManager *)self setAssetCollection:v10];

    [(PXStoryRecipeManager *)self _invalidateCuratedAssets];
    [(PXStoryRecipeManager *)self _invalidateAllAssets];
    [(PXStoryRecipeManager *)self _invalidateKeyAsset];
  }

  v8 = v11;
LABEL_7:
}

- (void)setAssetsDataSourceManager:(id)a3
{
  v9 = a3;
  v5 = self->_assetsDataSourceManager;
  v6 = v5;
  if (v5 != v9)
  {
    v7 = [(PXAssetsDataSourceManager *)v5 isEqual:v9];

    v8 = v9;
    if (v7)
    {
      goto LABEL_5;
    }

    [(PXAssetsDataSourceManager *)self->_assetsDataSourceManager unregisterChangeObserver:self context:AssetsDataSourceManagerObservationContext];
    objc_storeStrong(&self->_assetsDataSourceManager, a3);
    [(PXAssetsDataSourceManager *)v9 registerChangeObserver:self context:AssetsDataSourceManagerObservationContext];
    [(PXStoryRecipeManager *)self signalChange:16];
    v6 = [(PXAssetsDataSourceManager *)v9 dataSource];
    [(PXStoryRecipeManager *)self setAssetsDataSource:v6];
  }

  v8 = v9;
LABEL_5:
}

- (void)setAssetsResult:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_assetsResult != v5)
  {
    v9 = v5;
    v7 = [(PXStoryProducerResult *)v5 isEqual:?];
    v6 = v9;
    if (!v7)
    {
      objc_storeStrong(&self->_assetsResult, a3);
      [(PXStoryRecipeManager *)self _handleResult:v9 forProducer:1];
      v8 = [(PXStoryProducerResult *)v9 object];
      [(PXStoryRecipeManager *)self setAssetsDataSourceManager:v8];

      v6 = v9;
    }
  }
}

- (void)setAssetsProgress:(id)a3
{
  v5 = a3;
  assetsProgress = self->_assetsProgress;
  if (assetsProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)assetsProgress cancel];
    objc_storeStrong(&self->_assetsProgress, a3);
    v5 = v7;
  }
}

- (void)setAssetCollection:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_assetCollection != v5)
  {
    objc_storeStrong(&self->_assetCollection, a3);
    v6 = [(PXStoryRecipeManager *)self log];
    v7 = os_signpost_id_make_with_pointer(v6, self);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        v21 = 134217984;
        v22 = [(PXStoryRecipeManager *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v8, "PXStoryRecipeManager.assetCollection", "Context=%{signpost.telemetry:string2}lu ", &v21, 0xCu);
      }
    }

    v9 = v6;
    v10 = os_signpost_id_make_with_pointer(v9, self);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        v12 = [(PXStoryRecipeManager *)self logContext];
        v13 = [(PXDisplayAssetCollection *)v5 uuid];
        v14 = [(PXDisplayAssetCollection *)v5 localizedTitle];
        v21 = 134218498;
        v22 = v12;
        v23 = 2114;
        v24 = v13;
        v25 = 2114;
        v26 = v14;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_EVENT, v11, "PXStoryRecipeManager.assetCollection", "Context=%{signpost.telemetry:string2}lu uuid:%{public}@ title:%{public}@", &v21, 0x20u);
      }
    }

    v15 = v9;
    v16 = os_signpost_id_make_with_pointer(v15, self);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v15))
      {
        v18 = [(PXStoryRecipeManager *)self logContext];
        v19 = [(PXDisplayAssetCollection *)v5 uuid];
        v20 = [(PXDisplayAssetCollection *)v5 localizedTitle];
        v21 = 134218498;
        v22 = v18;
        v23 = 2114;
        v24 = v19;
        v25 = 2114;
        v26 = v20;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PXStoryRecipeManager.assetCollection", "Context=%{signpost.telemetry:string2}lu uuid:%{public}@ title:%{public}@", &v21, 0x20u);
      }
    }

    [(PXStoryRecipeManager *)self _invalidateRecipe];
  }
}

- (void)setAssetsProducer:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_assetsProducer != v5)
  {
    v8 = v5;
    v7 = [(PXStoryAssetsProducer *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetsProducer, a3);
      [(PXStoryRecipeManager *)self _invalidateAssets];
      v6 = v8;
    }
  }
}

- (BOOL)wantsAutoEditResults
{
  v2 = [(PXStoryRecipeManager *)self configuration];
  v3 = ([v2 options] & 1) == 0;

  return v3;
}

- (void)setProducersLikelyToKeepUp:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_producersLikelyToKeepUp != a3)
  {
    self->_producersLikelyToKeepUp = a3;
    [(PXStoryRecipeManager *)self _invalidateRecipeAttributes];
    v4 = [(PXStoryRecipeManager *)self log];
    v5 = os_signpost_id_make_with_pointer(v4, self);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v17 = 134217984;
        v18 = [(PXStoryRecipeManager *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_END, v6, "PXStoryRecipeManager.producersLikelyToKeepUp", "Context=%{signpost.telemetry:string2}lu ", &v17, 0xCu);
      }
    }

    v7 = v4;
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v10 = [(PXStoryRecipeManager *)self logContext];
        v11 = PXStoryProducersDescription(self->_producersLikelyToKeepUp);
        v17 = 134218242;
        v18 = v10;
        v19 = 2112;
        v20 = v11;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_EVENT, v9, "PXStoryRecipeManager.producersLikelyToKeepUp", "Context=%{signpost.telemetry:string2}lu Producers=%{signpost.description:attribute}@", &v17, 0x16u);
      }
    }

    v12 = v7;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = [(PXStoryRecipeManager *)self logContext];
        v16 = PXStoryProducersDescription(self->_producersLikelyToKeepUp);
        v17 = 134218242;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryRecipeManager.producersLikelyToKeepUp", "Context=%{signpost.telemetry:string2}lu Producers=%{signpost.description:attribute}@", &v17, 0x16u);
      }
    }
  }
}

- (void)setProducersWithInitialResults:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_producersWithInitialResults != a3)
  {
    self->_producersWithInitialResults = a3;
    v4 = [(PXStoryRecipeManager *)self log];
    v5 = os_signpost_id_make_with_pointer(v4, self);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v17 = 134217984;
        v18 = [(PXStoryRecipeManager *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_END, v6, "PXStoryRecipeManager.producersWithInitialResults", "Context=%{signpost.telemetry:string2}lu ", &v17, 0xCu);
      }
    }

    v7 = v4;
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v10 = [(PXStoryRecipeManager *)self logContext];
        v11 = PXStoryProducersDescription(self->_producersWithInitialResults);
        v17 = 134218242;
        v18 = v10;
        v19 = 2112;
        v20 = v11;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_EVENT, v9, "PXStoryRecipeManager.producersWithInitialResults", "Context=%{signpost.telemetry:string2}lu Producers=%{signpost.description:attribute}@", &v17, 0x16u);
      }
    }

    v12 = v7;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = [(PXStoryRecipeManager *)self logContext];
        v16 = PXStoryProducersDescription(self->_producersWithInitialResults);
        v17 = 134218242;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryRecipeManager.producersWithInitialResults", "Context=%{signpost.telemetry:string2}lu Producers=%{signpost.description:attribute}@", &v17, 0x16u);
      }
    }
  }
}

- (void)setRemainingProducers:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_remainingProducers != a3)
  {
    self->_remainingProducers = a3;
    v4 = [(PXStoryRecipeManager *)self log];
    v5 = os_signpost_id_make_with_pointer(v4, self);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v17 = 134217984;
        v18 = [(PXStoryRecipeManager *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_END, v6, "PXStoryRecipeManager.remainingProducers", "Context=%{signpost.telemetry:string2}lu ", &v17, 0xCu);
      }
    }

    v7 = v4;
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v10 = [(PXStoryRecipeManager *)self logContext];
        v11 = PXStoryProducersDescription(self->_remainingProducers);
        v17 = 134218242;
        v18 = v10;
        v19 = 2112;
        v20 = v11;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_EVENT, v9, "PXStoryRecipeManager.remainingProducers", "Context=%{signpost.telemetry:string2}lu Remaining=%{signpost.description:attribute}@", &v17, 0x16u);
      }
    }

    v12 = v7;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = [(PXStoryRecipeManager *)self logContext];
        v16 = PXStoryProducersDescription(self->_remainingProducers);
        v17 = 134218242;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryRecipeManager.remainingProducers", "Context=%{signpost.telemetry:string2}lu Remaining=%{signpost.description:attribute}@", &v17, 0x16u);
      }
    }
  }
}

- (void)setFinalizedProducers:(unint64_t)a3
{
  if (self->_finalizedProducers != a3)
  {
    self->_finalizedProducers = a3;
    [(PXStoryRecipeManager *)self setRemainingProducers:~a3 & 0x1FFF];

    [(PXStoryRecipeManager *)self _invalidateRecipeAttributes];
  }
}

- (BOOL)shouldAvoidSynchronousProductions
{
  v2 = [(PXStoryRecipeManager *)self configuration];
  v3 = ([v2 options] & 0xC) != 0;

  return v3;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_configuration != v5)
  {
    v13 = v5;
    v7 = [(PXStoryConfiguration *)v5 isEqual:?];
    v6 = v13;
    if ((v7 & 1) == 0)
    {
      v8 = [(PXStoryConfiguration *)v13 copy];
      configuration = self->_configuration;
      self->_configuration = v8;

      v10 = [(PXStoryConfiguration *)v13 storyQueue];
      v11 = [(PXStoryRecipeManager *)self storyQueue];

      if (v10 != v11)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"PXStoryRecipeManager.m" lineNumber:446 description:@"queue mismatch"];
      }

      self->_defaultRequestOptions = 0;
      if (([(PXStoryConfiguration *)self->_configuration options]& 1) != 0)
      {
        self->_defaultRequestOptions |= 2uLL;
      }

      [(PXStoryRecipeManager *)self _invalidateInitialStyleProducer];
      [(PXStoryRecipeManager *)self _invalidateAssetCollection];
      [(PXStoryRecipeManager *)self _invalidateAssetsProducer];
      [(PXStoryRecipeManager *)self _invalidatePersistableRecipeProducer];
      [(PXStoryRecipeManager *)self _invalidateCuratedSongsProducer];
      [(PXStoryRecipeManager *)self _invalidateMovieHighlightsProducer];
      [(PXStoryRecipeManager *)self _invalidateDetailedSaliencyProducer];
      [(PXStoryRecipeManager *)self _invalidateChapterCollectionProducer];
      [(PXStoryRecipeManager *)self _invalidateAutoCurationProducer];
      [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      v6 = v13;
    }
  }
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryRecipeManager;
  [(PXStoryRecipeManager *)&v4 didPerformChanges];
  v3 = [(PXStoryRecipeManager *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryRecipeManager *)self storyQueue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = PXStoryRecipeManager;
  [(PXStoryRecipeManager *)&v6 performChanges:v4];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXStoryRecipeManager *)self configuration];
  v7 = [v3 initWithFormat:@"<%@: %p, configuration: %@>", v5, self, v6];

  return v7;
}

- (void)dealloc
{
  [(NSProgress *)self->_assetsProgress cancel];
  [(NSProgress *)self->_persistableRecipeProgress cancel];
  [(NSProgress *)self->_curatedSongsProgress cancel];
  [(NSProgress *)self->_persistedSongProgress cancel];
  [(NSProgress *)self->_initialStyleProgress cancel];
  [(NSProgress *)self->_initialAutoEditDecisionListProgress cancel];
  [(NSProgress *)self->_autoEditStylesProgress cancel];
  [(NSProgress *)self->_autoEditDecisionListsProgress cancel];
  [(NSProgress *)self->_detailedSaliencyProgress cancel];
  [(NSProgress *)self->_chapterCollectionProgress cancel];
  v3.receiver = self;
  v3.super_class = PXStoryRecipeManager;
  [(PXStoryRecipeManager *)&v3 dealloc];
}

- (PXStoryRecipeManager)initWithConfiguration:(id)a3 assetsProducerFactory:(id)a4 persistableRecipeProducerFactory:(id)a5 songsProducerFactory:(id)a6 movieHighlightsProducerFactory:(id)a7 detailedSaliencyProducerFactory:(id)a8 chapterCollectionProducerFactory:(id)a9 stylesProducerFactory:(id)a10 autoEditDecisionListsProducerFactory:(id)a11 autoCurationProducerFactory:(id)a12
{
  v72 = a3;
  obj = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v20;
  v23 = a10;
  v24 = v21;
  v25 = a11;
  v26 = v19;
  v27 = a12;
  v78.receiver = self;
  v78.super_class = PXStoryRecipeManager;
  v28 = [(PXStoryRecipeManager *)&v78 init];
  if (v28)
  {
    v70 = v27;
    v29 = [v72 log];
    [(PXStoryRecipeManager *)v28 setLog:v29];

    -[PXStoryRecipeManager setLogContext:](v28, "setLogContext:", [v72 logContext]);
    v30 = obj;
    if (!obj)
    {
      v30 = objc_alloc_init(PXStoryDefaultAssetsProducerFactory);
    }

    objc_storeStrong(&v28->_assetsProducerFactory, v30);
    if (!obj)
    {
    }

    v31 = v17;
    if (!v17)
    {
      v31 = objc_alloc_init(PXStoryDefaultPersistableRecipeProducerFactory);
    }

    objc_storeStrong(&v28->_persistableRecipeProducerFactory, v31);
    if (!v17)
    {
    }

    v32 = v18;
    if (!v18)
    {
      v32 = objc_alloc_init(PXStoryDefaultSongsProducerFactory);
    }

    objc_storeStrong(&v28->_songsProducerFactory, v32);
    if (!v18)
    {
    }

    v33 = v26;
    if (!v26)
    {
      v33 = objc_alloc_init(PXStoryDefaultMovieHighlightsProducerFactory);
    }

    objc_storeStrong(&v28->_movieHighlightsProducerFactory, v33);
    if (!v26)
    {
    }

    v34 = v22;
    if (!v22)
    {
      v34 = objc_alloc_init(PXStoryDefaultDetailedSaliencyProducerFactory);
    }

    objc_storeStrong(&v28->_detailedSaliencyProducerFactory, v34);
    if (!v22)
    {
    }

    v35 = v24;
    if (!v24)
    {
      v35 = objc_alloc_init(PXStoryDefaultChapterCollectionProducerFactory);
    }

    objc_storeStrong(&v28->_chapterCollectionProducerFactory, v35);
    if (!v24)
    {
    }

    v36 = v23;
    if (!v23)
    {
      v36 = objc_alloc_init(PXStoryDefaultStylesProducerFactory);
    }

    objc_storeStrong(&v28->_stylesProducerFactory, v36);
    if (!v23)
    {
    }

    v37 = v25;
    if (!v25)
    {
      v37 = [[PXStoryDefaultAutoEditDecisionListsProducerFactory alloc] initWithStoryConfiguration:v72];
    }

    objc_storeStrong(&v28->_autoEditDecisionListsProducerFactory, v37);
    if (!v25)
    {
    }

    v38 = v27;
    if (!v27)
    {
      v38 = objc_alloc_init(PXStoryDefaultAutoCurationProducerFactory);
    }

    objc_storeStrong(&v28->_autoCurationProducerFactory, v38);
    if (!v27)
    {
    }

    v39 = objc_alloc_init(PXStoryDefaultSongResourceProducerFactory);
    songResourceProducerFactory = v28->_songResourceProducerFactory;
    v28->_songResourceProducerFactory = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    additionalSongs = v28->_additionalSongs;
    v28->_additionalSongs = v41;

    v43 = objc_alloc_init(MEMORY[0x1E695DF20]);
    additionalAutoEditDecisionListsBySong = v28->_additionalAutoEditDecisionListsBySong;
    v28->_additionalAutoEditDecisionListsBySong = v43;

    v45 = [v72 storyQueue];
    storyQueue = v28->_storyQueue;
    v28->_storyQueue = v45;

    v47 = [v72 errorReporter];
    errorReporter = v28->_errorReporter;
    v28->_errorReporter = v47;

    v49 = MEMORY[0x1E69C0DB8];
    v50 = *(MEMORY[0x1E69C0DB8] + 48);
    *&v28->_overallDurationInfo.specificDurationInfo.preferredDuration.value = *(MEMORY[0x1E69C0DB8] + 32);
    *&v28->_overallDurationInfo.specificDurationInfo.preferredDuration.epoch = v50;
    *&v28->_overallDurationInfo.specificDurationInfo.maximumDuration.timescale = v49[4];
    v51 = v49[1];
    *&v28->_overallDurationInfo.kind = *v49;
    *&v28->_overallDurationInfo.specificDurationInfo.minimumDuration.timescale = v51;
    v52 = objc_alloc_init(PXStoryRecipeAssetEdits);
    recipeAssetEdits = v28->_recipeAssetEdits;
    v28->_recipeAssetEdits = v52;

    v54 = [[off_1E7721940 alloc] initWithTarget:v28 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v28->_updater;
    v28->_updater = v54;

    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateAssetsProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateAssets];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateAssetCollection];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updatePersistableRecipeProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updatePersistableRecipe];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updatePersistedSongProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updatePersistedSong];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateCuratedSongsProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateCuratedSongs];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateAllAssets];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateCuratedAssets];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateKeyAsset];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateMovieHighlightsProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateMovieHighlights];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateDetailedSaliencyProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateDetailedSaliency];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateChapterCollectionProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateChapterCollectionResult];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateChapterCollection];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateAutoCurationProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateCurationLengths];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateOverallDurationInfo];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateManuallyCuratedAssets];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateAutoEditDecisionListsProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateInitialAutoEditDecisionList];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateAutoEditDecisionLists];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateAdditionalAutoEditDecisionLists];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateInitialStyleProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateInitialStyle];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateAutoEditStylesProducer];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateAutoEditStyles];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateProducerMonitors];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateProducersLikelyToKeepUp];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateRecipe];
    [(PXUpdater *)v28->_updater addUpdateSelector:sel__updateRecipeAttributes];
    v56 = [MEMORY[0x1E695DF00] date];
    loadingStartDate = v28->_loadingStartDate;
    v28->_loadingStartDate = v56;

    if (([(PXStoryConfiguration *)v28->_configuration options]& 3) == 0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __305__PXStoryRecipeManager_initWithConfiguration_assetsProducerFactory_persistableRecipeProducerFactory_songsProducerFactory_movieHighlightsProducerFactory_detailedSaliencyProducerFactory_chapterCollectionProducerFactory_stylesProducerFactory_autoEditDecisionListsProducerFactory_autoCurationProducerFactory___block_invoke;
      aBlock[3] = &unk_1E773C780;
      v58 = v28;
      v77 = v58;
      v59 = v25;
      v60 = v23;
      v61 = v24;
      v62 = v22;
      v63 = v26;
      v64 = v18;
      v65 = _Block_copy(aBlock);
      v66 = v65[2]();
      detailedSaliencyProducerMonitor = v58->_detailedSaliencyProducerMonitor;
      v58->_detailedSaliencyProducerMonitor = v66;

      v18 = v64;
      v26 = v63;
      v22 = v62;
      v24 = v61;
      v23 = v60;
      v25 = v59;
    }

    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __305__PXStoryRecipeManager_initWithConfiguration_assetsProducerFactory_persistableRecipeProducerFactory_songsProducerFactory_movieHighlightsProducerFactory_detailedSaliencyProducerFactory_chapterCollectionProducerFactory_stylesProducerFactory_autoEditDecisionListsProducerFactory_autoCurationProducerFactory___block_invoke_2;
    v73[3] = &unk_1E773C7A8;
    v74 = v28;
    v75 = v72;
    [(PXStoryRecipeManager *)v74 performChanges:v73];

    v27 = v70;
  }

  return v28;
}

PXStoryProducerMonitor *__305__PXStoryRecipeManager_initWithConfiguration_assetsProducerFactory_persistableRecipeProducerFactory_songsProducerFactory_movieHighlightsProducerFactory_detailedSaliencyProducerFactory_chapterCollectionProducerFactory_stylesProducerFactory_autoEditDecisionListsProducerFactory_autoCurationProducerFactory___block_invoke(uint64_t a1)
{
  v2 = [[PXStoryProducerMonitor alloc] initWithStoryQueue:*(*(a1 + 32) + 104)];
  [(PXStoryProducerMonitor *)v2 registerChangeObserver:*(a1 + 32) context:ProducerMonitorObservationContext];

  return v2;
}

void __305__PXStoryRecipeManager_initWithConfiguration_assetsProducerFactory_persistableRecipeProducerFactory_songsProducerFactory_movieHighlightsProducerFactory_detailedSaliencyProducerFactory_chapterCollectionProducerFactory_stylesProducerFactory_autoEditDecisionListsProducerFactory_autoCurationProducerFactory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setRemainingProducers:0x1FFFLL];
  [v4 setConfiguration:*(a1 + 40)];
}

- (PXStoryRecipeManager)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 detailedSaliencyProducer];
  if (v5)
  {
    v6 = [[PXStoryPassthroughDetailedSaliencyProducerFactory alloc] initWithDetailedSaliencyProducer:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PXStoryRecipeManager *)self initWithConfiguration:v4 assetsProducerFactory:0 persistableRecipeProducerFactory:0 songsProducerFactory:0 movieHighlightsProducerFactory:0 detailedSaliencyProducerFactory:v6 chapterCollectionProducerFactory:0 stylesProducerFactory:0 autoEditDecisionListsProducerFactory:0 autoCurationProducerFactory:0];

  return v7;
}

- (PXStoryRecipeManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryRecipeManager.m" lineNumber:313 description:{@"%s is not available as initializer", "-[PXStoryRecipeManager init]"}];

  abort();
}

@end