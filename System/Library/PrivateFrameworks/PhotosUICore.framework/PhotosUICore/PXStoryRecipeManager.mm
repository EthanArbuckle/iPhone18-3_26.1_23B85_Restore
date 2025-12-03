@interface PXStoryRecipeManager
- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo;
- (BOOL)shouldAvoidSynchronousProductions;
- (BOOL)wantsAutoEditResults;
- (NSDictionary)resultsByComponent;
- (NSString)description;
- (PXAudioAssetFetchResult)curatedSongs;
- (PXStoryAutoEditMomentsProvider)diagnosticsMomentsProvider;
- (PXStoryRecipeManager)init;
- (PXStoryRecipeManager)initWithConfiguration:(id)configuration;
- (PXStoryRecipeManager)initWithConfiguration:(id)configuration assetsProducerFactory:(id)factory persistableRecipeProducerFactory:(id)producerFactory songsProducerFactory:(id)songsProducerFactory movieHighlightsProducerFactory:(id)highlightsProducerFactory detailedSaliencyProducerFactory:(id)saliencyProducerFactory chapterCollectionProducerFactory:(id)collectionProducerFactory stylesProducerFactory:(id)self0 autoEditDecisionListsProducerFactory:(id)self1 autoCurationProducerFactory:(id)self2;
- (PXStorySongResource)initialSongResource;
- (id)_collectAutoEditDecisionListsBySong;
- (id)_diagnosticTextForGenericHUDAtDisplaySize:(CGSize)size;
- (id)_monitorForProducer:(unint64_t)producer;
- (id)_resultForProducer:(unint64_t)producer;
- (id)_shortDescriptionOfPersistableRecipe:(id)recipe;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (id)fallbackSongResource;
- (void)_applyManuallyCuratedAssets:(id)assets setAsCustomUserAssets:(BOOL)userAssets;
- (void)_handleAdditionalAutoEditDecisionListsResult:(id)result;
- (void)_handleAssetsResult:(id)result;
- (void)_handleAutoEditDecisionListsResult:(id)result;
- (void)_handleAutoEditStylesResult:(id)result;
- (void)_handleChapterCollectionResult:(id)result;
- (void)_handleCuratedAssetsResult:(id)result targetOverallDurationInfo:(id *)info;
- (void)_handleCurationLengthsResult:(id)result;
- (void)_handleDetailedSaliencyResult:(id)result;
- (void)_handleInitialAutoEditDecisionListResult:(id)result;
- (void)_handleInitialStyleResult:(id)result;
- (void)_handleMovieHighlightsResult:(id)result;
- (void)_handlePersistableRecipeResult:(id)result;
- (void)_handlePersistedSongResourceResult:(id)result;
- (void)_handleResult:(id)result forProducer:(unint64_t)producer;
- (void)_handleSongsResult:(id)result;
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
- (void)_storyQueue_handleChangedAssetsDataSource:(id)source;
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
- (void)applyKeyAsset:(id)asset;
- (void)applyManuallyCuratedAssets:(id)assets;
- (void)applyManuallyRemovedAssets:(id)assets;
- (void)applyTargetOverallDurationInfo:(id *)info;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)dealloc;
- (void)didPerformChanges;
- (void)ensureAutoEditDecisionListForSong:(id)song;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setAdditionalAutoEditDecisionListsBySong:(id)song;
- (void)setAllAssets:(id)assets;
- (void)setAssetCollection:(id)collection;
- (void)setAssetsAutoCurationProgress:(id)progress;
- (void)setAssetsDataSource:(id)source;
- (void)setAssetsDataSourceManager:(id)manager;
- (void)setAssetsProducer:(id)producer;
- (void)setAssetsProgress:(id)progress;
- (void)setAssetsResult:(id)result;
- (void)setAutoCurationProducer:(id)producer;
- (void)setAutoEditDecisionListsProducer:(id)producer;
- (void)setAutoEditDecisionListsProgress:(id)progress;
- (void)setAutoEditDecisionListsResult:(id)result;
- (void)setAutoEditStylesProducer:(id)producer;
- (void)setAutoEditStylesProgress:(id)progress;
- (void)setAutoEditStylesResult:(id)result;
- (void)setAvailableCurationLengths:(unint64_t)lengths;
- (void)setChapterCollection:(id)collection;
- (void)setChapterCollectionManager:(id)manager;
- (void)setChapterCollectionProducer:(id)producer;
- (void)setChapterCollectionProgress:(id)progress;
- (void)setChapterCollectionResult:(id)result;
- (void)setConfiguration:(id)configuration;
- (void)setCuratedAssets:(id)assets;
- (void)setCuratedSongsProducer:(id)producer;
- (void)setCuratedSongsProgress:(id)progress;
- (void)setCuratedSongsResult:(id)result;
- (void)setCurationLengthsProgress:(id)progress;
- (void)setCurationLengthsResult:(id)result;
- (void)setDefaultCurationLength:(unint64_t)length;
- (void)setDetailedSaliencyProducer:(id)producer;
- (void)setDetailedSaliencyProgress:(id)progress;
- (void)setDetailedSaliencyResult:(id)result;
- (void)setFinalizedProducers:(unint64_t)producers;
- (void)setHasFinalChapterCollectionBeenProduced:(BOOL)produced;
- (void)setHasFinalDetailedSaliencyBeenProduced:(BOOL)produced;
- (void)setHasInitialPersistableRecipeBeenProduced:(BOOL)produced;
- (void)setHaveFinalMovieHighlightsBeenProduced:(BOOL)produced;
- (void)setInitialAutoEditDecisionListResult:(id)result;
- (void)setInitialStyleProducer:(id)producer;
- (void)setInitialStyleProgress:(id)progress;
- (void)setInitialStyleResult:(id)result;
- (void)setIsRecipeFinal:(BOOL)final;
- (void)setKeyAsset:(id)asset;
- (void)setMovieHighlightsProducer:(id)producer;
- (void)setMovieHighlightsProgress:(id)progress;
- (void)setMovieHighlightsResult:(id)result;
- (void)setOverallDurationInfo:(id *)info;
- (void)setPersistableRecipeProducer:(id)producer;
- (void)setPersistableRecipeProgress:(id)progress;
- (void)setPersistableRecipeResult:(id)result;
- (void)setPersistedRecipeAssetEdits:(id)edits;
- (void)setPersistedSongProducer:(id)producer;
- (void)setPersistedSongProgress:(id)progress;
- (void)setPersistedSongResult:(id)result;
- (void)setProducersLikelyToKeepUp:(unint64_t)up;
- (void)setProducersWithInitialResults:(unint64_t)results;
- (void)setRecipe:(id)recipe;
- (void)setRecipeAssetEdits:(id)edits;
- (void)setRecipeAttributes:(unint64_t)attributes;
- (void)setRemainingProducers:(unint64_t)producers;
- (void)setUntruncatedCuratedAssets:(id)assets;
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

- (void)_storyQueue_handleChangedAssetsDataSource:(id)source
{
  sourceCopy = source;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PXStoryRecipeManager__storyQueue_handleChangedAssetsDataSource___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = sourceCopy;
  v5 = sourceCopy;
  [(PXStoryRecipeManager *)self performChanges:v6];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (AssetsDataSourceManagerObservationContext == context)
  {
    if (changeCopy)
    {
      assetsDataSourceManager = [(PXStoryRecipeManager *)self assetsDataSourceManager];
      dataSource = [assetsDataSourceManager dataSource];

      storyQueue = [(PXStoryRecipeManager *)self storyQueue];
      v14 = MEMORY[0x1E69E96A0];

      if (storyQueue == v14)
      {
        [(PXStoryRecipeManager *)self _storyQueue_handleChangedAssetsDataSource:dataSource];
      }

      else
      {
        storyQueue2 = [(PXStoryRecipeManager *)self storyQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53__PXStoryRecipeManager_observable_didChange_context___block_invoke;
        block[3] = &unk_1E774C620;
        block[4] = self;
        v28 = dataSource;
        dispatch_async(storyQueue2, block);
      }
    }
  }

  else if (ChapterCollectionManagerObservationContext == context)
  {
    if (changeCopy)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __53__PXStoryRecipeManager_observable_didChange_context___block_invoke_2;
      v25 = &unk_1E773CCA8;
      selfCopy = self;
      v10 = &v22;
      goto LABEL_11;
    }
  }

  else
  {
    if (ProducerMonitorObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRecipeManager.m" lineNumber:2541 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (changeCopy)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __53__PXStoryRecipeManager_observable_didChange_context___block_invoke_3;
      v20 = &unk_1E773CCA8;
      selfCopy2 = self;
      v10 = &v17;
LABEL_11:
      [(PXStoryRecipeManager *)self performChanges:v10, v17, v18, v19, v20, selfCopy2, v22, v23, v24, v25, selfCopy];
    }
  }
}

- (id)_collectAutoEditDecisionListsBySong
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  initialAutoEditDecisionListResult = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
  object = [initialAutoEditDecisionListResult object];
  v6 = [object count];

  if (v6)
  {
    initialAutoEditDecisionListResult2 = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
    object2 = [initialAutoEditDecisionListResult2 object];
    firstObject = [object2 firstObject];

    song = [firstObject song];
    if (song)
    {
      [v3 setObject:firstObject forKeyedSubscript:song];
    }
  }

  autoEditDecisionListsResult = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
  object3 = [autoEditDecisionListsResult object];
  v13 = [object3 count];

  if (v13)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    autoEditDecisionListsResult2 = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
    object4 = [autoEditDecisionListsResult2 object];

    v16 = [object4 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(object4);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          song2 = [v20 song];
          if (song2)
          {
            [v3 setObject:v20 forKeyedSubscript:song2];
          }
        }

        v17 = [object4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }
  }

  additionalAutoEditDecisionListsBySong = [(PXStoryRecipeManager *)self additionalAutoEditDecisionListsBySong];
  if ([additionalAutoEditDecisionListsBySong count])
  {
    v23 = [v3 mutableCopy];
    [v23 addEntriesFromDictionary:additionalAutoEditDecisionListsBySong];
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
  selfCopy = self;
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

- (id)_resultForProducer:(unint64_t)producer
{
  v3 = 0;
  if (producer <= 63)
  {
    if (producer > 7)
    {
      switch(producer)
      {
        case 8uLL:
          persistedSongResult = [(PXStoryRecipeManager *)self persistedSongResult];
          break;
        case 0x10uLL:
          persistedSongResult = [(PXStoryRecipeManager *)self curatedSongsResult];
          break;
        case 0x20uLL:
          persistedSongResult = [(PXStoryRecipeManager *)self movieHighlightsResult];
          break;
        default:
          goto LABEL_34;
      }
    }

    else
    {
      switch(producer)
      {
        case 1uLL:
          persistedSongResult = [(PXStoryRecipeManager *)self assetsResult];
          break;
        case 2uLL:
          goto LABEL_31;
        case 4uLL:
          persistedSongResult = [(PXStoryRecipeManager *)self persistableRecipeResult];
          break;
        default:
          goto LABEL_34;
      }
    }

    goto LABEL_30;
  }

  if (producer <= 511)
  {
    switch(producer)
    {
      case 0x40uLL:
        persistedSongResult = [(PXStoryRecipeManager *)self initialStyleResult];
        break;
      case 0x80uLL:
        persistedSongResult = [(PXStoryRecipeManager *)self autoEditStylesResult];
        break;
      case 0x100uLL:
        persistedSongResult = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
        break;
      default:
        goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (producer > 2047)
  {
    if (producer == 2048)
    {
      persistedSongResult = [(PXStoryRecipeManager *)self chapterCollectionResult];
    }

    else
    {
      if (producer != 4096)
      {
        goto LABEL_34;
      }

      persistedSongResult = [(PXStoryRecipeManager *)self detailedSaliencyResult];
    }

    goto LABEL_30;
  }

  if (producer == 512)
  {
    persistedSongResult = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
LABEL_30:
    v3 = persistedSongResult;
    goto LABEL_31;
  }

  if (producer != 1024)
  {
LABEL_34:
    PXAssertGetLog();
  }

LABEL_31:

  return v3;
}

- (id)_monitorForProducer:(unint64_t)producer
{
  if (producer == 4096)
  {
    detailedSaliencyProducerMonitor = [(PXStoryRecipeManager *)self detailedSaliencyProducerMonitor];
  }

  else
  {
    detailedSaliencyProducerMonitor = 0;
  }

  return detailedSaliencyProducerMonitor;
}

- (void)_updateRecipeAttributes
{
  recipeAttributes = [(PXStoryRecipeManager *)self recipeAttributes];
  producersWithInitialResults = [(PXStoryRecipeManager *)self producersWithInitialResults];
  v5 = [(PXStoryRecipeManager *)self producersRequiredForPlayback]& ~producersWithInitialResults;
  producersLikelyToKeepUp = [(PXStoryRecipeManager *)self producersLikelyToKeepUp];
  producersToMonitor = [(PXStoryRecipeManager *)self producersToMonitor];
  v8 = 0;
  if (!v5 && producersLikelyToKeepUp == producersToMonitor)
  {
    loadingReadyForPlaybackDate = [(PXStoryRecipeManager *)self loadingReadyForPlaybackDate];

    if (!loadingReadyForPlaybackDate)
    {
      date = [MEMORY[0x1E695DF00] date];
      [(PXStoryRecipeManager *)self setLoadingReadyForPlaybackDate:date];
    }

    v8 = 1;
  }

  finalizedProducers = [(PXStoryRecipeManager *)self finalizedProducers];
  if ((~(finalizedProducers | [(PXStoryRecipeManager *)self optionalProducers]) & 0x1FFFLL) == 0 || (recipeAttributes & 2) != 0)
  {
    v8 |= 2uLL;
    loadingFinalDate = [(PXStoryRecipeManager *)self loadingFinalDate];

    if (!loadingFinalDate)
    {
      date2 = [MEMORY[0x1E695DF00] date];
      [(PXStoryRecipeManager *)self setLoadingFinalDate:date2];
    }
  }

  [(PXStoryRecipeManager *)self setRecipeAttributes:v8];
}

- (void)_invalidateRecipeAttributes
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateRecipeAttributes];
}

- (void)_updateRecipe
{
  initialStyleResult = [(PXStoryRecipeManager *)self initialStyleResult];
  object = [initialStyleResult object];
  firstObject = [object firstObject];

  autoEditStylesResult = [(PXStoryRecipeManager *)self autoEditStylesResult];
  object2 = [autoEditStylesResult object];

  v25 = object2;
  if (firstObject)
  {
    v27 = [[PXStoryStyleConfigurationList alloc] initWithAutoEditStyleConfigurations:object2 initialStyleConfiguration:firstObject];
  }

  else
  {
    v27 = 0;
  }

  _collectAutoEditDecisionListsBySong = [(PXStoryRecipeManager *)self _collectAutoEditDecisionListsBySong];
  v8 = [PXStoryRecipe alloc];
  assetCollection = [(PXStoryRecipeManager *)self assetCollection];
  keyAsset = [(PXStoryRecipeManager *)self keyAsset];
  curatedAssets = [(PXStoryRecipeManager *)self curatedAssets];
  untruncatedCuratedAssets = [(PXStoryRecipeManager *)self untruncatedCuratedAssets];
  allAssets = [(PXStoryRecipeManager *)self allAssets];
  movieHighlightsResult = [(PXStoryRecipeManager *)self movieHighlightsResult];
  object3 = [movieHighlightsResult object];
  detailedSaliencyResult = [(PXStoryRecipeManager *)self detailedSaliencyResult];
  object4 = [detailedSaliencyResult object];
  chapterCollection = [(PXStoryRecipeManager *)self chapterCollection];
  [(PXStoryRecipeManager *)self overallDurationInfo];
  persistableRecipeResult = [(PXStoryRecipeManager *)self persistableRecipeResult];
  object5 = [persistableRecipeResult object];
  recipe = [object5 recipe];
  initialSongResource = [(PXStoryRecipeManager *)self initialSongResource];
  fallbackSongResource = [(PXStoryRecipeManager *)self fallbackSongResource];
  v13 = [(PXStoryRecipe *)v8 initWithAssetCollection:assetCollection keyAsset:keyAsset curatedAssets:curatedAssets untruncatedCuratedAssets:untruncatedCuratedAssets allAssets:allAssets movieHighlights:object3 detailedSaliency:object4 chapterCollection:chapterCollection overallDurationInfo:v28 styleConfigurationList:v27 sourcePersistableRecipe:recipe initialSongResource:initialSongResource fallbackSongResource:fallbackSongResource autoEditDecisionListsBySong:_collectAutoEditDecisionListsBySong];
  [(PXStoryRecipeManager *)self setRecipe:v13];

  [(PXStoryRecipeManager *)self _invalidateRecipeAttributes];
}

- (void)_invalidateRecipe
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateRecipe];
}

- (void)_updateProducersLikelyToKeepUp
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  producersToMonitor = [(PXStoryRecipeManager *)self producersToMonitor];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __54__PXStoryRecipeManager__updateProducersLikelyToKeepUp__block_invoke;
  v8 = &unk_1E7747118;
  v11 = producersToMonitor;
  v12 = a2;
  selfCopy = self;
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateProducersLikelyToKeepUp];
}

- (void)_updateProducerMonitors
{
  curatedAssets = [(PXStoryRecipeManager *)self curatedAssets];
  v4 = [curatedAssets count];

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

  detailedSaliencyProducerMonitor = [(PXStoryRecipeManager *)self detailedSaliencyProducerMonitor];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__PXStoryRecipeManager__updateProducerMonitors__block_invoke_2;
  v10[3] = &__block_descriptor_36_e41_v16__0___PXStoryMutableProducerMonitor__8l;
  v11 = v8;
  [detailedSaliencyProducerMonitor performChanges:v10];
}

- (void)_invalidateProducerMonitors
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateProducerMonitors];
}

- (void)_handleAutoEditDecisionListsResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXStoryRecipeManager__handleAutoEditDecisionListsResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  curatedSongs = [(PXStoryRecipeManager *)self curatedSongs];
  if (curatedSongs)
  {
    persistedSongResult = [(PXStoryRecipeManager *)self persistedSongResult];
    isDegraded = [persistedSongResult isDegraded];

    if ((isDegraded & 1) == 0)
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateAutoEditDecisionLists];
}

- (void)_handleInitialAutoEditDecisionListResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PXStoryRecipeManager__handleInitialAutoEditDecisionListResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  initialSongResource = [(PXStoryRecipeManager *)self initialSongResource];
  v4 = initialSongResource;
  if (initialSongResource)
  {
    px_storyResourceSongAsset = [initialSongResource px_storyResourceSongAsset];
    flags = [px_storyResourceSongAsset flags];

    if ((flags & 4) == 0)
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateInitialAutoEditDecisionList];
}

- (void)_updateAutoEditDecisionListsProducer
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  if (([configuration options] & 2) == 0)
  {
    curatedAssets = [(PXStoryRecipeManager *)self curatedAssets];
    if (curatedAssets && [(PXStoryRecipeManager *)self haveFinalMovieHighlightsBeenProduced])
    {
      hasFinalChapterCollectionBeenProduced = [(PXStoryRecipeManager *)self hasFinalChapterCollectionBeenProduced];

      if (hasFinalChapterCollectionBeenProduced)
      {
        curatedAssets2 = [(PXStoryRecipeManager *)self curatedAssets];
        movieHighlightsResult = [(PXStoryRecipeManager *)self movieHighlightsResult];
        object = [movieHighlightsResult object];

        chapterCollection = [(PXStoryRecipeManager *)self chapterCollection];
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        [(PXStoryRecipeManager *)self overallDurationInfo];
        autoEditDecisionListsProducerFactory = [(PXStoryRecipeManager *)self autoEditDecisionListsProducerFactory];
        assetCollection = [(PXStoryRecipeManager *)self assetCollection];
        v13[2] = v16;
        v13[3] = v17;
        v13[4] = v18;
        v13[0] = v14;
        v13[1] = v15;
        v11 = [autoEditDecisionListsProducerFactory autoEditDecisionListsProducerForAssetCollection:assetCollection displayAssets:curatedAssets2 movieHighlights:object chapterCollection:chapterCollection targetOverallDurationInfo:v13];

        [(PXStoryRecipeManager *)self setAutoEditDecisionListsProducer:v11];
      }

      return;
    }
  }
}

- (void)_invalidateAutoEditDecisionListsProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateAutoEditDecisionListsProducer];
}

- (void)_handleAutoEditStylesResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PXStoryRecipeManager__handleAutoEditStylesResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateAutoEditStyles];
}

- (void)_updateAutoEditStylesProducer
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  options = [configuration options];

  if ((options & 2) == 0)
  {
    autoEditDecisionListsResult = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
    object = [autoEditDecisionListsResult object];

    if (object)
    {
      stylesProducerFactory = [(PXStoryRecipeManager *)self stylesProducerFactory];
      v7 = [stylesProducerFactory stylesProducerForAutoEditDecisionLists:object];
      [(PXStoryRecipeManager *)self setAutoEditStylesProducer:v7];
    }
  }
}

- (void)_invalidateAutoEditStylesProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateAutoEditStylesProducer];
}

- (void)_handleInitialStyleResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PXStoryRecipeManager__handleInitialStyleResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateInitialStyle];
}

- (void)_updateInitialStyleProducer
{
  if (!-[PXStoryRecipeManager hasInitialPersistableRecipeBeenProduced](self, "hasInitialPersistableRecipeBeenProduced") || (-[PXStoryRecipeManager configuration](self, "configuration"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 options], v3, (v4 & 2) != 0))
  {
    stylesProducerFactory = [(PXStoryRecipeManager *)self stylesProducerFactory];
    configuration = [(PXStoryRecipeManager *)self configuration];
    assetCollection = [configuration assetCollection];
    stylesProducerFactory2 = [stylesProducerFactory initialStyleProducerForAssetCollection:assetCollection];
    [(PXStoryRecipeManager *)self setInitialStyleProducer:stylesProducerFactory2];
  }

  else
  {
    initialAutoEditDecisionListResult = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
    object = [initialAutoEditDecisionListResult object];
    stylesProducerFactory = [object firstObject];

    persistableRecipeResult = [(PXStoryRecipeManager *)self persistableRecipeResult];
    object2 = [persistableRecipeResult object];
    configuration = [object2 recipe];

    assetCollection = [(PXStoryRecipeManager *)self initialSongResource];
    px_storyResourceSongAsset = [assetCollection px_storyResourceSongAsset];
    flags = [px_storyResourceSongAsset flags];

    if ((flags & 4) != 0)
    {
      goto LABEL_7;
    }

    stylesProducerFactory2 = [(PXStoryRecipeManager *)self stylesProducerFactory];
    v14 = [stylesProducerFactory2 initialStyleProducerForPersistableRecipe:configuration songResource:assetCollection autoEditDecisionList:stylesProducerFactory];
    [(PXStoryRecipeManager *)self setInitialStyleProducer:v14];
  }

LABEL_7:
}

- (void)_invalidateInitialStyleProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateInitialStyleProducer];
}

- (void)_updateManuallyCuratedAssets
{
  if (!self->_manuallyCuratedAssets)
  {
    curatedAssets = [(PXStoryRecipeManager *)self curatedAssets];
    if ([curatedAssets count] <= 0)
    {
    }

    else
    {
      [(PXStoryRecipeManager *)self overallDurationInfo];

      if (v6 == 2)
      {
        curatedAssets2 = [(PXStoryRecipeManager *)self curatedAssets];
        manuallyCuratedAssets = self->_manuallyCuratedAssets;
        self->_manuallyCuratedAssets = curatedAssets2;
      }
    }
  }
}

- (void)_invalidateManuallyCuratedAssets
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateManuallyCuratedAssets];
}

- (void)_updateKeyAsset
{
  assetsDataSource = [(PXStoryRecipeManager *)self assetsDataSource];
  keyAsset = [assetsDataSource keyAsset];
  [(PXStoryRecipeManager *)self setKeyAsset:keyAsset];
}

- (void)_invalidateKeyAsset
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateKeyAsset];
}

- (void)_updateCuratedAssets
{
  v12 = *MEMORY[0x1E69E9840];
  assetsDataSource = [(PXStoryRecipeManager *)self assetsDataSource];
  if ([assetsDataSource numberOfSections] < 1)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (assetsDataSource)
  {
    [assetsDataSource firstSectionIndexPath];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v4 = [assetsDataSource assetsInSectionIndexPath:v11];
  v5 = v4;
  if (v4 && ![v4 count])
  {
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      assetCollection = [(PXStoryRecipeManager *)self assetCollection];
      LODWORD(v11[0]) = 138412546;
      *(v11 + 4) = assetsDataSource;
      WORD6(v11[0]) = 2112;
      *(v11 + 14) = assetCollection;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Assets datasource contains a section, but it has 0 curated assets %@ %@", v11, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:
  v8 = [PXStorySettings sharedInstance:v11[0]];
  curatedAssetsLimit = [v8 curatedAssetsLimit];

  if ([v5 count] > curatedAssetsLimit && v5 != 0)
  {
    PXDisplayAssetFetchResultSubfetchResultWithRange();
  }

  [(PXStoryRecipeManager *)self setCuratedAssets:v5];
  [(PXStoryRecipeManager *)self setUntruncatedCuratedAssets:0];
}

- (void)_invalidateCuratedAssets
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateCuratedAssets];
}

- (void)_updateAllAssets
{
  assetsDataSource = [(PXStoryRecipeManager *)self assetsDataSource];
  if ([assetsDataSource numberOfSections] < 1)
  {
    [(PXStoryRecipeManager *)self setAllAssets:0];
  }

  else
  {
    if (assetsDataSource)
    {
      [assetsDataSource firstSectionIndexPath];
    }

    else
    {
      memset(v5, 0, sizeof(v5));
    }

    v4 = [assetsDataSource uncuratedAssetsInSectionIndexPath:v5];
    [(PXStoryRecipeManager *)self setAllAssets:v4];
  }
}

- (void)_invalidateAllAssets
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateAllAssets];
}

- (void)_updateOverallDurationInfo
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  [(PXStoryRecipeManager *)self overallDurationInfo];
  persistableRecipeResult = [(PXStoryRecipeManager *)self persistableRecipeResult];
  object = [persistableRecipeResult object];
  recipe = [object recipe];

  if (recipe)
  {
    [recipe overallDurationInfo];
    v21 = v16;
    v22 = v17;
    v23 = v18;
    v19 = v14;
    v20 = v15;
  }

  curationLengthsResult = [(PXStoryRecipeManager *)self curationLengthsResult];
  if (curationLengthsResult)
  {

    if (v19 <= 1)
    {
      defaultCurationLength = [(PXStoryRecipeManager *)self defaultCurationLength];
      if (defaultCurationLength > 4)
      {
        v8 = 0;
      }

      else
      {
        v8 = qword_1A5382640[defaultCurationLength];
      }

      *&v19 = v8;
    }
  }

  recipeAssetEdits = [(PXStoryRecipeManager *)self recipeAssetEdits];
  v10 = recipeAssetEdits;
  if (recipeAssetEdits)
  {
    [recipeAssetEdits overallDurationInfo];
    if (v14)
    {
      persistedRecipeAssetEdits = [(PXStoryRecipeManager *)self persistedRecipeAssetEdits];
      v12 = persistedRecipeAssetEdits;
      if (v10 == persistedRecipeAssetEdits)
      {
      }

      else
      {
        v13 = [v10 isEqual:persistedRecipeAssetEdits];

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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateOverallDurationInfo];
}

- (void)_updateChapterCollection
{
  chapterCollectionManager = [(PXStoryRecipeManager *)self chapterCollectionManager];
  chapterCollection = [chapterCollectionManager chapterCollection];
  [(PXStoryRecipeManager *)self setChapterCollection:chapterCollection];
}

- (void)_invalidateChapterCollection
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateChapterCollection];
}

- (void)_handleChapterCollectionResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXStoryRecipeManager__handleChapterCollectionResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  curatedAssets = [(PXStoryRecipeManager *)self curatedAssets];
  if (curatedAssets)
  {
    keyAsset = [(PXStoryRecipeManager *)self keyAsset];

    if (keyAsset)
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateChapterCollectionResult];
}

- (void)_updateChapterCollectionProducer
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  options = [configuration options];

  if ((options & 2) == 0)
  {
    chapterCollectionProducerFactory = [(PXStoryRecipeManager *)self chapterCollectionProducerFactory];
    configuration2 = [(PXStoryRecipeManager *)self configuration];
    v6 = [chapterCollectionProducerFactory chapterCollectionProducerForConfiguration:configuration2];
    [(PXStoryRecipeManager *)self setChapterCollectionProducer:v6];
  }
}

- (void)_invalidateChapterCollectionProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateChapterCollectionProducer];
}

- (void)_handleDetailedSaliencyResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PXStoryRecipeManager__handleDetailedSaliencyResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateDetailedSaliency];
}

- (void)_updateDetailedSaliencyProducer
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  options = [configuration options];

  if ((options & 2) == 0)
  {
    detailedSaliencyProducerFactory = [(PXStoryRecipeManager *)self detailedSaliencyProducerFactory];
    configuration2 = [(PXStoryRecipeManager *)self configuration];
    v6 = [detailedSaliencyProducerFactory detailedSaliencyProducerForConfiguration:configuration2];
    [(PXStoryRecipeManager *)self setDetailedSaliencyProducer:v6];
  }
}

- (void)_invalidateDetailedSaliencyProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateDetailedSaliencyProducer];
}

- (void)_handleMovieHighlightsResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXStoryRecipeManager__handleMovieHighlightsResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateMovieHighlights];
}

- (void)_updateMovieHighlightsProducer
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  options = [configuration options];

  if ((options & 2) == 0)
  {
    movieHighlightsProducerFactory = [(PXStoryRecipeManager *)self movieHighlightsProducerFactory];
    configuration2 = [(PXStoryRecipeManager *)self configuration];
    v6 = [movieHighlightsProducerFactory movieHighlightsProducerWithConfiguration:configuration2];
    [(PXStoryRecipeManager *)self setMovieHighlightsProducer:v6];
  }
}

- (void)_invalidateMovieHighlightsProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateMovieHighlightsProducer];
}

- (void)_handleCurationLengthsResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXStoryRecipeManager__handleCurationLengthsResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  allAssets = [(PXStoryRecipeManager *)self allAssets];
  if (allAssets)
  {
    curatedAssets = [(PXStoryRecipeManager *)self curatedAssets];

    if (curatedAssets)
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurationLengths];
}

- (void)_updateAutoCurationProducer
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  options = [configuration options];

  if ((options & 2) == 0)
  {
    autoCurationProducerFactory = [(PXStoryRecipeManager *)self autoCurationProducerFactory];
    configuration2 = [(PXStoryRecipeManager *)self configuration];
    v6 = [autoCurationProducerFactory autoCurationProducerForConfiguration:configuration2];
    [(PXStoryRecipeManager *)self setAutoCurationProducer:v6];
  }
}

- (void)_invalidateAutoCurationProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateAutoCurationProducer];
}

- (void)_handleSongsResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PXStoryRecipeManager__handleSongsResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  persistedSongResult = [(PXStoryRecipeManager *)self persistedSongResult];
  if (persistedSongResult)
  {
    finalizedProducers = [(PXStoryRecipeManager *)self finalizedProducers];

    if ((finalizedProducers & 0x10) == 0)
    {
      initialSongResource = [(PXStoryRecipeManager *)self initialSongResource];
      if (!initialSongResource || (v6 = [(PXStoryRecipeManager *)self wantsAutoEditResults], initialSongResource, v6))
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateCuratedSongs];
}

- (void)_updateCuratedSongsProducer
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  options = [configuration options];

  if ((options & 2) == 0)
  {
    songsProducerFactory = [(PXStoryRecipeManager *)self songsProducerFactory];
    configuration2 = [(PXStoryRecipeManager *)self configuration];
    v6 = [songsProducerFactory songsProducerForConfiguration:configuration2];
    [(PXStoryRecipeManager *)self setCuratedSongsProducer:v6];
  }
}

- (void)_invalidateCuratedSongsProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateCuratedSongsProducer];
}

- (PXStorySongResource)initialSongResource
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  songsConfiguration = [configuration songsConfiguration];
  currentAsset = [songsConfiguration currentAsset];

  if (!currentAsset)
  {
    persistedSongResult = [(PXStoryRecipeManager *)self persistedSongResult];
    currentAsset = [persistedSongResult object];

    if (!currentAsset)
    {
      curatedSongs = [(PXStoryRecipeManager *)self curatedSongs];
      if ([curatedSongs count] < 1)
      {
        currentAsset = 0;
      }

      else
      {
        currentAsset = [curatedSongs firstObject];
      }
    }
  }

  return currentAsset;
}

- (void)_handlePersistedSongResourceResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXStoryRecipeManager__handlePersistedSongResourceResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updatePersistedSong];
}

- (void)_updatePersistedSongProducer
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  options = [configuration options];

  if ((options & 2) == 0)
  {
    songResourceProducerFactory = [(PXStoryRecipeManager *)self songResourceProducerFactory];
    persistableRecipeResult = [(PXStoryRecipeManager *)self persistableRecipeResult];
    object = [persistableRecipeResult object];
    recipe = [object recipe];
    configuration2 = [(PXStoryRecipeManager *)self configuration];
    v9 = [songResourceProducerFactory songResourceProducerForPersistableRecipe:recipe configuration:configuration2];
    [(PXStoryRecipeManager *)self setPersistedSongProducer:v9];
  }
}

- (void)_invalidatePersistedSongProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updatePersistedSongProducer];
}

- (void)_handlePersistableRecipeResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXStoryRecipeManager__handlePersistableRecipeResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updatePersistableRecipe];
}

- (void)_updatePersistableRecipeProducer
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  options = [configuration options];

  if ((options & 2) == 0)
  {
    persistableRecipeProducerFactory = [(PXStoryRecipeManager *)self persistableRecipeProducerFactory];
    configuration2 = [(PXStoryRecipeManager *)self configuration];
    v6 = [persistableRecipeProducerFactory persistableRecipeProducerForConfiguration:configuration2];
    [(PXStoryRecipeManager *)self setPersistableRecipeProducer:v6];
  }
}

- (void)_invalidatePersistableRecipeProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updatePersistableRecipeProducer];
}

- (void)_handleAssetsResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PXStoryRecipeManager__handleAssetsResult___block_invoke;
  v6[3] = &unk_1E773C7A8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
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
  configuration = [(PXStoryRecipeManager *)self configuration];
  v4 = ([configuration options] & 1) == 0;

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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateAssets];
}

- (void)_updateAssetsProducer
{
  assetsProducerFactory = [(PXStoryRecipeManager *)self assetsProducerFactory];
  configuration = [(PXStoryRecipeManager *)self configuration];
  v4 = [assetsProducerFactory assetsProducerForConfiguration:configuration];
  [(PXStoryRecipeManager *)self setAssetsProducer:v4];
}

- (void)_invalidateAssetsProducer
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateAssetsProducer];
}

- (void)_updateAssetCollection
{
  assetsDataSource = [(PXStoryRecipeManager *)self assetsDataSource];
  firstAssetCollection = [assetsDataSource firstAssetCollection];
  [(PXStoryRecipeManager *)self setAssetCollection:firstAssetCollection];
}

- (void)_invalidateAssetCollection
{
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateAssetCollection];
}

- (PXStoryAutoEditMomentsProvider)diagnosticsMomentsProvider
{
  autoEditDecisionListsProducer = [(PXStoryRecipeManager *)self autoEditDecisionListsProducer];
  if (objc_opt_respondsToSelector())
  {
    diagnosticsMomentsProvider = [autoEditDecisionListsProducer diagnosticsMomentsProvider];
  }

  else
  {
    diagnosticsMomentsProvider = 0;
  }

  return diagnosticsMomentsProvider;
}

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type
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
  assetsResult = [(PXStoryRecipeManager *)self assetsResult];
  error = [assetsResult error];
  v4[2](v4, @"Assets", error);

  persistableRecipeResult = [(PXStoryRecipeManager *)self persistableRecipeResult];
  error2 = [persistableRecipeResult error];
  v4[2](v4, @"Persistable Recipe", error2);

  persistedSongResult = [(PXStoryRecipeManager *)self persistedSongResult];
  error3 = [persistedSongResult error];
  v4[2](v4, @"Persisted Song", error3);

  curatedSongsResult = [(PXStoryRecipeManager *)self curatedSongsResult];
  error4 = [curatedSongsResult error];
  v4[2](v4, @"Curated Songs", error4);

  initialStyleResult = [(PXStoryRecipeManager *)self initialStyleResult];
  error5 = [initialStyleResult error];
  v4[2](v4, @"Initial Style", error5);

  autoEditStylesResult = [(PXStoryRecipeManager *)self autoEditStylesResult];
  error6 = [autoEditStylesResult error];
  v4[2](v4, @"AE Styles", error6);

  initialAutoEditDecisionListResult = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
  error7 = [initialAutoEditDecisionListResult error];
  v4[2](v4, @"Initial EDL", error7);

  autoEditDecisionListsResult = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
  error8 = [autoEditDecisionListsResult error];
  v4[2](v4, @"Auto EDL", error8);

  v21 = [v25[5] copy];
  _Block_object_dispose(&v24, 8);

  return v21;
}

- (id)_shortDescriptionOfPersistableRecipe:(id)recipe
{
  recipeCopy = recipe;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PXStoryRecipeManager__shortDescriptionOfPersistableRecipe___block_invoke;
  aBlock[3] = &unk_1E774BE70;
  v5 = v4;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v7 = (v6 + 16);
  (*(v6 + 2))(v6, [recipeCopy numberOfAssets], @"assets");
  currentStyle = [recipeCopy currentStyle];
  v9 = @"Y\n";
  if (!currentStyle)
  {
    v9 = @"N\n";
  }

  [v5 appendFormat:@"Custom Style?: %@", v9];

  (*v7)(v6, [recipeCopy numberOfPresentations], @"presentations");
  autoEditDecisionLists = [recipeCopy autoEditDecisionLists];
  (*v7)(v6, [autoEditDecisionLists count], @"AEDLs");

  if (recipeCopy)
  {
    [recipeCopy overallDurationInfo];
  }

  [v5 appendFormat:@"v%li.%li", objc_msgSend(recipeCopy, "majorVersion"), objc_msgSend(recipeCopy, "minorVersion")];
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

- (id)_diagnosticTextForGenericHUDAtDisplaySize:(CGSize)size
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
  assetsProgress = [(PXStoryRecipeManager *)self assetsProgress];
  assetsResult = [(PXStoryRecipeManager *)self assetsResult];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_3;
  v37[3] = &unk_1E773C930;
  v37[4] = self;
  v6[2](v6, @"Assets", assetsProgress, assetsResult, v37);

  persistableRecipeProgress = [(PXStoryRecipeManager *)self persistableRecipeProgress];
  persistableRecipeResult = [(PXStoryRecipeManager *)self persistableRecipeResult];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __66__PXStoryRecipeManager__diagnosticTextForGenericHUDAtDisplaySize___block_invoke_4;
  v36[3] = &unk_1E773C958;
  v36[4] = self;
  v6[2](v6, @"Previously Persisted Recipe", persistableRecipeProgress, persistableRecipeResult, v36);

  persistedSongProgress = [(PXStoryRecipeManager *)self persistedSongProgress];
  persistedSongResult = [(PXStoryRecipeManager *)self persistedSongResult];
  v6[2](v6, @"Persisted Song", persistedSongProgress, persistedSongResult, __block_literal_global_423);

  initialAutoEditDecisionListProgress = [(PXStoryRecipeManager *)self initialAutoEditDecisionListProgress];
  initialAutoEditDecisionListResult = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
  v6[2](v6, @"Initial EDL", initialAutoEditDecisionListProgress, initialAutoEditDecisionListResult, __block_literal_global_432_137008);

  initialStyleProgress = [(PXStoryRecipeManager *)self initialStyleProgress];
  initialStyleResult = [(PXStoryRecipeManager *)self initialStyleResult];
  v6[2](v6, @"Persisted Style", initialStyleProgress, initialStyleResult, __block_literal_global_444_137010);

  curatedSongsProgress = [(PXStoryRecipeManager *)self curatedSongsProgress];
  curatedSongsResult = [(PXStoryRecipeManager *)self curatedSongsResult];
  v6[2](v6, @"Curated Songs", curatedSongsProgress, curatedSongsResult, __block_literal_global_453);

  autoEditDecisionListsProgress = [(PXStoryRecipeManager *)self autoEditDecisionListsProgress];
  autoEditDecisionListsResult = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
  v6[2](v6, @"Auto EDLs", autoEditDecisionListsProgress, autoEditDecisionListsResult, __block_literal_global_461);

  autoEditStylesProgress = [(PXStoryRecipeManager *)self autoEditStylesProgress];
  autoEditStylesResult = [(PXStoryRecipeManager *)self autoEditStylesResult];
  v6[2](v6, @"Auto Edit Styles", autoEditStylesProgress, autoEditStylesResult, __block_literal_global_469_137013);

  v23 = PXStoryComponentAttributesDescription([(PXStoryRecipeManager *)self recipeAttributes]);
  [v5 appendFormat:@"\nAttributes: %@\n", v23];

  loadingReadyForPlaybackDate = [(PXStoryRecipeManager *)self loadingReadyForPlaybackDate];

  if (loadingReadyForPlaybackDate)
  {
    v25 = _diagnosticTextForGenericHUDAtDisplaySize__productionDurationFormatter;
    loadingReadyForPlaybackDate2 = [(PXStoryRecipeManager *)self loadingReadyForPlaybackDate];
    loadingStartDate = [(PXStoryRecipeManager *)self loadingStartDate];
    [loadingReadyForPlaybackDate2 timeIntervalSinceDate:loadingStartDate];
    v28 = [v25 stringFromTimeInterval:?];
    [v5 appendFormat:@"\nReady For Playback In: %@\n", v28];
  }

  loadingFinalDate = [(PXStoryRecipeManager *)self loadingFinalDate];

  if (loadingFinalDate)
  {
    v30 = _diagnosticTextForGenericHUDAtDisplaySize__productionDurationFormatter;
    loadingFinalDate2 = [(PXStoryRecipeManager *)self loadingFinalDate];
    loadingStartDate2 = [(PXStoryRecipeManager *)self loadingStartDate];
    [loadingFinalDate2 timeIntervalSinceDate:loadingStartDate2];
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

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(PXStoryAutoEditDecisionListsProducer *)self->_autoEditDecisionListsProducer handlesDiagnosticTextForHUDType:?])
  {
    [(PXStoryAutoEditDecisionListsProducer *)self->_autoEditDecisionListsProducer diagnosticTextForHUDType:type displaySize:width, height];
  }

  else
  {
    [(PXStoryRecipeManager *)self _diagnosticTextForGenericHUDAtDisplaySize:width, height];
  }
  v8 = ;

  return v8;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  v58 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v7 = [(PXStoryRecipeManager *)self diagnosticTextForHUDType:3 displaySize:*MEMORY[0x1E695F060], v6];
  if (v7)
  {
    [containerCopy addAttachmentWithText:v7 name:@"recipe_manager_diagnostic"];
  }

  v8 = [(PXStoryRecipeManager *)self diagnosticTextForHUDType:9 displaySize:v5, v6];
  if (v8)
  {
    [containerCopy addAttachmentWithText:v8 name:@"moments_diagnostic"];
  }

  v47 = v8;
  diagnosticsMomentsProvider = [(PXStoryRecipeManager *)self diagnosticsMomentsProvider];
  _diagnosticSwiftCodeForMomentsUnitTest = [diagnosticsMomentsProvider _diagnosticSwiftCodeForMomentsUnitTest];

  if (_diagnosticSwiftCodeForMomentsUnitTest)
  {
    [containerCopy addAttachmentWithSwiftCode:_diagnosticSwiftCodeForMomentsUnitTest name:@"moments_testcase"];
  }

  v11 = [(PXStoryRecipeManager *)self diagnosticTextForHUDType:8 displaySize:v5, v6];
  if (v11)
  {
    [containerCopy addAttachmentWithText:v11 name:@"autoedit_diagnostic"];
  }

  v45 = v11;
  persistableRecipeResult = [(PXStoryRecipeManager *)self persistableRecipeResult];
  object = [persistableRecipeResult object];
  recipe = [object recipe];

  if (recipe)
  {
    v15 = objc_alloc_init(MEMORY[0x1E69C08B0]);
    v16 = [v15 archivedJSONDataWithRecipe:recipe options:3];
    [containerCopy addAttachmentWithData:v16 name:@"recipe.json"];
  }

  v44 = recipe;
  v46 = _diagnosticSwiftCodeForMomentsUnitTest;
  initialAutoEditDecisionListResult = [(PXStoryRecipeManager *)self initialAutoEditDecisionListResult];
  object2 = [initialAutoEditDecisionListResult object];
  firstObject = [object2 firstObject];

  v20 = 0x1E696A000uLL;
  v49 = v7;
  v43 = firstObject;
  if (firstObject)
  {
    v21 = MEMORY[0x1E696AEC0];
    song = [firstObject song];
    [song pace];
    v23 = PFStoryRecipeSongPaceDescription();
    colorGradeCategory = [firstObject colorGradeCategory];
    v25 = [v21 stringWithFormat:@"autoEdit_decisionList_%d_%@_%@", 0, v23, colorGradeCategory];

    diagnosticDescription = [firstObject diagnosticDescription];
    [containerCopy addAttachmentWithText:diagnosticDescription name:v25];

    decisionPapertrail = [firstObject decisionPapertrail];
    [containerCopy addAttachmentWithText:decisionPapertrail name:@"autoedit_papertrail"];

    firstObject = 1;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  selfCopy = self;
  autoEditDecisionListsResult = [(PXStoryRecipeManager *)self autoEditDecisionListsResult];
  object3 = [autoEditDecisionListsResult object];

  obj = object3;
  v52 = [object3 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v52)
  {
    v51 = *v54;
    do
    {
      v30 = 0;
      v31 = firstObject;
      do
      {
        v32 = containerCopy;
        if (*v54 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v53 + 1) + 8 * v30);
        v34 = *(v20 + 3776);
        firstObject = (v31 + 1);
        song2 = [v33 song];
        [song2 pace];
        PFStoryRecipeSongPaceDescription();
        v37 = v36 = v20;
        colorGradeCategory2 = [v33 colorGradeCategory];
        v39 = [v34 stringWithFormat:@"autoEdit_decisionList_%d_%@_%@", v31, v37, colorGradeCategory2];

        v20 = v36;
        diagnosticDescription2 = [v33 diagnosticDescription];
        containerCopy = v32;
        [v32 addAttachmentWithText:diagnosticDescription2 name:v39];

        ++v30;
        v31 = firstObject;
      }

      while (v52 != v30);
      v52 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v52);
  }

  autoEditDecisionListsProducer = [(PXStoryRecipeManager *)selfCopy autoEditDecisionListsProducer];
  [containerCopy addSubprovider:autoEditDecisionListsProducer];

  recipe2 = [(PXStoryRecipeManager *)selfCopy recipe];
  [containerCopy addSubprovider:recipe2];
}

- (void)setAdditionalAutoEditDecisionListsBySong:(id)song
{
  songCopy = song;
  v5 = songCopy;
  if (self->_additionalAutoEditDecisionListsBySong != songCopy)
  {
    v9 = songCopy;
    v6 = [(NSDictionary *)songCopy isEqual:?];
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

- (void)_handleAdditionalAutoEditDecisionListsResult:(id)result
{
  v30 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  additionalAutoEditDecisionListsBySong = [(PXStoryRecipeManager *)self additionalAutoEditDecisionListsBySong];
  v6 = [additionalAutoEditDecisionListsBySong mutableCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = resultCopy;
  object = [resultCopy object];
  v8 = [object countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(object);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        song = [v12 song];
        if (song)
        {
          [v6 setObject:v12 forKeyedSubscript:song];
        }

        else
        {
          v14 = PLStoryGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            selfCopy = self;
            v27 = 2112;
            v28 = v12;
            _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "%@ received additional AEDL with no song! %@", buf, 0x16u);
          }
        }
      }

      v9 = [object countByEnumeratingWithState:&v21 objects:v29 count:16];
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
  additionalSongs = [(PXStoryRecipeManager *)self additionalSongs];
  if ([additionalSongs count])
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateAdditionalAutoEditDecisionLists];
}

- (void)ensureAutoEditDecisionListForSong:(id)song
{
  v8 = *MEMORY[0x1E69E9840];
  songCopy = song;
  additionalSongs = [(PXStoryRecipeManager *)self additionalSongs];
  if (([additionalSongs containsObject:songCopy] & 1) == 0)
  {
    v6 = [additionalSongs setByAddingObject:songCopy];
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

- (void)applyKeyAsset:(id)asset
{
  assetCopy = asset;
  recipeAssetEdits = [(PXStoryRecipeManager *)self recipeAssetEdits];
  v5 = [recipeAssetEdits copyWithKeyAsset:assetCopy];

  [(PXStoryRecipeManager *)self setRecipeAssetEdits:v5];
}

- (void)applyManuallyRemovedAssets:(id)assets
{
  v18 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  curatedAssets = [(PXStoryRecipeManager *)self curatedAssets];
  v6 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(curatedAssets, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = assetsCopy;
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

        v12 = [curatedAssets indexOfObject:{*(*(&v13 + 1) + 8 * v11), v13}];
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

- (void)_applyManuallyCuratedAssets:(id)assets setAsCustomUserAssets:(BOOL)userAssets
{
  userAssetsCopy = userAssets;
  assetsCopy = assets;
  objc_storeStrong(&self->_manuallyCuratedAssets, assets);
  v8 = *MEMORY[0x1E69C0DB0];
  v19 = *(MEMORY[0x1E69C0DB0] + 16);
  v9 = *(MEMORY[0x1E69C0DB0] + 48);
  v20 = *(MEMORY[0x1E69C0DB0] + 32);
  v21 = v9;
  v22 = *(MEMORY[0x1E69C0DB0] + 64);
  v18 = v8;
  recipeAssetEdits = [(PXStoryRecipeManager *)self recipeAssetEdits];
  v17 = 2;
  v11 = [recipeAssetEdits copyWithOverallDurationInfo:&v17 userCuratedAssets:assetsCopy];

  if (userAssetsCopy)
  {
    v12 = [v11 copyWithCustomUserAssets:assetsCopy];

    v11 = v12;
  }

  assetsDataSource = [(PXStoryRecipeManager *)self assetsDataSource];
  keyAsset = [assetsDataSource keyAsset];

  if ([assetsCopy count] >= 1 && keyAsset && (objc_msgSend(assetsCopy, "containsObject:", keyAsset) & 1) == 0)
  {
    v15 = [assetsCopy objectAtIndexedSubscript:0];
    v16 = [v11 copyWithKeyAsset:v15];

    v11 = v16;
  }

  [(PXStoryRecipeManager *)self setRecipeAssetEdits:v11];
}

- (void)applyManuallyCuratedAssets:(id)assets
{
  assetsCopy = assets;
  recipeAssetEdits = [(PXStoryRecipeManager *)self recipeAssetEdits];
  customUserAssetsEdit = [recipeAssetEdits customUserAssetsEdit];
  assets = [customUserAssetsEdit assets];
  v7 = [assets count] > 0;

  [(PXStoryRecipeManager *)self _applyManuallyCuratedAssets:assetsCopy setAsCustomUserAssets:v7];
}

- (void)_handleCuratedAssetsResult:(id)result targetOverallDurationInfo:(id *)info
{
  resultCopy = result;
  object = [resultCopy object];

  if (object)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__PXStoryRecipeManager__handleCuratedAssetsResult_targetOverallDurationInfo___block_invoke;
    v21[3] = &unk_1E773C868;
    v21[4] = self;
    v8 = *&info->var1.var1.var3;
    v25 = *&info->var1.var1.var0;
    v26 = v8;
    v27 = *&info->var1.var2.var1;
    v9 = *&info->var1.var0.var1;
    v23 = *&info->var0;
    v24 = v9;
    v22 = resultCopy;
    [(PXStoryRecipeManager *)self performChanges:v21];
  }

  else
  {
    error = [resultCopy error];
    v17 = error;
    if (error)
    {
      v18 = error;
    }

    else
    {
      v18 = PXStoryErrorCreateWithCodeDebugFormat(16, @"Target Duration Curation Failed", v11, v12, v13, v14, v15, v16, v21[0]);
    }

    v19 = v18;

    errorReporter = [(PXStoryRecipeManager *)self errorReporter];
    [errorReporter setError:v19 forComponent:@"TargetDurationCuration"];
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

- (void)setAssetsAutoCurationProgress:(id)progress
{
  progressCopy = progress;
  assetsAutoCurationProgress = self->_assetsAutoCurationProgress;
  if (assetsAutoCurationProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)assetsAutoCurationProgress cancel];
    objc_storeStrong(&self->_assetsAutoCurationProgress, progress);
    progressCopy = v7;
  }
}

- (void)applyTargetOverallDurationInfo:(id *)info
{
  v12 = *MEMORY[0x1E69E9840];
  var0 = info->var0;
  if (!info->var0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRecipeManager.m" lineNumber:1183 description:{@"Invalid parameter not satisfying: %@", @"targetOverallDurationInfo.kind != PFStoryOverallDurationKindUndefined"}];

    var0 = info->var0;
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

  manuallyCuratedAssets = [(PXStoryRecipeManager *)self manuallyCuratedAssets];

  if (!manuallyCuratedAssets)
  {
    PXAssertGetLog();
  }

  manuallyCuratedAssets2 = [(PXStoryRecipeManager *)self manuallyCuratedAssets];
  [(PXStoryRecipeManager *)self applyCustomUserAssets:manuallyCuratedAssets2];
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

- (void)setPersistedRecipeAssetEdits:(id)edits
{
  editsCopy = edits;
  persistedRecipeAssetEdits = self->_persistedRecipeAssetEdits;
  if (persistedRecipeAssetEdits != editsCopy && ![(PXStoryRecipeAssetEdits *)persistedRecipeAssetEdits isEqual:editsCopy])
  {
    userCuratedAssets = [(PXStoryRecipeAssetEdits *)self->_persistedRecipeAssetEdits userCuratedAssets];
    userCuratedAssets2 = [(PXStoryRecipeAssetEdits *)editsCopy userCuratedAssets];
    ResultsEqual = _areFetchResultsEqual(userCuratedAssets, userCuratedAssets2);

    if (ResultsEqual)
    {
      keyAsset = [(PXStoryRecipeAssetEdits *)self->_persistedRecipeAssetEdits keyAsset];
      keyAsset2 = [(PXStoryRecipeAssetEdits *)editsCopy keyAsset];
      v12 = keyAsset2;
      if (keyAsset == keyAsset2)
      {

        objc_storeStrong(&self->_persistedRecipeAssetEdits, edits);
        [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
        goto LABEL_10;
      }

      v13 = [keyAsset isEqual:keyAsset2];

      objc_storeStrong(&self->_persistedRecipeAssetEdits, edits);
      [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      objc_storeStrong(&self->_persistedRecipeAssetEdits, edits);
      [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
    }

    assetsDataSourceManager = [(PXStoryRecipeManager *)self assetsDataSourceManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__PXStoryRecipeManager_setPersistedRecipeAssetEdits___block_invoke;
    v15[3] = &unk_1E774A6B8;
    v15[4] = self;
    [assetsDataSourceManager performChanges:v15];
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

- (void)setRecipeAssetEdits:(id)edits
{
  v22 = *MEMORY[0x1E69E9840];
  editsCopy = edits;
  recipeAssetEdits = self->_recipeAssetEdits;
  if (recipeAssetEdits != editsCopy && ![(PXStoryRecipeAssetEdits *)recipeAssetEdits isEqual:editsCopy])
  {
    objc_storeStrong(&self->_recipeAssetEdits, edits);
    [(PXStoryRecipeManager *)self signalChange:64];
    v7 = [(PXStoryRecipeManager *)self log];
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v18 = 134217984;
        logContext = [(PXStoryRecipeManager *)self logContext];
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
        logContext2 = [(PXStoryRecipeManager *)self logContext];
        v18 = 134218242;
        logContext = logContext2;
        v20 = 2114;
        v21 = editsCopy;
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
        logContext3 = [(PXStoryRecipeManager *)self logContext];
        v18 = 134218242;
        logContext = logContext3;
        v20 = 2114;
        v21 = editsCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PXStoryRecipeManagerChangedAssetEdits", "Context=%{signpost.telemetry:string2}lu %{public}@", &v18, 0x16u);
      }
    }

    [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
  }
}

- (void)_handleResult:(id)result forProducer:(unint64_t)producer
{
  v19[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  [(PXStoryRecipeManager *)self setProducersWithInitialResults:[(PXStoryRecipeManager *)self producersWithInitialResults]| producer];
  if ([resultCopy isDegraded])
  {
    v7 = [(PXStoryRecipeManager *)self finalizedProducers]& ~producer;
  }

  else
  {
    v7 = [(PXStoryRecipeManager *)self finalizedProducers]| producer;
  }

  [(PXStoryRecipeManager *)self setFinalizedProducers:v7];
  error = [resultCopy error];
  v9 = error;
  if (error)
  {
    v10 = MEMORY[0x1E6991F28];
    v18 = *MEMORY[0x1E6991E28];
    v19[0] = error;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v10 sendEvent:@"com.apple.photos.memory.interactiveMemoryRecipeErrorOccurred" withPayload:v11];
  }

  errorReporter = [(PXStoryRecipeManager *)self errorReporter];
  v13 = PXStoryProducerName(producer);
  [errorReporter setError:v9 forComponent:v13];

  v14 = [(PXStoryRecipeManager *)self _monitorForProducer:producer];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__PXStoryRecipeManager__handleResult_forProducer___block_invoke;
  v16[3] = &unk_1E773C7F0;
  v17 = resultCopy;
  v15 = resultCopy;
  [v14 performChanges:v16];
}

- (void)setRecipeAttributes:(unint64_t)attributes
{
  v24 = *MEMORY[0x1E69E9840];
  recipeAttributes = self->_recipeAttributes;
  if (recipeAttributes == attributes)
  {
    return;
  }

  attributesCopy = attributes;
  if ((recipeAttributes & 2) == 0 || !(((self->_recipeAttributes & 1) == 0) | attributes & 1))
  {
    if ((((self->_recipeAttributes & 2) == 0) & (((self->_recipeAttributes & 1) == 0) | attributes)) != 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    PXAssertGetLog();
  }

  if ((attributes & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  self->_recipeAttributes = attributes;
  [(PXStoryRecipeManager *)self signalChange:4];
  v6 = [(PXStoryRecipeManager *)self log];
  v7 = os_signpost_id_make_with_pointer(v6, self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      logContext = [(PXStoryRecipeManager *)self logContext];
      v20 = 134217984;
      v21 = logContext;
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
      logContext2 = [(PXStoryRecipeManager *)self logContext];
      v14 = PXStoryComponentAttributesDescription(attributesCopy);
      v20 = 134218242;
      v21 = logContext2;
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
      logContext3 = [(PXStoryRecipeManager *)self logContext];
      v19 = PXStoryComponentAttributesDescription(attributesCopy);
      v20 = 134218242;
      v21 = logContext3;
      v22 = 2114;
      v23 = v19;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PXStoryRecipeManagerChangedRecipeAttributes", "Context=%{signpost.telemetry:string2}lu %{public}@", &v20, 0x16u);
    }
  }

  [(PXStoryRecipeManager *)self setIsRecipeFinal:(self->_recipeAttributes >> 1) & 1];
}

- (void)setIsRecipeFinal:(BOOL)final
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isRecipeFinal != final)
  {
    finalCopy = final;
    self->_isRecipeFinal = final;
    [(PXStoryRecipeManager *)self signalChange:2];
    v5 = [(PXStoryRecipeManager *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryRecipeManager *)self logContext];
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
        logContext2 = [(PXStoryRecipeManager *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = finalCopy;
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
        logContext3 = [(PXStoryRecipeManager *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = finalCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryRecipeManagerChangedIsRecipeFinal", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }
  }
}

- (void)setRecipe:(id)recipe
{
  v28 = *MEMORY[0x1E69E9840];
  recipeCopy = recipe;
  v6 = recipeCopy;
  if (self->_recipe != recipeCopy && ([(PXStoryRecipe *)recipeCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_recipe, recipe);
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
        logContext = [(PXStoryRecipeManager *)self logContext];
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
        logContext2 = [(PXStoryRecipeManager *)self logContext];
        curatedAssets = [(PXStoryRecipe *)v6 curatedAssets];
        v15 = [curatedAssets count];
        v22 = 134218496;
        logContext = logContext2;
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
        logContext3 = [(PXStoryRecipeManager *)self logContext];
        curatedAssets2 = [(PXStoryRecipe *)v6 curatedAssets];
        v21 = [curatedAssets2 count];
        v22 = 134218496;
        logContext = logContext3;
        v24 = 2048;
        v25 = v6;
        v26 = 2048;
        v27 = v21;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PXStoryRecipeManagerChangedRecipe", "Context=%{signpost.telemetry:string2}lu %p curatedAssets:%ld", &v22, 0x20u);
      }
    }
  }
}

- (void)setAutoEditStylesResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_autoEditStylesResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_autoEditStylesResult, result);
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:128];
      v6 = v8;
    }
  }
}

- (void)setAutoEditStylesProgress:(id)progress
{
  progressCopy = progress;
  autoEditStylesProgress = self->_autoEditStylesProgress;
  if (autoEditStylesProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)autoEditStylesProgress cancel];
    objc_storeStrong(&self->_autoEditStylesProgress, progress);
    progressCopy = v7;
  }
}

- (void)setAutoEditStylesProducer:(id)producer
{
  producerCopy = producer;
  v6 = producerCopy;
  if (self->_autoEditStylesProducer != producerCopy)
  {
    v8 = producerCopy;
    v7 = [(PXStoryStylesProducer *)producerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_autoEditStylesProducer, producer);
      [(PXStoryRecipeManager *)self _updateAutoEditStyles];
      v6 = v8;
    }
  }
}

- (void)setAutoEditDecisionListsResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_autoEditDecisionListsResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_autoEditDecisionListsResult, result);
      [(PXStoryRecipeManager *)self _invalidateAutoEditStylesProducer];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:512];
      v6 = v8;
    }
  }
}

- (void)setAutoEditDecisionListsProgress:(id)progress
{
  progressCopy = progress;
  autoEditDecisionListsProgress = self->_autoEditDecisionListsProgress;
  if (autoEditDecisionListsProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)autoEditDecisionListsProgress cancel];
    objc_storeStrong(&self->_autoEditDecisionListsProgress, progress);
    progressCopy = v7;
  }
}

- (void)setAutoEditDecisionListsProducer:(id)producer
{
  producerCopy = producer;
  v6 = producerCopy;
  if (self->_autoEditDecisionListsProducer != producerCopy)
  {
    v8 = producerCopy;
    v7 = [(PXStoryAutoEditDecisionListsProducer *)producerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_autoEditDecisionListsProducer, producer);
      [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionLists];
      [(PXStoryRecipeManager *)self _invalidateAdditionalAutoEditDecisionLists];
      [(PXStoryRecipeManager *)self _invalidateInitialAutoEditDecisionList];
      v6 = v8;
    }
  }
}

- (void)setInitialStyleResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_initialStyleResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_initialStyleResult, result);
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:64];
      v6 = v8;
    }
  }
}

- (void)setInitialStyleProgress:(id)progress
{
  progressCopy = progress;
  initialStyleProgress = self->_initialStyleProgress;
  if (initialStyleProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)initialStyleProgress cancel];
    objc_storeStrong(&self->_initialStyleProgress, progress);
    progressCopy = v7;
  }
}

- (void)setInitialStyleProducer:(id)producer
{
  producerCopy = producer;
  v6 = producerCopy;
  if (self->_initialStyleProducer != producerCopy)
  {
    v8 = producerCopy;
    v7 = [(PXStoryStylesProducer *)producerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_initialStyleProducer, producer);
      [(PXStoryRecipeManager *)self setHasInitialStyleBeenProduced:0];
      [(PXStoryRecipeManager *)self _invalidateInitialStyle];
      v6 = v8;
    }
  }
}

- (void)setKeyAsset:(id)asset
{
  assetCopy = asset;
  if (self->_keyAsset != assetCopy)
  {
    v6 = assetCopy;
    objc_storeStrong(&self->_keyAsset, asset);
    [(PXStoryRecipeManager *)self _invalidateChapterCollectionResult];
    [(PXStoryRecipeManager *)self _invalidateRecipe];
    assetCopy = v6;
  }
}

- (void)setAllAssets:(id)assets
{
  assetsCopy = assets;
  if ((_areFetchResultsEqual(assetsCopy, self->_allAssets) & 1) == 0)
  {
    objc_storeStrong(&self->_allAssets, assets);
    cachedAssetsCountHUDDescription = self->_cachedAssetsCountHUDDescription;
    self->_cachedAssetsCountHUDDescription = 0;

    [(PXStoryRecipeManager *)self _invalidateRecipe];
    [(PXStoryRecipeManager *)self _invalidateCurationLengths];
  }
}

- (void)setUntruncatedCuratedAssets:(id)assets
{
  assetsCopy = assets;
  if ((_areFetchResultsEqual(assetsCopy, self->_untruncatedCuratedAssets) & 1) == 0)
  {
    objc_storeStrong(&self->_untruncatedCuratedAssets, assets);
    [(PXStoryRecipeManager *)self _invalidateRecipe];
  }
}

- (void)setCuratedAssets:(id)assets
{
  v14 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ((_areFetchResultsEqual(assetsCopy, self->_curatedAssets) & 1) == 0)
  {
    objc_storeStrong(&self->_curatedAssets, assets);
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
        logContext = [(PXStoryRecipeManager *)self logContext];
        v12 = 2048;
        v13 = [assetsCopy count];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_EVENT, v9, "PXStoryRecipeManagerSetCuratedAssets", "Context=%{signpost.telemetry:string2}lu curatedAssets:%ld", &v10, 0x16u);
      }
    }
  }
}

- (void)setAvailableCurationLengths:(unint64_t)lengths
{
  if (self->_availableCurationLengths != lengths)
  {
    self->_availableCurationLengths = lengths;
    [(PXStoryRecipeManager *)self signalChange:32];
  }
}

- (void)setDefaultCurationLength:(unint64_t)length
{
  if (self->_defaultCurationLength != length)
  {
    self->_defaultCurationLength = length;
    [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];

    [(PXStoryRecipeManager *)self signalChange:32];
  }
}

- (void)setCurationLengthsResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_curationLengthsResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_curationLengthsResult, result);
      [(PXStoryRecipeManager *)self _invalidateOverallDurationInfo];
      v6 = v8;
    }
  }
}

- (void)setAutoCurationProducer:(id)producer
{
  producerCopy = producer;
  v6 = producerCopy;
  if (self->_autoCurationProducer != producerCopy)
  {
    v8 = producerCopy;
    v7 = [(PXStoryAutoCurationProducer *)producerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_autoCurationProducer, producer);
      [(PXStoryRecipeManager *)self _invalidateCurationLengths];
      v6 = v8;
    }
  }
}

- (void)setCurationLengthsProgress:(id)progress
{
  progressCopy = progress;
  curationLengthsProgress = self->_curationLengthsProgress;
  if (curationLengthsProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)curationLengthsProgress cancel];
    objc_storeStrong(&self->_curationLengthsProgress, progress);
    progressCopy = v7;
  }
}

- (void)setOverallDurationInfo:(id *)info
{
  v35 = *MEMORY[0x1E69E9840];
  p_overallDurationInfo = &self->_overallDurationInfo;
  if (info->var0 != self->_overallDurationInfo.kind || (v6 = *&info->var1.var0.var3, v7 = *&info->var1.var2.var0, *&buf[32] = *&info->var1.var1.var1, v33 = v7, *&v34 = info->var1.var2.var3, *buf = *&info->var1.var0.var0, *&buf[16] = v6, specificDurationInfo = self->_overallDurationInfo.specificDurationInfo, time1 = info->var1.var0, time2 = self->_overallDurationInfo.specificDurationInfo.minimumDuration, CMTimeCompare(&time1, &time2)) || (time1 = *&buf[24], time2 = specificDurationInfo.preferredDuration, CMTimeCompare(&time1, &time2)) || (*&time1.value = v33, time1.epoch = v34, time2 = specificDurationInfo.maximumDuration, CMTimeCompare(&time1, &time2)))
  {
    *&p_overallDurationInfo->kind = *&info->var0;
    v8 = *&info->var1.var0.var1;
    v9 = *&info->var1.var1.var0;
    v10 = *&info->var1.var2.var1;
    *&p_overallDurationInfo->specificDurationInfo.preferredDuration.epoch = *&info->var1.var1.var3;
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
        logContext = [(PXStoryRecipeManager *)self logContext];
        *buf = 134217984;
        *&buf[4] = logContext;
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
        logContext2 = [(PXStoryRecipeManager *)self logContext];
        v19 = *&info->var1.var1.var3;
        *&buf[32] = *&info->var1.var1.var0;
        v33 = v19;
        v34 = *&info->var1.var2.var1;
        v20 = *&info->var1.var0.var1;
        *buf = *&info->var0;
        *&buf[16] = v20;
        v21 = PFStoryOverallDurationInfoDescription();
        *buf = 134218242;
        *&buf[4] = logContext2;
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
        logContext3 = [(PXStoryRecipeManager *)self logContext];
        v26 = *&info->var1.var1.var3;
        *&buf[32] = *&info->var1.var1.var0;
        v33 = v26;
        v34 = *&info->var1.var2.var1;
        v27 = *&info->var1.var0.var1;
        *buf = *&info->var0;
        *&buf[16] = v27;
        v28 = PFStoryOverallDurationInfoDescription();
        *buf = 134218242;
        *&buf[4] = logContext3;
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

- (void)setChapterCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_chapterCollection != collectionCopy)
  {
    v6 = collectionCopy;
    objc_storeStrong(&self->_chapterCollection, collection);
    [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
    [(PXStoryRecipeManager *)self _invalidateRecipe];
    collectionCopy = v6;
  }
}

- (void)setChapterCollectionManager:(id)manager
{
  managerCopy = manager;
  chapterCollectionManager = self->_chapterCollectionManager;
  if (chapterCollectionManager != managerCopy)
  {
    v7 = managerCopy;
    [(PXStoryChapterCollectionManager *)chapterCollectionManager unregisterChangeObserver:self context:ChapterCollectionManagerObservationContext];
    objc_storeStrong(&self->_chapterCollectionManager, manager);
    [(PXStoryChapterCollectionManager *)self->_chapterCollectionManager registerChangeObserver:self context:ChapterCollectionManagerObservationContext];
    [(PXStoryRecipeManager *)self _invalidateChapterCollection];
    managerCopy = v7;
  }
}

- (void)setChapterCollectionResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_chapterCollectionResult != resultCopy)
  {
    v9 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v9;
    if (!v7)
    {
      objc_storeStrong(&self->_chapterCollectionResult, result);
      [(PXStoryRecipeManager *)self _handleResult:v9 forProducer:2048];
      object = [(PXStoryProducerResult *)self->_chapterCollectionResult object];
      [(PXStoryRecipeManager *)self setChapterCollectionManager:object];

      v6 = v9;
    }
  }
}

- (void)setHasFinalChapterCollectionBeenProduced:(BOOL)produced
{
  if (self->_hasFinalChapterCollectionBeenProduced != produced)
  {
    self->_hasFinalChapterCollectionBeenProduced = produced;
    [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
  }
}

- (void)setChapterCollectionProgress:(id)progress
{
  progressCopy = progress;
  chapterCollectionProgress = self->_chapterCollectionProgress;
  if (chapterCollectionProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)chapterCollectionProgress cancel];
    objc_storeStrong(&self->_chapterCollectionProgress, progress);
    progressCopy = v7;
  }
}

- (void)setChapterCollectionProducer:(id)producer
{
  producerCopy = producer;
  v6 = producerCopy;
  if (self->_chapterCollectionProducer != producerCopy)
  {
    v8 = producerCopy;
    v7 = [(PXStoryChapterCollectionProducer *)producerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_chapterCollectionProducer, producer);
      [(PXStoryRecipeManager *)self setHasFinalChapterCollectionBeenProduced:0];
      [(PXStoryRecipeManager *)self _invalidateChapterCollectionResult];
      v6 = v8;
    }
  }
}

- (void)setDetailedSaliencyResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_detailedSaliencyResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_detailedSaliencyResult, result);
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:4096];
      v6 = v8;
    }
  }
}

- (void)setHasFinalDetailedSaliencyBeenProduced:(BOOL)produced
{
  if (self->_hasFinalDetailedSaliencyBeenProduced != produced)
  {
    self->_hasFinalDetailedSaliencyBeenProduced = produced;
    [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
  }
}

- (void)setDetailedSaliencyProgress:(id)progress
{
  progressCopy = progress;
  detailedSaliencyProgress = self->_detailedSaliencyProgress;
  if (detailedSaliencyProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)detailedSaliencyProgress cancel];
    objc_storeStrong(&self->_detailedSaliencyProgress, progress);
    progressCopy = v7;
  }
}

- (void)setDetailedSaliencyProducer:(id)producer
{
  producerCopy = producer;
  v6 = producerCopy;
  if (self->_detailedSaliencyProducer != producerCopy)
  {
    v9 = producerCopy;
    v7 = [(PXStoryDetailedSaliencyProducer *)producerCopy isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_detailedSaliencyProducer, producer);
      [(PXStoryRecipeManager *)self setHasFinalDetailedSaliencyBeenProduced:0];
      detailedSaliencyProducerMonitor = [(PXStoryRecipeManager *)self detailedSaliencyProducerMonitor];
      [detailedSaliencyProducerMonitor performChanges:&__block_literal_global_137222];

      [(PXStoryRecipeManager *)self _invalidateDetailedSaliency];
      v6 = v9;
    }
  }
}

- (void)setMovieHighlightsResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_movieHighlightsResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_movieHighlightsResult, result);
      [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:32];
      v6 = v8;
    }
  }
}

- (void)setHaveFinalMovieHighlightsBeenProduced:(BOOL)produced
{
  if (self->_haveFinalMovieHighlightsBeenProduced != produced)
  {
    self->_haveFinalMovieHighlightsBeenProduced = produced;
    [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionListsProducer];
  }
}

- (void)setMovieHighlightsProgress:(id)progress
{
  progressCopy = progress;
  movieHighlightsProgress = self->_movieHighlightsProgress;
  if (movieHighlightsProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)movieHighlightsProgress cancel];
    objc_storeStrong(&self->_movieHighlightsProgress, progress);
    progressCopy = v7;
  }
}

- (void)setMovieHighlightsProducer:(id)producer
{
  producerCopy = producer;
  v6 = producerCopy;
  if (self->_movieHighlightsProducer != producerCopy)
  {
    v8 = producerCopy;
    v7 = [(PXStoryMovieHighlightsProducer *)producerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_movieHighlightsProducer, producer);
      [(PXStoryRecipeManager *)self setHaveFinalMovieHighlightsBeenProduced:0];
      [(PXStoryRecipeManager *)self _invalidateMovieHighlights];
      v6 = v8;
    }
  }
}

- (id)fallbackSongResource
{
  curatedSongsResult = [(PXStoryRecipeManager *)self curatedSongsResult];
  object = [curatedSongsResult object];
  fallbackCuratedAssets = [object fallbackCuratedAssets];

  if ([fallbackCuratedAssets count] < 1)
  {
    firstObject = 0;
  }

  else
  {
    firstObject = [fallbackCuratedAssets firstObject];
  }

  return firstObject;
}

- (PXAudioAssetFetchResult)curatedSongs
{
  curatedSongsResult = [(PXStoryRecipeManager *)self curatedSongsResult];
  object = [curatedSongsResult object];
  curatedAudioAssets = [object curatedAudioAssets];

  return curatedAudioAssets;
}

- (void)setCuratedSongsResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_curatedSongsResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_curatedSongsResult, result);
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

- (void)setCuratedSongsProgress:(id)progress
{
  progressCopy = progress;
  if (self->_curatedSongsProgress != progressCopy)
  {
    v6 = progressCopy;
    objc_storeStrong(&self->_curatedSongsProgress, progress);
    progressCopy = v6;
  }
}

- (void)setCuratedSongsProducer:(id)producer
{
  producerCopy = producer;
  v6 = producerCopy;
  if (self->_curatedSongsProducer != producerCopy)
  {
    v8 = producerCopy;
    v7 = [(PXStorySongsProducer *)producerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_curatedSongsProducer, producer);
      [(PXStorySongsProducer *)v8 setLogContext:[(PXStoryRecipeManager *)self logContext]];
      [(PXStoryRecipeManager *)self _invalidateCuratedSongs];
      v6 = v8;
    }
  }
}

- (void)setInitialAutoEditDecisionListResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_initialAutoEditDecisionListResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:256];
      objc_storeStrong(&self->_initialAutoEditDecisionListResult, result);
      [(PXStoryRecipeManager *)self _invalidateInitialStyleProducer];
      v6 = v8;
    }
  }
}

- (void)setPersistedSongProgress:(id)progress
{
  progressCopy = progress;
  persistedSongProgress = self->_persistedSongProgress;
  if (persistedSongProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)persistedSongProgress cancel];
    objc_storeStrong(&self->_persistedSongProgress, progress);
    progressCopy = v7;
  }
}

- (void)setPersistedSongResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_persistedSongResult != resultCopy)
  {
    v8 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      [(PXStoryRecipeManager *)self _handleResult:v8 forProducer:8];
      objc_storeStrong(&self->_persistedSongResult, result);
      [(PXStoryRecipeManager *)self _invalidateAutoEditDecisionLists];
      [(PXStoryRecipeManager *)self _invalidateCuratedSongs];
      [(PXStoryRecipeManager *)self _invalidateRecipe];
      [(PXStoryRecipeManager *)self _invalidateInitialAutoEditDecisionList];
      [(PXStoryRecipeManager *)self _invalidateInitialStyleProducer];
      v6 = v8;
    }
  }
}

- (void)setPersistedSongProducer:(id)producer
{
  producerCopy = producer;
  v5 = self->_persistedSongProgress;
  v6 = v5;
  if (v5 == producerCopy)
  {
  }

  else
  {
    v7 = [(NSProgress *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_persistedSongProducer, producer);
      [(PXStoryRecipeManager *)self _invalidatePersistedSong];
    }
  }
}

- (void)setPersistableRecipeResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_persistableRecipeResult != resultCopy && ![(PXStoryProducerResult *)resultCopy isEqual:?])
  {
    objc_storeStrong(&self->_persistableRecipeResult, result);
    object = [(PXStoryProducerResult *)v6 object];
    miroInfo = [object miroInfo];

    if ([miroInfo containsAnyData])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__PXStoryRecipeManager_setPersistableRecipeResult___block_invoke;
      v9[3] = &unk_1E773CCA8;
      v10 = miroInfo;
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

- (void)setHasInitialPersistableRecipeBeenProduced:(BOOL)produced
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_hasInitialPersistableRecipeBeenProduced != produced)
  {
    producedCopy = produced;
    self->_hasInitialPersistableRecipeBeenProduced = produced;
    v5 = [(PXStoryRecipeManager *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v16 = 134217984;
        logContext = [(PXStoryRecipeManager *)self logContext];
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
        logContext2 = [(PXStoryRecipeManager *)self logContext];
        v16 = 134218240;
        logContext = logContext2;
        v18 = 1024;
        v19 = producedCopy;
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
        logContext3 = [(PXStoryRecipeManager *)self logContext];
        v16 = 134218240;
        logContext = logContext3;
        v18 = 1024;
        v19 = producedCopy;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryRecipeManager.hasInitialPersistableRecipeBeenProduced", "Context=%{signpost.telemetry:string2}lu %d", &v16, 0x12u);
      }
    }

    [(PXStoryRecipeManager *)self _invalidateInitialStyleProducer];
  }
}

- (void)setPersistableRecipeProgress:(id)progress
{
  progressCopy = progress;
  persistableRecipeProgress = self->_persistableRecipeProgress;
  if (persistableRecipeProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)persistableRecipeProgress cancel];
    objc_storeStrong(&self->_persistableRecipeProgress, progress);
    progressCopy = v7;
  }
}

- (void)setPersistableRecipeProducer:(id)producer
{
  producerCopy = producer;
  v6 = producerCopy;
  if (self->_persistableRecipeProducer != producerCopy)
  {
    v8 = producerCopy;
    v7 = [(PXStoryPersistableRecipeProducer *)producerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_persistableRecipeProducer, producer);
      [(PXStoryRecipeManager *)self _invalidatePersistableRecipe];
      v6 = v8;
    }
  }
}

- (void)setAssetsDataSource:(id)source
{
  sourceCopy = source;
  v5 = self->_assetsDataSource;
  v6 = v5;
  if (v5 != sourceCopy)
  {
    v7 = [(PXAssetsDataSource *)v5 isEqual:sourceCopy];

    v8 = sourceCopy;
    if (v7)
    {
      goto LABEL_7;
    }

    objc_storeStrong(&self->_assetsDataSource, source);
    v6 = [[PXStoryProducerResult alloc] initWithObject:sourceCopy];
    if (([(PXAssetsDataSource *)sourceCopy areAllSectionsConsideredAccurate]& 1) == 0)
    {
      v9 = [(PXStoryProducerResult *)v6 flags:1];
    }

    [(PXStoryRecipeManager *)self _handleResult:v6 forProducer:2];
    firstAssetCollection = [(PXAssetsDataSource *)sourceCopy firstAssetCollection];
    [(PXStoryRecipeManager *)self setAssetCollection:firstAssetCollection];

    [(PXStoryRecipeManager *)self _invalidateCuratedAssets];
    [(PXStoryRecipeManager *)self _invalidateAllAssets];
    [(PXStoryRecipeManager *)self _invalidateKeyAsset];
  }

  v8 = sourceCopy;
LABEL_7:
}

- (void)setAssetsDataSourceManager:(id)manager
{
  managerCopy = manager;
  v5 = self->_assetsDataSourceManager;
  dataSource = v5;
  if (v5 != managerCopy)
  {
    v7 = [(PXAssetsDataSourceManager *)v5 isEqual:managerCopy];

    v8 = managerCopy;
    if (v7)
    {
      goto LABEL_5;
    }

    [(PXAssetsDataSourceManager *)self->_assetsDataSourceManager unregisterChangeObserver:self context:AssetsDataSourceManagerObservationContext];
    objc_storeStrong(&self->_assetsDataSourceManager, manager);
    [(PXAssetsDataSourceManager *)managerCopy registerChangeObserver:self context:AssetsDataSourceManagerObservationContext];
    [(PXStoryRecipeManager *)self signalChange:16];
    dataSource = [(PXAssetsDataSourceManager *)managerCopy dataSource];
    [(PXStoryRecipeManager *)self setAssetsDataSource:dataSource];
  }

  v8 = managerCopy;
LABEL_5:
}

- (void)setAssetsResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (self->_assetsResult != resultCopy)
  {
    v9 = resultCopy;
    v7 = [(PXStoryProducerResult *)resultCopy isEqual:?];
    v6 = v9;
    if (!v7)
    {
      objc_storeStrong(&self->_assetsResult, result);
      [(PXStoryRecipeManager *)self _handleResult:v9 forProducer:1];
      object = [(PXStoryProducerResult *)v9 object];
      [(PXStoryRecipeManager *)self setAssetsDataSourceManager:object];

      v6 = v9;
    }
  }
}

- (void)setAssetsProgress:(id)progress
{
  progressCopy = progress;
  assetsProgress = self->_assetsProgress;
  if (assetsProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)assetsProgress cancel];
    objc_storeStrong(&self->_assetsProgress, progress);
    progressCopy = v7;
  }
}

- (void)setAssetCollection:(id)collection
{
  v27 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if (self->_assetCollection != collectionCopy)
  {
    objc_storeStrong(&self->_assetCollection, collection);
    v6 = [(PXStoryRecipeManager *)self log];
    v7 = os_signpost_id_make_with_pointer(v6, self);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        v21 = 134217984;
        logContext = [(PXStoryRecipeManager *)self logContext];
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
        logContext2 = [(PXStoryRecipeManager *)self logContext];
        uuid = [(PXDisplayAssetCollection *)collectionCopy uuid];
        localizedTitle = [(PXDisplayAssetCollection *)collectionCopy localizedTitle];
        v21 = 134218498;
        logContext = logContext2;
        v23 = 2114;
        v24 = uuid;
        v25 = 2114;
        v26 = localizedTitle;
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
        logContext3 = [(PXStoryRecipeManager *)self logContext];
        uuid2 = [(PXDisplayAssetCollection *)collectionCopy uuid];
        localizedTitle2 = [(PXDisplayAssetCollection *)collectionCopy localizedTitle];
        v21 = 134218498;
        logContext = logContext3;
        v23 = 2114;
        v24 = uuid2;
        v25 = 2114;
        v26 = localizedTitle2;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PXStoryRecipeManager.assetCollection", "Context=%{signpost.telemetry:string2}lu uuid:%{public}@ title:%{public}@", &v21, 0x20u);
      }
    }

    [(PXStoryRecipeManager *)self _invalidateRecipe];
  }
}

- (void)setAssetsProducer:(id)producer
{
  producerCopy = producer;
  v6 = producerCopy;
  if (self->_assetsProducer != producerCopy)
  {
    v8 = producerCopy;
    v7 = [(PXStoryAssetsProducer *)producerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetsProducer, producer);
      [(PXStoryRecipeManager *)self _invalidateAssets];
      v6 = v8;
    }
  }
}

- (BOOL)wantsAutoEditResults
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  v3 = ([configuration options] & 1) == 0;

  return v3;
}

- (void)setProducersLikelyToKeepUp:(unint64_t)up
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_producersLikelyToKeepUp != up)
  {
    self->_producersLikelyToKeepUp = up;
    [(PXStoryRecipeManager *)self _invalidateRecipeAttributes];
    v4 = [(PXStoryRecipeManager *)self log];
    v5 = os_signpost_id_make_with_pointer(v4, self);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v17 = 134217984;
        logContext = [(PXStoryRecipeManager *)self logContext];
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
        logContext2 = [(PXStoryRecipeManager *)self logContext];
        v11 = PXStoryProducersDescription(self->_producersLikelyToKeepUp);
        v17 = 134218242;
        logContext = logContext2;
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
        logContext3 = [(PXStoryRecipeManager *)self logContext];
        v16 = PXStoryProducersDescription(self->_producersLikelyToKeepUp);
        v17 = 134218242;
        logContext = logContext3;
        v19 = 2112;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryRecipeManager.producersLikelyToKeepUp", "Context=%{signpost.telemetry:string2}lu Producers=%{signpost.description:attribute}@", &v17, 0x16u);
      }
    }
  }
}

- (void)setProducersWithInitialResults:(unint64_t)results
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_producersWithInitialResults != results)
  {
    self->_producersWithInitialResults = results;
    v4 = [(PXStoryRecipeManager *)self log];
    v5 = os_signpost_id_make_with_pointer(v4, self);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v17 = 134217984;
        logContext = [(PXStoryRecipeManager *)self logContext];
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
        logContext2 = [(PXStoryRecipeManager *)self logContext];
        v11 = PXStoryProducersDescription(self->_producersWithInitialResults);
        v17 = 134218242;
        logContext = logContext2;
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
        logContext3 = [(PXStoryRecipeManager *)self logContext];
        v16 = PXStoryProducersDescription(self->_producersWithInitialResults);
        v17 = 134218242;
        logContext = logContext3;
        v19 = 2112;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryRecipeManager.producersWithInitialResults", "Context=%{signpost.telemetry:string2}lu Producers=%{signpost.description:attribute}@", &v17, 0x16u);
      }
    }
  }
}

- (void)setRemainingProducers:(unint64_t)producers
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_remainingProducers != producers)
  {
    self->_remainingProducers = producers;
    v4 = [(PXStoryRecipeManager *)self log];
    v5 = os_signpost_id_make_with_pointer(v4, self);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v17 = 134217984;
        logContext = [(PXStoryRecipeManager *)self logContext];
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
        logContext2 = [(PXStoryRecipeManager *)self logContext];
        v11 = PXStoryProducersDescription(self->_remainingProducers);
        v17 = 134218242;
        logContext = logContext2;
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
        logContext3 = [(PXStoryRecipeManager *)self logContext];
        v16 = PXStoryProducersDescription(self->_remainingProducers);
        v17 = 134218242;
        logContext = logContext3;
        v19 = 2112;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXStoryRecipeManager.remainingProducers", "Context=%{signpost.telemetry:string2}lu Remaining=%{signpost.description:attribute}@", &v17, 0x16u);
      }
    }
  }
}

- (void)setFinalizedProducers:(unint64_t)producers
{
  if (self->_finalizedProducers != producers)
  {
    self->_finalizedProducers = producers;
    [(PXStoryRecipeManager *)self setRemainingProducers:~producers & 0x1FFF];

    [(PXStoryRecipeManager *)self _invalidateRecipeAttributes];
  }
}

- (BOOL)shouldAvoidSynchronousProductions
{
  configuration = [(PXStoryRecipeManager *)self configuration];
  v3 = ([configuration options] & 0xC) != 0;

  return v3;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (self->_configuration != configurationCopy)
  {
    v13 = configurationCopy;
    v7 = [(PXStoryConfiguration *)configurationCopy isEqual:?];
    v6 = v13;
    if ((v7 & 1) == 0)
    {
      v8 = [(PXStoryConfiguration *)v13 copy];
      configuration = self->_configuration;
      self->_configuration = v8;

      storyQueue = [(PXStoryConfiguration *)v13 storyQueue];
      storyQueue2 = [(PXStoryRecipeManager *)self storyQueue];

      if (storyQueue != storyQueue2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRecipeManager.m" lineNumber:446 description:@"queue mismatch"];
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
  updater = [(PXStoryRecipeManager *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  storyQueue = [(PXStoryRecipeManager *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v6.receiver = self;
  v6.super_class = PXStoryRecipeManager;
  [(PXStoryRecipeManager *)&v6 performChanges:changesCopy];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  configuration = [(PXStoryRecipeManager *)self configuration];
  v7 = [v3 initWithFormat:@"<%@: %p, configuration: %@>", v5, self, configuration];

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

- (PXStoryRecipeManager)initWithConfiguration:(id)configuration assetsProducerFactory:(id)factory persistableRecipeProducerFactory:(id)producerFactory songsProducerFactory:(id)songsProducerFactory movieHighlightsProducerFactory:(id)highlightsProducerFactory detailedSaliencyProducerFactory:(id)saliencyProducerFactory chapterCollectionProducerFactory:(id)collectionProducerFactory stylesProducerFactory:(id)self0 autoEditDecisionListsProducerFactory:(id)self1 autoCurationProducerFactory:(id)self2
{
  configurationCopy = configuration;
  obj = factory;
  producerFactoryCopy = producerFactory;
  songsProducerFactoryCopy = songsProducerFactory;
  highlightsProducerFactoryCopy = highlightsProducerFactory;
  saliencyProducerFactoryCopy = saliencyProducerFactory;
  collectionProducerFactoryCopy = collectionProducerFactory;
  v22 = saliencyProducerFactoryCopy;
  stylesProducerFactoryCopy = stylesProducerFactory;
  v24 = collectionProducerFactoryCopy;
  listsProducerFactoryCopy = listsProducerFactory;
  v26 = highlightsProducerFactoryCopy;
  curationProducerFactoryCopy = curationProducerFactory;
  v78.receiver = self;
  v78.super_class = PXStoryRecipeManager;
  v28 = [(PXStoryRecipeManager *)&v78 init];
  if (v28)
  {
    v70 = curationProducerFactoryCopy;
    v29 = [configurationCopy log];
    [(PXStoryRecipeManager *)v28 setLog:v29];

    -[PXStoryRecipeManager setLogContext:](v28, "setLogContext:", [configurationCopy logContext]);
    v30 = obj;
    if (!obj)
    {
      v30 = objc_alloc_init(PXStoryDefaultAssetsProducerFactory);
    }

    objc_storeStrong(&v28->_assetsProducerFactory, v30);
    if (!obj)
    {
    }

    v31 = producerFactoryCopy;
    if (!producerFactoryCopy)
    {
      v31 = objc_alloc_init(PXStoryDefaultPersistableRecipeProducerFactory);
    }

    objc_storeStrong(&v28->_persistableRecipeProducerFactory, v31);
    if (!producerFactoryCopy)
    {
    }

    v32 = songsProducerFactoryCopy;
    if (!songsProducerFactoryCopy)
    {
      v32 = objc_alloc_init(PXStoryDefaultSongsProducerFactory);
    }

    objc_storeStrong(&v28->_songsProducerFactory, v32);
    if (!songsProducerFactoryCopy)
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

    v36 = stylesProducerFactoryCopy;
    if (!stylesProducerFactoryCopy)
    {
      v36 = objc_alloc_init(PXStoryDefaultStylesProducerFactory);
    }

    objc_storeStrong(&v28->_stylesProducerFactory, v36);
    if (!stylesProducerFactoryCopy)
    {
    }

    v37 = listsProducerFactoryCopy;
    if (!listsProducerFactoryCopy)
    {
      v37 = [[PXStoryDefaultAutoEditDecisionListsProducerFactory alloc] initWithStoryConfiguration:configurationCopy];
    }

    objc_storeStrong(&v28->_autoEditDecisionListsProducerFactory, v37);
    if (!listsProducerFactoryCopy)
    {
    }

    v38 = curationProducerFactoryCopy;
    if (!curationProducerFactoryCopy)
    {
      v38 = objc_alloc_init(PXStoryDefaultAutoCurationProducerFactory);
    }

    objc_storeStrong(&v28->_autoCurationProducerFactory, v38);
    if (!curationProducerFactoryCopy)
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

    storyQueue = [configurationCopy storyQueue];
    storyQueue = v28->_storyQueue;
    v28->_storyQueue = storyQueue;

    errorReporter = [configurationCopy errorReporter];
    errorReporter = v28->_errorReporter;
    v28->_errorReporter = errorReporter;

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
    date = [MEMORY[0x1E695DF00] date];
    loadingStartDate = v28->_loadingStartDate;
    v28->_loadingStartDate = date;

    if (([(PXStoryConfiguration *)v28->_configuration options]& 3) == 0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __305__PXStoryRecipeManager_initWithConfiguration_assetsProducerFactory_persistableRecipeProducerFactory_songsProducerFactory_movieHighlightsProducerFactory_detailedSaliencyProducerFactory_chapterCollectionProducerFactory_stylesProducerFactory_autoEditDecisionListsProducerFactory_autoCurationProducerFactory___block_invoke;
      aBlock[3] = &unk_1E773C780;
      v58 = v28;
      v77 = v58;
      v59 = listsProducerFactoryCopy;
      v60 = stylesProducerFactoryCopy;
      v61 = v24;
      v62 = v22;
      v63 = v26;
      v64 = songsProducerFactoryCopy;
      v65 = _Block_copy(aBlock);
      v66 = v65[2]();
      detailedSaliencyProducerMonitor = v58->_detailedSaliencyProducerMonitor;
      v58->_detailedSaliencyProducerMonitor = v66;

      songsProducerFactoryCopy = v64;
      v26 = v63;
      v22 = v62;
      v24 = v61;
      stylesProducerFactoryCopy = v60;
      listsProducerFactoryCopy = v59;
    }

    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __305__PXStoryRecipeManager_initWithConfiguration_assetsProducerFactory_persistableRecipeProducerFactory_songsProducerFactory_movieHighlightsProducerFactory_detailedSaliencyProducerFactory_chapterCollectionProducerFactory_stylesProducerFactory_autoEditDecisionListsProducerFactory_autoCurationProducerFactory___block_invoke_2;
    v73[3] = &unk_1E773C7A8;
    v74 = v28;
    v75 = configurationCopy;
    [(PXStoryRecipeManager *)v74 performChanges:v73];

    curationProducerFactoryCopy = v70;
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

- (PXStoryRecipeManager)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  detailedSaliencyProducer = [configurationCopy detailedSaliencyProducer];
  if (detailedSaliencyProducer)
  {
    v6 = [[PXStoryPassthroughDetailedSaliencyProducerFactory alloc] initWithDetailedSaliencyProducer:detailedSaliencyProducer];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PXStoryRecipeManager *)self initWithConfiguration:configurationCopy assetsProducerFactory:0 persistableRecipeProducerFactory:0 songsProducerFactory:0 movieHighlightsProducerFactory:0 detailedSaliencyProducerFactory:v6 chapterCollectionProducerFactory:0 stylesProducerFactory:0 autoEditDecisionListsProducerFactory:0 autoCurationProducerFactory:0];

  return v7;
}

- (PXStoryRecipeManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRecipeManager.m" lineNumber:313 description:{@"%s is not available as initializer", "-[PXStoryRecipeManager init]"}];

  abort();
}

@end