@interface PXStoryMemoryFeedPlaceholderFactory
- (id)_placeholderViewMessageForFeedWithViewModel:(id)model;
- (id)createPlaceholderViewForFeedWithViewModel:(id)model;
- (void)updatePlaceholderView:(id)view forFeedWithViewModel:(id)model;
@end

@implementation PXStoryMemoryFeedPlaceholderFactory

- (id)_placeholderViewMessageForFeedWithViewModel:(id)model
{
  modelCopy = model;
  v4 = PXLocalizedStringFromTable(@"PXEmptyMemoriesMessage", @"PhotosUICore");
  dataSourceManager = [modelCopy dataSourceManager];

  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_10:
    PXAssertGetLog();
  }

  v6 = dataSourceManager;

  if (!v6)
  {
    goto LABEL_10;
  }

  photoLibrary = [v6 photoLibrary];
  v8 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];
  if ([v8 hasSharedLibraryOrPreview])
  {
    v9 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v8];
    if ([(PXLibraryFilterState *)v9 viewMode])
    {
      v10 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_EmptyMemoriesMessage");

      v4 = v10;
    }
  }

  v11 = v4;

  return v11;
}

- (void)updatePlaceholderView:(id)view forFeedWithViewModel:(id)model
{
  viewCopy = view;
  modelCopy = model;
  v12 = viewCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v12;

    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = PXLocalizedStringFromTable(@"PXEmptyMemoriesTitle", @"PhotosUICore");
    v10 = [(PXStoryMemoryFeedPlaceholderFactory *)self _placeholderViewMessageForFeedWithViewModel:modelCopy];
    emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    [emptyConfiguration setText:v9];
    [emptyConfiguration setSecondaryText:v10];
    [v8 setConfiguration:emptyConfiguration];
  }

  else
  {
    v8 = 0;
    v9 = v12;
  }

LABEL_7:
}

- (id)createPlaceholderViewForFeedWithViewModel:(id)model
{
  modelCopy = model;
  v5 = PXLocalizedStringFromTable(@"PXEmptyMemoriesTitle", @"PhotosUICore");
  v6 = [(PXStoryMemoryFeedPlaceholderFactory *)self _placeholderViewMessageForFeedWithViewModel:modelCopy];

  emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  [emptyConfiguration setText:v5];
  [emptyConfiguration setSecondaryText:v6];
  v8 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:emptyConfiguration];

  return v8;
}

@end