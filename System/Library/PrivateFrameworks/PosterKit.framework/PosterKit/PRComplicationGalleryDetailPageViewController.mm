@interface PRComplicationGalleryDetailPageViewController
- (BOOL)_shouldDisplayFamily:(int64_t)family;
- (PRComplicationGalleryDetailPageViewController)initWithGalleryItem:(id)item listLayoutProvider:(id)provider iconViewProvider:(id)viewProvider widgetDragHandler:(id)handler allowedFamilies:(unint64_t)families;
- (PRComplicationGalleryDetailPageViewControllerDelegate)delegate;
- (void)iconTapped:(id)tapped;
- (void)loadView;
- (void)updateParallaxEffectInReferenceView:(id)view;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PRComplicationGalleryDetailPageViewController

- (PRComplicationGalleryDetailPageViewController)initWithGalleryItem:(id)item listLayoutProvider:(id)provider iconViewProvider:(id)viewProvider widgetDragHandler:(id)handler allowedFamilies:(unint64_t)families
{
  itemCopy = item;
  providerCopy = provider;
  viewProviderCopy = viewProvider;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = PRComplicationGalleryDetailPageViewController;
  v17 = [(PRComplicationGalleryDetailPageViewController *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_galleryItem, item);
    objc_storeStrong(&v18->_listLayoutProvider, provider);
    objc_storeStrong(&v18->_iconViewProvider, viewProvider);
    objc_storeStrong(&v18->_widgetDragHandler, handler);
    v18->_allowedFamilies = families;
  }

  return v18;
}

- (void)loadView
{
  v51[1] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PRComplicationGalleryDetailPageViewController;
  [(PRComplicationGalleryDetailPageViewController *)&v49 loadView];
  view = [(PRComplicationGalleryDetailPageViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  stackView = self->_stackView;
  self->_stackView = v4;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setAlignment:3];
  [view addSubview:self->_stackView];
  v6 = PRPinViewWithinView(self->_stackView, view);
  v7 = [PRAddWidgetDetailSheetWidgetDescriptionView alloc];
  galleryItem = [(PRComplicationGalleryDetailPageViewController *)self galleryItem];
  sbh_widgetName = [galleryItem sbh_widgetName];
  galleryItem2 = [(PRComplicationGalleryDetailPageViewController *)self galleryItem];
  sbh_widgetDescription = [galleryItem2 sbh_widgetDescription];
  v12 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)v7 initWithTitle:sbh_widgetName subtitle:sbh_widgetDescription];
  descriptionView = self->_descriptionView;
  self->_descriptionView = v12;

  [(PRAddWidgetDetailSheetWidgetDescriptionView *)self->_descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PRAddWidgetDetailSheetWidgetDescriptionView *)self->_descriptionView bs_setHitTestingDisabled:1];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_descriptionView];
  widthAnchor = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self->_descriptionView widthAnchor];
  v42 = view;
  widthAnchor2 = [view widthAnchor];
  v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v16 setActive:1];

  v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(UIStackView *)self->_stackView addArrangedSubview:v17];
  v18 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  complicationsStackView = self->_complicationsStackView;
  self->_complicationsStackView = v18;

  [(UIStackView *)self->_complicationsStackView setAlignment:4];
  [(UIStackView *)self->_complicationsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_complicationsStackView setAxis:0];
  [(UIStackView *)self->_complicationsStackView setSpacing:20.0];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_complicationsStackView];
  v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(UIStackView *)self->_stackView addArrangedSubview:v20];
  v21 = MEMORY[0x1E696ACD8];
  v41 = v17;
  heightAnchor = [v17 heightAnchor];
  v40 = v20;
  heightAnchor2 = [v20 heightAnchor];
  v24 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v51[0] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  [v21 activateConstraints:v25];

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __57__PRComplicationGalleryDetailPageViewController_loadView__block_invoke;
  v48[3] = &unk_1E7845FB8;
  v48[4] = self;
  [&unk_1F1C6BCC8 bs_filter:v48];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v26 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v45;
    do
    {
      v29 = 0;
      do
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v44 + 1) + 8 * v29) unsignedIntegerValue];
        v31 = objc_alloc(MEMORY[0x1E69D40F0]);
        galleryItem3 = [(PRComplicationGalleryDetailPageViewController *)self galleryItem];
        listLayoutProvider = [(PRComplicationGalleryDetailPageViewController *)self listLayoutProvider];
        iconViewProvider = [(PRComplicationGalleryDetailPageViewController *)self iconViewProvider];
        v35 = [v31 initWithGalleryItem:galleryItem3 titleAndSubtitleVisible:0 listLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider];

        [v35 setSelectedSizeClass:unsignedIntegerValue];
        [v35 setDelegate:self];
        [v35 setUsesAmbientScaleFactorForRemovableBackgroundItems:0];
        wrapperView = [v35 wrapperView];
        [wrapperView setBackgroundType:0];

        wrapperView2 = [v35 wrapperView];
        [wrapperView2 setCornerRadius:PRWidgetPlatterCornerRadius()];

        v38 = self->_complicationsStackView;
        view2 = [v35 view];
        [(UIStackView *)v38 addArrangedSubview:view2];

        [(PRComplicationGalleryDetailPageViewController *)self bs_addChildViewController:v35];
        ++v29;
      }

      while (v27 != v29);
      v27 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v27);
  }
}

uint64_t __57__PRComplicationGalleryDetailPageViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 _shouldDisplayFamily:v3];
}

- (BOOL)_shouldDisplayFamily:(int64_t)family
{
  v5 = CHSWidgetFamilyMaskFromWidgetFamily();
  galleryItem = [(PRComplicationGalleryDetailPageViewController *)self galleryItem];
  v7 = [galleryItem sbh_supportedSizeClasses] & v5;

  v8 = self->_allowedFamilies & v5;
  if (family == 1)
  {
    galleryItem2 = [(PRComplicationGalleryDetailPageViewController *)self galleryItem];
    v10 = galleryItem2;
    sbh_supportsRemovableBackground = 0;
    if (v7 && v8)
    {
      sbh_supportsRemovableBackground = [galleryItem2 sbh_supportsRemovableBackground];
    }
  }

  else
  {
    if (v7)
    {
      v12 = v8 == 0;
    }

    else
    {
      v12 = 1;
    }

    return !v12;
  }

  return sbh_supportsRemovableBackground;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PRComplicationGalleryDetailPageViewController;
  [(PRComplicationGalleryDetailPageViewController *)&v7 viewWillAppear:appear];
  heightAnchor = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self->_descriptionView heightAnchor];
  heightAnchor2 = [(UILayoutGuide *)self->_layoutGuide heightAnchor];
  v6 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v6 setActive:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PRComplicationGalleryDetailPageViewController;
  [(PRComplicationGalleryDetailPageViewController *)&v3 viewDidLayoutSubviews];
  [(PRComplicationGalleryDetailPageViewController *)self updateParallaxEffectInReferenceView:self->_referenceView];
}

- (void)updateParallaxEffectInReferenceView:(id)view
{
  viewCopy = view;
  objc_storeStrong(&self->_referenceView, view);
  if (self->_referenceView)
  {
    view = [(PRComplicationGalleryDetailPageViewController *)self view];
    v7 = self->_complicationsStackView;
    [view bounds];
    [viewCopy convertRect:view fromView:?];
    v10 = (v8 + v9 + v8 + v9) / (v9 + v9) + -1.0;
    [(UIStackView *)v7 bounds];
    v12 = v11;
    [(UIStackView *)v7 center];
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeTranslation(&v15, -(v10 * (v13 + v12 * -0.5 + 10.0)), 0.0);
    v14 = v15;
    [(UIStackView *)v7 setTransform:&v14];
  }
}

- (void)iconTapped:(id)tapped
{
  wrapperView = [tapped wrapperView];
  contentView = [wrapperView contentView];

  if (contentView)
  {
    delegate = [(PRComplicationGalleryDetailPageViewController *)self delegate];
    [delegate complicationGalleryDetailPageViewController:self didSelectWidgetIconView:contentView];
  }
}

- (PRComplicationGalleryDetailPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end