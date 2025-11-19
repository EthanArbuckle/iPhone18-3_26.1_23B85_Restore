@interface PXStoryMemoryFeedPlaceholderFactory
- (id)_placeholderViewMessageForFeedWithViewModel:(id)a3;
- (id)createPlaceholderViewForFeedWithViewModel:(id)a3;
- (void)updatePlaceholderView:(id)a3 forFeedWithViewModel:(id)a4;
@end

@implementation PXStoryMemoryFeedPlaceholderFactory

- (id)_placeholderViewMessageForFeedWithViewModel:(id)a3
{
  v3 = a3;
  v4 = PXLocalizedStringFromTable(@"PXEmptyMemoriesMessage", @"PhotosUICore");
  v5 = [v3 dataSourceManager];

  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_10:
    PXAssertGetLog();
  }

  v6 = v5;

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v6 photoLibrary];
  v8 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v7];
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

- (void)updatePlaceholderView:(id)a3 forFeedWithViewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = v6;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v12;

    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = PXLocalizedStringFromTable(@"PXEmptyMemoriesTitle", @"PhotosUICore");
    v10 = [(PXStoryMemoryFeedPlaceholderFactory *)self _placeholderViewMessageForFeedWithViewModel:v7];
    v11 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    [v11 setText:v9];
    [v11 setSecondaryText:v10];
    [v8 setConfiguration:v11];
  }

  else
  {
    v8 = 0;
    v9 = v12;
  }

LABEL_7:
}

- (id)createPlaceholderViewForFeedWithViewModel:(id)a3
{
  v4 = a3;
  v5 = PXLocalizedStringFromTable(@"PXEmptyMemoriesTitle", @"PhotosUICore");
  v6 = [(PXStoryMemoryFeedPlaceholderFactory *)self _placeholderViewMessageForFeedWithViewModel:v4];

  v7 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  [v7 setText:v5];
  [v7 setSecondaryText:v6];
  v8 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:v7];

  return v8;
}

@end