@interface PXCuratedLibrarySummaryHelper
- (BOOL)browserSummaryControllerShouldUpdateImmediately:(id)a3;
- (PXCuratedLibrarySummaryHelper)init;
- (PXLibrarySummaryDataSource)dataSource;
- (PXLibrarySummaryOutputPresenter)outputPresenter;
- (id)visibleContentSnapshotForBrowserSummaryController:(id)a3;
- (void)_performChanges:(id)a3;
- (void)_setNeedsUpdate;
- (void)_setOutputSubtitle:(id)a3;
- (void)_setTopMostAssetCollection:(id)a3;
- (void)_updateHeadlineOutput;
- (void)_updateIfNeeded;
- (void)_updatePrimaryTitleOutput;
- (void)_updatePrimaryTitleOutputFromSummaryController;
- (void)_updateSecondaryTitleOutput;
- (void)_updateSecondaryTitleOutputFromSummaryController;
- (void)_updateTopMostAssetCollection;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDataSource:(id)a3;
- (void)setHeadline:(id)a3;
- (void)setOutputPresenter:(id)a3;
- (void)setSelectionTitle:(id)a3;
- (void)setShouldUseAbbreviatedDates:(BOOL)a3;
- (void)visibleContentDidChange;
@end

@implementation PXCuratedLibrarySummaryHelper

- (PXCuratedLibrarySummaryHelper)init
{
  v6.receiver = self;
  v6.super_class = PXCuratedLibrarySummaryHelper;
  v2 = [(PXCuratedLibrarySummaryHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXBrowserSummaryController);
    summaryController = v2->_summaryController;
    v2->_summaryController = v3;

    [(PXBrowserSummaryController *)v2->_summaryController setDataSource:v2];
    [(PXBrowserSummaryController *)v2->_summaryController registerChangeObserver:v2 context:PXSummaryControllerObservationContext];
  }

  return v2;
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySummaryHelper.m" lineNumber:185 description:@"not inside -performChanges: or _updateIfNeeded"];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXCuratedLibrarySummaryHelper *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXCuratedLibrarySummaryHelper *)self _updateHeadlineOutput];
    [(PXCuratedLibrarySummaryHelper *)self _updateTopMostAssetCollection];
    [(PXCuratedLibrarySummaryHelper *)self _updatePrimaryTitleOutput];
    [(PXCuratedLibrarySummaryHelper *)self _updateSecondaryTitleOutput];
    self->_isPerformingUpdates = isPerformingUpdates;
  }
}

- (void)_updateTopMostAssetCollection
{
  if (self->_needsUpdateFlags.topMostAssetCollection)
  {
    self->_needsUpdateFlags.topMostAssetCollection = 0;
    if (self->_dataSourceRespondsTo.topMostAssetCollection)
    {
      v4 = [(PXCuratedLibrarySummaryHelper *)self dataSource];
      v3 = [v4 topMostAssetCollection];
      [(PXCuratedLibrarySummaryHelper *)self _setTopMostAssetCollection:v3];
    }
  }
}

- (PXLibrarySummaryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (PXLibrarySummaryOutputPresenter)outputPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_outputPresenter);

  return WeakRetained;
}

- (void)visibleContentDidChange
{
  v3 = [(PXCuratedLibrarySummaryHelper *)self dataSource];

  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PXCuratedLibrarySummaryHelper_visibleContentDidChange__block_invoke;
    v5[3] = &unk_1E774C648;
    v5[4] = self;
    [(PXCuratedLibrarySummaryHelper *)self _performChanges:v5];
    v4 = [(PXCuratedLibrarySummaryHelper *)self summaryController];
    [v4 performChanges:&__block_literal_global_208];
  }
}

- (BOOL)browserSummaryControllerShouldUpdateImmediately:(id)a3
{
  if (!self->_dataSourceRespondsTo.shouldUpdateImmediately)
  {
    return 0;
  }

  v3 = self;
  v4 = [(PXCuratedLibrarySummaryHelper *)self dataSource];
  LOBYTE(v3) = [v4 curatedLibrarySummaryHelperShouldUpdateImmediately:v3];

  return v3;
}

- (id)visibleContentSnapshotForBrowserSummaryController:(id)a3
{
  if (self->_dataSourceRespondsTo.visibleContentSnapshot)
  {
    v3 = [(PXCuratedLibrarySummaryHelper *)self dataSource];
    v4 = [v3 visibleContentSnapshot];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PXSummaryControllerObservationContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySummaryHelper.m" lineNumber:334 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PXCuratedLibrarySummaryHelper_observable_didChange_context___block_invoke;
  v12[3] = &unk_1E77498A0;
  v12[4] = self;
  v12[5] = a4;
  [(PXCuratedLibrarySummaryHelper *)self _performChanges:v12];
}

uint64_t __62__PXCuratedLibrarySummaryHelper_observable_didChange_context___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    result = [*(result + 32) _invalidatePrimaryTitleOutput];
    v2 = *(v1 + 40);
  }

  if ((v2 & 2) != 0)
  {
    v3 = *(v1 + 32);

    return [v3 _invalidateSecondaryTitleOutput];
  }

  return result;
}

- (void)_setOutputSubtitle:(id)a3
{
  v4 = a3;
  if (self->_outputPresenterRespondsTo.setSubtitle)
  {
    v6 = v4;
    [(PXCuratedLibrarySummaryHelper *)self selectionTitle];
    if (objc_claimAutoreleasedReturnValue())
    {
      PXLocalizedStringFromTable(@"PXCuratedLibraryHeaderSubtitleDateRangeAndSelectionFormat", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v5 = [(PXCuratedLibrarySummaryHelper *)self outputPresenter];
    [v5 setSubtitle:v6];

    v4 = v6;
  }
}

- (void)_setTopMostAssetCollection:(id)a3
{
  v5 = a3;
  if (self->_topMostAssetCollection != v5)
  {
    objc_storeStrong(&self->_topMostAssetCollection, a3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PXCuratedLibrarySummaryHelper__setTopMostAssetCollection___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXCuratedLibrarySummaryHelper *)self _performChanges:v6];
  }
}

uint64_t __60__PXCuratedLibrarySummaryHelper__setTopMostAssetCollection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidatePrimaryTitleOutput];
  v2 = *(a1 + 32);

  return [v2 _invalidateSecondaryTitleOutput];
}

- (void)_updateSecondaryTitleOutputFromSummaryController
{
  v4 = [(PXCuratedLibrarySummaryHelper *)self summaryController];
  v3 = [v4 secondaryTitle];
  [(PXCuratedLibrarySummaryHelper *)self _setOutputSubtitle:v3];
}

- (void)_updateSecondaryTitleOutput
{
  if (self->_needsUpdateFlags.secondaryTitleOutput)
  {
    self->_needsUpdateFlags.secondaryTitleOutput = 0;
    v3 = [(PXCuratedLibrarySummaryHelper *)self headline];

    if (!v3)
    {
      if (self->_dataSourceRespondsTo.topMostAssetCollection)
      {
        v4 = [(PXCuratedLibrarySummaryHelper *)self topMostAssetCollection];
        v6 = v4;
        if (v4)
        {
          v5 = [v4 localizedSubtitle];
          [(PXCuratedLibrarySummaryHelper *)self _setOutputSubtitle:v5];
        }

        else
        {
          [(PXCuratedLibrarySummaryHelper *)self _updateSecondaryTitleOutputFromSummaryController];
        }
      }

      else
      {

        [(PXCuratedLibrarySummaryHelper *)self _updateSecondaryTitleOutputFromSummaryController];
      }
    }
  }
}

- (void)_updatePrimaryTitleOutputFromSummaryController
{
  v3 = [(PXCuratedLibrarySummaryHelper *)self headline];

  if (v3)
  {
    v7 = [(PXCuratedLibrarySummaryHelper *)self summaryController];
    v4 = [v7 attributedPrimaryTitle];
    v5 = [v4 string];
    [(PXCuratedLibrarySummaryHelper *)self _setOutputSubtitle:v5];
  }

  else if (self->_outputPresenterRespondsTo.setAttributedTitle)
  {
    v7 = [(PXCuratedLibrarySummaryHelper *)self summaryController];
    v4 = [v7 attributedPrimaryTitle];
    v5 = [(PXCuratedLibrarySummaryHelper *)self outputPresenter];
    [v5 setAttributedTitle:v4];
  }

  else
  {
    if (!self->_outputPresenterRespondsTo.setTitle)
    {
      return;
    }

    v7 = [(PXCuratedLibrarySummaryHelper *)self summaryController];
    v4 = [v7 attributedPrimaryTitle];
    v5 = [v4 string];
    v6 = [(PXCuratedLibrarySummaryHelper *)self outputPresenter];
    [v6 setTitle:v5];
  }
}

- (void)_updatePrimaryTitleOutput
{
  if (!self->_needsUpdateFlags.primaryTitleOutput)
  {
    return;
  }

  self->_needsUpdateFlags.primaryTitleOutput = 0;
  if (self->_dataSourceRespondsTo.topMostAssetCollection)
  {
    v7 = [(PXCuratedLibrarySummaryHelper *)self topMostAssetCollection];
    if (v7)
    {
      v3 = [(PXCuratedLibrarySummaryHelper *)self headline];

      if (v3)
      {
        v4 = [v7 localizedTitle];
        [(PXCuratedLibrarySummaryHelper *)self _setOutputSubtitle:v4];
      }

      else
      {
        v5 = v7;
        if (!self->_outputPresenterRespondsTo.setTitle)
        {
LABEL_15:

          return;
        }

        v4 = [v7 localizedTitle];
        v6 = [(PXCuratedLibrarySummaryHelper *)self outputPresenter];
        [v6 setTitle:v4];
      }
    }

    else
    {
      [(PXCuratedLibrarySummaryHelper *)self _updatePrimaryTitleOutputFromSummaryController];
    }

    v5 = v7;
    goto LABEL_15;
  }

  [(PXCuratedLibrarySummaryHelper *)self _updatePrimaryTitleOutputFromSummaryController];
}

- (void)_updateHeadlineOutput
{
  if (self->_needsUpdateFlags.headlineOutput)
  {
    self->_needsUpdateFlags.headlineOutput = 0;
    v4 = [(PXCuratedLibrarySummaryHelper *)self headline];
    if (v4 && self->_outputPresenterRespondsTo.setTitle)
    {
      v6 = v4;
      v5 = [(PXCuratedLibrarySummaryHelper *)self outputPresenter];
      [v5 setTitle:v6];

      v4 = v6;
    }
  }
}

- (void)_performChanges:(id)a3
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(a3 + 2))(a3, a2);
  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges && !self->_isPerformingUpdates)
  {

    [(PXCuratedLibrarySummaryHelper *)self _updateIfNeeded];
  }
}

- (void)setShouldUseAbbreviatedDates:(BOOL)a3
{
  if (self->_shouldUseAbbreviatedDates != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_shouldUseAbbreviatedDates = a3;
    summaryController = self->_summaryController;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__PXCuratedLibrarySummaryHelper_setShouldUseAbbreviatedDates___block_invoke;
    v6[3] = &__block_descriptor_33_e45_v16__0___PXMutableBrowserSummaryController__8l;
    v7 = a3;
    [(PXBrowserSummaryController *)summaryController performChanges:v6];
  }
}

- (void)setSelectionTitle:(id)a3
{
  v4 = a3;
  selectionTitle = self->_selectionTitle;
  if (selectionTitle != v4 && ([(NSString *)selectionTitle isEqual:v4]& 1) == 0)
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_selectionTitle;
    self->_selectionTitle = v6;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PXCuratedLibrarySummaryHelper_setSelectionTitle___block_invoke;
    v8[3] = &unk_1E774C648;
    v8[4] = self;
    [(PXCuratedLibrarySummaryHelper *)self _performChanges:v8];
  }
}

- (void)setHeadline:(id)a3
{
  v4 = a3;
  headline = self->_headline;
  if (headline != v4 && ([(NSString *)headline isEqual:v4]& 1) == 0)
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_headline;
    self->_headline = v6;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__PXCuratedLibrarySummaryHelper_setHeadline___block_invoke;
    v8[3] = &unk_1E774C648;
    v8[4] = self;
    [(PXCuratedLibrarySummaryHelper *)self _performChanges:v8];
  }
}

uint64_t __45__PXCuratedLibrarySummaryHelper_setHeadline___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateHeadlineOutput];
  [*(a1 + 32) _invalidatePrimaryTitleOutput];
  v2 = *(a1 + 32);

  return [v2 _invalidateSecondaryTitleOutput];
}

- (void)setDataSource:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if (WeakRetained == v4)
  {
  }

  else
  {
    v7 = [WeakRetained isEqual:v4];

    if ((v7 & 1) == 0)
    {
      objc_storeWeak(&self->_dataSource, v4);
      self->_dataSourceRespondsTo.visibleContentSnapshot = objc_opt_respondsToSelector() & 1;
      self->_dataSourceRespondsTo.topMostAssetCollection = objc_opt_respondsToSelector() & 1;
      self->_dataSourceRespondsTo.shouldUpdateImmediately = objc_opt_respondsToSelector() & 1;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__PXCuratedLibrarySummaryHelper_setDataSource___block_invoke;
      v9[3] = &unk_1E774C648;
      v9[4] = self;
      [(PXCuratedLibrarySummaryHelper *)self _performChanges:v9];
      v8 = [(PXCuratedLibrarySummaryHelper *)self summaryController];
      [v8 performChanges:&__block_literal_global_105458];
    }
  }
}

uint64_t __47__PXCuratedLibrarySummaryHelper_setDataSource___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateTopMostAssetCollection];
  [*(a1 + 32) _invalidatePrimaryTitleOutput];
  v2 = *(a1 + 32);

  return [v2 _invalidateSecondaryTitleOutput];
}

- (void)setOutputPresenter:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_outputPresenter);
  v6 = WeakRetained;
  if (WeakRetained == v4)
  {
  }

  else
  {
    v7 = [WeakRetained isEqual:v4];

    if ((v7 & 1) == 0)
    {
      objc_storeWeak(&self->_outputPresenter, v4);
      self->_outputPresenterRespondsTo.setTitle = objc_opt_respondsToSelector() & 1;
      self->_outputPresenterRespondsTo.setSubtitle = objc_opt_respondsToSelector() & 1;
      self->_outputPresenterRespondsTo.setAttributedTitle = objc_opt_respondsToSelector() & 1;
      self->_outputPresenterRespondsTo.defaultAttributes = objc_opt_respondsToSelector() & 1;
      self->_outputPresenterRespondsTo.emphasizedAttributes = objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        v8 = [v4 wantsLocationNames];
      }

      else
      {
        v8 = 1;
      }

      v9 = [(PXCuratedLibrarySummaryHelper *)self summaryController];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__PXCuratedLibrarySummaryHelper_setOutputPresenter___block_invoke;
      v11[3] = &unk_1E7738CC8;
      v11[4] = self;
      v12 = v4;
      v13 = v8;
      [v9 performChanges:v11];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__PXCuratedLibrarySummaryHelper_setOutputPresenter___block_invoke_2;
      v10[3] = &unk_1E774C648;
      v10[4] = self;
      [(PXCuratedLibrarySummaryHelper *)self _performChanges:v10];
    }
  }
}

void __52__PXCuratedLibrarySummaryHelper_setOutputPresenter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(*(a1 + 32) + 20))
  {
    v4 = [*(a1 + 40) defaultAttributes];
    [v6 setDefaultAttributes:v4];
  }

  else
  {
    [v3 setDefaultAttributes:0];
  }

  if (*(*(a1 + 32) + 21))
  {
    v5 = [*(a1 + 40) emphasizedAttributes];
    [v6 setEmphasizedAttributes:v5];
  }

  else
  {
    [v6 setEmphasizedAttributes:0];
  }

  [v6 setShouldShowLocationNames:*(a1 + 48)];
}

uint64_t __52__PXCuratedLibrarySummaryHelper_setOutputPresenter___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateTopMostAssetCollection];
  [*(a1 + 32) _invalidateHeadlineOutput];
  [*(a1 + 32) _invalidatePrimaryTitleOutput];
  v2 = *(a1 + 32);

  return [v2 _invalidateSecondaryTitleOutput];
}

@end