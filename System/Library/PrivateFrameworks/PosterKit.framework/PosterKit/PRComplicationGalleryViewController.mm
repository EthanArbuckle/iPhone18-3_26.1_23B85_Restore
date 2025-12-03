@interface PRComplicationGalleryViewController
- (PRComplicationGalleryViewController)initWithSuggestionSets:(id)sets applicationWidgetCollections:(id)collections listLayoutProvider:(id)provider iconViewProvider:(id)viewProvider;
- (PRComplicationGalleryViewControllerDelegate)delegate;
- (id)_buildSnapshot;
- (id)_descriptorFromWidgetIcon:(id)icon;
- (id)_galleryItemForComplicationDescriptor:(id)descriptor iconImageHidden:(BOOL)hidden;
- (id)_galleryItemForWidgetDescriptor:(id)descriptor family:(int64_t)family iconImageHidden:(BOOL)hidden;
- (id)_galleryItemsForWidgetDescriptors:(id)descriptors iconImageHidden:(BOOL)hidden;
- (id)widgetIconForDescriptor:(id)descriptor sizeClass:(int64_t)class;
- (id)widgetIconForDescriptors:(id)descriptors sizeClass:(int64_t)class;
- (id)widgetIconForGalleryItem:(id)item sizeClass:(int64_t)class;
- (int64_t)layoutStyleForSectionIndex:(int64_t)index;
- (void)_configureWidgetCell:(id)cell forItem:(id)item atIndexPath:(id)path;
- (void)_configureWidgetHostViewController:(id)controller forWidgetDescriptor:(id)descriptor;
- (void)addWidgetSheetViewController:(id)controller didSelectWidgetIconView:(id)view;
- (void)addWidgetSheetViewControllerDidCancel:(id)cancel;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)didBeginDraggingWidgetIcon:(id)icon;
- (void)iconTapped:(id)tapped;
- (void)loadView;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)setApplicationWidgetCollections:(id)collections;
- (void)viewDidLoad;
@end

@implementation PRComplicationGalleryViewController

- (PRComplicationGalleryViewController)initWithSuggestionSets:(id)sets applicationWidgetCollections:(id)collections listLayoutProvider:(id)provider iconViewProvider:(id)viewProvider
{
  setsCopy = sets;
  collectionsCopy = collections;
  providerCopy = provider;
  viewProviderCopy = viewProvider;
  v20.receiver = self;
  v20.super_class = PRComplicationGalleryViewController;
  v14 = [(PRComplicationGalleryViewController *)&v20 initWithNibName:0 bundle:0];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    widgetHostViewControllersPerReason = v14->_widgetHostViewControllersPerReason;
    v14->_widgetHostViewControllersPerReason = v15;

    v17 = [setsCopy bs_compactMap:&__block_literal_global_6];
    suggestionSets = v14->_suggestionSets;
    v14->_suggestionSets = v17;

    objc_storeStrong(&v14->_applicationWidgetCollections, collections);
    objc_storeStrong(&v14->_listLayoutProvider, provider);
    objc_storeStrong(&v14->_iconViewProvider, viewProvider);
  }

  return v14;
}

PRComplicationSuggestionSet *__127__PRComplicationGalleryViewController_initWithSuggestionSets_applicationWidgetCollections_listLayoutProvider_iconViewProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 complications];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [v2 complications];
    v6 = [v5 bs_compactMap:&__block_literal_global_19];

    v7 = [v2 localizedTitle];
    v8 = [[PRComplicationSuggestionSet alloc] initWithDescriptors:v6 localizedTitle:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

PRComplicationDescriptor *__127__PRComplicationGalleryViewController_initWithSuggestionSets_applicationWidgetCollections_listLayoutProvider_iconViewProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PRSharedWidgetExtensionProvider();
  v4 = [v3 widgetDescriptorForIdentifiable:v2];

  if (v4)
  {
    v5 = [v4 supportedFamilies];
    [v2 widgetFamily];
    if ((CHSWidgetFamilyMaskFromWidgetFamily() & v5) != 0)
    {
      v6 = [v2 widgetFamily];
      v7 = [v2 intent];
      v8 = [v4 widgetForFamily:v6 intent:v7];

      v9 = [PRComplicationDescriptor alloc];
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v11 = [v10 UUIDString];
      v12 = [(PRComplicationDescriptor *)v9 initWithUniqueIdentifier:v11 widget:v8];

      [(PRComplicationDescriptor *)v12 setSuggestedComplication:v2];
      goto LABEL_9;
    }

    v13 = PRLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __127__PRComplicationGalleryViewController_initWithSuggestionSets_applicationWidgetCollections_listLayoutProvider_iconViewProvider___block_invoke_2_cold_1(v4, v2);
    }
  }

  else
  {
    v13 = PRLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __133__PRWidgetSuggestionsViewController_initWithSuggestionSets_listLayoutProvider_iconViewProvider_widgetDragHandler_usingSidebarLayout___block_invoke_2_cold_2(v13);
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)loadView
{
  v3 = [PRComplicationGalleryView alloc];
  v4 = [(PRComplicationGalleryView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  complicationGalleryView = self->_complicationGalleryView;
  self->_complicationGalleryView = v4;

  [(PRComplicationGalleryView *)self->_complicationGalleryView setDelegate:self];
  v6 = self->_complicationGalleryView;

  [(PRComplicationGalleryViewController *)self setView:v6];
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = PRComplicationGalleryViewController;
  [(PRComplicationGalleryViewController *)&v33 viewDidLoad];
  v3 = PRBundle();
  v4 = [v3 localizedStringForKey:@"COMPLICATION_GALLERY_TITLE" value:&stru_1F1C13D90 table:@"PosterKit"];
  [(PRComplicationGalleryViewController *)self setTitle:v4];

  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC800];
  v6 = objc_opt_class();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __50__PRComplicationGalleryViewController_viewDidLoad__block_invoke;
  v30[3] = &unk_1E78432B0;
  objc_copyWeak(&v31, &location);
  v7 = [v5 registrationWithCellClass:v6 configurationHandler:v30];
  collectionView = [(PRComplicationGalleryView *)self->_complicationGalleryView collectionView];
  [collectionView setDelegate:self];
  v9 = MEMORY[0x1E69DC800];
  v10 = objc_opt_class();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __50__PRComplicationGalleryViewController_viewDidLoad__block_invoke_2;
  v28[3] = &unk_1E78434A8;
  v11 = collectionView;
  v29 = v11;
  v12 = [v9 registrationWithCellClass:v10 configurationHandler:v28];
  v13 = objc_alloc(MEMORY[0x1E69DC820]);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __50__PRComplicationGalleryViewController_viewDidLoad__block_invoke_4;
  v24 = &unk_1E78434D0;
  v14 = v11;
  v25 = v14;
  v15 = v12;
  v26 = v15;
  v16 = v7;
  v27 = v16;
  v17 = [v13 initWithCollectionView:v14 cellProvider:&v21];
  dataSource = self->_dataSource;
  self->_dataSource = v17;

  [v14 setContentInset:{8.0, 0.0, 0.0, 0.0, v21, v22, v23, v24}];
  v19 = self->_dataSource;
  _buildSnapshot = [(PRComplicationGalleryViewController *)self _buildSnapshot];
  [(UICollectionViewDiffableDataSource *)v19 applySnapshot:_buildSnapshot animatingDifferences:0];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __50__PRComplicationGalleryViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureWidgetCell:v9 forItem:v7 atIndexPath:v8];
}

void __50__PRComplicationGalleryViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v9 icon];
  v11 = v10;
  if (!v10)
  {
    v10 = v9;
  }

  v12 = [v10 displayName];
  v13 = [v7 titleView];
  [v13 setTitle:v12];

  v14 = [v11 applicationBundleID];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [v9 iconImageApplicationBundleIdentifier];
  }

  v17 = v16;

  +[PRComplicationGalleryApplicationTitleView iconImageSize];
  v19 = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __50__PRComplicationGalleryViewController_viewDidLoad__block_invoke_3;
  v22[3] = &unk_1E7843348;
  v23 = *(a1 + 32);
  v24 = v7;
  v25 = v8;
  v20 = v8;
  v21 = v7;
  [PRComplicationGalleryIconProvider loadIconImageForApplicationBundleIdentifier:v17 atWidth:v22 completion:v19];
  [v21 setSeparatorVisible:{objc_msgSend(v20, "item") != objc_msgSend(*(a1 + 32), "numberOfItemsInSection:", objc_msgSend(v20, "section")) - 1}];
}

void __50__PRComplicationGalleryViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) indexPathForCell:*(a1 + 40)];
  v4 = [v3 isEqual:*(a1 + 48)];

  if (v4)
  {
    v5 = [*(a1 + 40) titleView];
    [v5 setIconImage:v6];
  }
}

id __50__PRComplicationGalleryViewController_viewDidLoad__block_invoke_4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 applicationWidgetCollection];

  v13 = a1[4];
  if (v12)
  {
    v14 = a1[5];
    [v11 applicationWidgetCollection];
  }

  else
  {
    v14 = a1[6];
    [v11 widgetItem];
  }
  v15 = ;

  v16 = [v13 dequeueConfiguredReusableCellWithRegistration:v14 forIndexPath:v6 item:v15];

  return v16;
}

- (void)setApplicationWidgetCollections:(id)collections
{
  collectionsCopy = collections;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_applicationWidgetCollections, collections);
    dataSource = self->_dataSource;
    _buildSnapshot = [(PRComplicationGalleryViewController *)self _buildSnapshot];
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:_buildSnapshot animatingDifferences:0];
  }
}

- (id)_buildSnapshot
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69955A0]);
  if ([(NSArray *)self->_suggestionSets count])
  {
    v4 = [(NSArray *)self->_suggestionSets bs_map:&__block_literal_global_49];
    bs_flatten = [v4 bs_flatten];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__PRComplicationGalleryViewController__buildSnapshot__block_invoke_2;
    v11[3] = &unk_1E78434F8;
    v11[4] = self;
    v6 = [bs_flatten bs_map:v11];

    v13[0] = @"PRComplicationSuggestionsSectionIdentifier";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v3 appendSectionsWithIdentifiers:v7];

    [v3 appendItemsWithIdentifiers:v6];
  }

  v8 = [(NSArray *)self->_applicationWidgetCollections bs_map:&__block_literal_global_54];
  v12 = @"PRComplicationApplicationsSectionIdentifier";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v3 appendSectionsWithIdentifiers:v9];

  [v3 appendItemsWithIdentifiers:v8];

  return v3;
}

PRComplicationGalleryItem *__53__PRComplicationGalleryViewController__buildSnapshot__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRComplicationGalleryItem alloc] initWithApplicationWidgetCollection:v2];

  return v3;
}

- (id)_galleryItemForComplicationDescriptor:(id)descriptor iconImageHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  descriptorCopy = descriptor;
  widget = [descriptorCopy widget];
  v7 = [PRComplicationDescriptor alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v10 = [(PRComplicationDescriptor *)v7 initWithUniqueIdentifier:uUIDString widget:widget];

  suggestedComplication = [descriptorCopy suggestedComplication];

  [(PRComplicationDescriptor *)v10 setSuggestedComplication:suggestedComplication];
  v12 = [PRComplicationGalleryWidgetItem alloc];
  v13 = PRSharedWidgetExtensionProvider();
  v14 = [v13 widgetDescriptorForWidget:widget];
  displayName = [v14 displayName];
  v16 = [(PRComplicationGalleryWidgetItem *)v12 initWithDisplayName:displayName selected:0 iconImageHidden:hiddenCopy descriptor:v10];

  v17 = [[PRComplicationGalleryItem alloc] initWithWidgetItem:v16];

  return v17;
}

- (id)_galleryItemsForWidgetDescriptors:(id)descriptors iconImageHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v23 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = descriptorsCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (([v13 supportedFamilies] & 0x400) != 0)
        {
          v14 = [(PRComplicationGalleryViewController *)self _galleryItemForWidgetDescriptor:v13 family:10 iconImageHidden:hiddenCopy];
          [array addObject:v14];
        }

        if (([v13 supportedFamilies] & 0x800) != 0)
        {
          v15 = [(PRComplicationGalleryViewController *)self _galleryItemForWidgetDescriptor:v13 family:11 iconImageHidden:hiddenCopy];
          [array addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [array copy];

  return v16;
}

- (id)_galleryItemForWidgetDescriptor:(id)descriptor family:(int64_t)family iconImageHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  descriptorCopy = descriptor;
  v8 = [descriptorCopy widgetForFamily:family intent:0];
  v9 = [PRComplicationDescriptor alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v12 = [(PRComplicationDescriptor *)v9 initWithUniqueIdentifier:uUIDString widget:v8];

  v13 = [PRComplicationGalleryWidgetItem alloc];
  displayName = [descriptorCopy displayName];

  v15 = [(PRComplicationGalleryWidgetItem *)v13 initWithDisplayName:displayName selected:0 iconImageHidden:hiddenCopy descriptor:v12];
  v16 = [[PRComplicationGalleryItem alloc] initWithWidgetItem:v15];

  return v16;
}

- (void)_configureWidgetCell:(id)cell forItem:(id)item atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  descriptor = [item descriptor];
  widget = [descriptor widget];

  v12 = PRSharedWidgetExtensionProvider();
  v32 = [v12 widgetDescriptorForWidget:widget];

  v13 = objc_alloc(MEMORY[0x1E69D40F0]);
  listLayoutProvider = [(PRComplicationGalleryViewController *)self listLayoutProvider];
  iconViewProvider = [(PRComplicationGalleryViewController *)self iconViewProvider];
  v16 = [v13 initWithGalleryItem:v32 titleAndSubtitleVisible:0 listLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider];

  [v16 setSelectedSizeClass:{objc_msgSend(widget, "family")}];
  [v16 setDelegate:self];
  [v16 setUsesAmbientScaleFactorForRemovableBackgroundItems:0];
  wrapperView = [v16 wrapperView];
  [wrapperView setBackgroundType:0];

  wrapperView2 = [v16 wrapperView];
  [wrapperView2 setCornerRadius:PRWidgetPlatterCornerRadius()];

  [cellCopy setWidgetWrapperViewController:v16];
  v19 = +[PRWidgetMetricsProvider sharedInstance];
  v20 = [v19 systemMetricsForWidget:widget];

  traitCollection = [(PRComplicationGalleryViewController *)self traitCollection];
  [traitCollection displayScale];
  v23 = v22;

  [v20 _effectiveSizePixelAlignedForDisplayScale:v23];
  [cellCopy setContentSize:?];
  collectionView = [(PRComplicationGalleryView *)self->_complicationGalleryView collectionView];
  extensionIdentity = [widget extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __80__PRComplicationGalleryViewController__configureWidgetCell_forItem_atIndexPath___block_invoke;
  v33[3] = &unk_1E7843348;
  v34 = collectionView;
  v35 = cellCopy;
  v36 = pathCopy;
  v27 = pathCopy;
  v28 = cellCopy;
  v29 = collectionView;
  [PRComplicationGalleryIconProvider loadIconImageForExtensionBundleIdentifier:extensionBundleIdentifier atWidth:v33 completion:20.0];

  view = [v16 view];
  superview = [view superview];
  [(PRComplicationGalleryViewController *)self bs_addChildViewController:v16 withSuperview:superview];
}

void __80__PRComplicationGalleryViewController__configureWidgetCell_forItem_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) indexPathForCell:*(a1 + 40)];
  v4 = [v3 isEqual:*(a1 + 48)];

  if (v4)
  {
    [*(a1 + 40) setIconImage:v5];
  }
}

- (void)_configureWidgetHostViewController:(id)controller forWidgetDescriptor:(id)descriptor
{
  controllerCopy = controller;
  widget = [descriptor widget];
  v7 = PRSharedWidgetExtensionProvider();
  v8 = [v7 widgetDescriptorForWidget:widget];

  intentType = [v8 intentType];
  if (intentType && (v10 = intentType, [widget intent], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
    defaultIntent = [v8 defaultIntent];
    if (defaultIntent)
    {
      v13 = [widget widgetByReplacingIntent:defaultIntent];
      [controllerCopy setWidget:v13];
    }

    else
    {
      v13 = PRLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PRComplicationGalleryViewController _configureWidgetHostViewController:widget forWidgetDescriptor:?];
      }
    }
  }

  else
  {
    [controllerCopy setWidget:widget];
  }
}

- (id)_descriptorFromWidgetIcon:(id)icon
{
  iconCopy = icon;
  activeWidget = [iconCopy activeWidget];
  gridSizeClass = [iconCopy gridSizeClass];

  v6 = PRWidgetFamilyForIconGridSizeClass(gridSizeClass);
  v7 = objc_alloc(MEMORY[0x1E6994370]);
  extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
  containerBundleIdentifier = [activeWidget containerBundleIdentifier];
  kind = [activeWidget kind];
  v11 = [v7 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier kind:kind family:v6 intent:0];

  v12 = [PRComplicationDescriptor alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v15 = [(PRComplicationDescriptor *)v12 initWithUniqueIdentifier:uUIDString widget:v11];

  return v15;
}

- (int64_t)layoutStyleForSectionIndex:(int64_t)index
{
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v6 = [sectionIdentifiers objectAtIndexedSubscript:index];
  v7 = v6 != @"PRComplicationSuggestionsSectionIdentifier";

  return v7;
}

- (void)addWidgetSheetViewController:(id)controller didSelectWidgetIconView:(id)view
{
  viewCopy = view;
  icon = [viewCopy icon];
  v6 = objc_opt_class();
  v7 = icon;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v11 = viewCopy;
  if (v9)
  {
    delegate = [(PRComplicationGalleryViewController *)self delegate];
    [delegate complicationGalleryViewController:self didSelectWidgetIconView:viewCopy];

    v11 = viewCopy;
  }

  MEMORY[0x1EEE66BB8](v10, v11);
}

- (void)addWidgetSheetViewControllerDidCancel:(id)cancel
{
  v17 = *MEMORY[0x1E69E9840];
  [(PRComplicationGalleryViewController *)self dismissViewControllerAnimated:1 completion:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  collectionView = [(PRComplicationGalleryView *)self->_complicationGalleryView collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        collectionView2 = [(PRComplicationGalleryView *)self->_complicationGalleryView collectionView];
        [collectionView2 deselectItemAtIndexPath:v10 animated:1];

        ++v9;
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v6 = [viewCopy cellForItemAtIndexPath:pathCopy];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 setSeparatorVisible:0];
  if ([pathCopy item] >= 1)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(pathCopy inSection:{"item") - 1, objc_msgSend(pathCopy, "section")}];
    v12 = [viewCopy cellForItemAtIndexPath:v11];
    v13 = objc_opt_class();
    v14 = v12;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    [v16 setSeparatorVisible:0];
  }
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v6 = [viewCopy cellForItemAtIndexPath:pathCopy];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 setSeparatorVisible:{objc_msgSend(pathCopy, "item") != objc_msgSend(viewCopy, "numberOfItemsInSection:", objc_msgSend(pathCopy, "section")) - 1}];
  if ([pathCopy item] >= 1)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(pathCopy inSection:{"item") - 1, objc_msgSend(pathCopy, "section")}];
    v12 = [viewCopy cellForItemAtIndexPath:v11];
    v13 = objc_opt_class();
    v14 = v12;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    [v16 setSeparatorVisible:1];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v53[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v8 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  applicationWidgetCollection = [v12 applicationWidgetCollection];

  if (applicationWidgetCollection)
  {
    v14 = [viewCopy cellForItemAtIndexPath:pathCopy];
    v15 = objc_opt_class();
    v16 = v14;
    v51 = viewCopy;
    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v52 = v17;

    v18 = [(SBIconListLayoutProvider *)self->_listLayoutProvider layoutForIconLocation:*MEMORY[0x1E69D4158]];
    [v18 iconImageInfo];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = [objc_alloc(MEMORY[0x1E69D40A0]) initWithName:@"iconImages" iconImageInfo:{v20, v22, v24, v26}];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v48 = v27;
    v30 = [(SBHAddWidgetSheetViewControllerBase *)[PRComplicationGalleryDetailViewController alloc] initWithListLayoutProvider:self->_listLayoutProvider iconViewProvider:self->_iconViewProvider allowedWidgets:3072 appCellIconImageCache:256 addWidgetSheetStyle:v27, (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
    applicationWidgetCollection2 = [v12 applicationWidgetCollection];
    [(PRComplicationGalleryDetailViewController *)v30 setApplicationWidgetCollection:applicationWidgetCollection2];
    icon = [applicationWidgetCollection2 icon];
    v33 = icon;
    v49 = v12;
    if (!icon)
    {
      icon = applicationWidgetCollection2;
    }

    displayName = [icon displayName];
    [(SBHAddWidgetSheetViewControllerBase *)v30 setDelegate:self];
    [(PRComplicationGalleryDetailViewController *)v30 setAppName:displayName];
    titleView = [v52 titleView];
    iconImage = [titleView iconImage];
    [(PRComplicationGalleryDetailViewController *)v30 setIconImage:iconImage];

    presentationController = [(PRComplicationGalleryDetailViewController *)v30 presentationController];
    v38 = objc_opt_class();
    v39 = presentationController;
    v50 = pathCopy;
    if (v38)
    {
      if (objc_opt_isKindOfClass())
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;

    v42 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:@"ComplicationGalleryDodge" resolver:&__block_literal_global_74];
    v53[0] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    [v41 setDetents:v43];

    [v41 setLargestUndimmedDetentIdentifier:@"ComplicationGalleryDodge"];
    dimmingView = [v41 dimmingView];
    layer = [dimmingView layer];
    [layer setHitTestsAsOpaque:0];

    _confinedDimmingView = [v41 _confinedDimmingView];
    layer2 = [_confinedDimmingView layer];
    [layer2 setHitTestsAsOpaque:0];

    [v41 setDelegate:self];
    [(PRComplicationGalleryViewController *)self presentViewController:v30 animated:1 completion:0];

    pathCopy = v50;
    viewCopy = v51;
    v12 = v49;
  }
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PRComplicationGalleryView *)self->_complicationGalleryView collectionView:dismiss];
  indexPathsForSelectedItems = [v4 indexPathsForSelectedItems];

  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        collectionView = [(PRComplicationGalleryView *)self->_complicationGalleryView collectionView];
        [collectionView deselectItemAtIndexPath:v10 animated:1];

        ++v9;
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)didBeginDraggingWidgetIcon:(id)icon
{
  v5 = [(PRComplicationGalleryViewController *)self _descriptorFromWidgetIcon:icon];
  delegate = [(PRComplicationGalleryViewController *)self delegate];
  [delegate complicationGalleryViewController:self didBeginDraggingComplication:v5];
}

- (id)widgetIconForGalleryItem:(id)item sizeClass:(int64_t)class
{
  itemCopy = item;
  v7 = objc_opt_class();
  v8 = itemCopy;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(PRComplicationGalleryViewController *)self widgetIconForDescriptor:v10 sizeClass:class];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)widgetIconForDescriptor:(id)descriptor sizeClass:(int64_t)class
{
  v5 = MEMORY[0x1E69D40E8];
  descriptorCopy = descriptor;
  v7 = [v5 alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  kind = [descriptorCopy kind];
  extensionIdentity = [descriptorCopy extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  extensionIdentity2 = [descriptorCopy extensionIdentity];

  containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
  v15 = [v7 initWithUniqueIdentifier:uUIDString kind:kind extensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier];

  v16 = [objc_alloc(MEMORY[0x1E69D4118]) initWithWidget:v15];
  v17 = PRIconGridSizeClassForWidgetFamily(class);
  [v16 setGridSizeClass:v17];

  return v16;
}

- (id)widgetIconForDescriptors:(id)descriptors sizeClass:(int64_t)class
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PRComplicationGalleryViewController.m" lineNumber:485 description:@"We shouldn't be showing widget stacks in the lock screen widget gallery"];

  return 0;
}

- (void)iconTapped:(id)tapped
{
  wrapperView = [tapped wrapperView];
  contentView = [wrapperView contentView];

  if (contentView)
  {
    delegate = [(PRComplicationGalleryViewController *)self delegate];
    [delegate complicationGalleryViewController:self didSelectWidgetIconView:contentView];
  }
}

- (PRComplicationGalleryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __127__PRComplicationGalleryViewController_initWithSuggestionSets_applicationWidgetCollections_listLayoutProvider_iconViewProvider___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  [a2 widgetFamily];
  v8 = NSStringFromWidgetFamily();
  OUTLINED_FUNCTION_0_3(&dword_1A8AA7000, v2, v3, "Suggested complication %@ does not support provided widget family %@", v4, v5, v6, v7, 2u);
}

- (void)_configureWidgetHostViewController:(void *)a1 forWidgetDescriptor:.cold.1(void *a1)
{
  v2 = [a1 extensionBundleIdentifier];
  v9 = [a1 kind];
  OUTLINED_FUNCTION_0_3(&dword_1A8AA7000, v3, v4, "Default intent asked for but not provided: %@ - %@", v5, v6, v7, v8, 2u);
}

@end