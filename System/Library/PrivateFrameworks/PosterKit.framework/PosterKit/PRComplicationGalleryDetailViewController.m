@interface PRComplicationGalleryDetailViewController
- (BOOL)showsBackgroundView;
- (BOOL)showsCloseButton;
- (NSMutableDictionary)userInfo;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (void)_updateContent;
- (void)_updateParallax;
- (void)complicationGalleryDetailPageViewController:(id)a3 didSelectWidgetIconView:(id)a4;
- (void)complicationGalleryView:(id)a3 didUpdateVisiblePagesWithAppearedBlock:(id)a4;
- (void)complicationGalleryViewDidTapClose:(id)a3;
- (void)loadView;
- (void)setAppName:(id)a3;
- (void)setIconImage:(id)a3;
- (void)setShowsBackgroundView:(BOOL)a3;
- (void)setShowsCloseButton:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PRComplicationGalleryDetailViewController

- (void)loadView
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PRComplicationGalleryDetailView);
  [(PRComplicationGalleryDetailView *)v3 setDelegate:self];
  v4 = [(PRComplicationGalleryDetailView *)v3 contentScrollView];
  [(PRComplicationGalleryDetailViewController *)self setReferenceView:v4];

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
  v5 = [(PRComplicationGalleryDetailViewController *)self applicationWidgetCollection];
  v6 = [v5 widgetDescriptors];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
        v37 = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
        v13 = [(PRComplicationGalleryDetailViewController *)self applicationWidgetCollection];
        v14 = [v13 isDisfavored];

        v15 = [(PRComplicationGalleryDetailViewController *)self addWidgetSheetLocation];
        v16 = [*(v10 + 2360) currentDevice];
        v17 = [v16 userInterfaceIdiom];

        if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          if (v14)
          {
            v18 = [v12 sbh_disfavoredSizeClassesForAddWidgetSheetLocation:v15];
          }

          else
          {
            v18 = [v12 sbh_favoredSizeClassesForAddWidgetSheetLocation:v15];
          }
        }

        else
        {
          v18 = [v12 sbh_supportedSizeClasses];
        }

        v19 = v18;
        v20 = v12;
        if ([v20 sbh_supportsRemovableBackgroundOrAccessoryFamilies])
        {
          v21 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
          v36 = [v21 widgetDragHandler];

          v22 = [PRComplicationGalleryDetailPageViewController alloc];
          v23 = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
          [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
          v24 = self;
          v25 = v8;
          v26 = v10;
          v28 = v27 = v9;
          v29 = [(PRComplicationGalleryDetailPageViewController *)v22 initWithGalleryItem:v20 listLayoutProvider:v23 iconViewProvider:v28 widgetDragHandler:v36 allowedFamilies:v19 & v37];

          v9 = v27;
          v10 = v26;
          v8 = v25;
          self = v24;

          [(PRComplicationGalleryDetailPageViewController *)v29 setDelegate:v24];
          [(PRComplicationGalleryDetailPageViewController *)v29 setLayoutGuide:v32];
          [v34 addObject:v29];
          v30 = [(PRComplicationGalleryDetailPageViewController *)v29 view];
          [v33 addObject:v30];
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PRComplicationGalleryDetailViewController;
  [(PRComplicationGalleryDetailViewController *)&v5 viewWillAppear:a3];
  v4 = [(PRComplicationGalleryDetailViewController *)self view];
  [v4 layoutIfNeeded];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PRComplicationGalleryDetailViewController;
  [(PRComplicationGalleryDetailViewController *)&v5 viewIsAppearing:a3];
  v4 = [(PRComplicationGalleryDetailViewController *)self view];
  [v4 performInitialScrollIfNeeded];
  [(PRComplicationGalleryDetailViewController *)self _updateParallax];
}

- (void)setAppName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_appName isEqualToString:?])
  {
    v4 = [v6 copy];
    appName = self->_appName;
    self->_appName = v4;

    [(PRComplicationGalleryDetailViewController *)self _updateContent];
  }
}

- (void)setIconImage:(id)a3
{
  v5 = a3;
  if (self->_iconImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_iconImage, a3);
    [(PRComplicationGalleryDetailViewController *)self _updateContent];
    v5 = v6;
  }
}

- (void)setShowsCloseButton:(BOOL)a3
{
  v3 = a3;
  [(PRComplicationGalleryDetailViewController *)self loadViewIfNeeded];
  v5 = [(PRComplicationGalleryDetailViewController *)self _complicationGalleryDetailView];
  [v5 setShowsCloseButton:v3];
}

- (BOOL)showsCloseButton
{
  [(PRComplicationGalleryDetailViewController *)self loadViewIfNeeded];
  v3 = [(PRComplicationGalleryDetailViewController *)self _complicationGalleryDetailView];
  v4 = [v3 showsCloseButton];

  return v4;
}

- (void)setShowsBackgroundView:(BOOL)a3
{
  v3 = a3;
  [(PRComplicationGalleryDetailViewController *)self loadViewIfNeeded];
  v5 = [(PRComplicationGalleryDetailViewController *)self _complicationGalleryDetailView];
  [v5 setShowsBackgroundView:v3];
}

- (BOOL)showsBackgroundView
{
  [(PRComplicationGalleryDetailViewController *)self loadViewIfNeeded];
  v3 = [(PRComplicationGalleryDetailViewController *)self _complicationGalleryDetailView];
  v4 = [v3 showsBackgroundView];

  return v4;
}

- (void)_updateContent
{
  v3 = [(PRComplicationGalleryDetailViewController *)self _complicationGalleryDetailView];
  [v3 setTitle:self->_appName];
  [v3 setIconImage:self->_iconImage];
}

- (void)complicationGalleryView:(id)a3 didUpdateVisiblePagesWithAppearedBlock:(id)a4
{
  v5 = a4;
  pageViewControllers = self->_pageViewControllers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__PRComplicationGalleryDetailViewController_complicationGalleryView_didUpdateVisiblePagesWithAppearedBlock___block_invoke;
  v8[3] = &unk_1E7845820;
  v9 = v5;
  v7 = v5;
  [(NSArray *)pageViewControllers enumerateObjectsWithOptions:0 usingBlock:v8];
}

void __108__PRComplicationGalleryDetailViewController_complicationGalleryView_didUpdateVisiblePagesWithAppearedBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = v5 && ((*(v5 + 16))(v5, a3) & 1) != 0;
  [v7 bs_endAppearanceTransition:v6];
}

- (void)complicationGalleryViewDidTapClose:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v4 addWidgetSheetViewControllerDidCancel:self];
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
        v9 = [(PRComplicationGalleryDetailViewController *)self referenceView];
        [v8 updateParallaxEffectInReferenceView:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)complicationGalleryDetailPageViewController:(id)a3 didSelectWidgetIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v6 addWidgetSheetViewController:self didSelectWidgetIconView:v5];
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