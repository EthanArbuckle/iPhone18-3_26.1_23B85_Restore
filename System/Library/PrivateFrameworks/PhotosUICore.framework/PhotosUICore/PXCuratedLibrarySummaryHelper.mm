@interface PXCuratedLibrarySummaryHelper
- (BOOL)browserSummaryControllerShouldUpdateImmediately:(id)immediately;
- (PXCuratedLibrarySummaryHelper)init;
- (PXLibrarySummaryDataSource)dataSource;
- (PXLibrarySummaryOutputPresenter)outputPresenter;
- (id)visibleContentSnapshotForBrowserSummaryController:(id)controller;
- (void)_performChanges:(id)changes;
- (void)_setNeedsUpdate;
- (void)_setOutputSubtitle:(id)subtitle;
- (void)_setTopMostAssetCollection:(id)collection;
- (void)_updateHeadlineOutput;
- (void)_updateIfNeeded;
- (void)_updatePrimaryTitleOutput;
- (void)_updatePrimaryTitleOutputFromSummaryController;
- (void)_updateSecondaryTitleOutput;
- (void)_updateSecondaryTitleOutputFromSummaryController;
- (void)_updateTopMostAssetCollection;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDataSource:(id)source;
- (void)setHeadline:(id)headline;
- (void)setOutputPresenter:(id)presenter;
- (void)setSelectionTitle:(id)title;
- (void)setShouldUseAbbreviatedDates:(BOOL)dates;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySummaryHelper.m" lineNumber:185 description:@"not inside -performChanges: or _updateIfNeeded"];
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
      dataSource = [(PXCuratedLibrarySummaryHelper *)self dataSource];
      topMostAssetCollection = [dataSource topMostAssetCollection];
      [(PXCuratedLibrarySummaryHelper *)self _setTopMostAssetCollection:topMostAssetCollection];
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
  dataSource = [(PXCuratedLibrarySummaryHelper *)self dataSource];

  if (dataSource)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PXCuratedLibrarySummaryHelper_visibleContentDidChange__block_invoke;
    v5[3] = &unk_1E774C648;
    v5[4] = self;
    [(PXCuratedLibrarySummaryHelper *)self _performChanges:v5];
    summaryController = [(PXCuratedLibrarySummaryHelper *)self summaryController];
    [summaryController performChanges:&__block_literal_global_208];
  }
}

- (BOOL)browserSummaryControllerShouldUpdateImmediately:(id)immediately
{
  if (!self->_dataSourceRespondsTo.shouldUpdateImmediately)
  {
    return 0;
  }

  selfCopy = self;
  dataSource = [(PXCuratedLibrarySummaryHelper *)self dataSource];
  LOBYTE(selfCopy) = [dataSource curatedLibrarySummaryHelperShouldUpdateImmediately:selfCopy];

  return selfCopy;
}

- (id)visibleContentSnapshotForBrowserSummaryController:(id)controller
{
  if (self->_dataSourceRespondsTo.visibleContentSnapshot)
  {
    dataSource = [(PXCuratedLibrarySummaryHelper *)self dataSource];
    visibleContentSnapshot = [dataSource visibleContentSnapshot];
  }

  else
  {
    visibleContentSnapshot = 0;
  }

  return visibleContentSnapshot;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXSummaryControllerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySummaryHelper.m" lineNumber:334 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PXCuratedLibrarySummaryHelper_observable_didChange_context___block_invoke;
  v12[3] = &unk_1E77498A0;
  v12[4] = self;
  v12[5] = change;
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

- (void)_setOutputSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (self->_outputPresenterRespondsTo.setSubtitle)
  {
    v6 = subtitleCopy;
    [(PXCuratedLibrarySummaryHelper *)self selectionTitle];
    if (objc_claimAutoreleasedReturnValue())
    {
      PXLocalizedStringFromTable(@"PXCuratedLibraryHeaderSubtitleDateRangeAndSelectionFormat", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    outputPresenter = [(PXCuratedLibrarySummaryHelper *)self outputPresenter];
    [outputPresenter setSubtitle:v6];

    subtitleCopy = v6;
  }
}

- (void)_setTopMostAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_topMostAssetCollection != collectionCopy)
  {
    objc_storeStrong(&self->_topMostAssetCollection, collection);
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
  summaryController = [(PXCuratedLibrarySummaryHelper *)self summaryController];
  secondaryTitle = [summaryController secondaryTitle];
  [(PXCuratedLibrarySummaryHelper *)self _setOutputSubtitle:secondaryTitle];
}

- (void)_updateSecondaryTitleOutput
{
  if (self->_needsUpdateFlags.secondaryTitleOutput)
  {
    self->_needsUpdateFlags.secondaryTitleOutput = 0;
    headline = [(PXCuratedLibrarySummaryHelper *)self headline];

    if (!headline)
    {
      if (self->_dataSourceRespondsTo.topMostAssetCollection)
      {
        topMostAssetCollection = [(PXCuratedLibrarySummaryHelper *)self topMostAssetCollection];
        v6 = topMostAssetCollection;
        if (topMostAssetCollection)
        {
          localizedSubtitle = [topMostAssetCollection localizedSubtitle];
          [(PXCuratedLibrarySummaryHelper *)self _setOutputSubtitle:localizedSubtitle];
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
  headline = [(PXCuratedLibrarySummaryHelper *)self headline];

  if (headline)
  {
    summaryController = [(PXCuratedLibrarySummaryHelper *)self summaryController];
    attributedPrimaryTitle = [summaryController attributedPrimaryTitle];
    string = [attributedPrimaryTitle string];
    [(PXCuratedLibrarySummaryHelper *)self _setOutputSubtitle:string];
  }

  else if (self->_outputPresenterRespondsTo.setAttributedTitle)
  {
    summaryController = [(PXCuratedLibrarySummaryHelper *)self summaryController];
    attributedPrimaryTitle = [summaryController attributedPrimaryTitle];
    string = [(PXCuratedLibrarySummaryHelper *)self outputPresenter];
    [string setAttributedTitle:attributedPrimaryTitle];
  }

  else
  {
    if (!self->_outputPresenterRespondsTo.setTitle)
    {
      return;
    }

    summaryController = [(PXCuratedLibrarySummaryHelper *)self summaryController];
    attributedPrimaryTitle = [summaryController attributedPrimaryTitle];
    string = [attributedPrimaryTitle string];
    outputPresenter = [(PXCuratedLibrarySummaryHelper *)self outputPresenter];
    [outputPresenter setTitle:string];
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
    topMostAssetCollection = [(PXCuratedLibrarySummaryHelper *)self topMostAssetCollection];
    if (topMostAssetCollection)
    {
      headline = [(PXCuratedLibrarySummaryHelper *)self headline];

      if (headline)
      {
        localizedTitle = [topMostAssetCollection localizedTitle];
        [(PXCuratedLibrarySummaryHelper *)self _setOutputSubtitle:localizedTitle];
      }

      else
      {
        v5 = topMostAssetCollection;
        if (!self->_outputPresenterRespondsTo.setTitle)
        {
LABEL_15:

          return;
        }

        localizedTitle = [topMostAssetCollection localizedTitle];
        outputPresenter = [(PXCuratedLibrarySummaryHelper *)self outputPresenter];
        [outputPresenter setTitle:localizedTitle];
      }
    }

    else
    {
      [(PXCuratedLibrarySummaryHelper *)self _updatePrimaryTitleOutputFromSummaryController];
    }

    v5 = topMostAssetCollection;
    goto LABEL_15;
  }

  [(PXCuratedLibrarySummaryHelper *)self _updatePrimaryTitleOutputFromSummaryController];
}

- (void)_updateHeadlineOutput
{
  if (self->_needsUpdateFlags.headlineOutput)
  {
    self->_needsUpdateFlags.headlineOutput = 0;
    headline = [(PXCuratedLibrarySummaryHelper *)self headline];
    if (headline && self->_outputPresenterRespondsTo.setTitle)
    {
      v6 = headline;
      outputPresenter = [(PXCuratedLibrarySummaryHelper *)self outputPresenter];
      [outputPresenter setTitle:v6];

      headline = v6;
    }
  }
}

- (void)_performChanges:(id)changes
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(changes + 2))(changes, a2);
  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges && !self->_isPerformingUpdates)
  {

    [(PXCuratedLibrarySummaryHelper *)self _updateIfNeeded];
  }
}

- (void)setShouldUseAbbreviatedDates:(BOOL)dates
{
  if (self->_shouldUseAbbreviatedDates != dates)
  {
    v8 = v3;
    v9 = v4;
    self->_shouldUseAbbreviatedDates = dates;
    summaryController = self->_summaryController;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__PXCuratedLibrarySummaryHelper_setShouldUseAbbreviatedDates___block_invoke;
    v6[3] = &__block_descriptor_33_e45_v16__0___PXMutableBrowserSummaryController__8l;
    datesCopy = dates;
    [(PXBrowserSummaryController *)summaryController performChanges:v6];
  }
}

- (void)setSelectionTitle:(id)title
{
  titleCopy = title;
  selectionTitle = self->_selectionTitle;
  if (selectionTitle != titleCopy && ([(NSString *)selectionTitle isEqual:titleCopy]& 1) == 0)
  {
    v6 = [(NSString *)titleCopy copy];
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

- (void)setHeadline:(id)headline
{
  headlineCopy = headline;
  headline = self->_headline;
  if (headline != headlineCopy && ([(NSString *)headline isEqual:headlineCopy]& 1) == 0)
  {
    v6 = [(NSString *)headlineCopy copy];
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

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if (WeakRetained == sourceCopy)
  {
  }

  else
  {
    v7 = [WeakRetained isEqual:sourceCopy];

    if ((v7 & 1) == 0)
    {
      objc_storeWeak(&self->_dataSource, sourceCopy);
      self->_dataSourceRespondsTo.visibleContentSnapshot = objc_opt_respondsToSelector() & 1;
      self->_dataSourceRespondsTo.topMostAssetCollection = objc_opt_respondsToSelector() & 1;
      self->_dataSourceRespondsTo.shouldUpdateImmediately = objc_opt_respondsToSelector() & 1;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__PXCuratedLibrarySummaryHelper_setDataSource___block_invoke;
      v9[3] = &unk_1E774C648;
      v9[4] = self;
      [(PXCuratedLibrarySummaryHelper *)self _performChanges:v9];
      summaryController = [(PXCuratedLibrarySummaryHelper *)self summaryController];
      [summaryController performChanges:&__block_literal_global_105458];
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

- (void)setOutputPresenter:(id)presenter
{
  presenterCopy = presenter;
  WeakRetained = objc_loadWeakRetained(&self->_outputPresenter);
  v6 = WeakRetained;
  if (WeakRetained == presenterCopy)
  {
  }

  else
  {
    v7 = [WeakRetained isEqual:presenterCopy];

    if ((v7 & 1) == 0)
    {
      objc_storeWeak(&self->_outputPresenter, presenterCopy);
      self->_outputPresenterRespondsTo.setTitle = objc_opt_respondsToSelector() & 1;
      self->_outputPresenterRespondsTo.setSubtitle = objc_opt_respondsToSelector() & 1;
      self->_outputPresenterRespondsTo.setAttributedTitle = objc_opt_respondsToSelector() & 1;
      self->_outputPresenterRespondsTo.defaultAttributes = objc_opt_respondsToSelector() & 1;
      self->_outputPresenterRespondsTo.emphasizedAttributes = objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        wantsLocationNames = [presenterCopy wantsLocationNames];
      }

      else
      {
        wantsLocationNames = 1;
      }

      summaryController = [(PXCuratedLibrarySummaryHelper *)self summaryController];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__PXCuratedLibrarySummaryHelper_setOutputPresenter___block_invoke;
      v11[3] = &unk_1E7738CC8;
      v11[4] = self;
      v12 = presenterCopy;
      v13 = wantsLocationNames;
      [summaryController performChanges:v11];

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