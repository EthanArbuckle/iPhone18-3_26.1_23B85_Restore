@interface PXCMMViewModel
- (int64_t)aggregateMediaType;
- (int64_t)aggregateMediaTypeForSelection;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setContainsUnverifiedPersons:(BOOL)persons;
- (void)setDisabledActionTypes:(id)types;
- (void)setEndDate:(id)date;
- (void)setLoadingPeopleSuggestions:(BOOL)suggestions;
- (void)setNumberOfReceivedAssets:(unint64_t)assets;
- (void)setOneUpDisabled:(BOOL)disabled;
- (void)setOriginalTitle:(id)title;
- (void)setOriginatorRecipient:(id)recipient;
- (void)setPhotosCount:(int64_t)count;
- (void)setPosterAsset:(id)asset posterMediaProvider:(id)provider;
- (void)setRecipients:(id)recipients;
- (void)setSelectedCount:(int64_t)count;
- (void)setSelectedPhotosCount:(int64_t)count;
- (void)setSelectedVideosCount:(int64_t)count;
- (void)setSelecting:(BOOL)selecting;
- (void)setSelectionEnabled:(BOOL)enabled;
- (void)setSelectionManager:(id)manager;
- (void)setShareURL:(id)l;
- (void)setShareUUID:(id)d;
- (void)setShouldShowPlaceholder:(BOOL)placeholder;
- (void)setStartDate:(id)date;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setTotalCount:(int64_t)count;
- (void)setVideosCount:(int64_t)count;
@end

@implementation PXCMMViewModel

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSelectionManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewModel.m" lineNumber:369 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__PXCMMViewModel_observable_didChange_context___block_invoke;
    v18[3] = &unk_1E7746A48;
    v18[4] = self;
    [(PXCMMViewModel *)self performChanges:v18];
    selectionManager = [(PXCMMViewModel *)self selectionManager];
    selectionSnapshot = [selectionManager selectionSnapshot];
    dataSource = [selectionSnapshot dataSource];

    containsAnyItems = [dataSource containsAnyItems];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__PXCMMViewModel_observable_didChange_context___block_invoke_2;
    v16[3] = &__block_descriptor_33_e33_v16__0___PXCMMMutableViewModel__8l;
    v17 = containsAnyItems ^ 1;
    [(PXCMMViewModel *)self performChanges:v16];
  }
}

void __47__PXCMMViewModel_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectionManager];
  v5 = [v4 selectionSnapshot];

  PXCMMUpdateCountsWithSelectionSnapshot(v3, v5);
}

- (void)setOneUpDisabled:(BOOL)disabled
{
  if (self->_oneUpDisabled != disabled)
  {
    self->_oneUpDisabled = disabled;
    [(PXCMMViewModel *)self signalChange:0x20000];
  }
}

- (void)setDisabledActionTypes:(id)types
{
  typesCopy = types;
  if (self->_disabledActionTypes != typesCopy)
  {
    v6 = typesCopy;
    objc_storeStrong(&self->_disabledActionTypes, types);
    [(PXCMMViewModel *)self signalChange:0x2000];
    typesCopy = v6;
  }
}

- (void)setContainsUnverifiedPersons:(BOOL)persons
{
  if (self->_containsUnverifiedPersons != persons)
  {
    self->_containsUnverifiedPersons = persons;
    [(PXCMMViewModel *)self signalChange:0x8000];
  }
}

- (void)setShouldShowPlaceholder:(BOOL)placeholder
{
  if (self->_shouldShowPlaceholder != placeholder)
  {
    self->_shouldShowPlaceholder = placeholder;
    [(PXCMMViewModel *)self signalChange:4096];
  }
}

- (void)setLoadingPeopleSuggestions:(BOOL)suggestions
{
  if (self->_loadingPeopleSuggestions != suggestions)
  {
    self->_loadingPeopleSuggestions = suggestions;
    [(PXCMMViewModel *)self signalChange:2048];
  }
}

- (void)setTotalCount:(int64_t)count
{
  if (self->_totalCount != count)
  {
    self->_totalCount = count;
    [(PXCMMViewModel *)self signalChange:512];
  }
}

- (void)setVideosCount:(int64_t)count
{
  if (self->_videosCount != count)
  {
    self->_videosCount = count;
    [(PXCMMViewModel *)self signalChange:512];
  }
}

- (void)setPhotosCount:(int64_t)count
{
  if (self->_photosCount != count)
  {
    self->_photosCount = count;
    [(PXCMMViewModel *)self signalChange:512];
  }
}

- (void)setSelectedCount:(int64_t)count
{
  if (self->_selectedCount != count)
  {
    self->_selectedCount = count;
    [(PXCMMViewModel *)self signalChange:0x10000];
  }
}

- (void)setSelectedVideosCount:(int64_t)count
{
  if (self->_selectedVideosCount != count)
  {
    self->_selectedVideosCount = count;
    [(PXCMMViewModel *)self signalChange:0x10000];
  }
}

- (void)setSelectedPhotosCount:(int64_t)count
{
  if (self->_selectedPhotosCount != count)
  {
    self->_selectedPhotosCount = count;
    [(PXCMMViewModel *)self signalChange:0x10000];
  }
}

- (void)setEndDate:(id)date
{
  dateCopy = date;
  v6 = dateCopy;
  if (self->_endDate != dateCopy)
  {
    v8 = dateCopy;
    v7 = [(NSDate *)dateCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_endDate, date);
      [(PXCMMViewModel *)self signalChange:256];
      v6 = v8;
    }
  }
}

- (void)setStartDate:(id)date
{
  dateCopy = date;
  v6 = dateCopy;
  if (self->_startDate != dateCopy)
  {
    v8 = dateCopy;
    v7 = [(NSDate *)dateCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_startDate, date);
      [(PXCMMViewModel *)self signalChange:256];
      v6 = v8;
    }
  }
}

- (void)setPosterAsset:(id)asset posterMediaProvider:(id)provider
{
  assetCopy = asset;
  providerCopy = provider;
  if (self->_posterAsset != assetCopy && ![(PXDisplayAsset *)assetCopy isEqual:?]|| self->_posterMediaProvider != providerCopy && ([(PXUIImageProvider *)providerCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_posterAsset, asset);
    objc_storeStrong(&self->_posterMediaProvider, provider);
    [(PXCMMViewModel *)self signalChange:128];
  }
}

- (void)setShareUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (self->_shareUUID != dCopy)
  {
    v9 = dCopy;
    v6 = [(NSString *)dCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      shareUUID = self->_shareUUID;
      self->_shareUUID = v7;

      [(PXCMMViewModel *)self signalChange:64];
      v5 = v9;
    }
  }
}

- (void)setShareURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (self->_shareURL != lCopy)
  {
    v9 = lCopy;
    v6 = [(NSURL *)lCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSURL *)v9 copy];
      shareURL = self->_shareURL;
      self->_shareURL = v7;

      [(PXCMMViewModel *)self signalChange:32];
      v5 = v9;
    }
  }
}

- (void)setNumberOfReceivedAssets:(unint64_t)assets
{
  if (self->_numberOfReceivedAssets != assets)
  {
    self->_numberOfReceivedAssets = assets;
    [(PXCMMViewModel *)self signalChange:16];
  }
}

- (void)setOriginatorRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (self->_originatorRecipient != recipientCopy)
  {
    v6 = recipientCopy;
    objc_storeStrong(&self->_originatorRecipient, recipient);
    [(PXCMMViewModel *)self signalChange:8];
    recipientCopy = v6;
  }
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if (![(NSArray *)self->_recipients isEqualToArray:?])
  {
    v4 = [recipientsCopy copy];
    recipients = self->_recipients;
    self->_recipients = v4;

    [(PXCMMViewModel *)self signalChange:4];
  }
}

- (void)setSelectionEnabled:(BOOL)enabled
{
  if (self->_selectionEnabled != enabled)
  {
    self->_selectionEnabled = enabled;
    [(PXCMMViewModel *)self signalChange:0x4000];
  }
}

- (void)setSelecting:(BOOL)selecting
{
  if (self->_selecting != selecting)
  {
    self->_selecting = selecting;
    [(PXCMMViewModel *)self signalChange:1024];
  }
}

- (void)setSelectionManager:(id)manager
{
  managerCopy = manager;
  selectionManager = self->_selectionManager;
  if (selectionManager != managerCopy)
  {
    v9 = managerCopy;
    [(PXSectionedSelectionManager *)selectionManager unregisterChangeObserver:self context:PXSelectionManagerObservationContext];
    objc_storeStrong(&self->_selectionManager, manager);
    selectionSnapshot = [(PXSectionedSelectionManager *)v9 selectionSnapshot];
    PXCMMUpdateCountsWithSelectionSnapshot(self, selectionSnapshot);
    dataSource = [selectionSnapshot dataSource];
    -[PXCMMViewModel setShouldShowPlaceholder:](self, "setShouldShowPlaceholder:", [dataSource containsAnyItems] ^ 1);

    [(PXSectionedSelectionManager *)self->_selectionManager registerChangeObserver:self context:PXSelectionManagerObservationContext];
    [(PXCMMViewModel *)self signalChange:2];

    managerCopy = v9;
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (!subtitleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewModel.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"subtitle"}];

    subtitleCopy = 0;
  }

  subtitle = self->_subtitle;
  if (subtitle != subtitleCopy)
  {
    v11 = subtitleCopy;
    v7 = [(NSString *)subtitle isEqualToString:subtitleCopy];
    subtitleCopy = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_subtitle;
      self->_subtitle = v8;

      [(PXCMMViewModel *)self signalChange:1];
      subtitleCopy = v11;
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewModel.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    titleCopy = 0;
  }

  title = self->_title;
  if (title != titleCopy)
  {
    v11 = titleCopy;
    v7 = [(NSString *)title isEqualToString:titleCopy];
    titleCopy = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_title;
      self->_title = v8;

      [(PXCMMViewModel *)self signalChange:1];
      titleCopy = v11;
    }
  }
}

- (void)setOriginalTitle:(id)title
{
  titleCopy = title;
  originalTitle = self->_originalTitle;
  if (originalTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)originalTitle isEqualToString:titleCopy];
    titleCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_originalTitle;
      self->_originalTitle = v7;

      [(PXCMMViewModel *)self signalChange:1];
      titleCopy = v9;
    }
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXCMMViewModel;
  [(PXCMMViewModel *)&v3 performChanges:changes];
}

- (int64_t)aggregateMediaTypeForSelection
{
  selectedPhotosCount = [(PXCMMViewModel *)self selectedPhotosCount];
  selectedVideosCount = [(PXCMMViewModel *)self selectedVideosCount];
  result = [(PXCMMViewModel *)self selectedCount];
  if (result)
  {
    if (selectedVideosCount || selectedPhotosCount != result)
    {
      if (selectedVideosCount == result && selectedPhotosCount == 0)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (int64_t)aggregateMediaType
{
  photosCount = [(PXCMMViewModel *)self photosCount];
  videosCount = [(PXCMMViewModel *)self videosCount];
  result = [(PXCMMViewModel *)self totalCount];
  if (result)
  {
    if (videosCount || photosCount != result)
    {
      if (videosCount == result && photosCount == 0)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

@end