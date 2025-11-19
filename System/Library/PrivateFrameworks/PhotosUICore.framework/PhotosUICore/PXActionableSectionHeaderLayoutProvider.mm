@interface PXActionableSectionHeaderLayoutProvider
- (CGSize)singleViewLayout:(id)a3 desiredSizeForReferenceSize:(CGSize)a4;
- (PXActionableSectionHeaderLayoutProvider)init;
- (PXActionableSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4;
- (PXActionableSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4 viewClass:(Class)a5;
- (PXPhotosSectionHeaderLayoutProviderInvalidationDelegate)invalidationDelegate;
- (PXPhotosSectionHeaderLayoutProviderInvalidationDelegate)topHeaderInvalidationDelegate;
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (id)_createSectionHeaderLayoutForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4 spec:(id)a5 outAlignment:(unint64_t *)a6;
- (id)actionTextForActionType:(int64_t)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5;
- (id)configurationForSingleViewLayout:(id)a3;
- (id)createFilterButtonControllerForLayout:(id)a3;
- (id)createSectionHeaderLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outAlignment:(unint64_t *)a7;
- (int64_t)actionTypeForHeaderLayout:(id)a3;
- (void)_getPrimaryText:(id *)a3 secondaryText:(id *)a4 forLayout:(id)a5;
- (void)sectionHeader:(id)a3 didPressButtonForActionType:(int64_t)a4 sender:(id)a5;
- (void)sectionedLayout:(id)a3 headerLayout:(id)a4 didChangeDataSource:(id)a5 sectionIndexPath:(PXSimpleIndexPath *)a6 hasSectionChanges:(BOOL)a7;
- (void)setSelectedState:(BOOL)a3 forItemsInSectionHeaderLayout:(id)a4;
- (void)topHeaderLayout:(id)a3 didChangeDataSource:(id)a4;
@end

@implementation PXActionableSectionHeaderLayoutProvider

- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);

  return WeakRetained;
}

- (PXPhotosSectionHeaderLayoutProviderInvalidationDelegate)topHeaderInvalidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_topHeaderInvalidationDelegate);

  return WeakRetained;
}

- (PXPhotosSectionHeaderLayoutProviderInvalidationDelegate)invalidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_invalidationDelegate);

  return WeakRetained;
}

- (id)createFilterButtonControllerForLayout:(id)a3
{
  v4 = [(PXActionableSectionHeaderLayoutProvider *)self filterButtonConfigurationForLayout:a3];
  v5 = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];

  v6 = 0;
  if (v5 && v4)
  {
    v7 = [PXPhotosFilterToggleButtonController alloc];
    v8 = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
    v6 = [(PXPhotosFilterToggleButtonController *)v7 initWithViewModel:v8 buttonConfiguration:v4];
  }

  return v6;
}

- (void)setSelectedState:(BOOL)a3 forItemsInSectionHeaderLayout:(id)a4
{
  v6 = a4;
  v7 = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
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
  v15[2] = __90__PXActionableSectionHeaderLayoutProvider_setSelectedState_forItemsInSectionHeaderLayout___block_invoke;
  v15[3] = &unk_1E77493D8;
  v17 = a3;
  v16 = v13;
  v14 = v13;
  [v8 performChanges:v15];
}

- (void)sectionHeader:(id)a3 didPressButtonForActionType:(int64_t)a4 sender:(id)a5
{
  v12 = a3;
  v9 = a5;
  if (a4 <= 8)
  {
    if (((1 << a4) & 0xA2) != 0)
    {
      v10 = 1;
    }

    else
    {
      if (((1 << a4) & 0x144) == 0)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:360 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v10 = 0;
    }

    [(PXActionableSectionHeaderLayoutProvider *)self sectionHeader:v12 didToggleSelectedState:v10];
  }
}

- (id)configurationForSingleViewLayout:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_PXActionableSectionHeaderViewConfiguration);
  v54 = 0;
  v55[0] = 0;
  [(PXActionableSectionHeaderLayoutProvider *)self _getPrimaryText:v55 secondaryText:&v54 forLayout:v4];
  v6 = v55[0];
  v7 = v54;
  v46 = v6;
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setPrimaryText:v6];
  v45 = v7;
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setSecondaryText:v7];
  v8 = [v4 spec];
  v9 = [v8 sectionHeaderSpec];
  [v9 padding];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setEdgeInsets:?];

  v10 = [(PXActionableSectionHeaderLayoutProvider *)self actionTypeForHeaderLayout:v4];
  v11 = [v4 dataSource];
  if (v4)
  {
    [v4 sectionIndexPath];
  }

  else
  {
    *location = 0u;
    v53 = 0u;
  }

  v12 = [(PXActionableSectionHeaderLayoutProvider *)self actionTextForActionType:v10 dataSource:v11 sectionIndexPath:location];

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setActionText:v12];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setActionType:v10];
  v13 = [off_1E7721810 sharedInstance];
  v14 = [v13 useGradientSectionHeaders];

  v15 = v10 < 9;
  if (v10 - 7 > 1)
  {
    v16 = 0;
  }

  else
  {
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__PXActionableSectionHeaderLayoutProvider_configurationForSingleViewLayout___block_invoke;
    aBlock[3] = &unk_1E773D8B0;
    objc_copyWeak(&v51, location);
    v50 = v4;
    v16 = _Block_copy(aBlock);

    objc_destroyWeak(&v51);
    objc_destroyWeak(location);
  }

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setFilterButtonControllerFactory:v16];
  v17 = [v12 length];
  v18 = v17 != 0;
  v19 = v16 != 0;
  if ([(PXActionableSectionHeaderLayoutProvider *)self actionVisibilityForHeaderLayout:v4]== 1)
  {
    v20 = [v4 wantsBackground];
    if (v17)
    {
      v18 = v20;
    }

    else
    {
      v18 = 0;
    }

    if (v16)
    {
      v19 = v20;
    }

    else
    {
      v19 = 0;
    }
  }

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setShowsActionButton:v18];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setShowsSecondaryButton:v19];
  v21 = [(PXActionableSectionHeaderLayoutProvider *)self customBackgroundStyle];
  if (v21)
  {
    v22 = [(PXActionableSectionHeaderLayoutProvider *)self customBackgroundStyle];
    v23 = [v22 unsignedIntegerValue];
  }

  else
  {
    v23 = v14;
  }

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setButtonStyle:v15];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setBackgroundStyle:v23];
  v24 = [v4 spec];
  v25 = [v24 visualEffectViewGroupName];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setBackdropViewGroupName:v25];

  v26 = [(PXActionableSectionHeaderLayoutProvider *)self gradientImage];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setGradientImage:v26];

  v27 = [v4 spec];
  v28 = [v27 sectionHeaderSpec];
  [v28 gradientAlpha];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setGradientAlpha:?];

  v29 = [v4 spec];
  v30 = [v29 sectionHeaderSpec];
  [v30 gradientOverhang];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setGradientOverhang:?];

  v31 = [v4 spec];
  v32 = [v31 sectionHeaderSpec];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setButtonSpec:v32];

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setShowsTopSeparator:1];
  v33 = [v4 spec];
  -[_PXActionableSectionHeaderViewConfiguration setPreferredUserInterfaceStyle:](v5, "setPreferredUserInterfaceStyle:", [v33 preferredUserInterfaceStyle]);

  if (v4)
  {
    [v4 sectionIndexPath];
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  *location = v47;
  v53 = v48;
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setSectionIndexPath:location];
  *location = 0u;
  v53 = 0u;
  if (v4)
  {
    [v4 sectionIndexPath];
  }

  v34 = [v4 dataSource];
  v35 = v34;
  v36 = location[0];
  if (location[0] == *off_1E7721F68 || location[1] == 0x7FFFFFFFFFFFFFFFLL || v53 != 0x7FFFFFFFFFFFFFFFLL || v36 != [v34 identifier])
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:343 description:@"Header layouts that are not global must be associated with a current section"];
  }

  v37 = [v35 numberOfItemsInSection:location[1]];
  v38 = [v4 spec];
  v39 = [v38 assetsSpec];
  v40 = [v39 zoomableSpec];
  v41 = v37 >= [v40 staticNumberOfColumns];

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setAvoidsTintedButtonsAtHighSpeeds:v41];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setSupportsMultipleLinesInCompactLayout:1];

  return v5;
}

id __76__PXActionableSectionHeaderLayoutProvider_configurationForSingleViewLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained createFilterButtonControllerForLayout:*(a1 + 32)];

  return v3;
}

- (CGSize)singleViewLayout:(id)a3 desiredSizeForReferenceSize:(CGSize)a4
{
  width = a4.width;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 sectionIndexPath];
    v8 = location[0];
  }

  else
  {
    v8 = 0;
  }

  if (v8 != *off_1E7721F68 || ([v7 isInSelectMode] & 1) == 0)
  {
    v49 = 0;
    v50 = 0;
    [(PXActionableSectionHeaderLayoutProvider *)self _getPrimaryText:&v50 secondaryText:&v49 forLayout:v7];
    v9 = v50;
    v10 = v49;
    v11 = [(PXActionableSectionHeaderLayoutProvider *)self actionTypeForHeaderLayout:v7];
    v12 = [v7 spec];
    v13 = [v12 sectionHeaderSpec];
    v14 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [v14 setBackdropButtonSpec:v13];

    v15 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [v15 setPrimaryText:v9];

    v16 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [v16 setSecondaryText:v10];

    v17 = [v7 spec];
    v18 = [v17 sectionHeaderSpec];
    [v18 padding];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [v27 setContentInsets:{v20, v22, v24, v26}];

    v28 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [v28 setSupportsMultipleLinesInCompactLayout:1];

    if (v11 > 8 || (-[PXActionableSectionHeaderLayoutProvider referenceHeaderView](self, "referenceHeaderView"), v29 = objc_claimAutoreleasedReturnValue(), [v29 setButtonStyle:1], v29, v11 - 7 > 1))
    {
      v30 = 0;
    }

    else
    {
      objc_initWeak(location, self);
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __88__PXActionableSectionHeaderLayoutProvider_singleViewLayout_desiredSizeForReferenceSize___block_invoke;
      v46 = &unk_1E773D8B0;
      objc_copyWeak(&v48, location);
      v47 = v7;
      v30 = _Block_copy(&v43);

      objc_destroyWeak(&v48);
      objc_destroyWeak(location);
    }

    v31 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView:v43];
    [v31 setFilterButtonControllerFactory:v30];

    v32 = [v7 dataSource];
    if (v7)
    {
      [v7 sectionIndexPath];
    }

    else
    {
      *location = 0u;
      v52 = 0u;
    }

    v33 = [(PXActionableSectionHeaderLayoutProvider *)self actionTextForActionType:v11 dataSource:v32 sectionIndexPath:location];

    v34 = [v33 length];
    v35 = v34 != 0;
    v36 = v30 != 0;
    if ([(PXActionableSectionHeaderLayoutProvider *)self actionVisibilityForHeaderLayout:v7]== 1)
    {
      v37 = [v7 wantsBackground];
      if (v34)
      {
        v35 = v37;
      }

      else
      {
        v35 = 0;
      }

      if (v30)
      {
        v36 = v37;
      }

      else
      {
        v36 = 0;
      }
    }

    v38 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [v38 setShowsActionButton:v35];

    v39 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [v39 setShowsSecondaryButton:v36];

    v40 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [v40 setActionText:v33];

    [v7 spec];
    objc_claimAutoreleasedReturnValue();
    PXHorizontalSizeClassFromFeatureSpec();
  }

  v41 = width;
  v42 = 0.0;
  result.height = v42;
  result.width = v41;
  return result;
}

id __88__PXActionableSectionHeaderLayoutProvider_singleViewLayout_desiredSizeForReferenceSize___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained createFilterButtonControllerForLayout:*(a1 + 32)];

  return v3;
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
  v11 = a4;
  v12 = a6;
  v13 = *&a5->item;
  v17 = *&a5->dataSourceIdentifier;
  v18 = v13;
  if ([(PXActionableSectionHeaderLayoutProvider *)self wantsHeaderForDataSource:v11 sectionIndexPath:&v17])
  {
    v14 = *&a5->item;
    v17 = *&a5->dataSourceIdentifier;
    v18 = v14;
    v15 = [(PXActionableSectionHeaderLayoutProvider *)self _createSectionHeaderLayoutForDataSource:v11 sectionIndexPath:&v17 spec:v12 outAlignment:a7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)topHeaderLayout:(id)a3 didChangeDataSource:(id)a4
{
  v5 = a3;
  [v5 setDataSource:a4];
  [v5 viewContentDidChange];
}

- (void)_getPrimaryText:(id *)a3 secondaryText:(id *)a4 forLayout:(id)a5
{
  v8 = a5;
  v9 = [v8 dataSource];
  if (v8)
  {
    [v8 sectionIndexPath];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = [(PXActionableSectionHeaderLayoutProvider *)self primaryTextForDataSource:v9 sectionIndexPath:&v11];

  v10 = [v8 dataSource];
  if (v8)
  {
    [v8 sectionIndexPath];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a4 = [(PXActionableSectionHeaderLayoutProvider *)self secondaryTextForDataSource:v10 sectionIndexPath:&v11];
}

- (id)_createSectionHeaderLayoutForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4 spec:(id)a5 outAlignment:(unint64_t *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [[PXActionableSectionHeaderLayout alloc] initWithSpec:v10];

  [(PXActionableSectionHeaderLayout *)v12 setDataSource:v11];
  v13 = *&a4->item;
  v16[0] = *&a4->dataSourceIdentifier;
  v16[1] = v13;
  [(PXActionableSectionHeaderLayout *)v12 setSectionIndexPath:v16];
  [(PXGSingleViewLayout *)v12 setStyle:2];
  [(PXGSingleViewLayout *)v12 setContentViewClass:self->_actionableViewClass];
  [(PXGSingleViewLayout *)v12 setDelegate:self];
  [(PXActionableSectionHeaderLayout *)v12 setInteractionDelegate:self];
  v14 = [(PXActionableSectionHeaderLayoutProvider *)self viewProvider];
  [(PXActionableSectionHeaderLayout *)v12 setViewProvider:v14];

  *a6 = [(PXActionableSectionHeaderLayoutProvider *)self alignmentForHeaderLayout:v12];

  return v12;
}

- (int64_t)actionTypeForHeaderLayout:(id)a3
{
  v3 = a3;
  if ([v3 isInSelectMode])
  {
    if ([v3 areAllItemsSelected])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)actionTextForActionType:(int64_t)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5
{
  v6 = a4;
  if (a3 <= 8)
  {
    if (((1 << a3) & 0xA0) != 0)
    {
      v7 = @"PXPhotosGridsSectionEnterSelectModeButton";
      goto LABEL_11;
    }

    if (((1 << a3) & 0x140) != 0)
    {
      v7 = @"PXPhotosGridsSectionLeaveSelectModeButton";
LABEL_11:
      v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
      goto LABEL_12;
    }

    if (((1 << a3) & 0x18) != 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXActionableSectionHeaderLayoutProvider actionTextForActionType:dataSource:sectionIndexPath:]"];
      [v10 handleFailureInFunction:v11 file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:132 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  if (a3 == 1)
  {
    v7 = @"PXPhotosGridsSectionSelectButton";
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    v7 = @"PXPhotosGridsSectionDeselectButton";
    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (PXActionableSectionHeaderLayoutProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:92 description:{@"%s is not available as initializer", "-[PXActionableSectionHeaderLayoutProvider init]"}];

  abort();
}

- (PXActionableSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXActionableSectionHeaderLayoutProvider *)self initWithViewModel:v7 viewProvider:v6 viewClass:objc_opt_class()];

  return v8;
}

- (PXActionableSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4 viewClass:(Class)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = PXActionableSectionHeaderLayoutProvider;
  v11 = [(PXActionableSectionHeaderLayoutProvider *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, a3);
    objc_storeWeak(&v12->_viewProvider, v10);
    objc_storeStrong(&v12->_actionableViewClass, a5);
    v13 = objc_alloc(v12->_actionableViewClass);
    v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    referenceHeaderView = v12->_referenceHeaderView;
    v12->_referenceHeaderView = v14;

    [off_1E7721810 sharedInstance];
    [objc_claimAutoreleasedReturnValue() enableTitleLegibilityDimmingFilter];
    PXPhotosUIFoundationBundle();
  }

  return 0;
}

@end