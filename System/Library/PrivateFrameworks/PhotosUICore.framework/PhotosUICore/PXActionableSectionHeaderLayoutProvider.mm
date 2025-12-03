@interface PXActionableSectionHeaderLayoutProvider
- (CGSize)singleViewLayout:(id)layout desiredSizeForReferenceSize:(CGSize)size;
- (PXActionableSectionHeaderLayoutProvider)init;
- (PXActionableSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider;
- (PXActionableSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider viewClass:(Class)class;
- (PXPhotosSectionHeaderLayoutProviderInvalidationDelegate)invalidationDelegate;
- (PXPhotosSectionHeaderLayoutProviderInvalidationDelegate)topHeaderInvalidationDelegate;
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (id)_createSectionHeaderLayoutForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outAlignment:(unint64_t *)alignment;
- (id)actionTextForActionType:(int64_t)type dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
- (id)configurationForSingleViewLayout:(id)layout;
- (id)createFilterButtonControllerForLayout:(id)layout;
- (id)createSectionHeaderLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outAlignment:(unint64_t *)alignment;
- (int64_t)actionTypeForHeaderLayout:(id)layout;
- (void)_getPrimaryText:(id *)text secondaryText:(id *)secondaryText forLayout:(id)layout;
- (void)sectionHeader:(id)header didPressButtonForActionType:(int64_t)type sender:(id)sender;
- (void)sectionedLayout:(id)layout headerLayout:(id)headerLayout didChangeDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path hasSectionChanges:(BOOL)changes;
- (void)setSelectedState:(BOOL)state forItemsInSectionHeaderLayout:(id)layout;
- (void)topHeaderLayout:(id)layout didChangeDataSource:(id)source;
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

- (id)createFilterButtonControllerForLayout:(id)layout
{
  v4 = [(PXActionableSectionHeaderLayoutProvider *)self filterButtonConfigurationForLayout:layout];
  viewModel = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];

  v6 = 0;
  if (viewModel && v4)
  {
    v7 = [PXPhotosFilterToggleButtonController alloc];
    viewModel2 = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
    v6 = [(PXPhotosFilterToggleButtonController *)v7 initWithViewModel:viewModel2 buttonConfiguration:v4];
  }

  return v6;
}

- (void)setSelectedState:(BOOL)state forItemsInSectionHeaderLayout:(id)layout
{
  layoutCopy = layout;
  viewModel = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
  selectionManager = [viewModel selectionManager];

  selectionSnapshot = [selectionManager selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  v20 = 0u;
  v21 = 0u;
  if (layoutCopy)
  {
    [layoutCopy sectionIndexPath];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  dataSource2 = [layoutCopy dataSource];
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
  v15[2] = __90__PXActionableSectionHeaderLayoutProvider_setSelectedState_forItemsInSectionHeaderLayout___block_invoke;
  v15[3] = &unk_1E77493D8;
  stateCopy = state;
  v16 = v13;
  v14 = v13;
  [selectionManager performChanges:v15];
}

- (void)sectionHeader:(id)header didPressButtonForActionType:(int64_t)type sender:(id)sender
{
  headerCopy = header;
  senderCopy = sender;
  if (type <= 8)
  {
    if (((1 << type) & 0xA2) != 0)
    {
      v10 = 1;
    }

    else
    {
      if (((1 << type) & 0x144) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:360 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v10 = 0;
    }

    [(PXActionableSectionHeaderLayoutProvider *)self sectionHeader:headerCopy didToggleSelectedState:v10];
  }
}

- (id)configurationForSingleViewLayout:(id)layout
{
  layoutCopy = layout;
  v5 = objc_alloc_init(_PXActionableSectionHeaderViewConfiguration);
  v54 = 0;
  v55[0] = 0;
  [(PXActionableSectionHeaderLayoutProvider *)self _getPrimaryText:v55 secondaryText:&v54 forLayout:layoutCopy];
  v6 = v55[0];
  v7 = v54;
  v46 = v6;
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setPrimaryText:v6];
  v45 = v7;
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setSecondaryText:v7];
  spec = [layoutCopy spec];
  sectionHeaderSpec = [spec sectionHeaderSpec];
  [sectionHeaderSpec padding];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setEdgeInsets:?];

  v10 = [(PXActionableSectionHeaderLayoutProvider *)self actionTypeForHeaderLayout:layoutCopy];
  dataSource = [layoutCopy dataSource];
  if (layoutCopy)
  {
    [layoutCopy sectionIndexPath];
  }

  else
  {
    *location = 0u;
    v53 = 0u;
  }

  v12 = [(PXActionableSectionHeaderLayoutProvider *)self actionTextForActionType:v10 dataSource:dataSource sectionIndexPath:location];

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setActionText:v12];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setActionType:v10];
  sharedInstance = [off_1E7721810 sharedInstance];
  useGradientSectionHeaders = [sharedInstance useGradientSectionHeaders];

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
    v50 = layoutCopy;
    v16 = _Block_copy(aBlock);

    objc_destroyWeak(&v51);
    objc_destroyWeak(location);
  }

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setFilterButtonControllerFactory:v16];
  v17 = [v12 length];
  v18 = v17 != 0;
  v19 = v16 != 0;
  if ([(PXActionableSectionHeaderLayoutProvider *)self actionVisibilityForHeaderLayout:layoutCopy]== 1)
  {
    wantsBackground = [layoutCopy wantsBackground];
    if (v17)
    {
      v18 = wantsBackground;
    }

    else
    {
      v18 = 0;
    }

    if (v16)
    {
      v19 = wantsBackground;
    }

    else
    {
      v19 = 0;
    }
  }

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setShowsActionButton:v18];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setShowsSecondaryButton:v19];
  customBackgroundStyle = [(PXActionableSectionHeaderLayoutProvider *)self customBackgroundStyle];
  if (customBackgroundStyle)
  {
    customBackgroundStyle2 = [(PXActionableSectionHeaderLayoutProvider *)self customBackgroundStyle];
    unsignedIntegerValue = [customBackgroundStyle2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = useGradientSectionHeaders;
  }

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setButtonStyle:v15];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setBackgroundStyle:unsignedIntegerValue];
  spec2 = [layoutCopy spec];
  visualEffectViewGroupName = [spec2 visualEffectViewGroupName];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setBackdropViewGroupName:visualEffectViewGroupName];

  gradientImage = [(PXActionableSectionHeaderLayoutProvider *)self gradientImage];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setGradientImage:gradientImage];

  spec3 = [layoutCopy spec];
  sectionHeaderSpec2 = [spec3 sectionHeaderSpec];
  [sectionHeaderSpec2 gradientAlpha];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setGradientAlpha:?];

  spec4 = [layoutCopy spec];
  sectionHeaderSpec3 = [spec4 sectionHeaderSpec];
  [sectionHeaderSpec3 gradientOverhang];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setGradientOverhang:?];

  spec5 = [layoutCopy spec];
  sectionHeaderSpec4 = [spec5 sectionHeaderSpec];
  [(_PXActionableSectionHeaderViewConfiguration *)v5 setButtonSpec:sectionHeaderSpec4];

  [(_PXActionableSectionHeaderViewConfiguration *)v5 setShowsTopSeparator:1];
  spec6 = [layoutCopy spec];
  -[_PXActionableSectionHeaderViewConfiguration setPreferredUserInterfaceStyle:](v5, "setPreferredUserInterfaceStyle:", [spec6 preferredUserInterfaceStyle]);

  if (layoutCopy)
  {
    [layoutCopy sectionIndexPath];
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
  if (layoutCopy)
  {
    [layoutCopy sectionIndexPath];
  }

  dataSource2 = [layoutCopy dataSource];
  v35 = dataSource2;
  v36 = location[0];
  if (location[0] == *off_1E7721F68 || location[1] == 0x7FFFFFFFFFFFFFFFLL || v53 != 0x7FFFFFFFFFFFFFFFLL || v36 != [dataSource2 identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:343 description:@"Header layouts that are not global must be associated with a current section"];
  }

  v37 = [v35 numberOfItemsInSection:location[1]];
  spec7 = [layoutCopy spec];
  assetsSpec = [spec7 assetsSpec];
  zoomableSpec = [assetsSpec zoomableSpec];
  v41 = v37 >= [zoomableSpec staticNumberOfColumns];

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

- (CGSize)singleViewLayout:(id)layout desiredSizeForReferenceSize:(CGSize)size
{
  width = size.width;
  layoutCopy = layout;
  v7 = layoutCopy;
  if (layoutCopy)
  {
    [layoutCopy sectionIndexPath];
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
    spec = [v7 spec];
    sectionHeaderSpec = [spec sectionHeaderSpec];
    referenceHeaderView = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [referenceHeaderView setBackdropButtonSpec:sectionHeaderSpec];

    referenceHeaderView2 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [referenceHeaderView2 setPrimaryText:v9];

    referenceHeaderView3 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [referenceHeaderView3 setSecondaryText:v10];

    spec2 = [v7 spec];
    sectionHeaderSpec2 = [spec2 sectionHeaderSpec];
    [sectionHeaderSpec2 padding];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    referenceHeaderView4 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [referenceHeaderView4 setContentInsets:{v20, v22, v24, v26}];

    referenceHeaderView5 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [referenceHeaderView5 setSupportsMultipleLinesInCompactLayout:1];

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

    dataSource = [v7 dataSource];
    if (v7)
    {
      [v7 sectionIndexPath];
    }

    else
    {
      *location = 0u;
      v52 = 0u;
    }

    v33 = [(PXActionableSectionHeaderLayoutProvider *)self actionTextForActionType:v11 dataSource:dataSource sectionIndexPath:location];

    v34 = [v33 length];
    v35 = v34 != 0;
    v36 = v30 != 0;
    if ([(PXActionableSectionHeaderLayoutProvider *)self actionVisibilityForHeaderLayout:v7]== 1)
    {
      wantsBackground = [v7 wantsBackground];
      if (v34)
      {
        v35 = wantsBackground;
      }

      else
      {
        v35 = 0;
      }

      if (v30)
      {
        v36 = wantsBackground;
      }

      else
      {
        v36 = 0;
      }
    }

    referenceHeaderView6 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [referenceHeaderView6 setShowsActionButton:v35];

    referenceHeaderView7 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [referenceHeaderView7 setShowsSecondaryButton:v36];

    referenceHeaderView8 = [(PXActionableSectionHeaderLayoutProvider *)self referenceHeaderView];
    [referenceHeaderView8 setActionText:v33];

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
  sourceCopy = source;
  specCopy = spec;
  v13 = *&path->item;
  v17 = *&path->dataSourceIdentifier;
  v18 = v13;
  if ([(PXActionableSectionHeaderLayoutProvider *)self wantsHeaderForDataSource:sourceCopy sectionIndexPath:&v17])
  {
    v14 = *&path->item;
    v17 = *&path->dataSourceIdentifier;
    v18 = v14;
    v15 = [(PXActionableSectionHeaderLayoutProvider *)self _createSectionHeaderLayoutForDataSource:sourceCopy sectionIndexPath:&v17 spec:specCopy outAlignment:alignment];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)topHeaderLayout:(id)layout didChangeDataSource:(id)source
{
  layoutCopy = layout;
  [layoutCopy setDataSource:source];
  [layoutCopy viewContentDidChange];
}

- (void)_getPrimaryText:(id *)text secondaryText:(id *)secondaryText forLayout:(id)layout
{
  layoutCopy = layout;
  dataSource = [layoutCopy dataSource];
  if (layoutCopy)
  {
    [layoutCopy sectionIndexPath];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *text = [(PXActionableSectionHeaderLayoutProvider *)self primaryTextForDataSource:dataSource sectionIndexPath:&v11];

  dataSource2 = [layoutCopy dataSource];
  if (layoutCopy)
  {
    [layoutCopy sectionIndexPath];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *secondaryText = [(PXActionableSectionHeaderLayoutProvider *)self secondaryTextForDataSource:dataSource2 sectionIndexPath:&v11];
}

- (id)_createSectionHeaderLayoutForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outAlignment:(unint64_t *)alignment
{
  specCopy = spec;
  sourceCopy = source;
  v12 = [[PXActionableSectionHeaderLayout alloc] initWithSpec:specCopy];

  [(PXActionableSectionHeaderLayout *)v12 setDataSource:sourceCopy];
  v13 = *&path->item;
  v16[0] = *&path->dataSourceIdentifier;
  v16[1] = v13;
  [(PXActionableSectionHeaderLayout *)v12 setSectionIndexPath:v16];
  [(PXGSingleViewLayout *)v12 setStyle:2];
  [(PXGSingleViewLayout *)v12 setContentViewClass:self->_actionableViewClass];
  [(PXGSingleViewLayout *)v12 setDelegate:self];
  [(PXActionableSectionHeaderLayout *)v12 setInteractionDelegate:self];
  viewProvider = [(PXActionableSectionHeaderLayoutProvider *)self viewProvider];
  [(PXActionableSectionHeaderLayout *)v12 setViewProvider:viewProvider];

  *alignment = [(PXActionableSectionHeaderLayoutProvider *)self alignmentForHeaderLayout:v12];

  return v12;
}

- (int64_t)actionTypeForHeaderLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isInSelectMode])
  {
    if ([layoutCopy areAllItemsSelected])
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

- (id)actionTextForActionType:(int64_t)type dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  sourceCopy = source;
  if (type <= 8)
  {
    if (((1 << type) & 0xA0) != 0)
    {
      v7 = @"PXPhotosGridsSectionEnterSelectModeButton";
      goto LABEL_11;
    }

    if (((1 << type) & 0x140) != 0)
    {
      v7 = @"PXPhotosGridsSectionLeaveSelectModeButton";
LABEL_11:
      v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
      goto LABEL_12;
    }

    if (((1 << type) & 0x18) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXActionableSectionHeaderLayoutProvider actionTextForActionType:dataSource:sectionIndexPath:]"];
      [currentHandler handleFailureInFunction:v11 file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:132 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  if (type == 1)
  {
    v7 = @"PXPhotosGridsSectionSelectButton";
    goto LABEL_11;
  }

  if (type == 2)
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:92 description:{@"%s is not available as initializer", "-[PXActionableSectionHeaderLayoutProvider init]"}];

  abort();
}

- (PXActionableSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider
{
  providerCopy = provider;
  modelCopy = model;
  v8 = [(PXActionableSectionHeaderLayoutProvider *)self initWithViewModel:modelCopy viewProvider:providerCopy viewClass:objc_opt_class()];

  return v8;
}

- (PXActionableSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider viewClass:(Class)class
{
  modelCopy = model;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = PXActionableSectionHeaderLayoutProvider;
  v11 = [(PXActionableSectionHeaderLayoutProvider *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, model);
    objc_storeWeak(&v12->_viewProvider, providerCopy);
    objc_storeStrong(&v12->_actionableViewClass, class);
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