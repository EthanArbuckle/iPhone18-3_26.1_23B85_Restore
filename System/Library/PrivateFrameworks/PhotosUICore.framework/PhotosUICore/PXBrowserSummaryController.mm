@interface PXBrowserSummaryController
- (BOOL)shouldUpdateImmediately;
- (PXBrowserSummaryController)init;
- (PXBrowserSummaryControllerDataSource)dataSource;
- (id)_performRequestBlock:(id)block;
- (id)_requestTitlesInfoWithResultHandler:(id)handler;
- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler;
- (int64_t)priorityForInfoRequestOfKind:(id)kind;
- (void)_invalidateTitles;
- (void)_setAttributedPrimaryFallbackTitle:(id)title accessibilityIdentifier:(id)identifier;
- (void)_setAttributedPrimaryTitle:(id)title accessibilityIdentifier:(id)identifier;
- (void)_setSecondaryTitle:(id)title accessibilityIdentifier:(id)identifier;
- (void)_setTertiaryTitle:(id)title accessibilityIdentifier:(id)identifier;
- (void)_updateAttributedSelectionTitleIfNeeded;
- (void)_updateContainerDateIntervalIfNeeded;
- (void)_updateContainerFallbackTitleIfNeeded;
- (void)_updateContainerTitleIfNeeded;
- (void)_updateFilteringContainerContentIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateLocalizedContainerItemsCountIfNeeded;
- (void)_updateSelectionSnapshotIfNeeded;
- (void)_updateStackedAssetsIfNeeded;
- (void)didPerformChanges;
- (void)infoUpdaterDidUpdate:(id)update;
- (void)invalidateContainerDateInterval;
- (void)invalidateContainerFallbackTitle;
- (void)invalidateContainerTitle;
- (void)invalidateFilteringContainerContent;
- (void)invalidateLocalizedContainerItemsCount;
- (void)invalidateSelection;
- (void)invalidateVisibleContent;
- (void)performBlockWhenDoneUpdating:(id)updating;
- (void)performChanges:(id)changes;
- (void)setAttributedSelectionTitle:(id)title;
- (void)setContainerDateFormatGranularity:(unint64_t)granularity;
- (void)setContainerDateInterval:(id)interval;
- (void)setContainerFallbackTitle:(id)title;
- (void)setContainerTitle:(id)title;
- (void)setDataSource:(id)source;
- (void)setDefaultAttributes:(id)attributes;
- (void)setEmphasizedAttributes:(id)attributes;
- (void)setFilteringContainerContent:(BOOL)content;
- (void)setLocalizedContainerItemsCount:(id)count;
- (void)setNavigationTitle:(id)title;
- (void)setReady:(BOOL)ready;
- (void)setSelectionAttributes:(id)attributes;
- (void)setSelectionSnapshot:(id)snapshot;
- (void)setShouldShowLocationNames:(BOOL)names;
- (void)setShouldUseAbbreviatedDates:(BOOL)dates;
- (void)setShouldUseNavigationTitle:(BOOL)title;
- (void)setShouldUseSubtitles:(BOOL)subtitles;
- (void)setStackedAssets:(id)assets;
@end

@implementation PXBrowserSummaryController

- (PXBrowserSummaryController)init
{
  v24.receiver = self;
  v24.super_class = PXBrowserSummaryController;
  v2 = [(PXBrowserSummaryController *)&v24 init];
  if (v2)
  {
    v3 = [[off_1E7721770 alloc] initWithInfoProvider:v2 infoKind:@"PXVisibleDateIntervalInfoKind"];
    visibleMetadataInfoUpdater = v2->_visibleMetadataInfoUpdater;
    v2->_visibleMetadataInfoUpdater = v3;

    v5 = [[off_1E7721770 alloc] initWithInfoProvider:v2 infoKind:@"PXSelectedItemsInfoKind"];
    selectionInfoUpdater = v2->_selectionInfoUpdater;
    v2->_selectionInfoUpdater = v5;

    v7 = [[off_1E7721770 alloc] initWithInfoProvider:v2 infoKind:@"PXOutputTitleInfoKind"];
    titlesInfoUpdater = v2->_titlesInfoUpdater;
    v2->_titlesInfoUpdater = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("com.apple.PXBrowserSummaryController", v10);
    queue = v2->_queue;
    v2->_queue = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AB88]);
    dateIntervalFormatter = v2->_dateIntervalFormatter;
    v2->_dateIntervalFormatter = v13;

    v15 = [[PXSelectedItemsStack alloc] initWithDepth:3];
    selectedAssetsStack = v2->_selectedAssetsStack;
    v2->_selectedAssetsStack = v15;

    *&v2->_shouldUseSubtitles = 1;
    v2->_shouldShowLocationNames = 0;
    v17 = PXLocalizedStringFromTable(@"PXBrowserSummaryNoFilteringResultsPlaceholderText", @"PhotosUICore");
    noFilteringResultsPlaceholderText = v2->_noFilteringResultsPlaceholderText;
    v2->_noFilteringResultsPlaceholderText = v17;

    v19 = PXLocalizedStringFromTable(@"PXBrowserSummaryComponentsSeparator", @"PhotosUICore");
    localizedComponentsSeparator = v2->_localizedComponentsSeparator;
    v2->_localizedComponentsSeparator = v19;

    v21 = objc_alloc_init(MEMORY[0x1E696AB78]);
    importDateFormatter = v2->_importDateFormatter;
    v2->_importDateFormatter = v21;

    [(NSDateFormatter *)v2->_importDateFormatter setDateStyle:3];
    [(NSDateFormatter *)v2->_importDateFormatter setTimeStyle:0];
    [(PXInfoUpdater *)v2->_visibleMetadataInfoUpdater setObserver:v2];
    [(PXInfoUpdater *)v2->_selectionInfoUpdater setObserver:v2];
    [(PXInfoUpdater *)v2->_titlesInfoUpdater setObserver:v2];
    v2->_containerDateFormatGranularity = 8;
  }

  return v2;
}

- (BOOL)shouldUpdateImmediately
{
  if (!self->_dataSourceRespondsTo.shouldUpdateImmediately)
  {
    return 0;
  }

  selfCopy = self;
  dataSource = [(PXBrowserSummaryController *)self dataSource];
  LOBYTE(selfCopy) = [dataSource browserSummaryControllerShouldUpdateImmediately:selfCopy];

  return selfCopy;
}

- (void)invalidateContainerTitle
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__PXBrowserSummaryController_invalidateContainerTitle__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXBrowserSummaryController *)self performChanges:v2];
}

- (void)invalidateContainerFallbackTitle
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__PXBrowserSummaryController_invalidateContainerFallbackTitle__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXBrowserSummaryController *)self performChanges:v2];
}

- (void)invalidateLocalizedContainerItemsCount
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__PXBrowserSummaryController_invalidateLocalizedContainerItemsCount__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXBrowserSummaryController *)self performChanges:v2];
}

- (void)invalidateContainerDateInterval
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__PXBrowserSummaryController_invalidateContainerDateInterval__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXBrowserSummaryController *)self performChanges:v2];
}

- (void)invalidateVisibleContent
{
  visibleMetadataInfoUpdater = [(PXBrowserSummaryController *)self visibleMetadataInfoUpdater];
  [visibleMetadataInfoUpdater invalidateInfo];
}

- (PXBrowserSummaryControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)invalidateSelection
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__PXBrowserSummaryController_invalidateSelection__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXBrowserSummaryController *)self performChanges:v2];
}

- (void)invalidateFilteringContainerContent
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__PXBrowserSummaryController_invalidateFilteringContainerContent__block_invoke;
  v2[3] = &unk_1E772F550;
  v2[4] = self;
  [(PXBrowserSummaryController *)self performChanges:v2];
}

- (void)didPerformChanges
{
  [(PXBrowserSummaryController *)self _updateIfNeeded];
  v3.receiver = self;
  v3.super_class = PXBrowserSummaryController;
  [(PXBrowserSummaryController *)&v3 didPerformChanges];
}

- (void)_updateIfNeeded
{
  if ([(PXBrowserSummaryController *)self _needsUpdate])
  {
    [(PXBrowserSummaryController *)self _updateContainerTitleIfNeeded];
    [(PXBrowserSummaryController *)self _updateContainerFallbackTitleIfNeeded];
    [(PXBrowserSummaryController *)self _updateLocalizedContainerItemsCountIfNeeded];
    [(PXBrowserSummaryController *)self _updateContainerDateIntervalIfNeeded];
    [(PXBrowserSummaryController *)self _updateSelectionSnapshotIfNeeded];
    [(PXBrowserSummaryController *)self _updateFilteringContainerContentIfNeeded];
    [(PXBrowserSummaryController *)self _updateAttributedSelectionTitleIfNeeded];

    [(PXBrowserSummaryController *)self _updateStackedAssetsIfNeeded];
  }
}

- (void)_updateContainerTitleIfNeeded
{
  if (self->_needsUpdateFlags.containerTitle)
  {
    self->_needsUpdateFlags.containerTitle = 0;
    if (self->_dataSourceRespondsTo.containerTitle)
    {
      dataSource = [(PXBrowserSummaryController *)self dataSource];
      v5 = [dataSource containerTitleForBrowserSummaryController:self];
    }

    else
    {
      v5 = 0;
    }

    [(PXBrowserSummaryController *)self setContainerTitle:v5];
  }
}

- (void)_updateContainerFallbackTitleIfNeeded
{
  if (self->_needsUpdateFlags.containerFallbackTitle)
  {
    self->_needsUpdateFlags.containerFallbackTitle = 0;
    if (self->_dataSourceRespondsTo.containerFallbackTitle)
    {
      dataSource = [(PXBrowserSummaryController *)self dataSource];
      v5 = [dataSource containerFallbackTitleForBrowserSummaryController:self];
    }

    else
    {
      v5 = 0;
    }

    [(PXBrowserSummaryController *)self setContainerFallbackTitle:v5];
  }
}

- (void)_updateLocalizedContainerItemsCountIfNeeded
{
  if (self->_needsUpdateFlags.localizedContainerItemsCount)
  {
    self->_needsUpdateFlags.localizedContainerItemsCount = 0;
    if (self->_dataSourceRespondsTo.localizedContainerItemsCount)
    {
      dataSource = [(PXBrowserSummaryController *)self dataSource];
      v5 = [dataSource localizedContainerItemsCountForBrowserSummaryController:self];
    }

    else
    {
      v5 = 0;
    }

    [(PXBrowserSummaryController *)self setLocalizedContainerItemsCount:v5];
  }
}

- (void)_updateContainerDateIntervalIfNeeded
{
  if (self->_needsUpdateFlags.containerDateInterval)
  {
    self->_needsUpdateFlags.containerDateInterval = 0;
    if (self->_dataSourceRespondsTo.containerDateInterval)
    {
      dataSource = [(PXBrowserSummaryController *)self dataSource];
      v5 = [dataSource containerDateIntervalForBrowserSummaryController:self];
    }

    else
    {
      v5 = 0;
    }

    [(PXBrowserSummaryController *)self setContainerDateInterval:v5];
  }
}

- (void)_updateSelectionSnapshotIfNeeded
{
  if (self->_needsUpdateFlags.selectionSnapshot)
  {
    self->_needsUpdateFlags.selectionSnapshot = 0;
    if (self->_dataSourceRespondsTo.selectionSnapshot)
    {
      dataSource = [(PXBrowserSummaryController *)self dataSource];
      v3 = [dataSource selectionSnapshotForBrowserSummaryController:self];
      [(PXBrowserSummaryController *)self setSelectionSnapshot:v3];
    }

    else
    {

      [(PXBrowserSummaryController *)self setSelectionSnapshot:0];
    }
  }
}

- (void)_updateFilteringContainerContentIfNeeded
{
  if (self->_needsUpdateFlags.filteringContainerContent)
  {
    self->_needsUpdateFlags.filteringContainerContent = 0;
    if (self->_dataSourceRespondsTo.filteringContainerContent)
    {
      dataSource = [(PXBrowserSummaryController *)self dataSource];
      -[PXBrowserSummaryController setFilteringContainerContent:](self, "setFilteringContainerContent:", [dataSource isFilteringContainerContentForBrowserSummaryController:self]);
    }

    else
    {

      [(PXBrowserSummaryController *)self setFilteringContainerContent:0];
    }
  }
}

- (void)_updateAttributedSelectionTitleIfNeeded
{
  if (self->_needsUpdateFlags.attributedSelectionTitle)
  {
    self->_needsUpdateFlags.attributedSelectionTitle = 0;
    selectionInfoUpdater = [(PXBrowserSummaryController *)self selectionInfoUpdater];
    info = [selectionInfoUpdater info];

    v5 = [info objectForKeyedSubscript:@"count"];
    integerValue = [v5 integerValue];

    if (integerValue >= 2)
    {
      v7 = [info objectForKeyedSubscript:@"mediaType"];
      integerValue2 = [v7 integerValue];

      PXLocalizedAssetCountForUsage(integerValue, integerValue2, 0, 1);
    }

    [(PXBrowserSummaryController *)self setAttributedSelectionTitle:0];
  }
}

- (void)_updateStackedAssetsIfNeeded
{
  if (self->_needsUpdateFlags.stackedAssets)
  {
    self->_needsUpdateFlags.stackedAssets = 0;
    selectionInfoUpdater = [(PXBrowserSummaryController *)self selectionInfoUpdater];
    info = [selectionInfoUpdater info];

    v5 = [info objectForKeyedSubscript:@"count"];
    integerValue = [v5 integerValue];

    if (integerValue < 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = [info objectForKeyedSubscript:@"stackedAssets"];
    }

    v8 = PFFilter();
    [(PXBrowserSummaryController *)self setStackedAssets:v8];
  }
}

- (void)_invalidateTitles
{
  titlesInfoUpdater = [(PXBrowserSummaryController *)self titlesInfoUpdater];
  [titlesInfoUpdater invalidateInfo];
}

- (int64_t)priorityForInfoRequestOfKind:(id)kind
{
  if ([kind isEqualToString:@"PXSelectedItemsInfoKind"])
  {
    selectionSnapshot = [(PXBrowserSummaryController *)self selectionSnapshot];
    estimatedAssetCount = [selectionSnapshot estimatedAssetCount];

    v6 = 10;
    if (estimatedAssetCount != 1)
    {
      v6 = 0;
    }

    if (estimatedAssetCount)
    {
      v7 = v6;
    }

    else
    {
      v7 = 100;
    }
  }

  else
  {
    v7 = 0;
  }

  if ([(PXBrowserSummaryController *)self shouldUpdateImmediately])
  {
    return 100;
  }

  else
  {
    return v7;
  }
}

- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler
{
  kindCopy = kind;
  handlerCopy = handler;
  if (![kindCopy isEqualToString:@"PXVisibleDateIntervalInfoKind"])
  {
    if ([kindCopy isEqualToString:@"PXSelectedItemsInfoKind"])
    {
      selectionSnapshot = [(PXBrowserSummaryController *)self selectionSnapshot];
      if ([selectionSnapshot estimatedAssetCount] < 1)
      {
        handlerCopy[2](handlerCopy, 0);
        v13 = 0;
      }

      else
      {
        selectedAssetsStack = [(PXBrowserSummaryController *)self selectedAssetsStack];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __66__PXBrowserSummaryController_requestInfoOfKind_withResultHandler___block_invoke_2;
        v19[3] = &unk_1E774A0E0;
        v20 = selectionSnapshot;
        v21 = selectedAssetsStack;
        v22 = handlerCopy;
        v15 = selectedAssetsStack;
        v13 = [(PXBrowserSummaryController *)self _performRequestBlock:v19];
      }

      goto LABEL_14;
    }

    if (![kindCopy isEqualToString:@"PXOutputTitleInfoKind"])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSummaryController.m" lineNumber:919 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v16 = [(PXBrowserSummaryController *)self _requestTitlesInfoWithResultHandler:handlerCopy];
LABEL_12:
    v13 = 0;
    goto LABEL_15;
  }

  if (!self->_dataSourceRespondsTo.visibleContentSnapshot)
  {
    [(PXBrowserSummaryController *)self shouldShowLocationNames];
    goto LABEL_9;
  }

  dataSource = [(PXBrowserSummaryController *)self dataSource];
  v10 = [dataSource visibleContentSnapshotForBrowserSummaryController:self];

  shouldShowLocationNames = [(PXBrowserSummaryController *)self shouldShowLocationNames];
  if (!v10)
  {
LABEL_9:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_12;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__PXBrowserSummaryController_requestInfoOfKind_withResultHandler___block_invoke;
  v23[3] = &unk_1E774A940;
  v24 = v10;
  v26 = shouldShowLocationNames;
  v25 = handlerCopy;
  selectionSnapshot = v10;
  v13 = [(PXBrowserSummaryController *)self _performRequestBlock:v23];

LABEL_14:
LABEL_15:

  return v13;
}

void __66__PXBrowserSummaryController_requestInfoOfKind_withResultHandler___block_invoke(uint64_t a1)
{
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v2 = [*(a1 + 32) dateInterval];
  [v6 setObject:v2 forKeyedSubscript:@"dateInterval"];

  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "dateIntervalGranularity")}];
  [v6 setObject:v3 forKeyedSubscript:@"granularity"];

  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) locationNames];
    [v6 setObject:v4 forKeyedSubscript:@"locationNames"];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) localizedPlaceholderText];
    [v6 setObject:v5 forKeyedSubscript:@"placeholder"];
  }

  (*(*(a1 + 40) + 16))();
}

void __66__PXBrowserSummaryController_requestInfoOfKind_withResultHandler___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "assetCount")}];
  [v2 setObject:v3 forKeyedSubscript:@"count"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "mediaType")}];
  [v2 setObject:v4 forKeyedSubscript:@"mediaType"];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PXBrowserSummaryController_requestInfoOfKind_withResultHandler___block_invoke_3;
  v7[3] = &unk_1E772F5F0;
  v5 = *(a1 + 40);
  v8 = *(a1 + 32);
  [v5 performChanges:v7];
  v6 = [*(a1 + 40) topItems];
  [v2 setObject:v6 forKeyedSubscript:@"stackedAssets"];

  (*(*(a1 + 48) + 16))();
}

void __66__PXBrowserSummaryController_requestInfoOfKind_withResultHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_PXBrowserSummarySelectedItemsSnapshot alloc] initWithBrowserSelectionSnapshot:*(a1 + 32)];
  [v3 updateWithSelectedItemsSnapshot:v4];
}

- (void)infoUpdaterDidUpdate:(id)update
{
  updateCopy = update;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PXBrowserSummaryController_infoUpdaterDidUpdate___block_invoke;
  v7[3] = &unk_1E77499B0;
  v8 = updateCopy;
  selfCopy = self;
  v10 = a2;
  v6 = updateCopy;
  [(PXBrowserSummaryController *)self performChanges:v7];
}

void __51__PXBrowserSummaryController_infoUpdaterDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) visibleMetadataInfoUpdater];

  if (v3 == v4)
  {
    [*(a1 + 40) _invalidateTitles];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) selectionInfoUpdater];

    if (v5 == v6)
    {
      [*(a1 + 40) _invalidateAttributedSelectionTitle];
      [*(a1 + 40) _invalidateStackedAssets];
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) titlesInfoUpdater];

      if (v7 != v8)
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        [v24 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"PXBrowserSummaryController.m" lineNumber:867 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v9 = [*(a1 + 40) titlesInfoUpdater];
      v10 = [v9 info];

      v11 = *(a1 + 40);
      v12 = [v10 objectForKeyedSubscript:@"attributedPrimaryTitle"];
      v13 = [v10 objectForKeyedSubscript:@"primaryTitleAccessibilityIdentifier"];
      [v11 _setAttributedPrimaryTitle:v12 accessibilityIdentifier:v13];

      v14 = *(a1 + 40);
      v15 = [v10 objectForKeyedSubscript:@"PXTitlesInfoKindAttributedPrimaryFallbackTitle"];
      v16 = [v10 objectForKeyedSubscript:@"PXTitlesInfoKindPrimaryFallbackTitleAccessibilityIdentifier"];
      [v14 _setAttributedPrimaryFallbackTitle:v15 accessibilityIdentifier:v16];

      v17 = *(a1 + 40);
      v18 = [v10 objectForKeyedSubscript:@"secondaryTitle"];
      v19 = [v10 objectForKeyedSubscript:@"secondaryTitleAccessibilityIdentifier"];
      [v17 _setSecondaryTitle:v18 accessibilityIdentifier:v19];

      v20 = *(a1 + 40);
      v21 = [v10 objectForKeyedSubscript:@"tertiaryTitle"];
      v22 = [v10 objectForKeyedSubscript:@"tertiaryTitleAccessibilityIdentifier"];
      [v20 _setTertiaryTitle:v21 accessibilityIdentifier:v22];

      v23 = [v10 objectForKeyedSubscript:@"navigationTitle"];
      [*(a1 + 40) setNavigationTitle:v23];
    }
  }
}

- (id)_requestTitlesInfoWithResultHandler:(id)handler
{
  handlerCopy = handler;
  defaultAttributes = [(PXBrowserSummaryController *)self defaultAttributes];
  emphasizedAttributes = [(PXBrowserSummaryController *)self emphasizedAttributes];
  visibleMetadataInfoUpdater = [(PXBrowserSummaryController *)self visibleMetadataInfoUpdater];
  info = [visibleMetadataInfoUpdater info];

  containerTitle = [(PXBrowserSummaryController *)self containerTitle];
  containerFallbackTitle = [(PXBrowserSummaryController *)self containerFallbackTitle];
  isFilteringContainerContent = [(PXBrowserSummaryController *)self isFilteringContainerContent];
  containerDateInterval = [(PXBrowserSummaryController *)self containerDateInterval];
  dateIntervalFormatter = [(PXBrowserSummaryController *)self dateIntervalFormatter];
  noFilteringResultsPlaceholderText = [(PXBrowserSummaryController *)self noFilteringResultsPlaceholderText];
  localizedContainerItemsCount = [(PXBrowserSummaryController *)self localizedContainerItemsCount];
  localizedComponentsSeparator = [(PXBrowserSummaryController *)self localizedComponentsSeparator];
  shouldUseSubtitles = [(PXBrowserSummaryController *)self shouldUseSubtitles];
  shouldUseNavigationTitle = [(PXBrowserSummaryController *)self shouldUseNavigationTitle];
  shouldShowLocationNames = [(PXBrowserSummaryController *)self shouldShowLocationNames];
  if (self->_dataSourceRespondsTo.useAssetImportDate)
  {
    dataSource = [(PXBrowserSummaryController *)self dataSource];
    shouldShowImportDates = [dataSource shouldShowImportDates];
  }

  else
  {
    shouldShowImportDates = 0;
  }

  v33 = shouldUseNavigationTitle;
  if (![containerTitle length])
  {
    if ([containerFallbackTitle length] != 0 && shouldUseSubtitles)
    {
      goto LABEL_6;
    }

LABEL_11:
    v28 = 0;
    v32 = 0;
    goto LABEL_12;
  }

  if (!shouldUseSubtitles)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (containerDateInterval)
  {
    v12 = shouldUseNavigationTitle;
  }

  else
  {
    v12 = 1;
  }

  v28 = v12;
  v32 = v12 ^ 1;
LABEL_12:
  shouldUseAbbreviatedDates = [(PXBrowserSummaryController *)self shouldUseAbbreviatedDates];
  containerDateFormatGranularity = [(PXBrowserSummaryController *)self containerDateFormatGranularity];
  if ([containerTitle length])
  {
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:containerTitle attributes:emphasizedAttributes];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __66__PXBrowserSummaryController__requestTitlesInfoWithResultHandler___block_invoke;
    v79[3] = &unk_1E772F5A0;
    v79[4] = self;
    v14 = @"ContainerTitle";
    v15 = v13;
    v80 = v15;
    v81 = @"ContainerTitle";
    [(PXBrowserSummaryController *)self performChanges:v79];
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v40 = containerTitle;
  v35 = containerFallbackTitle;
  v16 = containerDateInterval;
  if ([containerFallbackTitle length])
  {
    v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:containerFallbackTitle attributes:emphasizedAttributes];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __66__PXBrowserSummaryController__requestTitlesInfoWithResultHandler___block_invoke_2;
    v76[3] = &unk_1E772F5A0;
    v76[4] = self;
    v18 = v17;
    v19 = @"ContainerFallbackTitle";
    v77 = v18;
    v78 = @"ContainerFallbackTitle";
    [(PXBrowserSummaryController *)self performChanges:v76];
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __66__PXBrowserSummaryController__requestTitlesInfoWithResultHandler___block_invoke_3;
  v51[3] = &unk_1E772F5C8;
  v52 = info;
  v53 = v15;
  v68 = isFilteringContainerContent;
  v54 = v14;
  v55 = containerDateInterval;
  v69 = shouldUseAbbreviatedDates;
  v56 = dateIntervalFormatter;
  v57 = defaultAttributes;
  v58 = emphasizedAttributes;
  v59 = v18;
  v70 = shouldShowLocationNames;
  v71 = shouldShowImportDates;
  v60 = v19;
  selfCopy = self;
  v72 = v32;
  v73 = v28;
  v74 = shouldUseSubtitles;
  v75 = v33;
  v62 = noFilteringResultsPlaceholderText;
  v63 = localizedContainerItemsCount;
  v64 = v40;
  v65 = localizedComponentsSeparator;
  v66 = handlerCopy;
  v67 = containerDateFormatGranularity;
  v48 = handlerCopy;
  v39 = localizedComponentsSeparator;
  v41 = v40;
  v43 = localizedContainerItemsCount;
  v45 = noFilteringResultsPlaceholderText;
  v37 = v18;
  v20 = emphasizedAttributes;
  v21 = defaultAttributes;
  v22 = dateIntervalFormatter;
  v23 = v16;
  v24 = v15;
  v25 = info;
  v26 = [(PXBrowserSummaryController *)self _performRequestBlock:v51];

  return v26;
}

void __66__PXBrowserSummaryController__requestTitlesInfoWithResultHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"dateInterval"];
  v3 = *(a1 + 40);
  v37 = v2;
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 48);
    goto LABEL_10;
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"granularity"];
  v7 = [v6 unsignedIntegerValue];

  v8 = v37;
  if (v8)
  {
    v9 = v8;
LABEL_5:
    v10 = [*(a1 + 64) px_dateTemplateForGranularity:v7 abbreviated:*(a1 + 161)];
    [*(a1 + 64) setDateTemplate:v10];

    v11 = [*(a1 + 64) px_attributedStringFromDateInterval:v9 defaultAttributes:*(a1 + 72) emphasizedAttributes:*(a1 + 80)];
    v4 = [v11 px_attributedStringByApplyingCapitalization:3];

    v5 = @"DateInterval";
    goto LABEL_10;
  }

  if (*(a1 + 160) == 1)
  {
    v12 = *(a1 + 56);
    if (v12)
    {
      v9 = v12;
      v7 = *(a1 + 152);
      goto LABEL_5;
    }
  }

  v5 = 0;
  v4 = 0;
LABEL_10:
  v13 = *(a1 + 88);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F1741150 attributes:*(a1 + 80)];
  }

  v36 = v14;
  v15 = *(a1 + 96);
  if (!v15)
  {
    v15 = &stru_1F1741150;
  }

  v35 = v15;
  if (*(a1 + 162) == 1)
  {
    v16 = [*(a1 + 32) objectForKeyedSubscript:@"locationNames"];
    if ([v16 count] == 1)
    {
      v17 = [v16 firstObject];
    }

    else
    {
      if ([v16 count] >= 2)
      {
        PXLocalizedStringFromTable(@"PXBrowserSummaryLocationAndMore", @"PhotosUICore");
        objc_claimAutoreleasedReturnValue();
        [v16 firstObject];
        objc_claimAutoreleasedReturnValue();
        PXStringWithValidatedFormat();
      }

      v17 = 0;
    }

    v22 = @"Location";
    goto LABEL_36;
  }

  if (*(a1 + 163) == 1)
  {
    v16 = PXLocalizedStringFromTable(@"IMPORT_HISTORY_IMPORTED_ON_DATE", @"PhotosUICore");
    v18 = [v37 startDate];
    if (v18)
    {
      [*(*(a1 + 104) + 296) stringFromDate:v18];
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    v17 = &stru_1F1741150;

    v22 = @"ImportDate";
    goto LABEL_36;
  }

  v19 = v37;
  if (!v37 && (*(a1 + 160) & 1) != 0)
  {
    v17 = *(a1 + 112);
    v34 = @"FilteringResultsPlaceholder";
    if ((*(a1 + 166) & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (*(a1 + 164))
  {
    v16 = *(a1 + 56);
    v20 = *(a1 + 152);
    if (v16)
    {
LABEL_29:
      v21 = [*(a1 + 64) px_dateTemplateForGranularity:v20 abbreviated:*(a1 + 161)];
      [*(a1 + 64) setDateTemplate:v21];

      v17 = [*(a1 + 64) stringFromDateInterval:v16];
      v22 = @"DateInterval";
LABEL_36:
      v34 = v22;
      goto LABEL_37;
    }
  }

  else
  {
    if ((*(a1 + 165) & 1) == 0)
    {
      v34 = 0;
      v17 = 0;
      goto LABEL_38;
    }

    v16 = v37;
    v23 = [*(a1 + 32) objectForKeyedSubscript:@"granularity"];
    v20 = [v23 unsignedIntegerValue];

    if (v16)
    {
      goto LABEL_29;
    }
  }

  v34 = 0;
  v17 = 0;
LABEL_37:

  v19 = v37;
LABEL_38:
  if ((*(a1 + 166) & 1) == 0)
  {
LABEL_42:
    v24 = 0;
    v25 = 0;
    goto LABEL_43;
  }

  if (v19)
  {
    goto LABEL_41;
  }

LABEL_40:
  if (*(a1 + 160))
  {
    goto LABEL_42;
  }

LABEL_41:
  if (*(a1 + 167))
  {
    goto LABEL_42;
  }

  v24 = *(a1 + 120);
  v25 = @"ContainerItemsCount";
LABEL_43:
  if (*(a1 + 167) == 1)
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if (*(a1 + 128))
    {
      if ((*(a1 + 160) & 1) != 0 || !*(a1 + 56))
      {
        goto LABEL_71;
      }

      v27 = [*(a1 + 64) px_dateTemplateForGranularity:*(a1 + 152) abbreviated:*(a1 + 161)];
      [*(a1 + 64) setDateTemplate:v27];

      v28 = [*(a1 + 64) stringFromDateInterval:*(a1 + 56)];
      if (v28)
      {
        [v26 addObject:v28];
      }

      if (*(a1 + 128))
      {
        goto LABEL_71;
      }
    }

    if (*(a1 + 160) == 1 && ![v26 count])
    {
LABEL_71:
      if (*(a1 + 120))
      {
        [v26 addObject:?];
      }
    }

    if ([v26 count])
    {
      v29 = [v26 componentsJoinedByString:*(a1 + 136)];
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  if (![v4 length] && !-[__CFString length](v17, "length"))
  {
    v30 = [*(a1 + 32) objectForKeyedSubscript:@"placeholder"];
    if (v30)
    {
      v31 = v5;
      v32 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v30 attributes:*(a1 + 80)];

      v4 = v32;
      v5 = @"PlaceholderText";
    }
  }

  v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  [v33 setObject:v4 forKeyedSubscript:@"attributedPrimaryTitle"];
  [v33 setObject:v5 forKeyedSubscript:@"primaryTitleAccessibilityIdentifier"];
  [v33 setObject:v36 forKeyedSubscript:@"PXTitlesInfoKindAttributedPrimaryFallbackTitle"];
  [v33 setObject:v35 forKeyedSubscript:@"PXTitlesInfoKindPrimaryFallbackTitleAccessibilityIdentifier"];
  [v33 setObject:v17 forKeyedSubscript:@"secondaryTitle"];
  [v33 setObject:v34 forKeyedSubscript:@"secondaryTitleAccessibilityIdentifier"];
  [v33 setObject:v24 forKeyedSubscript:@"tertiaryTitle"];
  [v33 setObject:v25 forKeyedSubscript:@"tertiaryTitleAccessibilityIdentifier"];
  [v33 setObject:v29 forKeyedSubscript:@"navigationTitle"];
  (*(*(a1 + 144) + 16))();
}

- (void)setContainerDateFormatGranularity:(unint64_t)granularity
{
  if (self->_containerDateFormatGranularity != granularity)
  {
    self->_containerDateFormatGranularity = granularity;
    [(PXBrowserSummaryController *)self _invalidateTitles];
  }
}

- (void)setShouldShowLocationNames:(BOOL)names
{
  if (self->_shouldShowLocationNames != names)
  {
    self->_shouldShowLocationNames = names;
    [(PXBrowserSummaryController *)self _invalidateTitles];
  }
}

- (void)setShouldUseAbbreviatedDates:(BOOL)dates
{
  if (self->_shouldUseAbbreviatedDates != dates)
  {
    self->_shouldUseAbbreviatedDates = dates;
    [(PXBrowserSummaryController *)self _invalidateTitles];
  }
}

- (void)setShouldUseNavigationTitle:(BOOL)title
{
  if (self->_shouldUseNavigationTitle != title)
  {
    self->_shouldUseNavigationTitle = title;
    [(PXBrowserSummaryController *)self _invalidateTitles];
  }
}

- (void)setShouldUseSubtitles:(BOOL)subtitles
{
  if (self->_shouldUseSubtitles != subtitles)
  {
    self->_shouldUseSubtitles = subtitles;
    [(PXBrowserSummaryController *)self _invalidateTitles];
  }
}

- (void)setSelectionAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (self->_selectionAttributes != attributesCopy)
  {
    v9 = attributesCopy;
    v6 = [(NSDictionary *)attributesCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      selectionAttributes = self->_selectionAttributes;
      self->_selectionAttributes = v7;

      [(PXBrowserSummaryController *)self _invalidateTitles];
      [(PXBrowserSummaryController *)self _invalidateAttributedSelectionTitle];
      v5 = v9;
    }
  }
}

- (void)setEmphasizedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (self->_emphasizedAttributes != attributesCopy)
  {
    v9 = attributesCopy;
    v6 = [(NSDictionary *)attributesCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      emphasizedAttributes = self->_emphasizedAttributes;
      self->_emphasizedAttributes = v7;

      [(PXBrowserSummaryController *)self _invalidateTitles];
      v5 = v9;
    }
  }
}

- (void)setDefaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (self->_defaultAttributes != attributesCopy)
  {
    v9 = attributesCopy;
    v6 = [(NSDictionary *)attributesCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      defaultAttributes = self->_defaultAttributes;
      self->_defaultAttributes = v7;

      [(PXBrowserSummaryController *)self _invalidateTitles];
      v5 = v9;
    }
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXBrowserSummaryController;
  [(PXBrowserSummaryController *)&v3 performChanges:changes];
}

- (id)_performRequestBlock:(id)block
{
  blockCopy = block;
  if ([(PXBrowserSummaryController *)self shouldUpdateImmediately])
  {
    blockCopy[2](blockCopy);
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    queue = [(PXBrowserSummaryController *)self queue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__PXBrowserSummaryController__performRequestBlock___block_invoke;
    v9[3] = &unk_1E774C2F0;
    v5 = v6;
    v10 = v5;
    v11 = blockCopy;
    dispatch_async(queue, v9);
  }

  return v5;
}

uint64_t __51__PXBrowserSummaryController__performRequestBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)performBlockWhenDoneUpdating:(id)updating
{
  updatingCopy = updating;
  wantsVerboseLogging = [(PXBrowserSummaryController *)self wantsVerboseLogging];
  v6 = wantsVerboseLogging;
  if (wantsVerboseLogging)
  {
    NSLog(&cfstr_WillPerformblo.isa, self);
  }

  objc_initWeak(&location, self);
  visibleMetadataInfoUpdater = [(PXBrowserSummaryController *)self visibleMetadataInfoUpdater];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PXBrowserSummaryController_performBlockWhenDoneUpdating___block_invoke;
  v9[3] = &unk_1E7730330;
  v12 = v6;
  objc_copyWeak(&v11, &location);
  v8 = updatingCopy;
  v10 = v8;
  [visibleMetadataInfoUpdater performBlockWhenDoneUpdating:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __59__PXBrowserSummaryController_performBlockWhenDoneUpdating___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    NSLog(&cfstr_Visiblemetadat.isa, WeakRetained);
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 selectionInfoUpdater];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PXBrowserSummaryController_performBlockWhenDoneUpdating___block_invoke_2;
  v5[3] = &unk_1E7730330;
  v8 = *(a1 + 48);
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  [v4 performBlockWhenDoneUpdating:v5];

  objc_destroyWeak(&v7);
}

void __59__PXBrowserSummaryController_performBlockWhenDoneUpdating___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    NSLog(&cfstr_Selectioninfou.isa, WeakRetained);
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 titlesInfoUpdater];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PXBrowserSummaryController_performBlockWhenDoneUpdating___block_invoke_3;
  v5[3] = &unk_1E7730330;
  v8 = *(a1 + 48);
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  [v4 performBlockWhenDoneUpdating:v5];

  objc_destroyWeak(&v7);
}

uint64_t __59__PXBrowserSummaryController_performBlockWhenDoneUpdating___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    NSLog(&cfstr_Titlesinfoupda.isa, WeakRetained);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)setReady:(BOOL)ready
{
  if (self->_ready != ready)
  {
    self->_ready = ready;
    [(PXBrowserSummaryController *)self signalChange:64];
  }
}

- (void)setStackedAssets:(id)assets
{
  assetsCopy = assets;
  v5 = assetsCopy;
  if (self->_stackedAssets != assetsCopy)
  {
    v9 = assetsCopy;
    v6 = [(NSArray *)assetsCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      stackedAssets = self->_stackedAssets;
      self->_stackedAssets = v7;

      [(PXBrowserSummaryController *)self signalChange:32];
      v5 = v9;
    }
  }
}

- (void)setAttributedSelectionTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_attributedSelectionTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSAttributedString *)titleCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      attributedSelectionTitle = self->_attributedSelectionTitle;
      self->_attributedSelectionTitle = v7;

      [(PXBrowserSummaryController *)self signalChange:16];
      v5 = v9;
    }
  }
}

- (void)setNavigationTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_navigationTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      navigationTitle = self->_navigationTitle;
      self->_navigationTitle = v7;

      [(PXBrowserSummaryController *)self signalChange:8];
      v5 = v9;
    }
  }
}

- (void)_setTertiaryTitle:(id)title accessibilityIdentifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  if (self->_tertiaryTitle != titleCopy && ![(NSString *)titleCopy isEqualToString:?]|| self->_tertiaryTitleAccessibilityIdentifier != identifierCopy && ![(NSString *)identifierCopy isEqualToString:?])
  {
    v7 = [(NSString *)titleCopy copy];
    tertiaryTitle = self->_tertiaryTitle;
    self->_tertiaryTitle = v7;

    v9 = [(NSString *)identifierCopy copy];
    tertiaryTitleAccessibilityIdentifier = self->_tertiaryTitleAccessibilityIdentifier;
    self->_tertiaryTitleAccessibilityIdentifier = v9;

    [(PXBrowserSummaryController *)self signalChange:4];
  }
}

- (void)_setSecondaryTitle:(id)title accessibilityIdentifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  if (self->_secondaryTitle != titleCopy && ![(NSString *)titleCopy isEqualToString:?]|| self->_secondaryTitleAccessibilityIdentifier != identifierCopy && ![(NSString *)identifierCopy isEqualToString:?])
  {
    v7 = [(NSString *)titleCopy copy];
    secondaryTitle = self->_secondaryTitle;
    self->_secondaryTitle = v7;

    v9 = [(NSString *)identifierCopy copy];
    secondaryTitleAccessibilityIdentifier = self->_secondaryTitleAccessibilityIdentifier;
    self->_secondaryTitleAccessibilityIdentifier = v9;

    [(PXBrowserSummaryController *)self signalChange:2];
  }
}

- (void)_setAttributedPrimaryFallbackTitle:(id)title accessibilityIdentifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  if (self->_attributedPrimaryFallbackTitle != titleCopy && ![(NSAttributedString *)titleCopy isEqual:?]|| self->_primaryFallbackTitleAccessibilityIdentifier != identifierCopy && ![(NSString *)identifierCopy isEqualToString:?])
  {
    v7 = [(NSAttributedString *)titleCopy copy];
    attributedPrimaryFallbackTitle = self->_attributedPrimaryFallbackTitle;
    self->_attributedPrimaryFallbackTitle = v7;

    v9 = [(NSString *)identifierCopy copy];
    primaryFallbackTitleAccessibilityIdentifier = self->_primaryFallbackTitleAccessibilityIdentifier;
    self->_primaryFallbackTitleAccessibilityIdentifier = v9;

    [(PXBrowserSummaryController *)self signalChange:128];
  }
}

- (void)_setAttributedPrimaryTitle:(id)title accessibilityIdentifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  if (self->_attributedPrimaryTitle != titleCopy && ![(NSAttributedString *)titleCopy isEqual:?]|| self->_primaryTitleAccessibilityIdentifier != identifierCopy && ![(NSString *)identifierCopy isEqualToString:?])
  {
    v7 = [(NSAttributedString *)titleCopy copy];
    attributedPrimaryTitle = self->_attributedPrimaryTitle;
    self->_attributedPrimaryTitle = v7;

    v9 = [(NSString *)identifierCopy copy];
    primaryTitleAccessibilityIdentifier = self->_primaryTitleAccessibilityIdentifier;
    self->_primaryTitleAccessibilityIdentifier = v9;

    [(PXBrowserSummaryController *)self signalChange:1];
  }
}

- (void)setFilteringContainerContent:(BOOL)content
{
  if (self->_filteringContainerContent != content)
  {
    self->_filteringContainerContent = content;
    [(PXBrowserSummaryController *)self _invalidateTitles];
  }
}

- (void)setSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v6 = snapshotCopy;
  if (self->_selectionSnapshot != snapshotCopy)
  {
    v9 = snapshotCopy;
    v7 = [(PXBrowserSelectionSnapshot *)snapshotCopy isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectionSnapshot, snapshot);
      selectionInfoUpdater = [(PXBrowserSummaryController *)self selectionInfoUpdater];
      [selectionInfoUpdater invalidateInfo];

      v6 = v9;
    }
  }
}

- (void)setContainerDateInterval:(id)interval
{
  intervalCopy = interval;
  v5 = intervalCopy;
  if (self->_containerDateInterval != intervalCopy)
  {
    v9 = intervalCopy;
    v6 = [(NSDateInterval *)intervalCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDateInterval *)v9 copy];
      containerDateInterval = self->_containerDateInterval;
      self->_containerDateInterval = v7;

      [(PXBrowserSummaryController *)self _invalidateTitles];
      v5 = v9;
    }
  }
}

- (void)setLocalizedContainerItemsCount:(id)count
{
  countCopy = count;
  v5 = countCopy;
  if (self->_localizedContainerItemsCount != countCopy)
  {
    v9 = countCopy;
    v6 = [(NSString *)countCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      localizedContainerItemsCount = self->_localizedContainerItemsCount;
      self->_localizedContainerItemsCount = v7;

      [(PXBrowserSummaryController *)self _invalidateTitles];
      v5 = v9;
    }
  }
}

- (void)setContainerFallbackTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_containerFallbackTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      containerFallbackTitle = self->_containerFallbackTitle;
      self->_containerFallbackTitle = v7;

      [(PXBrowserSummaryController *)self _invalidateTitles];
      v5 = v9;
    }
  }
}

- (void)setContainerTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_containerTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      containerTitle = self->_containerTitle;
      self->_containerTitle = v7;

      [(PXBrowserSummaryController *)self _invalidateTitles];
      v5 = v9;
    }
  }
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != sourceCopy)
  {
    objc_storeWeak(&self->_dataSource, sourceCopy);
    self->_dataSourceRespondsTo.containerTitle = objc_opt_respondsToSelector() & 1;
    self->_dataSourceRespondsTo.containerFallbackTitle = objc_opt_respondsToSelector() & 1;
    self->_dataSourceRespondsTo.localizedContainerItemsCount = objc_opt_respondsToSelector() & 1;
    self->_dataSourceRespondsTo.containerDateInterval = objc_opt_respondsToSelector() & 1;
    self->_dataSourceRespondsTo.visibleContentSnapshot = objc_opt_respondsToSelector() & 1;
    self->_dataSourceRespondsTo.selectionSnapshot = objc_opt_respondsToSelector() & 1;
    self->_dataSourceRespondsTo.filteringContainerContent = objc_opt_respondsToSelector() & 1;
    self->_dataSourceRespondsTo.useAssetImportDate = objc_opt_respondsToSelector() & 1;
    self->_dataSourceRespondsTo.shouldUpdateImmediately = objc_opt_respondsToSelector() & 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__PXBrowserSummaryController_setDataSource___block_invoke;
    v9[3] = &unk_1E772F550;
    v9[4] = self;
    [(PXBrowserSummaryController *)self performChanges:v9];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__PXBrowserSummaryController_setDataSource___block_invoke_2;
    v6[3] = &unk_1E774C318;
    objc_copyWeak(&v7, &location);
    [(PXBrowserSummaryController *)self performBlockWhenDoneUpdating:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

uint64_t __44__PXBrowserSummaryController_setDataSource___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateContainerTitle];
  [*(a1 + 32) invalidateContainerFallbackTitle];
  [*(a1 + 32) invalidateLocalizedContainerItemsCount];
  [*(a1 + 32) invalidateContainerDateInterval];
  [*(a1 + 32) invalidateVisibleContent];
  [*(a1 + 32) invalidateSelection];
  [*(a1 + 32) invalidateFilteringContainerContent];
  v2 = *(a1 + 32);

  return [v2 setReady:0];
}

void __44__PXBrowserSummaryController_setDataSource___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PXBrowserSummaryController_setDataSource___block_invoke_3;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __44__PXBrowserSummaryController_setDataSource___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PXBrowserSummaryController_setDataSource___block_invoke_4;
  v3[3] = &unk_1E772F578;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained performChanges:v3];

  objc_destroyWeak(&v4);
}

void __44__PXBrowserSummaryController_setDataSource___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setReady:1];
}

@end