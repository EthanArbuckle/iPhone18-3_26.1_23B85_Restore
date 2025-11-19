@interface PXPhotosSearchSectionHeaderLayoutProvider
- (BOOL)wantsHeaderForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4;
- (PXPhotosSearchSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4;
- (id)filterButtonConfigurationForLayout:(id)a3;
- (id)primaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4;
- (int64_t)actionTypeForHeaderLayout:(id)a3;
- (void)sectionHeader:(id)a3 didPressButtonForActionType:(int64_t)a4 sender:(id)a5;
@end

@implementation PXPhotosSearchSectionHeaderLayoutProvider

- (id)filterButtonConfigurationForLayout:(id)a3
{
  v3 = MEMORY[0x1E69DC740];
  v4 = a3;
  v5 = [v3 grayButtonConfiguration];
  v6 = +[PXPhotosSearchFeatureAvailabilityManagerObjcHelper wantsSearchReportAConcernStyling];
  v7 = [v4 spec];

  v8 = [v7 sectionHeaderSpec];
  if (v6)
  {
    [PXCuratedLibraryOverlayButtonConfiguration configurationWithButtonType:1 spec:v8];
  }

  else
  {
    [PXCuratedLibraryOverlayButtonConfiguration configurationWithSystemImageName:@"arrow.up.arrow.down" spec:v8];
  }
  v9 = ;

  v10 = [PXCuratedLibraryOverlayButton iconImageSymbolConfigurationFromConfiguration:v9];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.arrow.down" withConfiguration:v10];
  [v5 setImage:v11];

  v12 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  [v5 setBackground:v12];

  [v5 setCornerStyle:4];
  [v5 setButtonSize:2];

  return v5;
}

- (void)sectionHeader:(id)a3 didPressButtonForActionType:(int64_t)a4 sender:(id)a5
{
  v6 = a3;
  v7 = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__PXPhotosSearchSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke;
  v9[3] = &unk_1E7748CB8;
  v10 = v6;
  v8 = v6;
  [v7 performChanges:v9];
}

void __94__PXPhotosSearchSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setIsInSelectMode:{objc_msgSend(v3, "isInSelectMode") ^ 1}];
  [v3 attemptSetInSelectMode:{objc_msgSend(v3, "isInSelectMode") ^ 1}];
}

- (int64_t)actionTypeForHeaderLayout:(id)a3
{
  v4 = a3;
  if (MEMORY[0x1A590D320]())
  {
    goto LABEL_19;
  }

  memset(v18, 0, sizeof(v18));
  v5 = [v4 dataSource];
  v6 = v5;
  if (v5)
  {
    [v5 lastSectionIndexPath];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  if ((*(&v18[0] + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v7 = [v4 dataSource];
    v16 = v18[0];
    v17 = v18[1];
    v8 = [(PXPhotosSearchSectionHeaderLayoutProvider *)self wantsHeaderForDataSource:v7 sectionIndexPath:&v16];

    if (v8)
    {
      break;
    }

    v9 = (*(&v18[0] + 1))--;
    if (v9 <= 0)
    {
      goto LABEL_19;
    }
  }

  if (v4)
  {
    [v4 sectionIndexPath];
    v10 = *(&v16 + 1);
    v11 = v16;
    v12 = v17;
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v11 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  if (v11 == *&v18[0] && __PAIR128__(v12, v10) == *(v18 + 8) && *(&v17 + 1) == *(&v18[1] + 1))
  {
    v13 = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
    if ([v13 isInSelectMode])
    {
      v14 = 6;
    }

    else
    {
      v14 = 7;
    }
  }

  else
  {
LABEL_19:
    v14 = 0;
  }

  return v14;
}

- (id)primaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4
{
  v6 = a3;
  v7 = v6;
  memset(v18, 0, sizeof(v18));
  if (v6)
  {
    [v6 lastSectionIndexPath];
    if ((*(&v18[0] + 1) & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v17[0] = v18[0];
    v17[1] = v18[1];
    if ([(PXPhotosSearchSectionHeaderLayoutProvider *)self wantsHeaderForDataSource:v7 sectionIndexPath:v17])
    {
      break;
    }

    v8 = (*(&v18[0] + 1))--;
    if (v8 <= 0)
    {
      goto LABEL_13;
    }
  }

  if (a4->dataSourceIdentifier == *&v18[0] && *&a4->section == *(v18 + 8) && a4->subitem == *(&v18[1] + 1))
  {
    v9 = [v7 numberOfItemsInSection:?];
    v10 = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
    v11 = [v10 search_overriddenAllAssetsCount];

    if (v11 && a4->section == 2)
    {
      v9 = [v11 integerValue];
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = PXLocalizedStringFromTable(@"%ld_SEARCH_ALL_RESULTS", @"PhotosUICore");
    v14 = [v12 localizedStringWithFormat:v13, v9];
  }

  else
  {
LABEL_13:
    v15 = *&a4->item;
    v18[0] = *&a4->dataSourceIdentifier;
    v18[1] = v15;
    v11 = [v7 assetCollectionAtSectionIndexPath:v18];
    v14 = [v11 localizedTitle];
  }

  return v14;
}

- (BOOL)wantsHeaderForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = a3;
  v6 = *&a4->item;
  v11[0] = *&a4->dataSourceIdentifier;
  v11[1] = v6;
  v7 = [v5 assetCollectionAtSectionIndexPath:v11];
  v8 = [v7 localizedTitle];
  if (v8)
  {
    v9 = [v5 numberOfItemsInSection:a4->section] > 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PXPhotosSearchSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  v17.receiver = self;
  v17.super_class = PXPhotosSearchSectionHeaderLayoutProvider;
  v10 = [(PXActionableSectionHeaderLayoutProvider *)&v17 initWithViewModel:v7 viewProvider:v8 viewClass:v9];
  if (v10)
  {
    v11 = [v8 gridView];
    [v11 setCustomAssetImageViewClass:objc_opt_class()];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__PXPhotosSearchSectionHeaderLayoutProvider_initWithViewModel_viewProvider___block_invoke;
    v13[3] = &unk_1E77499B0;
    v16 = a2;
    v14 = v10;
    v15 = v7;
    [v11 setCustomAssetImageViewClassConfigurator:v13];
  }

  return v10;
}

void __76__PXPhotosSearchSectionHeaderLayoutProvider_initWithViewModel_viewProvider___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v9 = NSStringFromClass(v12);
    v13 = [v14 px_descriptionForAssertionMessage];
    [v5 handleFailureInMethod:v10 object:v11 file:@"PXPhotosSearchSectionHeaderLayoutProvider.m" lineNumber:74 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"view", v9, v13}];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 handleFailureInMethod:v6 object:v7 file:@"PXPhotosSearchSectionHeaderLayoutProvider.m" lineNumber:74 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"view", v9}];
  }

LABEL_3:
  v3 = [*(a1 + 40) zoomablePhotosViewModel];
  [v14 setViewModel:v3];

  v4 = [*(a1 + 40) zoomablePhotosViewModel];
  [v4 registerChangeObserver:v14 context:PXZoomObservationContextIOS];
}

@end