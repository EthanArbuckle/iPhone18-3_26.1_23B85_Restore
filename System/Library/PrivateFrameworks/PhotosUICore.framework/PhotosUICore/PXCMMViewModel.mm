@interface PXCMMViewModel
- (int64_t)aggregateMediaType;
- (int64_t)aggregateMediaTypeForSelection;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setContainsUnverifiedPersons:(BOOL)a3;
- (void)setDisabledActionTypes:(id)a3;
- (void)setEndDate:(id)a3;
- (void)setLoadingPeopleSuggestions:(BOOL)a3;
- (void)setNumberOfReceivedAssets:(unint64_t)a3;
- (void)setOneUpDisabled:(BOOL)a3;
- (void)setOriginalTitle:(id)a3;
- (void)setOriginatorRecipient:(id)a3;
- (void)setPhotosCount:(int64_t)a3;
- (void)setPosterAsset:(id)a3 posterMediaProvider:(id)a4;
- (void)setRecipients:(id)a3;
- (void)setSelectedCount:(int64_t)a3;
- (void)setSelectedPhotosCount:(int64_t)a3;
- (void)setSelectedVideosCount:(int64_t)a3;
- (void)setSelecting:(BOOL)a3;
- (void)setSelectionEnabled:(BOOL)a3;
- (void)setSelectionManager:(id)a3;
- (void)setShareURL:(id)a3;
- (void)setShareUUID:(id)a3;
- (void)setShouldShowPlaceholder:(BOOL)a3;
- (void)setStartDate:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTotalCount:(int64_t)a3;
- (void)setVideosCount:(int64_t)a3;
@end

@implementation PXCMMViewModel

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSelectionManagerObservationContext != a5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXCMMViewModel.m" lineNumber:369 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if (v6)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__PXCMMViewModel_observable_didChange_context___block_invoke;
    v18[3] = &unk_1E7746A48;
    v18[4] = self;
    [(PXCMMViewModel *)self performChanges:v18];
    v11 = [(PXCMMViewModel *)self selectionManager];
    v12 = [v11 selectionSnapshot];
    v13 = [v12 dataSource];

    v14 = [v13 containsAnyItems];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__PXCMMViewModel_observable_didChange_context___block_invoke_2;
    v16[3] = &__block_descriptor_33_e33_v16__0___PXCMMMutableViewModel__8l;
    v17 = v14 ^ 1;
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

- (void)setOneUpDisabled:(BOOL)a3
{
  if (self->_oneUpDisabled != a3)
  {
    self->_oneUpDisabled = a3;
    [(PXCMMViewModel *)self signalChange:0x20000];
  }
}

- (void)setDisabledActionTypes:(id)a3
{
  v5 = a3;
  if (self->_disabledActionTypes != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_disabledActionTypes, a3);
    [(PXCMMViewModel *)self signalChange:0x2000];
    v5 = v6;
  }
}

- (void)setContainsUnverifiedPersons:(BOOL)a3
{
  if (self->_containsUnverifiedPersons != a3)
  {
    self->_containsUnverifiedPersons = a3;
    [(PXCMMViewModel *)self signalChange:0x8000];
  }
}

- (void)setShouldShowPlaceholder:(BOOL)a3
{
  if (self->_shouldShowPlaceholder != a3)
  {
    self->_shouldShowPlaceholder = a3;
    [(PXCMMViewModel *)self signalChange:4096];
  }
}

- (void)setLoadingPeopleSuggestions:(BOOL)a3
{
  if (self->_loadingPeopleSuggestions != a3)
  {
    self->_loadingPeopleSuggestions = a3;
    [(PXCMMViewModel *)self signalChange:2048];
  }
}

- (void)setTotalCount:(int64_t)a3
{
  if (self->_totalCount != a3)
  {
    self->_totalCount = a3;
    [(PXCMMViewModel *)self signalChange:512];
  }
}

- (void)setVideosCount:(int64_t)a3
{
  if (self->_videosCount != a3)
  {
    self->_videosCount = a3;
    [(PXCMMViewModel *)self signalChange:512];
  }
}

- (void)setPhotosCount:(int64_t)a3
{
  if (self->_photosCount != a3)
  {
    self->_photosCount = a3;
    [(PXCMMViewModel *)self signalChange:512];
  }
}

- (void)setSelectedCount:(int64_t)a3
{
  if (self->_selectedCount != a3)
  {
    self->_selectedCount = a3;
    [(PXCMMViewModel *)self signalChange:0x10000];
  }
}

- (void)setSelectedVideosCount:(int64_t)a3
{
  if (self->_selectedVideosCount != a3)
  {
    self->_selectedVideosCount = a3;
    [(PXCMMViewModel *)self signalChange:0x10000];
  }
}

- (void)setSelectedPhotosCount:(int64_t)a3
{
  if (self->_selectedPhotosCount != a3)
  {
    self->_selectedPhotosCount = a3;
    [(PXCMMViewModel *)self signalChange:0x10000];
  }
}

- (void)setEndDate:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_endDate != v5)
  {
    v8 = v5;
    v7 = [(NSDate *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_endDate, a3);
      [(PXCMMViewModel *)self signalChange:256];
      v6 = v8;
    }
  }
}

- (void)setStartDate:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_startDate != v5)
  {
    v8 = v5;
    v7 = [(NSDate *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_startDate, a3);
      [(PXCMMViewModel *)self signalChange:256];
      v6 = v8;
    }
  }
}

- (void)setPosterAsset:(id)a3 posterMediaProvider:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (self->_posterAsset != v8 && ![(PXDisplayAsset *)v8 isEqual:?]|| self->_posterMediaProvider != v7 && ([(PXUIImageProvider *)v7 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_posterAsset, a3);
    objc_storeStrong(&self->_posterMediaProvider, a4);
    [(PXCMMViewModel *)self signalChange:128];
  }
}

- (void)setShareUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shareUUID != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqual:?];
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

- (void)setShareURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shareURL != v4)
  {
    v9 = v4;
    v6 = [(NSURL *)v4 isEqual:?];
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

- (void)setNumberOfReceivedAssets:(unint64_t)a3
{
  if (self->_numberOfReceivedAssets != a3)
  {
    self->_numberOfReceivedAssets = a3;
    [(PXCMMViewModel *)self signalChange:16];
  }
}

- (void)setOriginatorRecipient:(id)a3
{
  v5 = a3;
  if (self->_originatorRecipient != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_originatorRecipient, a3);
    [(PXCMMViewModel *)self signalChange:8];
    v5 = v6;
  }
}

- (void)setRecipients:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_recipients isEqualToArray:?])
  {
    v4 = [v6 copy];
    recipients = self->_recipients;
    self->_recipients = v4;

    [(PXCMMViewModel *)self signalChange:4];
  }
}

- (void)setSelectionEnabled:(BOOL)a3
{
  if (self->_selectionEnabled != a3)
  {
    self->_selectionEnabled = a3;
    [(PXCMMViewModel *)self signalChange:0x4000];
  }
}

- (void)setSelecting:(BOOL)a3
{
  if (self->_selecting != a3)
  {
    self->_selecting = a3;
    [(PXCMMViewModel *)self signalChange:1024];
  }
}

- (void)setSelectionManager:(id)a3
{
  v5 = a3;
  selectionManager = self->_selectionManager;
  if (selectionManager != v5)
  {
    v9 = v5;
    [(PXSectionedSelectionManager *)selectionManager unregisterChangeObserver:self context:PXSelectionManagerObservationContext];
    objc_storeStrong(&self->_selectionManager, a3);
    v7 = [(PXSectionedSelectionManager *)v9 selectionSnapshot];
    PXCMMUpdateCountsWithSelectionSnapshot(self, v7);
    v8 = [v7 dataSource];
    -[PXCMMViewModel setShouldShowPlaceholder:](self, "setShouldShowPlaceholder:", [v8 containsAnyItems] ^ 1);

    [(PXSectionedSelectionManager *)self->_selectionManager registerChangeObserver:self context:PXSelectionManagerObservationContext];
    [(PXCMMViewModel *)self signalChange:2];

    v5 = v9;
  }
}

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCMMViewModel.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"subtitle"}];

    v5 = 0;
  }

  subtitle = self->_subtitle;
  if (subtitle != v5)
  {
    v11 = v5;
    v7 = [(NSString *)subtitle isEqualToString:v5];
    v5 = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_subtitle;
      self->_subtitle = v8;

      [(PXCMMViewModel *)self signalChange:1];
      v5 = v11;
    }
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCMMViewModel.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    v5 = 0;
  }

  title = self->_title;
  if (title != v5)
  {
    v11 = v5;
    v7 = [(NSString *)title isEqualToString:v5];
    v5 = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_title;
      self->_title = v8;

      [(PXCMMViewModel *)self signalChange:1];
      v5 = v11;
    }
  }
}

- (void)setOriginalTitle:(id)a3
{
  v4 = a3;
  originalTitle = self->_originalTitle;
  if (originalTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)originalTitle isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_originalTitle;
      self->_originalTitle = v7;

      [(PXCMMViewModel *)self signalChange:1];
      v4 = v9;
    }
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXCMMViewModel;
  [(PXCMMViewModel *)&v3 performChanges:a3];
}

- (int64_t)aggregateMediaTypeForSelection
{
  v3 = [(PXCMMViewModel *)self selectedPhotosCount];
  v4 = [(PXCMMViewModel *)self selectedVideosCount];
  result = [(PXCMMViewModel *)self selectedCount];
  if (result)
  {
    if (v4 || v3 != result)
    {
      if (v4 == result && v3 == 0)
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
  v3 = [(PXCMMViewModel *)self photosCount];
  v4 = [(PXCMMViewModel *)self videosCount];
  result = [(PXCMMViewModel *)self totalCount];
  if (result)
  {
    if (v4 || v3 != result)
    {
      if (v4 == result && v3 == 0)
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