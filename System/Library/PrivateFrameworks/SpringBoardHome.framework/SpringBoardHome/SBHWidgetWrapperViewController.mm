@interface SBHWidgetWrapperViewController
- (CGAffineTransform)contentTransform;
- (CGAffineTransform)shadowTransform;
- (CGSize)contentSize;
- (SBHWidgetWrapperViewController)initWithGalleryItem:(id)item titleAndSubtitleVisible:(BOOL)visible listLayoutProvider:(id)provider iconViewProvider:(id)viewProvider;
- (SBHWidgetWrapperViewControllerDelegate)delegate;
- (SBIconViewProviding)iconViewProvider;
- (id)_widgetBackgroundViewConfigurator;
- (id)_widgetBackgroundViewProvider;
- (id)_widgetDragHandler;
- (id)effectiveIconImageAppearance;
- (id)effectiveIconImageStyleConfiguration;
- (int64_t)selectedSizeClass;
- (int64_t)wrapperViewBackgroundType;
- (void)_configureCustomImageViewController:(id)controller iconView:(id)view;
- (void)_configureIconView:(id)view forIcon:(id)icon;
- (void)_removeIconViewKeepObserving:(BOOL)observing;
- (void)_updateWidgetHostViewController;
- (void)_userInterfaceStyleDidChange;
- (void)dealloc;
- (void)iconTapped:(id)tapped;
- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller;
- (void)iconViewDidEndDrag:(id)drag;
- (void)iconViewWillBeginDrag:(id)drag;
- (void)loadView;
- (void)setBackgroundType:(int64_t)type;
- (void)setContentTransform:(CGAffineTransform *)transform;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setDragging:(BOOL)dragging;
- (void)setForcesEdgeAntialiasing:(BOOL)antialiasing;
- (void)setGalleryItem:(id)item;
- (void)setIndexOfSelectedSizeClass:(unint64_t)class;
- (void)setSelectedSizeClass:(int64_t)class;
- (void)setShadowTransform:(CGAffineTransform *)transform;
- (void)setUpWidgetStyleManagerForIconView:(id)view;
- (void)widgetStyleManager:(id)manager needsToAddBackgroundView:(id)view;
- (void)widgetStyleManager:(id)manager needsToAddFilter:(id)filter;
- (void)widgetStyleManager:(id)manager needsToRemoveBackgroundView:(id)view;
- (void)widgetStyleManager:(id)manager needsToRemoveFilter:(id)filter;
@end

@implementation SBHWidgetWrapperViewController

- (SBHWidgetWrapperViewController)initWithGalleryItem:(id)item titleAndSubtitleVisible:(BOOL)visible listLayoutProvider:(id)provider iconViewProvider:(id)viewProvider
{
  v36[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  providerCopy = provider;
  viewProviderCopy = viewProvider;
  v34.receiver = self;
  v34.super_class = SBHWidgetWrapperViewController;
  v14 = [(SBHWidgetWrapperViewController *)&v34 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_galleryItem, item);
    v15->_titleAndSubtitleVisible = visible;
    objc_storeStrong(&v15->_listLayoutProvider, provider);
    objc_storeWeak(&v15->_iconViewProvider, viewProviderCopy);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sbh_supportedSizeClasses = [itemCopy sbh_supportedSizeClasses];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v31 = __114__SBHWidgetWrapperViewController_initWithGalleryItem_titleAndSubtitleVisible_listLayoutProvider_iconViewProvider___block_invoke;
    v32 = &unk_1E8089950;
    v18 = v16;
    v33 = v18;
    v19 = v30;
    if (sbh_supportedSizeClasses)
    {
      v29 = providerCopy;
      v20 = 0;
      v35 = 0;
      v21 = vcnt_s8(sbh_supportedSizeClasses);
      v21.i16[0] = vaddlv_u8(v21);
      v22 = v21.i32[0];
      do
      {
        if (((1 << v20) & *&sbh_supportedSizeClasses) != 0)
        {
          (v31)(v19);
          if (v35)
          {
            break;
          }

          --v22;
        }

        if (v20 > 0x3E)
        {
          break;
        }

        ++v20;
      }

      while (v22 > 0);
      providerCopy = v29;
    }

    supportedSizeClasses = v15->_supportedSizeClasses;
    v15->_supportedSizeClasses = v18;
    v24 = v18;

    v15->_indexOfSelectedSizeClass = 0;
    v15->_usesAmbientScaleFactorForRemovableBackgroundItems = 0;
    v25 = objc_opt_self();
    v36[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v27 = [(SBHWidgetWrapperViewController *)v15 registerForTraitChanges:v26 withAction:sel__userInterfaceStyleDidChange];
  }

  return v15;
}

void __114__SBHWidgetWrapperViewController_initWithGalleryItem_titleAndSubtitleVisible_listLayoutProvider_iconViewProvider___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 0xB && ((1 << a3) & 0xC5E) != 0)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v4 addObject:v5];
  }
}

- (void)loadView
{
  v5 = [[SBHWidgetWrapperView alloc] initWithTitleAndSubtitleVisible:self->_titleAndSubtitleVisible];
  sbh_appName = [(SBHAddWidgetSheetGalleryItem *)self->_galleryItem sbh_appName];
  [(SBHWidgetWrapperView *)v5 setTitle:sbh_appName];

  sbh_widgetName = [(SBHAddWidgetSheetGalleryItem *)self->_galleryItem sbh_widgetName];
  [(SBHWidgetWrapperView *)v5 setSubtitle:sbh_widgetName];

  [(SBHWidgetWrapperView *)v5 setBackgroundType:[(SBHWidgetWrapperViewController *)self wrapperViewBackgroundType]];
  [(SBHWidgetWrapperViewController *)self setView:v5];
  [(SBHWidgetWrapperViewController *)self _updateWidgetHostViewController];
}

- (void)dealloc
{
  [(SBHWidgetWrapperViewController *)self _removeIconViewKeepObserving:0];
  v3.receiver = self;
  v3.super_class = SBHWidgetWrapperViewController;
  [(SBHWidgetWrapperViewController *)&v3 dealloc];
}

- (int64_t)selectedSizeClass
{
  v2 = [(NSArray *)self->_supportedSizeClasses objectAtIndex:self->_indexOfSelectedSizeClass];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setSelectedSizeClass:(int64_t)class
{
  if ([(SBHWidgetWrapperViewController *)self selectedSizeClass]!= class)
  {
    supportedSizeClasses = self->_supportedSizeClasses;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:class];
    v7 = [(NSArray *)supportedSizeClasses indexOfObject:v6];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = SBLogWidgets();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SBHWidgetWrapperViewController *)class setSelectedSizeClass:v8];
      }

      v7 = 0;
    }

    [(SBHWidgetWrapperViewController *)self setIndexOfSelectedSizeClass:v7];
  }
}

- (void)setIndexOfSelectedSizeClass:(unint64_t)class
{
  if (self->_indexOfSelectedSizeClass != class)
  {
    self->_indexOfSelectedSizeClass = class;
    [(SBHWidgetWrapperViewController *)self _updateWidgetHostViewController];
    delegate = [(SBHWidgetWrapperViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate wrapperViewControllerSelectedSizeClassChanged:self];
    }
  }
}

- (void)setGalleryItem:(id)item
{
  itemCopy = item;
  if (([(SBHAddWidgetSheetGalleryItem *)self->_galleryItem isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_galleryItem, item);
    [(SBHWidgetWrapperViewController *)self _updateWidgetHostViewController];
  }
}

- (void)setContentVisibility:(unint64_t)visibility
{
  if (self->_contentVisibility != visibility)
  {
    self->_contentVisibility = visibility;
    [(SBIconView *)self->_iconView setContentVisibility:?];
  }
}

- (void)setDragging:(BOOL)dragging
{
  if (self->_dragging != dragging)
  {
    self->_dragging = dragging;
    [(SBHWidgetWrapperViewController *)self _updateWidgetHostViewController];
  }
}

- (void)setForcesEdgeAntialiasing:(BOOL)antialiasing
{
  if (self->_forcesEdgeAntialiasing != antialiasing)
  {
    self->_forcesEdgeAntialiasing = antialiasing;
    customIconImageViewController = [(SBIconView *)self->_iconView customIconImageViewController];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      customIconImageViewController2 = [(SBIconView *)self->_iconView customIconImageViewController];
      [customIconImageViewController2 setForcesEdgeAntialiasing:self->_forcesEdgeAntialiasing];
    }
  }
}

- (void)setBackgroundType:(int64_t)type
{
  if (self->_backgroundType != type)
  {
    self->_backgroundType = type;
    if ([(SBHWidgetWrapperViewController *)self isViewLoaded])
    {
      wrapperView = [(SBHWidgetWrapperViewController *)self wrapperView];
      [wrapperView setBackgroundType:{-[SBHWidgetWrapperViewController wrapperViewBackgroundType](self, "wrapperViewBackgroundType")}];
    }
  }
}

- (void)_removeIconViewKeepObserving:(BOOL)observing
{
  wrapperView = [(SBHWidgetWrapperViewController *)self wrapperView];
  iconView = self->_iconView;
  if (iconView)
  {
    v10 = wrapperView;
    if (!observing)
    {
      [(SBIconView *)iconView removeObserver:self];
      wrapperView = v10;
    }

    [wrapperView setContentView:0];
    v7 = self->_iconView;
    self->_iconView = 0;

    defaultBackgroundViewProvider = self->_defaultBackgroundViewProvider;
    self->_defaultBackgroundViewProvider = 0;

    defaultBackgroundViewConfigurator = self->_defaultBackgroundViewConfigurator;
    self->_defaultBackgroundViewConfigurator = 0;

    wrapperView = v10;
  }

  MEMORY[0x1EEE66BB8](iconView, wrapperView);
}

- (id)effectiveIconImageAppearance
{
  traitCollection = [(SBHWidgetWrapperViewController *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];

  return v3;
}

- (id)effectiveIconImageStyleConfiguration
{
  traitCollection = [(SBHWidgetWrapperViewController *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:traitCollection];

  return v3;
}

- (void)_updateWidgetHostViewController
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "No SBIcon for descriptor: %{public}@", &v3, 0xCu);
}

- (void)_configureIconView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  iconCopy = icon;
  v7 = [SBHMappedIconListLayoutProvider alloc];
  listLayoutProvider = [(SBHWidgetWrapperViewController *)self listLayoutProvider];
  v9 = [(SBHMappedIconListLayoutProvider *)v7 initWithTargetListLayoutProvider:listLayoutProvider];

  [(SBHMappedIconListLayoutProvider *)v9 mapIconLocation:@"SBIconLocationAddWidgetSheet" toIconLocation:@"SBIconLocationRoot"];
  [viewCopy setLocation:@"SBIconLocationAddWidgetSheet"];
  [viewCopy setListLayoutProvider:v9];
  gridSizeClass = [iconCopy gridSizeClass];
  v11 = gridSizeClass;
  if (gridSizeClass != @"SBHIconGridSizeClassDefault" && ([(__CFString *)gridSizeClass isEqualToString:?]& 1) == 0)
  {
    listLayoutProvider2 = [(SBHWidgetWrapperViewController *)self listLayoutProvider];
    v13 = [listLayoutProvider2 layoutForIconLocation:@"SBIconLocationRoot"];

    [viewCopy setIconImageInfo:{SBHIconListLayoutIconImageInfoForGridSizeClass(v13, v11)}];
  }

  [viewCopy addObserver:self];
  iconViewProvider = [(SBHWidgetWrapperViewController *)self iconViewProvider];
  [iconViewProvider configureIconView:viewCopy forIcon:iconCopy];

  [viewCopy setOverrideActionDelegate:self];
  [viewCopy setCustomIconImageViewHitTestingDisabled:1];
  [viewCopy setStartsDragMoreQuickly:1];
  [viewCopy setIcon:iconCopy];
  [viewCopy iconViewSize];
  BSRectWithSize();
  [viewCopy setBounds:?];
  defaultBackgroundViewProvider = self->_defaultBackgroundViewProvider;
  self->_defaultBackgroundViewProvider = 0;

  customIconImageViewController = [viewCopy customIconImageViewController];
  if (objc_opt_respondsToSelector())
  {
    backgroundViewProvider = [customIconImageViewController backgroundViewProvider];
    v18 = [backgroundViewProvider copy];
    v19 = self->_defaultBackgroundViewProvider;
    self->_defaultBackgroundViewProvider = v18;
  }

  if (objc_opt_respondsToSelector())
  {
    _widgetBackgroundViewProvider = [(SBHWidgetWrapperViewController *)self _widgetBackgroundViewProvider];
    [customIconImageViewController setBackgroundViewProvider:_widgetBackgroundViewProvider];
  }

  if (objc_opt_respondsToSelector())
  {
    backgroundViewConfigurator = [customIconImageViewController backgroundViewConfigurator];
    v22 = [backgroundViewConfigurator copy];
    defaultBackgroundViewConfigurator = self->_defaultBackgroundViewConfigurator;
    self->_defaultBackgroundViewConfigurator = v22;
  }
}

- (id)_widgetBackgroundViewConfigurator
{
  objc_initWeak(&location, self);
  v3 = _Block_copy(self->_defaultBackgroundViewConfigurator);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__SBHWidgetWrapperViewController__widgetBackgroundViewConfigurator__block_invoke;
  aBlock[3] = &unk_1E8089978;
  objc_copyWeak(&v10, &location);
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __67__SBHWidgetWrapperViewController__widgetBackgroundViewConfigurator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v16 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v16;
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

  v10 = [v9 underlyingBackgroundView];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12 = [WeakRetained delegate];
    [v12 configureBackgroundView:v10 matchingMaterialBeneathWrapperViewController:WeakRetained];
  }

  if (*(a1 + 32))
  {
    v13 = [v9 widgetBackgroundView];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v16;
    }

    v15 = v14;

    (*(*(a1 + 32) + 16))();
  }
}

- (id)_widgetBackgroundViewProvider
{
  v3 = _Block_copy(self->_defaultBackgroundViewProvider);
  if (v3)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__SBHWidgetWrapperViewController__widgetBackgroundViewProvider__block_invoke;
    aBlock[3] = &unk_1E80899A0;
    v8 = v3;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(aBlock);
    objc_destroyWeak(&v9);

    objc_destroyWeak(&location);
  }

  else
  {
    v4 = 0;
  }

  v5 = _Block_copy(v4);

  return v5;
}

SBHWidgetWrapperBackgroundView *__63__SBHWidgetWrapperViewController__widgetBackgroundViewProvider__block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 setBlurEnabled:0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained delegate];
    v9 = [v8 backgroundViewMatchingMaterialBeneathWrapperViewController:WeakRetained];

    v10 = [[SBHWidgetWrapperBackgroundView alloc] initWithUnderlyingBackgroundView:v9 widgetBackgroundView:v6];
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (id)_widgetDragHandler
{
  delegate = [(SBHWidgetWrapperViewController *)self delegate];
  widgetDragHandler = [delegate widgetDragHandler];

  return widgetDragHandler;
}

- (void)_configureCustomImageViewController:(id)controller iconView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setForcesEdgeAntialiasing:self->_forcesEdgeAntialiasing];
  }

  v8 = objc_opt_class();
  v29 = controllerCopy;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v29;
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

  [v10 setHighlightsAtAnySize:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setAlwaysShowsAsStack:1];
    wrapperView = [(SBHWidgetWrapperViewController *)self wrapperView];
    [wrapperView setExtraSpacingBetweenWidgetAndTitle:5.0];
  }

  if (objc_opt_respondsToSelector())
  {
    icon = [viewCopy icon];
    if ([icon isWidgetIcon])
    {
      v13 = icon;
    }

    else
    {
      v13 = 0;
    }

    activeDataSource = [v13 activeDataSource];
    v15 = [v29 backdropGroupNameForActiveDataSource:activeDataSource];

    wrapperView2 = [(SBHWidgetWrapperViewController *)self wrapperView];
    [wrapperView2 setBackdropGroupName:v15];

    wrapperView3 = [(SBHWidgetWrapperViewController *)self wrapperView];
    [wrapperView3 setWantsStackBackdropCaptureGroup:{objc_msgSend(v29, "sbh_isWidgetStackViewController")}];
  }

  if (self->_usesAmbientScaleFactorForRemovableBackgroundItems)
  {
    [viewCopy setIconContentScalingEnabled:1];
    v18 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v20 = 1.0;
    if (isKindOfClass)
    {
      contentViewController = [v29 contentViewController];
      v22 = objc_opt_self();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        metrics = [contentViewController metrics];
        [metrics scaleFactor];
        v20 = v25;
      }
    }

    galleryItem = [(SBHWidgetWrapperViewController *)self galleryItem];
    sbh_supportsRemovableBackgroundOrAccessoryFamilies = [galleryItem sbh_supportsRemovableBackgroundOrAccessoryFamilies];

    v28 = 1.05;
    if (!sbh_supportsRemovableBackgroundOrAccessoryFamilies)
    {
      v28 = 1.0;
    }

    [viewCopy setIconContentScale:1.0 / (v20 * v28)];
  }

  [(SBHWidgetWrapperViewController *)self setUpWidgetStyleManagerForIconView:viewCopy];
}

- (void)setUpWidgetStyleManagerForIconView:(id)view
{
  viewCopy = view;
  customIconImageViewController = [viewCopy customIconImageViewController];
  if (customIconImageViewController)
  {
    icon = [viewCopy icon];
    if ([icon isWidgetIcon])
    {
      v6 = icon;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    activeDataSource = [v7 activeDataSource];
    gridSizeClass = [icon gridSizeClass];

    [viewCopy iconImageInfo];
    v14 = [[SBHWidgetStyleManager alloc] initWithWidgetViewController:customIconImageViewController widgetDataSource:activeDataSource gridSizeClass:gridSizeClass iconImageInfo:self delegate:v10, v11, v12, v13];
    [(SBHWidgetWrapperViewController *)self setWidgetStyleManager:v14];
  }
}

- (int64_t)wrapperViewBackgroundType
{
  backgroundType = [(SBHWidgetWrapperViewController *)self backgroundType];
  if (backgroundType == 2)
  {
    return [(SBHAddWidgetSheetGalleryItem *)self->_galleryItem sbh_supportsRemovableBackgroundOrAccessoryFamilies];
  }

  else
  {
    return backgroundType == 1;
  }
}

- (void)_userInterfaceStyleDidChange
{
  customIconImageViewController = [(SBIconView *)self->_iconView customIconImageViewController];
  if (objc_opt_respondsToSelector())
  {
    [customIconImageViewController evaluateBackground];
  }
}

- (void)iconTapped:(id)tapped
{
  delegate = [(SBHWidgetWrapperViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconTapped:self];
  }
}

- (void)iconViewWillBeginDrag:(id)drag
{
  dragCopy = drag;
  [(SBHWidgetWrapperViewController *)self setDragging:1];
  _widgetDragHandler = [(SBHWidgetWrapperViewController *)self _widgetDragHandler];
  icon = [dragCopy icon];

  [_widgetDragHandler didBeginDraggingWidgetIcon:icon];
}

- (void)iconViewDidEndDrag:(id)drag
{
  dragCopy = drag;
  [(SBHWidgetWrapperViewController *)self setDragging:0];
  if (self->_iconView != dragCopy)
  {
    [(SBIconView *)dragCopy removeObserver:self];
  }

  _widgetDragHandler = [(SBHWidgetWrapperViewController *)self _widgetDragHandler];
  icon = [(SBIconView *)dragCopy icon];
  [_widgetDragHandler didEndDraggingWidgetIcon:icon];
}

- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  customIconImageViewController = [viewCopy customIconImageViewController];
  if (controllerCopy)
  {
    [(SBHWidgetWrapperViewController *)self bs_removeChildViewController:controllerCopy];
  }

  if (customIconImageViewController)
  {
    [(SBHWidgetWrapperViewController *)self bs_addChildViewController:customIconImageViewController];
    [(SBHWidgetWrapperViewController *)self _configureCustomImageViewController:customIconImageViewController iconView:viewCopy];
  }
}

- (void)widgetStyleManager:(id)manager needsToAddBackgroundView:(id)view
{
  viewCopy = view;
  wrapperView = [(SBHWidgetWrapperViewController *)self wrapperView];
  [wrapperView setBackgroundView:viewCopy];
}

- (void)widgetStyleManager:(id)manager needsToRemoveBackgroundView:(id)view
{
  [view sbh_removeGlass];
  wrapperView = [(SBHWidgetWrapperViewController *)self wrapperView];
  [wrapperView setBackgroundView:0];
}

- (void)widgetStyleManager:(id)manager needsToAddFilter:(id)filter
{
  filterCopy = filter;
  iconView = [(SBHWidgetWrapperViewController *)self iconView];
  layer = [iconView layer];

  [layer sbh_addFilter:filterCopy];
}

- (void)widgetStyleManager:(id)manager needsToRemoveFilter:(id)filter
{
  filterCopy = filter;
  iconView = [(SBHWidgetWrapperViewController *)self iconView];
  layer = [iconView layer];

  name = [filterCopy name];

  [layer sbh_removeFilterWithName:name];
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[23].d;
  *&retstr->a = *&self[23].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[23].ty;
  return self;
}

- (void)setContentTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_contentTransform.a = *&transform->a;
  *&self->_contentTransform.c = v4;
  *&self->_contentTransform.tx = v3;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)shadowTransform
{
  v3 = *&self[24].d;
  *&retstr->a = *&self[24].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[24].ty;
  return self;
}

- (void)setShadowTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_shadowTransform.a = *&transform->a;
  *&self->_shadowTransform.c = v4;
  *&self->_shadowTransform.tx = v3;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (SBHWidgetWrapperViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSelectedSizeClass:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromWidgetFamily();
  v6 = *(a2 + 1016);
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_ERROR, "size class %{public}@ is not in the supported size classes for descriptor %{public}@", &v7, 0x16u);
}

@end