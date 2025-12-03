@interface PXPhotosSearchSectionHeaderLayoutProvider
- (BOOL)wantsHeaderForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
- (PXPhotosSearchSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider;
- (id)filterButtonConfigurationForLayout:(id)layout;
- (id)primaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)actionTypeForHeaderLayout:(id)layout;
- (void)sectionHeader:(id)header didPressButtonForActionType:(int64_t)type sender:(id)sender;
@end

@implementation PXPhotosSearchSectionHeaderLayoutProvider

- (id)filterButtonConfigurationForLayout:(id)layout
{
  v3 = MEMORY[0x1E69DC740];
  layoutCopy = layout;
  grayButtonConfiguration = [v3 grayButtonConfiguration];
  v6 = +[PXPhotosSearchFeatureAvailabilityManagerObjcHelper wantsSearchReportAConcernStyling];
  spec = [layoutCopy spec];

  sectionHeaderSpec = [spec sectionHeaderSpec];
  if (v6)
  {
    [PXCuratedLibraryOverlayButtonConfiguration configurationWithButtonType:1 spec:sectionHeaderSpec];
  }

  else
  {
    [PXCuratedLibraryOverlayButtonConfiguration configurationWithSystemImageName:@"arrow.up.arrow.down" spec:sectionHeaderSpec];
  }
  v9 = ;

  v10 = [PXCuratedLibraryOverlayButton iconImageSymbolConfigurationFromConfiguration:v9];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.arrow.down" withConfiguration:v10];
  [grayButtonConfiguration setImage:v11];

  clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  [grayButtonConfiguration setBackground:clearConfiguration];

  [grayButtonConfiguration setCornerStyle:4];
  [grayButtonConfiguration setButtonSize:2];

  return grayButtonConfiguration;
}

- (void)sectionHeader:(id)header didPressButtonForActionType:(int64_t)type sender:(id)sender
{
  headerCopy = header;
  viewModel = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__PXPhotosSearchSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke;
  v9[3] = &unk_1E7748CB8;
  v10 = headerCopy;
  v8 = headerCopy;
  [viewModel performChanges:v9];
}

void __94__PXPhotosSearchSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setIsInSelectMode:{objc_msgSend(v3, "isInSelectMode") ^ 1}];
  [v3 attemptSetInSelectMode:{objc_msgSend(v3, "isInSelectMode") ^ 1}];
}

- (int64_t)actionTypeForHeaderLayout:(id)layout
{
  layoutCopy = layout;
  if (MEMORY[0x1A590D320]())
  {
    goto LABEL_19;
  }

  memset(v18, 0, sizeof(v18));
  dataSource = [layoutCopy dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    [dataSource lastSectionIndexPath];
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
    dataSource2 = [layoutCopy dataSource];
    v16 = v18[0];
    v17 = v18[1];
    v8 = [(PXPhotosSearchSectionHeaderLayoutProvider *)self wantsHeaderForDataSource:dataSource2 sectionIndexPath:&v16];

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

  if (layoutCopy)
  {
    [layoutCopy sectionIndexPath];
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
    viewModel = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
    if ([viewModel isInSelectMode])
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

- (id)primaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  sourceCopy = source;
  v7 = sourceCopy;
  memset(v18, 0, sizeof(v18));
  if (sourceCopy)
  {
    [sourceCopy lastSectionIndexPath];
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

  if (path->dataSourceIdentifier == *&v18[0] && *&path->section == *(v18 + 8) && path->subitem == *(&v18[1] + 1))
  {
    integerValue = [v7 numberOfItemsInSection:?];
    viewModel = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
    search_overriddenAllAssetsCount = [viewModel search_overriddenAllAssetsCount];

    if (search_overriddenAllAssetsCount && path->section == 2)
    {
      integerValue = [search_overriddenAllAssetsCount integerValue];
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = PXLocalizedStringFromTable(@"%ld_SEARCH_ALL_RESULTS", @"PhotosUICore");
    localizedTitle = [v12 localizedStringWithFormat:v13, integerValue];
  }

  else
  {
LABEL_13:
    v15 = *&path->item;
    v18[0] = *&path->dataSourceIdentifier;
    v18[1] = v15;
    search_overriddenAllAssetsCount = [v7 assetCollectionAtSectionIndexPath:v18];
    localizedTitle = [search_overriddenAllAssetsCount localizedTitle];
  }

  return localizedTitle;
}

- (BOOL)wantsHeaderForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  sourceCopy = source;
  v6 = *&path->item;
  v11[0] = *&path->dataSourceIdentifier;
  v11[1] = v6;
  v7 = [sourceCopy assetCollectionAtSectionIndexPath:v11];
  localizedTitle = [v7 localizedTitle];
  if (localizedTitle)
  {
    v9 = [sourceCopy numberOfItemsInSection:path->section] > 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PXPhotosSearchSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider
{
  modelCopy = model;
  providerCopy = provider;
  v9 = objc_opt_class();
  v17.receiver = self;
  v17.super_class = PXPhotosSearchSectionHeaderLayoutProvider;
  v10 = [(PXActionableSectionHeaderLayoutProvider *)&v17 initWithViewModel:modelCopy viewProvider:providerCopy viewClass:v9];
  if (v10)
  {
    gridView = [providerCopy gridView];
    [gridView setCustomAssetImageViewClass:objc_opt_class()];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__PXPhotosSearchSectionHeaderLayoutProvider_initWithViewModel_viewProvider___block_invoke;
    v13[3] = &unk_1E77499B0;
    v16 = a2;
    v14 = v10;
    v15 = modelCopy;
    [gridView setCustomAssetImageViewClassConfigurator:v13];
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