@interface PXAlbumSectionHeaderLayoutProvider
- (CGSize)singleViewLayout:(id)a3 desiredSizeForReferenceSize:(CGSize)a4;
- (PXAlbumSectionHeaderLayoutProvider)init;
- (PXAlbumSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4;
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (id)configurationForSingleViewLayout:(id)a3;
- (id)createSectionHeaderLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outAlignment:(unint64_t *)a7;
- (void)didTapSectionHeader:(id)a3;
- (void)sectionHeader:(id)a3 didToggleFiltersDisabled:(BOOL)a4;
- (void)sectionHeader:(id)a3 didToggleSelectedState:(BOOL)a4;
- (void)sectionedLayout:(id)a3 headerLayout:(id)a4 didChangeDataSource:(id)a5 sectionIndexPath:(PXSimpleIndexPath *)a6 hasSectionChanges:(BOOL)a7;
@end

@implementation PXAlbumSectionHeaderLayoutProvider

- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);

  return WeakRetained;
}

- (void)sectionHeader:(id)a3 didToggleFiltersDisabled:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 dataSource];
  if (v6)
  {
    [v6 sectionIndexPath];
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v8 = [v7 assetCollectionAtSectionIndexPath:v15];

  v9 = [(PXAlbumSectionHeaderLayoutProvider *)self viewModel];
  v10 = [v9 dataSourceManager];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PXAlbumSectionHeaderLayoutProvider_sectionHeader_didToggleFiltersDisabled___block_invoke;
  v12[3] = &unk_1E7749400;
  v14 = a4;
  v13 = v8;
  v11 = v8;
  [v10 performChanges:v12];
}

- (void)sectionHeader:(id)a3 didToggleSelectedState:(BOOL)a4
{
  v6 = a3;
  v7 = [(PXAlbumSectionHeaderLayoutProvider *)self viewModel];
  v8 = [v7 selectionManager];

  v9 = [v8 selectionSnapshot];
  v10 = [v9 dataSource];

  v20 = 0u;
  v21 = 0u;
  if (v6)
  {
    [v6 sectionIndexPath];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  v11 = [v6 dataSource];
  if (v10)
  {
    [v10 convertIndexPath:v19 fromSectionedDataSource:v11];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v18[0] = v20;
  v18[1] = v21;
  v12 = [off_1E7721768 indexPathSetWithIndexPath:v18];
  v13 = [v10 itemIndexPathsForSections:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PXAlbumSectionHeaderLayoutProvider_sectionHeader_didToggleSelectedState___block_invoke;
  v15[3] = &unk_1E77493D8;
  v17 = a4;
  v16 = v13;
  v14 = v13;
  [v8 performChanges:v15];
}

- (void)didTapSectionHeader:(id)a3
{
  v4 = a3;
  v5 = [v4 dataSource];
  if (v4)
  {
    [v4 sectionIndexPath];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v6 = [v5 assetCollectionReferenceAtSectionIndexPath:v12];

  v7 = [(PXAlbumSectionHeaderLayoutProvider *)self viewModel];
  v8 = [v7 assetCollectionActionManager];
  v9 = [v8 actionPerformerForActionType:*off_1E7721DB8 assetCollectionReference:v6];

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

- (CGSize)singleViewLayout:(id)a3 desiredSizeForReferenceSize:(CGSize)a4
{
  width = a4.width;
  v5 = a3;
  v40 = 0;
  v6 = [v5 dataSource];
  if (v5)
  {
    [v5 sectionIndexPath];
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  _PXGetSectionHeaderData(v6, v39, &v38, &v37, &v36, &v35, &v40);
  v7 = v38;
  v8 = v37;
  v9 = v36;
  v10 = v35;

  v11 = [v5 userData];
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
    v31 = 1;
  }

  else
  {
    v31 = [v5 isInSelectMode];
  }

  v14 = [v11 allowsPhotosDetailsInteraction];
  v15 = [v11 headerStyle];
  v16 = [MEMORY[0x1E69DC668] sharedApplication];
  v17 = [v16 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v17);

  v19 = +[PXPhotosSectionHeaderMetrics sharedMetrics];
  v20 = v19;
  if (IsAccessibilityCategory)
  {
    v21 = [v5 spec];
    v22 = [v21 sectionHeaderSpec];
    v23 = v15;
    v24 = v34;
    [v20 accessibilitySectionHeaderHeightForStyle:v23 width:v31 actionButton:v14 disclosure:v34 title:v8 startDate:v9 endDate:width locations:v10 actionButtonSpec:v22];
    v26 = v25;
  }

  else
  {
    [v19 sectionHeaderHeightForStyle:v15 hasTitle:v32 != 0 hasDates:v33 hasLocation:v30 != 0];
    v26 = v27;
    v24 = v34;
  }

  v28 = width;
  v29 = v26;
  result.height = v29;
  result.width = v28;
  return result;
}

- (id)configurationForSingleViewLayout:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_PXPhotosSectionHeaderViewConfiguration);
  v38 = 0;
  v6 = [v4 dataSource];
  v36 = 0u;
  v37 = 0u;
  if (v4)
  {
    [v4 sectionIndexPath];
  }

  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v30 = v36;
  v31 = v37;
  _PXGetSectionHeaderData(v6, &v30, &v35, &v34, &v33, &v32, &v38);
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
  v12 = [v4 spec];
  v13 = [v12 sectionHeaderSpec];
  [v13 padding];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setEdgeInsets:?];

  v14 = [v4 spec];
  v15 = [v14 visualEffectViewGroupName];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setBackdropViewGroupName:v15];

  if ([(PXAlbumSectionHeaderLayoutProvider *)self editorialStyle])
  {
    [(_PXPhotosSectionHeaderViewConfiguration *)v5 setGradientImage:0];
  }

  else
  {
    v16 = [(PXAlbumSectionHeaderLayoutProvider *)self gradientImage];
    [(_PXPhotosSectionHeaderViewConfiguration *)v5 setGradientImage:v16];
  }

  v17 = [v4 spec];
  v18 = [v17 sectionHeaderSpec];
  [v18 gradientAlpha];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setGradientAlpha:?];

  v19 = [v4 spec];
  v20 = [v19 sectionHeaderSpec];
  [v20 gradientOverhang];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setGradientOverhang:?];

  v21 = [v4 spec];
  v22 = [v21 sectionHeaderSpec];
  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setButtonSpec:v22];

  if ([v4 allowsFloatingBackground])
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  [(_PXPhotosSectionHeaderViewConfiguration *)v5 setBackgroundStyle:v23];
  if ([v4 isInSelectMode])
  {
    v24 = 0;
    if ([v4 areAllItemsSelected])
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
    v26 = [(PXAlbumSectionHeaderLayoutProvider *)self viewModel];
    v30 = v36;
    v31 = v37;
    v27 = [v6 assetCollectionReferenceAtSectionIndexPath:&v30];
    if ([v26 allowsShowDetails])
    {
      v28 = [v26 assetCollectionActionManager];
      v24 = [v28 canPerformActionType:*off_1E7721DB8 assetCollectionReference:v27];
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

- (void)sectionedLayout:(id)a3 headerLayout:(id)a4 didChangeDataSource:(id)a5 sectionIndexPath:(PXSimpleIndexPath *)a6 hasSectionChanges:(BOOL)a7
{
  v7 = a7;
  v10 = a4;
  [v10 setDataSource:a5];
  v11 = *&a6->item;
  v12[0] = *&a6->dataSourceIdentifier;
  v12[1] = v11;
  [v10 setSectionIndexPath:v12];
  if (v7)
  {
    [v10 viewContentDidChange];
  }
}

- (id)createSectionHeaderLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outAlignment:(unint64_t *)a7
{
  v11 = a6;
  v12 = a4;
  v13 = [[_PXAlbumSectionHeaderLayout alloc] initWithSpec:v11];

  [(_PXAlbumSectionHeaderLayout *)v13 setDataSource:v12];
  v14 = *&a5->item;
  v18[0] = *&a5->dataSourceIdentifier;
  v18[1] = v14;
  [(_PXAlbumSectionHeaderLayout *)v13 setSectionIndexPath:v18];
  [(PXGSingleViewLayout *)v13 setStyle:2];
  [(PXGSingleViewLayout *)v13 setContentViewClass:objc_opt_class()];
  [(PXGSingleViewLayout *)v13 setDelegate:self];
  [(_PXAlbumSectionHeaderLayout *)v13 setInteractionDelegate:self];
  v15 = [(PXAlbumSectionHeaderLayoutProvider *)self viewProvider];
  [(_PXAlbumSectionHeaderLayout *)v13 setViewProvider:v15];

  LODWORD(v16) = -1080452710;
  [(PXGSingleViewLayout *)v13 setZPosition:v16];
  [(_PXAlbumSectionHeaderLayout *)v13 setAllowsFloatingBackground:[(PXAlbumSectionHeaderLayoutProvider *)self allowsFloatingBackground]];
  if ([(PXAlbumSectionHeaderLayoutProvider *)self editorialStyle])
  {
    *a7 = 3;
    [(_PXAlbumSectionHeaderLayout *)v13 setAlwaysWantsBackground:1];
  }

  else
  {
    *a7 = 1;
  }

  return v13;
}

- (PXAlbumSectionHeaderLayoutProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:133 description:{@"%s is not available as initializer", "-[PXAlbumSectionHeaderLayoutProvider init]"}];

  abort();
}

- (PXAlbumSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXAlbumSectionHeaderLayoutProvider;
  v9 = [(PXAlbumSectionHeaderLayoutProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, a3);
    objc_storeWeak(&v10->_viewProvider, v8);
    [off_1E7721810 sharedInstance];
    [objc_claimAutoreleasedReturnValue() enableTitleLegibilityDimmingFilter];
    PXPhotosUIFoundationBundle();
  }

  return 0;
}

@end