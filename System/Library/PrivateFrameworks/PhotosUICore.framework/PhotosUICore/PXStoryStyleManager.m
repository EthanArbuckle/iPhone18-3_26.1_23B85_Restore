@interface PXStoryStyleManager
- ($1A23BB056C565A410801C90FE7234890)styleOptions;
- (BOOL)focusedStyleIsCurrentStyle;
- (PXStoryStyleManager)init;
- (PXStoryStyleManager)initWithRecipeManager:(id)a3 errorReporter:(id)a4;
- (int64_t)focusedStyleIndex;
- (void)_handleCueSource:(id)a3 error:(id)a4 requestID:(int64_t)a5;
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
- (void)applyFocusedStyleWithCustomizedColorGradeKind:(int64_t)a3;
- (void)applyFocusedStyleWithCustomizedSongResource:(id)a3;
- (void)applyStyleAtIndex:(int64_t)a3 fromDataSource:(id)a4;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)didEndChangeHandling;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)performChanges:(id)a3 origin:(unint64_t)a4;
- (void)setAreSelectionDataSourceStylesFinal:(BOOL)a3;
- (void)setAreStylesFinal:(BOOL)a3;
- (void)setCueSource:(id)a3;
- (void)setCurrentStyle:(id)a3;
- (void)setCurrentStyleAttributes:(unint64_t)a3;
- (void)setCurrentStyleInfo:(id)a3;
- (void)setIsCurrentStyleFinal:(BOOL)a3;
- (void)setPredefinedStyleInfos:(id)a3;
- (void)setSelectionDataSource:(id)a3;
- (void)setSelectionDataSourceStylesAttributes:(unint64_t)a3;
- (void)setSelectionFocus:(double)a3;
- (void)setStyleConfigurationList:(id)a3;
- (void)setStylesAttributes:(unint64_t)a3;
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

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryStyleManager *)self recipeManager];
  [v4 addSubprovider:v5];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PXStoryStyleManager_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7746748;
  v5[4] = self;
  v5[5] = a5;
  v5[6] = a4;
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
  v3 = [(PXStoryStyleManager *)self recipeManager];
  v4 = [v3 isRecipeFinal];

  if (v4)
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
  v2 = [(PXStoryStyleManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSelectionDataSourceStylesAttributes];
}

- (void)_updateSelectionDataSource
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryStyleManager *)self predefinedStyleInfos];
  v4 = [(PXStoryStyleManager *)self recipeManager];
  v5 = [v4 configuration];

  if (([v5 options] & 0x10) != 0)
  {
    v17 = [v5 songsConfiguration];
    v7 = [v17 currentAsset];

    v18 = 0;
    if (v7 && v3)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __49__PXStoryStyleManager__updateSelectionDataSource__block_invoke;
      v26[3] = &unk_1E773CD20;
      v27 = v7;
      v19 = [v3 indexOfObjectPassingTest:v26];
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
    v14 = v3;
    v15 = v18;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = [(PXStoryStyleManager *)self currentStyleInfo];
    v7 = v6;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v6 && v3)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __49__PXStoryStyleManager__updateSelectionDataSource__block_invoke_2;
      v24 = &unk_1E773CD20;
      v25 = v6;
      v9 = [v3 indexOfObjectPassingTest:&v21];
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v7 && v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28[0] = v7;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v12 = [v11 arrayByAddingObjectsFromArray:v3];

      v10 = 0;
      v8 = 0;
      v3 = v12;
    }

    v13 = [PXStoryStyleSelectionDataSource alloc];
    v14 = v3;
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
  v2 = [(PXStoryStyleManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSelectionDataSource];
}

- (void)_updateCurrentStyleAttributes
{
  v3 = [(PXStoryStyleManager *)self recipeManager];
  v4 = [v3 recipeAttributes];

  v5 = v4 & 1;
  if ((v4 & 3) != 0)
  {
    v6 = [(PXStoryStyleManager *)self cueSource];

    if (v6)
    {
      v5 |= 2uLL;
    }
  }

  [(PXStoryStyleManager *)self setCurrentStyleAttributes:v5];
}

- (void)_invalidateCurrentStyleAttributes
{
  v2 = [(PXStoryStyleManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentStyleAttributes];
}

- (void)_updateCurrentStyle
{
  v14 = [(PXStoryStyleManager *)self currentStyleInfo];
  v3 = [(PXStoryStyleManager *)self styleProducer];
  v4 = [v14 customColorGradeKind];
  v5 = [v14 originalColorGradeCategory];
  v6 = [v14 songResource];
  v7 = [(PXStoryStyleManager *)self cueSource];
  v8 = [v14 autoEditDecisionList];
  v9 = [(PXStoryStyleManager *)self styleOptions];
  v11 = v10;
  LOBYTE(v13) = [v14 isCustomized];
  v12 = [v3 styleWithCustomColorGradeKind:v4 originalColorGradeCategory:v5 songResource:v6 cueSource:v7 autoEditDecisionList:v8 styleOptions:v9 isCustomized:{v11, v13}];
  [(PXStoryStyleManager *)self setCurrentStyle:v12];
}

- (void)_updateCurrentStyleInfo
{
  v23 = [(PXStoryStyleManager *)self currentStyleInfo];
  v3 = [(PXStoryStyleManager *)self styleConfigurationList];
  if (v3)
  {
    v4 = [v23 songResource];
    v5 = v4;
    if (v4 && !PXStorySongResourceIsNullResource(v4))
    {
      v7 = [v5 px_storyResourceSongAsset];
      if (!v7)
      {
        goto LABEL_12;
      }

      v19 = [(PXStoryStyleManager *)self recipeManager];
      v20 = [v19 recipe];
      v21 = [v20 autoEditDecisionListsBySong];
      v16 = [v21 objectForKeyedSubscript:v7];

      if (!v16)
      {
        goto LABEL_12;
      }

      v17 = [v23 copyWithAutoEditDecisionList:v16];
      v18 = v23;
    }

    else
    {
      v6 = [v3 initialStyleConfiguration];
      v7 = v6;
      if (!v6)
      {
LABEL_12:

        goto LABEL_13;
      }

      v22 = [v6 songResource];
      v8 = [v7 originalColorGradeCategory];
      v9 = [v7 autoEditDecisionList];
      v10 = [v7 customColorGradeKind];
      v11 = [v7 isCustomized];
      if (!v10)
      {
        v12 = [(PXStoryStyleManager *)self colorGradingRepository];
        v10 = [v12 colorGradeKindForColorGradeCategory:v8];
      }

      v13 = [PXStoryStyleConfiguration alloc];
      v14 = [v7 originalColorGradeCategory];
      v15 = v10;
      v16 = v22;
      v17 = [(PXStoryStyleConfiguration *)v13 initWithOriginalColorGradeCategory:v14 customColorGradeKind:v15 songResource:v22 autoEditDecisionList:v9 isCustomized:v11];

      v18 = v8;
    }

    v23 = v17;
    goto LABEL_12;
  }

LABEL_13:
  [(PXStoryStyleManager *)self setCurrentStyleInfo:v23];
}

- (void)_invalidateCurrentStyleInfo
{
  v2 = [(PXStoryStyleManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentStyleInfo];
}

- (void)_handleCueSource:(id)a3 error:(id)a4 requestID:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PXStoryStyleManager *)self storyQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PXStoryStyleManager__handleCueSource_error_requestID___block_invoke;
  v13[3] = &unk_1E774A768;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
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
  v3 = [(PXStoryStyleManager *)self currentStyleInfo];
  v4 = [v3 songResource];
  if ((PXStorySongResourceIsNullResource(v4) & 1) != 0 || (-[PXStoryStyleManager recipeManager](self, "recipeManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 configuration], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "options"), v6, v5, (v7 & 2) != 0))
  {
    v8 = objc_alloc_init(PXConcreteAudioCueSource);
    [(PXStoryStyleManager *)self setCueSource:v8];
  }

  else
  {
    v8 = [v4 px_storyResourceSongAsset];
    if (v8)
    {
      [(PXStoryStyleManager *)self setCueRequestID:[(PXStoryStyleManager *)self cueRequestID]+ 1];
      v9 = [(PXStoryStyleManager *)self cueRequestID];
      objc_initWeak(&location, self);
      v10 = [(PXStoryStyleManager *)self cueProvider];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __39__PXStoryStyleManager__updateCueSource__block_invoke;
      v12[3] = &unk_1E773CCF8;
      objc_copyWeak(v13, &location);
      v13[1] = v9;
      v11 = [v10 requestCuesForAudioAsset:v8 resultHandler:v12];

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
  v2 = [(PXStoryStyleManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCueSource];
}

- (void)_invalidateCurrentStyle
{
  v2 = [(PXStoryStyleManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentStyle];
}

- (void)_updateStylesAttributes
{
  v3 = [(PXStoryStyleManager *)self recipeManager];
  -[PXStoryStyleManager setStylesAttributes:](self, "setStylesAttributes:", [v3 recipeAttributes]);
}

- (void)_invalidateStylesAttributes
{
  v2 = [(PXStoryStyleManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateStylesAttributes];
}

- (void)_updatePredefinedStyleInfos
{
  v4 = [(PXStoryStyleManager *)self styleConfigurationList];
  v5 = [v4 autoEditStyleConfigurations];
  v6 = [(PXStoryStyleManager *)self recipeManager];
  v7 = [v6 configuration];

  v8 = ([v7 options] & 0x10) == 0;
  if ([v5 count])
  {
    v9 = [(PXStoryStyleManager *)self colorGradingRepository];
    v10 = [(PXStoryStyleManager *)self currentStyleInfo];
    v11 = [v10 customColorGradeKind];
    if (!v11)
    {
      v12 = [v10 originalColorGradeCategory];
      v11 = [v9 colorGradeKindForColorGradeCategory:v12 excludingKinds:0];
    }

    v13 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:v11];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __50__PXStoryStyleManager__updatePredefinedStyleInfos__block_invoke;
    v22 = &unk_1E773CCD0;
    v28 = v8;
    v26 = v14;
    v27 = a2;
    v23 = self;
    v24 = v9;
    v25 = v13;
    v15 = v14;
    v16 = v13;
    v17 = v9;
    [v5 enumerateObjectsUsingBlock:&v19];
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
  v2 = [(PXStoryStyleManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePredefinedStyleInfos];
}

- (void)_updateStyleConfigurationList
{
  v5 = [(PXStoryStyleManager *)self recipeManager];
  v3 = [v5 recipe];
  v4 = [v3 styleConfigurationList];
  [(PXStoryStyleManager *)self setStyleConfigurationList:v4];
}

- (void)_invalidateStyleConfigurationList
{
  v2 = [(PXStoryStyleManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateStyleConfigurationList];
}

- (void)setCueSource:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_cueSource != v5 && ([(PXAudioCueSource *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_cueSource, a3);
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

- (void)setSelectionFocus:(double)a3
{
  if (self->_selectionFocus != a3)
  {
    self->_selectionFocus = a3;
    [(PXStoryStyleManager *)self signalChange:256];
  }
}

- (void)applyStyleAtIndex:(int64_t)a3 fromDataSource:(id)a4
{
  v7 = [a4 styleInfos];
  v13 = [v7 objectAtIndexedSubscript:a3];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v13 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:275 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"dataSource.styleInfos[index]", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:275 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"dataSource.styleInfos[index]", v10}];
  }

LABEL_3:
  [(PXStoryStyleManager *)self setCurrentStyleInfo:v13];
}

- (void)applyFocusedStyle
{
  v3 = [(PXStoryStyleManager *)self focusedStyleIndex];
  v4 = [(PXStoryStyleManager *)self selectionDataSource];
  [(PXStoryStyleManager *)self applyStyleAtIndex:v3 fromDataSource:v4];
}

- (void)applyFocusedStyleWithCustomizedSongResource:(id)a3
{
  v5 = a3;
  v6 = [(PXStoryStyleManager *)self selectionDataSource];
  v7 = [v6 styleInfos];
  v8 = [v7 objectAtIndexedSubscript:{-[PXStoryStyleManager focusedStyleIndex](self, "focusedStyleIndex")}];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v8 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:260 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.selectionDataSource.styleInfos[self.focusedStyleIndex]", v14, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:260 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.selectionDataSource.styleInfos[self.focusedStyleIndex]", v14}];
  }

LABEL_3:
  v9 = [v5 px_storyResourceSongAsset];
  if (v9)
  {
    v10 = [(PXStoryStyleManager *)self recipeManager];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__PXStoryStyleManager_applyFocusedStyleWithCustomizedSongResource___block_invoke;
    v17[3] = &unk_1E773CCA8;
    v18 = v9;
    [v10 performChanges:v17];
  }

  v11 = [v8 copyWithCustomizedSongResource:v5];
  [(PXStoryStyleManager *)self setCurrentStyleInfo:v11];
}

- (void)applyFocusedStyleWithCustomizedColorGradeKind:(int64_t)a3
{
  v6 = [(PXStoryStyleManager *)self selectionDataSource];
  v7 = [v6 styleInfos];
  v14 = [v7 objectAtIndexedSubscript:{-[PXStoryStyleManager focusedStyleIndex](self, "focusedStyleIndex")}];

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v14 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:255 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.selectionDataSource.styleInfos[self.focusedStyleIndex]", v11, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:255 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.selectionDataSource.styleInfos[self.focusedStyleIndex]", v11}];
  }

LABEL_3:
  v8 = [v14 copyWithCustomizedColorGradeKind:a3];
  [(PXStoryStyleManager *)self setCurrentStyleInfo:v8];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryStyleManager;
  [(PXStoryStyleManager *)&v4 didPerformChanges];
  v3 = [(PXStoryStyleManager *)self updater];
  [v3 updateIfNeeded];
}

- (BOOL)focusedStyleIsCurrentStyle
{
  v3 = [(PXStoryStyleManager *)self focusedStyleIndex];
  v4 = [(PXStoryStyleManager *)self selectionDataSource];
  LOBYTE(v3) = v3 == [v4 indexOfCurrentStyle];

  return v3;
}

- (int64_t)focusedStyleIndex
{
  [(PXStoryStyleManager *)self selectionFocus];
  v4 = round(v3);
  v5 = [(PXStoryStyleManager *)self selectionDataSource];
  v6 = [v5 numberOfStyles] - 1;

  v7 = v6;
  if (v4 < v6)
  {
    v7 = v4;
  }

  return fmax(v7, 0.0);
}

- (void)setSelectionDataSource:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_selectionDataSource != v5)
  {
    v8 = v5;
    v7 = [(PXStoryStyleSelectionDataSource *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_selectionDataSource, a3);
      [(PXStoryStyleManager *)self setSelectionFocus:[(PXStoryStyleSelectionDataSource *)v8 indexOfCurrentStyle]];
      [(PXStoryStyleManager *)self _invalidateSelectionDataSourceAttributes];
      [(PXStoryStyleManager *)self signalChange:32];
      v6 = v8;
    }
  }
}

- (void)setAreSelectionDataSourceStylesFinal:(BOOL)a3
{
  if (self->_areSelectionDataSourceStylesFinal != a3)
  {
    self->_areSelectionDataSourceStylesFinal = a3;
    [(PXStoryStyleManager *)self signalChange:128];
  }
}

- (void)setSelectionDataSourceStylesAttributes:(unint64_t)a3
{
  selectionDataSourceStylesAttributes = self->_selectionDataSourceStylesAttributes;
  if (selectionDataSourceStylesAttributes != a3)
  {
    if ((selectionDataSourceStylesAttributes & 2) != 0 && ((self->_selectionDataSourceStylesAttributes & 1) == 0) | a3 & 1)
    {
      if ((a3 & 2) != 0)
      {
        goto LABEL_8;
      }
    }

    else if ((((self->_selectionDataSourceStylesAttributes & 2) == 0) & (((self->_selectionDataSourceStylesAttributes & 1) == 0) | a3)) != 0)
    {
LABEL_8:
      self->_selectionDataSourceStylesAttributes = a3;
      [(PXStoryStyleManager *)self signalChange:64];
      [(PXStoryStyleManager *)self setAreSelectionDataSourceStylesFinal:(self->_selectionDataSourceStylesAttributes >> 1) & 1];
      return;
    }

    PXAssertGetLog();
  }
}

- (void)setIsCurrentStyleFinal:(BOOL)a3
{
  if (self->_isCurrentStyleFinal != a3)
  {
    self->_isCurrentStyleFinal = a3;
    [(PXStoryStyleManager *)self signalChange:16];
  }
}

- (void)setCurrentStyleAttributes:(unint64_t)a3
{
  currentStyleAttributes = self->_currentStyleAttributes;
  if (currentStyleAttributes != a3)
  {
    if ((currentStyleAttributes & 2) != 0 && ((self->_currentStyleAttributes & 1) == 0) | a3 & 1)
    {
      if ((a3 & 2) != 0)
      {
        goto LABEL_8;
      }
    }

    else if ((((self->_currentStyleAttributes & 2) == 0) & (((self->_currentStyleAttributes & 1) == 0) | a3)) != 0)
    {
LABEL_8:
      self->_currentStyleAttributes = a3;
      [(PXStoryStyleManager *)self signalChange:8];
      [(PXStoryStyleManager *)self setIsCurrentStyleFinal:(self->_currentStyleAttributes >> 1) & 1];
      return;
    }

    PXAssertGetLog();
  }
}

- (void)setCurrentStyle:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_currentStyle != v5)
  {
    v8 = v5;
    v7 = [(PXStoryStyle *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentStyle, a3);
      [(PXStoryStyleManager *)self signalChange:4];
      v6 = v8;
    }
  }
}

- (void)setCurrentStyleInfo:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_currentStyleInfo != v5)
  {
    v8 = v5;
    v7 = [(PXStoryStyleConfiguration *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_currentStyleInfo, a3);
      [(PXStoryStyleManager *)self _invalidateCueSource];
      [(PXStoryStyleManager *)self _invalidateCurrentStyle];
      [(PXStoryStyleManager *)self _invalidatePredefinedStyleInfos];
      [(PXStoryStyleManager *)self _invalidateSelectionDataSource];
      [(PXStoryStyleManager *)self _invalidateCurrentStyleAttributes];
      v6 = v8;
    }
  }
}

- (void)setAreStylesFinal:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_areStylesFinal != a3)
  {
    self->_areStylesFinal = a3;
    v4 = PLStoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      areStylesFinal = self->_areStylesFinal;
      v6 = 138412546;
      v7 = self;
      v8 = 1024;
      v9 = areStylesFinal;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_INFO, "%@ areStylesFinal: %i", &v6, 0x12u);
    }
  }
}

- (void)setStylesAttributes:(unint64_t)a3
{
  stylesAttributes = self->_stylesAttributes;
  if (stylesAttributes != a3)
  {
    if ((stylesAttributes & 2) != 0 && ((self->_stylesAttributes & 1) == 0) | a3 & 1)
    {
      if ((a3 & 2) != 0)
      {
        goto LABEL_8;
      }
    }

    else if ((((self->_stylesAttributes & 2) == 0) & (((self->_stylesAttributes & 1) == 0) | a3)) != 0)
    {
LABEL_8:
      self->_stylesAttributes = a3;
      [(PXStoryStyleManager *)self setAreStylesFinal:(a3 >> 1) & 1];
      return;
    }

    PXAssertGetLog();
  }
}

- (void)setPredefinedStyleInfos:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_predefinedStyleInfos != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
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

- (void)setStyleConfigurationList:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_styleConfigurationList != v5)
  {
    v8 = v5;
    v7 = [(PXStoryStyleConfigurationList *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_styleConfigurationList, a3);
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

- (void)performChanges:(id)a3 origin:(unint64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PXStoryStyleManager *)self storyQueue];
  dispatch_assert_queue_V2(v7);

  self->_changesOrigin |= a4;
  v8 = PLStoryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v11 = self;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "%@ performChanges with origin: %lu", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = PXStoryStyleManager;
  [(PXStoryStyleManager *)&v9 performChanges:v6];
}

- (void)performChanges:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:111 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (PXStoryStyleManager)initWithRecipeManager:(id)a3 errorReporter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = PXStoryStyleManager;
  v9 = [(PXStoryStyleManager *)&v26 init];
  v10 = v9;
  if (v9)
  {
    [(PXStoryStyleManager *)v9 copyLogConfigurationFrom:v7];
    objc_storeStrong(&v10->_recipeManager, a3);
    objc_storeStrong(&v10->_errorReporter, a4);
    v11 = +[PXStoryColorGradingRepositoryFactory sharedRepository];
    colorGradingRepository = v10->_colorGradingRepository;
    v10->_colorGradingRepository = v11;

    [(PXStoryRecipeManager *)v10->_recipeManager registerChangeObserver:v10 context:RecipeManagerObservationContext_138985];
    v13 = [v7 configuration];
    v14 = PXStoryDefaultStyleProducerForConfiguration(v13);
    styleProducer = v10->_styleProducer;
    v10->_styleProducer = v14;

    v16 = [v13 options];
    v10->_styleOptions.croppingOptions = 0;
    *&v10->_styleOptions.preferStillKeySegment = (v16 & 2) == 0;
    v17 = [(PXStoryRecipeManager *)v10->_recipeManager storyQueue];
    storyQueue = v10->_storyQueue;
    v10->_storyQueue = v17;

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryStyleManager.m" lineNumber:54 description:{@"%s is not available as initializer", "-[PXStoryStyleManager init]"}];

  abort();
}

@end