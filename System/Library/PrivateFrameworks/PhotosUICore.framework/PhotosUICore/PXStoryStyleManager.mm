@interface PXStoryStyleManager
- ($1A23BB056C565A410801C90FE7234890)styleOptions;
- (BOOL)focusedStyleIsCurrentStyle;
- (PXStoryStyleManager)init;
- (PXStoryStyleManager)initWithRecipeManager:(id)manager errorReporter:(id)reporter;
- (int64_t)focusedStyleIndex;
- (void)_handleCueSource:(id)source error:(id)error requestID:(int64_t)d;
- (void)_invalidateCueSource;
- (void)_invalidateCurrentStyle;
- (void)_invalidateCurrentStyleAttributes;
- (void)_invalidateCurrentStyleInfo;
- (void)_invalidatePredefinedStyleInfos;
- (void)_invalidateSelectionDataSource;
- (void)_invalidateSelectionDataSourceAttributes;
- (void)_invalidateStyleConfigurationList;
- (void)_invalidateStylesAttributes;
- (void)_updateCueSource;
- (void)_updateCurrentStyle;
- (void)_updateCurrentStyleAttributes;
- (void)_updateCurrentStyleInfo;
- (void)_updatePredefinedStyleInfos;
- (void)_updateSelectionDataSource;
- (void)_updateSelectionDataSourceStylesAttributes;
- (void)_updateStyleConfigurationList;
- (void)_updateStylesAttributes;
- (void)applyFocusedStyle;
- (void)applyFocusedStyleWithCustomizedColorGradeKind:(int64_t)kind;
- (void)applyFocusedStyleWithCustomizedSongResource:(id)resource;
- (void)applyStyleAtIndex:(int64_t)index fromDataSource:(id)source;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)didEndChangeHandling;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)performChanges:(id)changes origin:(unint64_t)origin;
- (void)setAreSelectionDataSourceStylesFinal:(BOOL)final;
- (void)setAreStylesFinal:(BOOL)final;
- (void)setCueSource:(id)source;
- (void)setCurrentStyle:(id)style;
- (void)setCurrentStyleAttributes:(unint64_t)attributes;
- (void)setCurrentStyleInfo:(id)info;
- (void)setIsCurrentStyleFinal:(BOOL)final;
- (void)setPredefinedStyleInfos:(id)infos;
- (void)setSelectionDataSource:(id)source;
- (void)setSelectionDataSourceStylesAttributes:(unint64_t)attributes;
- (void)setSelectionFocus:(double)focus;
- (void)setStyleConfigurationList:(id)list;
- (void)setStylesAttributes:(unint64_t)attributes;
@end

@implementation PXStoryStyleManager

- ($1A23BB056C565A410801C90FE7234890)styleOptions
{
  p_styleOptions = &self->_styleOptions;
  croppingOptions = self->_styleOptions.croppingOptions;
  v4 = *&p_styleOptions->preferStillKeySegment;
  result.var1 = v4;
  result.var0 = croppingOptions;
  return result;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  recipeManager = [(PXStoryStyleManager *)self recipeManager];
  [containerCopy addSubprovider:recipeManager];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PXStoryStyleManager_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7746748;
  v5[4] = self;
  v5[5] = context;
  v5[6] = change;
  v5[7] = a2;
  [(PXStoryStyleManager *)self performChanges:v5 origin:1];
}

void __52__PXStoryStyleManager_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) != RecipeManagerObservationContext_138985)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXStoryStyleManager.m" lineNumber:557 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v4 = *(a1 + 48);
  v6 = v3;
  if (v4)
  {
    [*(a1 + 32) _invalidateCurrentStyleInfo];
    [*(a1 + 32) _invalidateStyleConfigurationList];
    v3 = v6;
    v4 = *(a1 + 48);
  }

  if ((v4 & 4) != 0)
  {
    [*(a1 + 32) _invalidateStylesAttributes];
    [*(a1 + 32) _invalidateCurrentStyleAttributes];
    v3 = v6;
  }
}

- (void)_updateSelectionDataSourceStylesAttributes
{
  recipeManager = [(PXStoryStyleManager *)self recipeManager];
  isRecipeFinal = [recipeManager isRecipeFinal];

  if (isRecipeFinal)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(PXStoryStyleManager *)self setSelectionDataSourceStylesAttributes:v5];
}

- (void)_invalidateSelectionDataSourceAttributes
{
  updater = [(PXStoryStyleManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateSelectionDataSourceStylesAttributes];
}

- (void)_updateSelectionDataSource
{
  v28[1] = *MEMORY[0x1E69E9840];
  predefinedStyleInfos = [(PXStoryStyleManager *)self predefinedStyleInfos];
  recipeManager = [(PXStoryStyleManager *)self recipeManager];
  configuration = [recipeManager configuration];

  if (([configuration options] & 0x10) != 0)
  {
    songsConfiguration = [configuration songsConfiguration];
    currentAsset = [songsConfiguration currentAsset];

    v18 = 0;
    if (currentAsset && predefinedStyleInfos)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __49__PXStoryStyleManager__updateSelectionDataSource__block_invoke;
      v26[3] = &unk_1E773CD20;
      v27 = currentAsset;
      v19 = [predefinedStyleInfos indexOfObjectPassingTest:v26];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = 0;
      }

      else
      {
        v18 = v19;
      }
    }

    v13 = [PXStoryStyleSelectionDataSource alloc];
    v14 = predefinedStyleInfos;
    v15 = v18;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    currentStyleInfo = [(PXStoryStyleManager *)self currentStyleInfo];
    currentAsset = currentStyleInfo;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (currentStyleInfo && predefinedStyleInfos)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __49__PXStoryStyleManager__updateSelectionDataSource__block_invoke_2;
      v24 = &unk_1E773CD20;
      v25 = currentStyleInfo;
      v9 = [predefinedStyleInfos indexOfObjectPassingTest:&v21];
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (currentAsset && v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28[0] = currentAsset;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v12 = [v11 arrayByAddingObjectsFromArray:predefinedStyleInfos];

      v10 = 0;
      v8 = 0;
      predefinedStyleInfos = v12;
    }

    v13 = [PXStoryStyleSelectionDataSource alloc];
    v14 = predefinedStyleInfos;
    v15 = v10;
    v16 = v8;
  }

  v20 = [(PXStoryStyleSelectionDataSource *)v13 initWithStyleInfos:v14 indexOfCurrentStyle:v15 indexOfCustomStyle:v16, v21, v22, v23, v24];

  [(PXStoryStyleManager *)self setSelectionDataSource:v20];
}

uint64_t __49__PXStoryStyleManager__updateSelectionDataSource__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 songResource];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  return v5;
}

uint64_t __49__PXStoryStyleManager__updateSelectionDataSource__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 originalColorGradeCategory];
  v5 = [*(a1 + 32) originalColorGradeCategory];
  if ((v4 == v5 || [v4 isEqualToString:v5]) && (v6 = objc_msgSend(v3, "customColorGradeKind"), v6 == objc_msgSend(*(a1 + 32), "customColorGradeKind")))
  {
    v7 = [v3 songResource];
    v8 = [*(a1 + 32) songResource];
    if (v7 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_invalidateSelectionDataSource
{
  updater = [(PXStoryStyleManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateSelectionDataSource];
}

- (void)_updateCurrentStyleAttributes
{
  recipeManager = [(PXStoryStyleManager *)self recipeManager];
  recipeAttributes = [recipeManager recipeAttributes];

  v5 = recipeAttributes & 1;
  if ((recipeAttributes & 3) != 0)
  {
    cueSource = [(PXStoryStyleManager *)self cueSource];

    if (cueSource)
    {
      v5 |= 2uLL;
    }
  }

  [(PXStoryStyleManager *)self setCurrentStyleAttributes:v5];
}

- (void)_invalidateCurrentStyleAttributes
{
  updater = [(PXStoryStyleManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentStyleAttributes];
}

- (void)_updateCurrentStyle
{
  currentStyleInfo = [(PXStoryStyleManager *)self currentStyleInfo];
  styleProducer = [(PXStoryStyleManager *)self styleProducer];
  customColorGradeKind = [currentStyleInfo customColorGradeKind];
  originalColorGradeCategory = [currentStyleInfo originalColorGradeCategory];
  songResource = [currentStyleInfo songResource];
  cueSource = [(PXStoryStyleManager *)self cueSource];
  autoEditDecisionList = [currentStyleInfo autoEditDecisionList];
  styleOptions = [(PXStoryStyleManager *)self styleOptions];
  v11 = v10;
  LOBYTE(v13) = [currentStyleInfo isCustomized];
  v12 = [styleProducer styleWithCustomColorGradeKind:customColorGradeKind originalColorGradeCategory:originalColorGradeCategory songResource:songResource cueSource:cueSource autoEditDecisionList:autoEditDecisionList styleOptions:styleOptions isCustomized:{v11, v13}];
  [(PXStoryStyleManager *)self setCurrentStyle:v12];
}

- (void)_updateCurrentStyleInfo
{
  currentStyleInfo = [(PXStoryStyleManager *)self currentStyleInfo];
  styleConfigurationList = [(PXStoryStyleManager *)self styleConfigurationList];
  if (styleConfigurationList)
  {
    songResource = [currentStyleInfo songResource];
    v5 = songResource;
    if (songResource && !PXStorySongResourceIsNullResource(songResource))
    {
      px_storyResourceSongAsset = [v5 px_storyResourceSongAsset];
      if (!px_storyResourceSongAsset)
      {
        goto LABEL_12;
      }

      recipeManager = [(PXStoryStyleManager *)self recipeManager];
      recipe = [recipeManager recipe];
      autoEditDecisionListsBySong = [recipe autoEditDecisionListsBySong];
      v16 = [autoEditDecisionListsBySong objectForKeyedSubscript:px_storyResourceSongAsset];

      if (!v16)
      {
        goto LABEL_12;
      }

      v17 = [currentStyleInfo copyWithAutoEditDecisionList:v16];
      v18 = currentStyleInfo;
    }

    else
    {
      initialStyleConfiguration = [styleConfigurationList initialStyleConfiguration];
      px_storyResourceSongAsset = initialStyleConfiguration;
      if (!initialStyleConfiguration)
      {
LABEL_12:

        goto LABEL_13;
      }

      songResource2 = [initialStyleConfiguration songResource];
      originalColorGradeCategory = [px_storyResourceSongAsset originalColorGradeCategory];
      autoEditDecisionList = [px_storyResourceSongAsset autoEditDecisionList];
      customColorGradeKind = [px_storyResourceSongAsset customColorGradeKind];
      isCustomized = [px_storyResourceSongAsset isCustomized];
      if (!customColorGradeKind)
      {
        colorGradingRepository = [(PXStoryStyleManager *)self colorGradingRepository];
        customColorGradeKind = [colorGradingRepository colorGradeKindForColorGradeCategory:originalColorGradeCategory];
      }

      v13 = [PXStoryStyleConfiguration alloc];
      originalColorGradeCategory2 = [px_storyResourceSongAsset originalColorGradeCategory];
      v15 = customColorGradeKind;
      v16 = songResource2;
      v17 = [(PXStoryStyleConfiguration *)v13 initWithOriginalColorGradeCategory:originalColorGradeCategory2 customColorGradeKind:v15 songResource:songResource2 autoEditDecisionList:autoEditDecisionList isCustomized:isCustomized];

      v18 = originalColorGradeCategory;
    }

    currentStyleInfo = v17;
    goto LABEL_12;
  }

LABEL_13:
  [(PXStoryStyleManager *)self setCurrentStyleInfo:currentStyleInfo];
}

- (void)_invalidateCurrentStyleInfo
{
  updater = [(PXStoryStyleManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentStyleInfo];
}

- (void)_handleCueSource:(id)source error:(id)error requestID:(int64_t)d
{
  sourceCopy = source;
  errorCopy = error;
  storyQueue = [(PXStoryStyleManager *)self storyQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PXStoryStyleManager__handleCueSource_error_requestID___block_invoke;
  v13[3] = &unk_1E774A768;
  v13[4] = self;
  v14 = sourceCopy;
  v15 = errorCopy;
  dCopy = d;
  v11 = errorCopy;
  v12 = sourceCopy;
  dispatch_async(storyQueue, v13);
}

void __56__PXStoryStyleManager__handleCueSource_error_requestID___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2 == [*(a1 + 32) cueRequestID])
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 32);

      [v3 setCueSource:?];
    }

    else
    {
      v4 = objc_alloc_init(PXConcreteAudioCueSource);
      [*(a1 + 32) setCueSource:v4];

      v5 = PLStoryGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 48);
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Did not find audio cues for current style. Cues may not be available for the current song. Error %@", &v7, 0xCu);
      }
    }
  }
}

- (void)_updateCueSource
{
  currentStyleInfo = [(PXStoryStyleManager *)self currentStyleInfo];
  songResource = [currentStyleInfo songResource];
  if ((PXStorySongResourceIsNullResource(songResource) & 1) != 0 || (-[PXStoryStyleManager recipeManager](self, "recipeManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 configuration], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "options"), v6, v5, (v7 & 2) != 0))
  {
    px_storyResourceSongAsset = objc_alloc_init(PXConcreteAudioCueSource);
    [(PXStoryStyleManager *)self setCueSource:px_storyResourceSongAsset];
  }

  else
  {
    px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];
    if (px_storyResourceSongAsset)
    {
      [(PXStoryStyleManager *)self setCueRequestID:[(PXStoryStyleManager *)self cueRequestID]+ 1];
      cueRequestID = [(PXStoryStyleManager *)self cueRequestID];
      objc_initWeak(&location, self);
      cueProvider = [(PXStoryStyleManager *)self cueProvider];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __39__PXStoryStyleManager__updateCueSource__block_invoke;
      v12[3] = &unk_1E773CCF8;
      objc_copyWeak(v13, &location);
      v13[1] = cueRequestID;
      v11 = [cueProvider requestCuesForAudioAsset:px_storyResourceSongAsset resultHandler:v12];

      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }
  }
}

void __39__PXStoryStyleManager__updateCueSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[PXStorySettings sharedInstance];
  [v7 simulatedAudioCuesLoadingDelay];
  v9 = v8;

  if (v9 == 0.0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleCueSource:v5 error:v6 requestID:*(a1 + 40)];
  }

  else
  {
    v11 = dispatch_time(0, (v9 * 1000000000.0));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__PXStoryStyleManager__updateCueSource__block_invoke_2;
    v14[3] = &unk_1E77422A8;
    objc_copyWeak(v17, (a1 + 32));
    v15 = v5;
    v12 = v6;
    v13 = *(a1 + 40);
    v16 = v12;
    v17[1] = v13;
    dispatch_after(v11, MEMORY[0x1E69E96A0], v14);

    objc_destroyWeak(v17);
  }
}

void __39__PXStoryStyleManager__updateCueSource__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleCueSource:*(a1 + 32) error:*(a1 + 40) requestID:*(a1 + 56)];
}

- (void)_invalidateCueSource
{
  updater = [(PXStoryStyleManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateCueSource];
}

- (void)_invalidateCurrentStyle
{
  updater = [(PXStoryStyleManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentStyle];
}

- (void)_updateStylesAttributes
{
  recipeManager = [(PXStoryStyleManager *)self recipeManager];
  -[PXStoryStyleManager setStylesAttributes:](self, "setStylesAttributes:", [recipeManager recipeAttributes]);
}

- (void)_invalidateStylesAttributes
{
  updater = [(PXStoryStyleManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateStylesAttributes];
}

- (void)_updatePredefinedStyleInfos
{
  styleConfigurationList = [(PXStoryStyleManager *)self styleConfigurationList];
  autoEditStyleConfigurations = [styleConfigurationList autoEditStyleConfigurations];
  recipeManager = [(PXStoryStyleManager *)self recipeManager];
  configuration = [recipeManager configuration];

  v8 = ([configuration options] & 0x10) == 0;
  if ([autoEditStyleConfigurations count])
  {
    colorGradingRepository = [(PXStoryStyleManager *)self colorGradingRepository];
    currentStyleInfo = [(PXStoryStyleManager *)self currentStyleInfo];
    customColorGradeKind = [currentStyleInfo customColorGradeKind];
    if (!customColorGradeKind)
    {
      originalColorGradeCategory = [currentStyleInfo originalColorGradeCategory];
      customColorGradeKind = [colorGradingRepository colorGradeKindForColorGradeCategory:originalColorGradeCategory excludingKinds:0];
    }

    v13 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:customColorGradeKind];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(autoEditStyleConfigurations, "count")}];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __50__PXStoryStyleManager__updatePredefinedStyleInfos__block_invoke;
    v22 = &unk_1E773CCD0;
    v28 = v8;
    v26 = v14;
    v27 = a2;
    selfCopy = self;
    v24 = colorGradingRepository;
    v25 = v13;
    v15 = v14;
    v16 = v13;
    v17 = colorGradingRepository;
    [autoEditStyleConfigurations enumerateObjectsUsingBlock:&v19];
    v18 = [v15 copy];
  }

  else
  {
    v18 = 0;
  }

  [(PXStoryStyleManager *)self setPredefinedStyleInfos:v18];
}

void __50__PXStoryStyleManager__updatePredefinedStyleInfos__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 songResource];
  if (*(a1 + 72) != 1)
  {
    goto LABEL_4;
  }

  v7 = [*(a1 + 32) currentStyleInfo];
  v8 = [v7 songResource];
  if (v6 == v8)
  {
LABEL_9:

    goto LABEL_10;
  }

  v9 = [v6 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_4:
    v7 = [v5 originalColorGradeCategory];
    v8 = [v5 autoEditDecisionList];
    if ([v5 customColorGradeKind])
    {
      PXAssertGetLog();
    }

    v10 = [*(a1 + 40) colorGradeKindForColorGradeCategory:v7 excludingKinds:*(a1 + 48)];
    v11 = [[PXStoryStyleConfiguration alloc] initWithOriginalColorGradeCategory:v7 customColorGradeKind:v10 songResource:v6 autoEditDecisionList:v8 isCustomized:0];
    v12 = [*(a1 + 40) minimumCategoryKindFallbacks];
    if (a3 >= v12)
    {
      v13 = [*(a1 + 56) objectAtIndexedSubscript:a3 - v12];
      v14 = [v13 customColorGradeKind];

      [*(a1 + 48) removeIndex:v14];
    }

    [*(a1 + 48) addIndex:v10];
    [*(a1 + 56) addObject:v11];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)_invalidatePredefinedStyleInfos
{
  updater = [(PXStoryStyleManager *)self updater];
  [updater setNeedsUpdateOf:sel__updatePredefinedStyleInfos];
}

- (void)_updateStyleConfigurationList
{
  recipeManager = [(PXStoryStyleManager *)self recipeManager];
  recipe = [recipeManager recipe];
  styleConfigurationList = [recipe styleConfigurationList];
  [(PXStoryStyleManager *)self setStyleConfigurationList:styleConfigurationList];
}

- (void)_invalidateStyleConfigurationList
{
  updater = [(PXStoryStyleManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateStyleConfigurationList];
}

- (void)setCueSource:(id)source
{
  sourceCopy = source;
  v6 = sourceCopy;
  if (self->_cueSource != sourceCopy && ([(PXAudioCueSource *)sourceCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_cueSource, source);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__PXStoryStyleManager_setCueSource___block_invoke;
    v7[3] = &unk_1E773EC68;
    v7[4] = self;
    [(PXStoryStyleManager *)self performChanges:v7 origin:1];
  }
}

uint64_t __36__PXStoryStyleManager_setCueSource___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateCurrentStyle];
  v2 = *(a1 + 32);

  return [v2 _invalidateCurrentStyleAttributes];
}

- (void)setSelectionFocus:(double)focus
{
  if (self->_selectionFocus != focus)
  {
    self->_selectionFocus = focus;
    [(PXStoryStyleManager *)self signalChange:256];
  }
}

- (void)applyStyleAtIndex:(int64_t)index fromDataSource:(id)source
{
  styleInfos = [source styleInfos];
  v13 = [styleInfos objectAtIndexedSubscript:index];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    px_descriptionForAssertionMessage = [v13 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:275 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"dataSource.styleInfos[index]", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:275 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"dataSource.styleInfos[index]", v10}];
  }

LABEL_3:
  [(PXStoryStyleManager *)self setCurrentStyleInfo:v13];
}

- (void)applyFocusedStyle
{
  focusedStyleIndex = [(PXStoryStyleManager *)self focusedStyleIndex];
  selectionDataSource = [(PXStoryStyleManager *)self selectionDataSource];
  [(PXStoryStyleManager *)self applyStyleAtIndex:focusedStyleIndex fromDataSource:selectionDataSource];
}

- (void)applyFocusedStyleWithCustomizedSongResource:(id)resource
{
  resourceCopy = resource;
  selectionDataSource = [(PXStoryStyleManager *)self selectionDataSource];
  styleInfos = [selectionDataSource styleInfos];
  v8 = [styleInfos objectAtIndexedSubscript:{-[PXStoryStyleManager focusedStyleIndex](self, "focusedStyleIndex")}];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:260 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.selectionDataSource.styleInfos[self.focusedStyleIndex]", v14, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:260 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.selectionDataSource.styleInfos[self.focusedStyleIndex]", v14}];
  }

LABEL_3:
  px_storyResourceSongAsset = [resourceCopy px_storyResourceSongAsset];
  if (px_storyResourceSongAsset)
  {
    recipeManager = [(PXStoryStyleManager *)self recipeManager];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__PXStoryStyleManager_applyFocusedStyleWithCustomizedSongResource___block_invoke;
    v17[3] = &unk_1E773CCA8;
    v18 = px_storyResourceSongAsset;
    [recipeManager performChanges:v17];
  }

  v11 = [v8 copyWithCustomizedSongResource:resourceCopy];
  [(PXStoryStyleManager *)self setCurrentStyleInfo:v11];
}

- (void)applyFocusedStyleWithCustomizedColorGradeKind:(int64_t)kind
{
  selectionDataSource = [(PXStoryStyleManager *)self selectionDataSource];
  styleInfos = [selectionDataSource styleInfos];
  v14 = [styleInfos objectAtIndexedSubscript:{-[PXStoryStyleManager focusedStyleIndex](self, "focusedStyleIndex")}];

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [v14 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:255 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.selectionDataSource.styleInfos[self.focusedStyleIndex]", v11, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:255 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.selectionDataSource.styleInfos[self.focusedStyleIndex]", v11}];
  }

LABEL_3:
  v8 = [v14 copyWithCustomizedColorGradeKind:kind];
  [(PXStoryStyleManager *)self setCurrentStyleInfo:v8];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryStyleManager;
  [(PXStoryStyleManager *)&v4 didPerformChanges];
  updater = [(PXStoryStyleManager *)self updater];
  [updater updateIfNeeded];
}

- (BOOL)focusedStyleIsCurrentStyle
{
  focusedStyleIndex = [(PXStoryStyleManager *)self focusedStyleIndex];
  selectionDataSource = [(PXStoryStyleManager *)self selectionDataSource];
  LOBYTE(focusedStyleIndex) = focusedStyleIndex == [selectionDataSource indexOfCurrentStyle];

  return focusedStyleIndex;
}

- (int64_t)focusedStyleIndex
{
  [(PXStoryStyleManager *)self selectionFocus];
  v4 = round(v3);
  selectionDataSource = [(PXStoryStyleManager *)self selectionDataSource];
  v6 = [selectionDataSource numberOfStyles] - 1;

  v7 = v6;
  if (v4 < v6)
  {
    v7 = v4;
  }

  return fmax(v7, 0.0);
}

- (void)setSelectionDataSource:(id)source
{
  sourceCopy = source;
  v6 = sourceCopy;
  if (self->_selectionDataSource != sourceCopy)
  {
    v8 = sourceCopy;
    v7 = [(PXStoryStyleSelectionDataSource *)sourceCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_selectionDataSource, source);
      [(PXStoryStyleManager *)self setSelectionFocus:[(PXStoryStyleSelectionDataSource *)v8 indexOfCurrentStyle]];
      [(PXStoryStyleManager *)self _invalidateSelectionDataSourceAttributes];
      [(PXStoryStyleManager *)self signalChange:32];
      v6 = v8;
    }
  }
}

- (void)setAreSelectionDataSourceStylesFinal:(BOOL)final
{
  if (self->_areSelectionDataSourceStylesFinal != final)
  {
    self->_areSelectionDataSourceStylesFinal = final;
    [(PXStoryStyleManager *)self signalChange:128];
  }
}

- (void)setSelectionDataSourceStylesAttributes:(unint64_t)attributes
{
  selectionDataSourceStylesAttributes = self->_selectionDataSourceStylesAttributes;
  if (selectionDataSourceStylesAttributes != attributes)
  {
    if ((selectionDataSourceStylesAttributes & 2) != 0 && ((self->_selectionDataSourceStylesAttributes & 1) == 0) | attributes & 1)
    {
      if ((attributes & 2) != 0)
      {
        goto LABEL_8;
      }
    }

    else if ((((self->_selectionDataSourceStylesAttributes & 2) == 0) & (((self->_selectionDataSourceStylesAttributes & 1) == 0) | attributes)) != 0)
    {
LABEL_8:
      self->_selectionDataSourceStylesAttributes = attributes;
      [(PXStoryStyleManager *)self signalChange:64];
      [(PXStoryStyleManager *)self setAreSelectionDataSourceStylesFinal:(self->_selectionDataSourceStylesAttributes >> 1) & 1];
      return;
    }

    PXAssertGetLog();
  }
}

- (void)setIsCurrentStyleFinal:(BOOL)final
{
  if (self->_isCurrentStyleFinal != final)
  {
    self->_isCurrentStyleFinal = final;
    [(PXStoryStyleManager *)self signalChange:16];
  }
}

- (void)setCurrentStyleAttributes:(unint64_t)attributes
{
  currentStyleAttributes = self->_currentStyleAttributes;
  if (currentStyleAttributes != attributes)
  {
    if ((currentStyleAttributes & 2) != 0 && ((self->_currentStyleAttributes & 1) == 0) | attributes & 1)
    {
      if ((attributes & 2) != 0)
      {
        goto LABEL_8;
      }
    }

    else if ((((self->_currentStyleAttributes & 2) == 0) & (((self->_currentStyleAttributes & 1) == 0) | attributes)) != 0)
    {
LABEL_8:
      self->_currentStyleAttributes = attributes;
      [(PXStoryStyleManager *)self signalChange:8];
      [(PXStoryStyleManager *)self setIsCurrentStyleFinal:(self->_currentStyleAttributes >> 1) & 1];
      return;
    }

    PXAssertGetLog();
  }
}

- (void)setCurrentStyle:(id)style
{
  styleCopy = style;
  v6 = styleCopy;
  if (self->_currentStyle != styleCopy)
  {
    v8 = styleCopy;
    v7 = [(PXStoryStyle *)styleCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentStyle, style);
      [(PXStoryStyleManager *)self signalChange:4];
      v6 = v8;
    }
  }
}

- (void)setCurrentStyleInfo:(id)info
{
  infoCopy = info;
  v6 = infoCopy;
  if (self->_currentStyleInfo != infoCopy)
  {
    v8 = infoCopy;
    v7 = [(PXStoryStyleConfiguration *)infoCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_currentStyleInfo, info);
      [(PXStoryStyleManager *)self _invalidateCueSource];
      [(PXStoryStyleManager *)self _invalidateCurrentStyle];
      [(PXStoryStyleManager *)self _invalidatePredefinedStyleInfos];
      [(PXStoryStyleManager *)self _invalidateSelectionDataSource];
      [(PXStoryStyleManager *)self _invalidateCurrentStyleAttributes];
      v6 = v8;
    }
  }
}

- (void)setAreStylesFinal:(BOOL)final
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_areStylesFinal != final)
  {
    self->_areStylesFinal = final;
    v4 = PLStoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      areStylesFinal = self->_areStylesFinal;
      v6 = 138412546;
      selfCopy = self;
      v8 = 1024;
      v9 = areStylesFinal;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_INFO, "%@ areStylesFinal: %i", &v6, 0x12u);
    }
  }
}

- (void)setStylesAttributes:(unint64_t)attributes
{
  stylesAttributes = self->_stylesAttributes;
  if (stylesAttributes != attributes)
  {
    if ((stylesAttributes & 2) != 0 && ((self->_stylesAttributes & 1) == 0) | attributes & 1)
    {
      if ((attributes & 2) != 0)
      {
        goto LABEL_8;
      }
    }

    else if ((((self->_stylesAttributes & 2) == 0) & (((self->_stylesAttributes & 1) == 0) | attributes)) != 0)
    {
LABEL_8:
      self->_stylesAttributes = attributes;
      [(PXStoryStyleManager *)self setAreStylesFinal:(attributes >> 1) & 1];
      return;
    }

    PXAssertGetLog();
  }
}

- (void)setPredefinedStyleInfos:(id)infos
{
  infosCopy = infos;
  v5 = infosCopy;
  if (self->_predefinedStyleInfos != infosCopy)
  {
    v9 = infosCopy;
    v6 = [(NSArray *)infosCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      predefinedStyleInfos = self->_predefinedStyleInfos;
      self->_predefinedStyleInfos = v7;

      [(PXStoryStyleManager *)self _invalidateCurrentStyle];
      [(PXStoryStyleManager *)self _invalidateSelectionDataSource];
      v5 = v9;
    }
  }
}

- (void)setStyleConfigurationList:(id)list
{
  listCopy = list;
  v6 = listCopy;
  if (self->_styleConfigurationList != listCopy)
  {
    v8 = listCopy;
    v7 = [(PXStoryStyleConfigurationList *)listCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_styleConfigurationList, list);
      [(PXStoryStyleManager *)self _invalidatePredefinedStyleInfos];
      [(PXStoryStyleManager *)self _invalidateCurrentStyleInfo];
      v6 = v8;
    }
  }
}

- (void)didEndChangeHandling
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleManager;
  [(PXStoryStyleManager *)&v3 didEndChangeHandling];
  self->_changesOrigin = 0;
}

- (void)performChanges:(id)changes origin:(unint64_t)origin
{
  v14 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  storyQueue = [(PXStoryStyleManager *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  self->_changesOrigin |= origin;
  v8 = PLStoryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2048;
    originCopy = origin;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "%@ performChanges with origin: %lu", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = PXStoryStyleManager;
  [(PXStoryStyleManager *)&v9 performChanges:changesCopy];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:111 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (PXStoryStyleManager)initWithRecipeManager:(id)manager errorReporter:(id)reporter
{
  managerCopy = manager;
  reporterCopy = reporter;
  v26.receiver = self;
  v26.super_class = PXStoryStyleManager;
  v9 = [(PXStoryStyleManager *)&v26 init];
  v10 = v9;
  if (v9)
  {
    [(PXStoryStyleManager *)v9 copyLogConfigurationFrom:managerCopy];
    objc_storeStrong(&v10->_recipeManager, manager);
    objc_storeStrong(&v10->_errorReporter, reporter);
    v11 = +[PXStoryColorGradingRepositoryFactory sharedRepository];
    colorGradingRepository = v10->_colorGradingRepository;
    v10->_colorGradingRepository = v11;

    [(PXStoryRecipeManager *)v10->_recipeManager registerChangeObserver:v10 context:RecipeManagerObservationContext_138985];
    configuration = [managerCopy configuration];
    v14 = PXStoryDefaultStyleProducerForConfiguration(configuration);
    styleProducer = v10->_styleProducer;
    v10->_styleProducer = v14;

    options = [configuration options];
    v10->_styleOptions.croppingOptions = 0;
    *&v10->_styleOptions.preferStillKeySegment = (options & 2) == 0;
    storyQueue = [(PXStoryRecipeManager *)v10->_recipeManager storyQueue];
    storyQueue = v10->_storyQueue;
    v10->_storyQueue = storyQueue;

    v19 = objc_alloc_init(_PXDefaultAudioCueProvider);
    cueProvider = v10->_cueProvider;
    v10->_cueProvider = v19;

    v21 = [[off_1E7721940 alloc] initWithTarget:v10 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v10->_updater;
    v10->_updater = v21;

    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateStyleConfigurationList];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateCurrentStyleInfo];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updatePredefinedStyleInfos];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateStylesAttributes];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateCueSource];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateSelectionDataSource];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateSelectionDataSourceStylesAttributes];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateCurrentStyle];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateCurrentStyleAttributes];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __59__PXStoryStyleManager_initWithRecipeManager_errorReporter___block_invoke;
    v24[3] = &unk_1E773EC68;
    v25 = v10;
    [(PXStoryStyleManager *)v25 performChanges:v24 origin:1];
  }

  return v10;
}

uint64_t __59__PXStoryStyleManager_initWithRecipeManager_errorReporter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateStyleConfigurationList];
  [*(a1 + 32) _invalidatePredefinedStyleInfos];
  [*(a1 + 32) _invalidateCurrentStyleInfo];
  [*(a1 + 32) _invalidateStylesAttributes];
  [*(a1 + 32) _invalidateCurrentStyle];
  v2 = *(a1 + 32);

  return [v2 _invalidateCurrentStyleAttributes];
}

- (PXStoryStyleManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:54 description:{@"%s is not available as initializer", "-[PXStoryStyleManager init]"}];

  abort();
}

@end