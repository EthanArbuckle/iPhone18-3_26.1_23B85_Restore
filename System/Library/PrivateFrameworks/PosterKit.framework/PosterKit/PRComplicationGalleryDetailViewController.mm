@interface PRComplicationGalleryDetailViewController
- (BOOL)showsBackgroundView;
- (BOOL)showsCloseButton;
- (NSMutableDictionary)userInfo;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (void)_updateContent;
- (void)_updateParallax;
- (void)complicationGalleryDetailPageViewController:(id)controller didSelectWidgetIconView:(id)view;
- (void)complicationGalleryView:(id)view didUpdateVisiblePagesWithAppearedBlock:(id)block;
- (void)complicationGalleryViewDidTapClose:(id)close;
- (void)loadView;
- (void)setAppName:(id)name;
- (void)setIconImage:(id)image;
- (void)setShowsBackgroundView:(BOOL)view;
- (void)setShowsCloseButton:(BOOL)button;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PRComplicationGalleryDetailViewController

- (void)loadView
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PRComplicationGalleryDetailView);
  [(PRComplicationGalleryDetailView *)v3 setDelegate:self];
  contentScrollView = [(PRComplicationGalleryDetailView *)v3 contentScrollView];
  [(PRComplicationGalleryDetailViewController *)self setReferenceView:contentScrollView];

  [(PRComplicationGalleryDetailViewController *)self setView:v3];
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = v3;
  v32 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [(PRComplicationGalleryDetailView *)v3 addLayoutGuide:?];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  applicationWidgetCollection = [(PRComplicationGalleryDetailViewController *)self applicationWidgetCollection];
  widgetDescriptors = [applicationWidgetCollection widgetDescriptors];

  obj = widgetDescriptors;
  v7 = [widgetDescriptors countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    v10 = 0x1E69DC000uLL;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        allowedWidgets = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
        applicationWidgetCollection2 = [(PRComplicationGalleryDetailViewController *)self applicationWidgetCollection];
        isDisfavored = [applicationWidgetCollection2 isDisfavored];

        addWidgetSheetLocation = [(PRComplicationGalleryDetailViewController *)self addWidgetSheetLocation];
        currentDevice = [*(v10 + 2360) currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          if (isDisfavored)
          {
            sbh_supportedSizeClasses = [v12 sbh_disfavoredSizeClassesForAddWidgetSheetLocation:addWidgetSheetLocation];
          }

          else
          {
            sbh_supportedSizeClasses = [v12 sbh_favoredSizeClassesForAddWidgetSheetLocation:addWidgetSheetLocation];
          }
        }

        else
        {
          sbh_supportedSizeClasses = [v12 sbh_supportedSizeClasses];
        }

        v19 = sbh_supportedSizeClasses;
        v20 = v12;
        if ([v20 sbh_supportsRemovableBackgroundOrAccessoryFamilies])
        {
          delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
          widgetDragHandler = [delegate widgetDragHandler];

          v22 = [PRComplicationGalleryDetailPageViewController alloc];
          listLayoutProvider = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
          [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
          selfCopy = self;
          v25 = v8;
          v26 = v10;
          v28 = v27 = v9;
          v29 = [(PRComplicationGalleryDetailPageViewController *)v22 initWithGalleryItem:v20 listLayoutProvider:listLayoutProvider iconViewProvider:v28 widgetDragHandler:widgetDragHandler allowedFamilies:v19 & allowedWidgets];

          v9 = v27;
          v10 = v26;
          v8 = v25;
          self = selfCopy;

          [(PRComplicationGalleryDetailPageViewController *)v29 setDelegate:selfCopy];
          [(PRComplicationGalleryDetailPageViewController *)v29 setLayoutGuide:v32];
          [v34 addObject:v29];
          view = [(PRComplicationGalleryDetailPageViewController *)v29 view];
          [v33 addObject:view];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v8);
  }

  [(PRComplicationGalleryDetailViewController *)self setPageViewControllers:v34];
  [(PRComplicationGalleryDetailView *)v31 setPages:v33];
  [(PRComplicationGalleryDetailViewController *)self _updateContent];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PRComplicationGalleryDetailViewController;
  [(PRComplicationGalleryDetailViewController *)&v5 viewWillAppear:appear];
  view = [(PRComplicationGalleryDetailViewController *)self view];
  [view layoutIfNeeded];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v5.receiver = self;
  v5.super_class = PRComplicationGalleryDetailViewController;
  [(PRComplicationGalleryDetailViewController *)&v5 viewIsAppearing:appearing];
  view = [(PRComplicationGalleryDetailViewController *)self view];
  [view performInitialScrollIfNeeded];
  [(PRComplicationGalleryDetailViewController *)self _updateParallax];
}

- (void)setAppName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_appName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    appName = self->_appName;
    self->_appName = v4;

    [(PRComplicationGalleryDetailViewController *)self _updateContent];
  }
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  if (self->_iconImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_iconImage, image);
    [(PRComplicationGalleryDetailViewController *)self _updateContent];
    imageCopy = v6;
  }
}

- (void)setShowsCloseButton:(BOOL)button
{
  buttonCopy = button;
  [(PRComplicationGalleryDetailViewController *)self loadViewIfNeeded];
  _complicationGalleryDetailView = [(PRComplicationGalleryDetailViewController *)self _complicationGalleryDetailView];
  [_complicationGalleryDetailView setShowsCloseButton:buttonCopy];
}

- (BOOL)showsCloseButton
{
  [(PRComplicationGalleryDetailViewController *)self loadViewIfNeeded];
  _complicationGalleryDetailView = [(PRComplicationGalleryDetailViewController *)self _complicationGalleryDetailView];
  showsCloseButton = [_complicationGalleryDetailView showsCloseButton];

  return showsCloseButton;
}

- (void)setShowsBackgroundView:(BOOL)view
{
  viewCopy = view;
  [(PRComplicationGalleryDetailViewController *)self loadViewIfNeeded];
  _complicationGalleryDetailView = [(PRComplicationGalleryDetailViewController *)self _complicationGalleryDetailView];
  [_complicationGalleryDetailView setShowsBackgroundView:viewCopy];
}

- (BOOL)showsBackgroundView
{
  [(PRComplicationGalleryDetailViewController *)self loadViewIfNeeded];
  _complicationGalleryDetailView = [(PRComplicationGalleryDetailViewController *)self _complicationGalleryDetailView];
  showsBackgroundView = [_complicationGalleryDetailView showsBackgroundView];

  return showsBackgroundView;
}

- (void)_updateContent
{
  _complicationGalleryDetailView = [(PRComplicationGalleryDetailViewController *)self _complicationGalleryDetailView];
  [_complicationGalleryDetailView setTitle:self->_appName];
  [_complicationGalleryDetailView setIconImage:self->_iconImage];
}

- (void)complicationGalleryView:(id)view didUpdateVisiblePagesWithAppearedBlock:(id)block
{
  blockCopy = block;
  pageViewControllers = self->_pageViewControllers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__PRComplicationGalleryDetailViewController_complicationGalleryView_didUpdateVisiblePagesWithAppearedBlock___block_invoke;
  v8[3] = &unk_1E7845820;
  v9 = blockCopy;
  v7 = blockCopy;
  [(NSArray *)pageViewControllers enumerateObjectsWithOptions:0 usingBlock:v8];
}

void __108__PRComplicationGalleryDetailViewController_complicationGalleryView_didUpdateVisiblePagesWithAppearedBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = v5 && ((*(v5 + 16))(v5, a3) & 1) != 0;
  [v7 bs_endAppearanceTransition:v6];
}

- (void)complicationGalleryViewDidTapClose:(id)close
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewControllerDidCancel:self];
}

- (void)_updateParallax
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_pageViewControllers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        referenceView = [(PRComplicationGalleryDetailViewController *)self referenceView];
        [v8 updateParallaxEffectInReferenceView:referenceView];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)complicationGalleryDetailPageViewController:(id)controller didSelectWidgetIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewController:self didSelectWidgetIconView:viewCopy];
}

- (NSMutableDictionary)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_userInfo;
    self->_userInfo = v4;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (SBHWidgetSheetViewControllerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end