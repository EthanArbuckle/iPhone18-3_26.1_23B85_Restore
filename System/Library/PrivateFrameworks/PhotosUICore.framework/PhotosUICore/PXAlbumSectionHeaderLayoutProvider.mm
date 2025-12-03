@interface PXAlbumSectionHeaderLayoutProvider
- (CGSize)singleViewLayout:(id)layout desiredSizeForReferenceSize:(CGSize)size;
- (PXAlbumSectionHeaderLayoutProvider)init;
- (PXAlbumSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider;
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (id)configurationForSingleViewLayout:(id)layout;
- (id)createSectionHeaderLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outAlignment:(unint64_t *)alignment;
- (void)didTapSectionHeader:(id)header;
- (void)sectionHeader:(id)header didToggleFiltersDisabled:(BOOL)disabled;
- (void)sectionHeader:(id)header didToggleSelectedState:(BOOL)state;
- (void)sectionedLayout:(id)layout headerLayout:(id)headerLayout didChangeDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path hasSectionChanges:(BOOL)changes;
@end

@implementation PXAlbumSectionHeaderLayoutProvider

- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);

  return WeakRetained;
}

- (void)sectionHeader:(id)header didToggleFiltersDisabled:(BOOL)disabled
{
  headerCopy = header;
  dataSource = [headerCopy dataSource];
  if (headerCopy)
  {
    [headerCopy sectionIndexPath];
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v8 = [dataSource assetCollectionAtSectionIndexPath:v15];

  viewModel = [(PXAlbumSectionHeaderLayoutProvider *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PXAlbumSectionHeaderLayoutProvider_sectionHeader_didToggleFiltersDisabled___block_invoke;
  v12[3] = &unk_1E7749400;
  disabledCopy = disabled;
  v13 = v8;
  v11 = v8;
  [dataSourceManager performChanges:v12];
}

- (void)sectionHeader:(id)header didToggleSelectedState:(BOOL)state
{
  headerCopy = header;
  viewModel = [(PXAlbumSectionHeaderLayoutProvider *)self viewModel];
  selectionManager = [viewModel selectionManager];

  selectionSnapshot = [selectionManager selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  v20 = 0u;
  v21 = 0u;
  if (headerCopy)
  {
    [headerCopy sectionIndexPath];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  dataSource2 = [headerCopy dataSource];
  if (dataSource)
  {
    [dataSource convertIndexPath:v19 fromSectionedDataSource:dataSource2];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v18[0] = v20;
  v18[1] = v21;
  v12 = [off_1E7721768 indexPathSetWithIndexPath:v18];
  v13 = [dataSource itemIndexPathsForSections:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PXAlbumSectionHeaderLayoutProvider_sectionHeader_didToggleSelectedState___block_invoke;
  v15[3] = &unk_1E77493D8;
  stateCopy = state;
  v16 = v13;
  v14 = v13;
  [selectionManager performChanges:v15];
}

- (void)didTapSectionHeader:(id)header
{
  headerCopy = header;
  dataSource = [headerCopy dataSource];
  if (headerCopy)
  {
    [headerCopy sectionIndexPath];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v6 = [dataSource assetCollectionReferenceAtSectionIndexPath:v12];

  viewModel = [(PXAlbumSectionHeaderLayoutProvider *)self viewModel];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  v9 = [assetCollectionActionManager actionPerformerForActionType:*off_1E7721DB8 assetCollectionReference:v6];

  v10 = PLGridZeroGetLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Will present details view from photos grid header tap", v12, 2u);
    }

    [v9 performActionWithCompletionHandler:&__block_literal_global_236571];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "No action performer found for presenting details", v12, 2u);
    }
  }
}

void __58__PXAlbumSectionHeaderLayoutProvider_didTapSectionHeader___block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLGridZeroGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Failed to present details view from photos grid header tap, error %@", &v6, 0xCu);
    }
  }
}

- (CGSize)singleViewLayout:(id)layout desiredSizeForReferenceSize:(CGSize)size
{
  width = size.width;
  layoutCopy = layout;
  v40 = 0;
  dataSource = [layoutCopy dataSource];
  if (layoutCopy)
  {
    [layoutCopy sectionIndexPath];
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  _PXGetSectionHeaderData(dataSource, v39, &v38, &v37, &v36, &v35, &v40);
  v7 = v38;
  v8 = v37;
  v9 = v36;
  v10 = v35;

  userData = [layoutCopy userData];
  v32 = [v7 length];
  if (v8)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v33 = v13;
  v30 = [v10 count];
  v34 = v7;
  if (v40)
  {
    isInSelectMode = 1;
  }

  else
  {
    isInSelectMode = [layoutCopy isInSelectMode];
  }

  allowsPhotosDetailsInteraction = [userData allowsPhotosDetailsInteraction];
  headerStyle = [userData headerStyle];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v19 = +[PXPhotosSectionHeaderMetrics sharedMetrics];
  v20 = v19;
  if (IsAccessibilityCategory)
  {
    spec = [layoutCopy spec];
    sectionHeaderSpec = [spec sectionHeaderSpec];
    v23 = headerStyle;
    v24 = v34;
    [v20 accessibilitySectionHeaderHeightForStyle:v23 width:isInSelectMode actionButton:allowsPhotosDetailsInteraction disclosure:v34 title:v8 startDate:v9 endDate:width locations:v10 actionButtonSpec:sectionHeaderSpec];
    v26 = v25;
  }

  else
  {
    [v19 sectionHeaderHeightForStyle:headerStyle hasTitle:v32 != 0 hasDates:v33 hasLocation:v30 != 0];
    v26 = v27;
    v24 = v34;
  }

  v28 = width;
  v29 = v26;
  result.height = v29;
  result.width = v28;
  return result;
}

- (id)configurationForSingleViewLayout:(id)layout
{
  layoutCopy = layout;
  v5 = objc_alloc_init(_PXPhotosSectionHeaderViewConfiguration);
  v38 = 0;
  dataSource = [layoutCopy dataSource];
  v36 = 0u;
  v37 = 0u;
  if (layoutCopy)
  {
    [layoutCopy sectionIndexPath];
  }

  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v30 = v36;
  v31 = v37;
  _PXGetSectionHeaderData(dataSource, &v30, &v35, &v34, &v33, &v32, &v38);
  v7 = v35;
  v8 = v34;
  v9 = v33;
  v10 = v32;
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setTitle:v7];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setStartDate:v8];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setEndDate:v9];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setLocationNames:v10];

  if ([(PXAlbumSectionHeaderLayoutProvider *)self editorialStyle])
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setHeaderStyle:v11];
  spec = [layoutCopy spec];
  sectionHeaderSpec = [spec sectionHeaderSpec];
  [sectionHeaderSpec padding];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setEdgeInsets:?];

  spec2 = [layoutCopy spec];
  visualEffectViewGroupName = [spec2 visualEffectViewGroupName];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setBackdropViewGroupName:visualEffectViewGroupName];

  if ([(PXAlbumSectionHeaderLayoutProvider *)self editorialStyle])
  {
    [(_PXPhotosSectionHeaderViewConfiguration *)v5 setGradientImage:0];
  }

  else
  {
    gradientImage = [(PXAlbumSectionHeaderLayoutProvider *)self gradientImage];
    [(_PXPhotosSectionHeaderViewConfiguration *)v5 setGradientImage:gradientImage];
  }

  spec3 = [layoutCopy spec];
  sectionHeaderSpec2 = [spec3 sectionHeaderSpec];
  [sectionHeaderSpec2 gradientAlpha];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setGradientAlpha:?];

  spec4 = [layoutCopy spec];
  sectionHeaderSpec3 = [spec4 sectionHeaderSpec];
  [sectionHeaderSpec3 gradientOverhang];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setGradientOverhang:?];

  spec5 = [layoutCopy spec];
  sectionHeaderSpec4 = [spec5 sectionHeaderSpec];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setButtonSpec:sectionHeaderSpec4];

  if ([layoutCopy allowsFloatingBackground])
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setBackgroundStyle:v23];
  if ([layoutCopy isInSelectMode])
  {
    v24 = 0;
    if ([layoutCopy areAllItemsSelected])
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    viewModel = [(PXAlbumSectionHeaderLayoutProvider *)self viewModel];
    v30 = v36;
    v31 = v37;
    v27 = [dataSource assetCollectionReferenceAtSectionIndexPath:&v30];
    if ([viewModel allowsShowDetails])
    {
      assetCollectionActionManager = [viewModel assetCollectionActionManager];
      v24 = [assetCollectionActionManager canPerformActionType:*off_1E7721DB8 assetCollectionReference:v27];
    }

    else
    {
      v24 = 0;
    }

    v25 = v38;
  }

  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setActionType:v25];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setAllowsPhotosDetailsInteraction:v24];

  return v5;
}

- (void)sectionedLayout:(id)layout headerLayout:(id)headerLayout didChangeDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path hasSectionChanges:(BOOL)changes
{
  changesCopy = changes;
  headerLayoutCopy = headerLayout;
  [headerLayoutCopy setDataSource:source];
  v11 = *&path->item;
  v12[0] = *&path->dataSourceIdentifier;
  v12[1] = v11;
  [headerLayoutCopy setSectionIndexPath:v12];
  if (changesCopy)
  {
    [headerLayoutCopy viewContentDidChange];
  }
}

- (id)createSectionHeaderLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outAlignment:(unint64_t *)alignment
{
  specCopy = spec;
  sourceCopy = source;
  v13 = [[_PXAlbumSectionHeaderLayout alloc] initWithSpec:specCopy];

  [(_PXAlbumSectionHeaderLayout *)v13 setDataSource:sourceCopy];
  v14 = *&path->item;
  v18[0] = *&path->dataSourceIdentifier;
  v18[1] = v14;
  [(_PXAlbumSectionHeaderLayout *)v13 setSectionIndexPath:v18];
  [(PXGSingleViewLayout *)v13 setStyle:2];
  [(PXGSingleViewLayout *)v13 setContentViewClass:objc_opt_class()];
  [(PXGSingleViewLayout *)v13 setDelegate:self];
  [(_PXAlbumSectionHeaderLayout *)v13 setInteractionDelegate:self];
  viewProvider = [(PXAlbumSectionHeaderLayoutProvider *)self viewProvider];
  [(_PXAlbumSectionHeaderLayout *)v13 setViewProvider:viewProvider];

  LODWORD(v16) = -1080452710;
  [(PXGSingleViewLayout *)v13 setZPosition:v16];
  [(_PXAlbumSectionHeaderLayout *)v13 setAllowsFloatingBackground:[(PXAlbumSectionHeaderLayoutProvider *)self allowsFloatingBackground]];
  if ([(PXAlbumSectionHeaderLayoutProvider *)self editorialStyle])
  {
    *alignment = 3;
    [(_PXAlbumSectionHeaderLayout *)v13 setAlwaysWantsBackground:1];
  }

  else
  {
    *alignment = 1;
  }

  return v13;
}

- (PXAlbumSectionHeaderLayoutProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:133 description:{@"%s is not available as initializer", "-[PXAlbumSectionHeaderLayoutProvider init]"}];

  abort();
}

- (PXAlbumSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider
{
  modelCopy = model;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = PXAlbumSectionHeaderLayoutProvider;
  v9 = [(PXAlbumSectionHeaderLayoutProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    objc_storeWeak(&v10->_viewProvider, providerCopy);
    [off_1E7721810 sharedInstance];
    [objc_claimAutoreleasedReturnValue() enableTitleLegibilityDimmingFilter];
    PXPhotosUIFoundationBundle();
  }

  return 0;
}

@end