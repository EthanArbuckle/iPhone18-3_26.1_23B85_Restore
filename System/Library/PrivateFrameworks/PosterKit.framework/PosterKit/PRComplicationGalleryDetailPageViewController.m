@interface PRComplicationGalleryDetailPageViewController
- (BOOL)_shouldDisplayFamily:(int64_t)a3;
- (PRComplicationGalleryDetailPageViewController)initWithGalleryItem:(id)a3 listLayoutProvider:(id)a4 iconViewProvider:(id)a5 widgetDragHandler:(id)a6 allowedFamilies:(unint64_t)a7;
- (PRComplicationGalleryDetailPageViewControllerDelegate)delegate;
- (void)iconTapped:(id)a3;
- (void)loadView;
- (void)updateParallaxEffectInReferenceView:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PRComplicationGalleryDetailPageViewController

- (PRComplicationGalleryDetailPageViewController)initWithGalleryItem:(id)a3 listLayoutProvider:(id)a4 iconViewProvider:(id)a5 widgetDragHandler:(id)a6 allowedFamilies:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = PRComplicationGalleryDetailPageViewController;
  v17 = [(PRComplicationGalleryDetailPageViewController *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_galleryItem, a3);
    objc_storeStrong(&v18->_listLayoutProvider, a4);
    objc_storeStrong(&v18->_iconViewProvider, a5);
    objc_storeStrong(&v18->_widgetDragHandler, a6);
    v18->_allowedFamilies = a7;
  }

  return v18;
}

- (void)loadView
{
  v51[1] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PRComplicationGalleryDetailPageViewController;
  [(PRComplicationGalleryDetailPageViewController *)&v49 loadView];
  v3 = [(PRComplicationGalleryDetailPageViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  stackView = self->_stackView;
  self->_stackView = v4;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setAlignment:3];
  [v3 addSubview:self->_stackView];
  v6 = PRPinViewWithinView(self->_stackView, v3);
  v7 = [PRAddWidgetDetailSheetWidgetDescriptionView alloc];
  v8 = [(PRComplicationGalleryDetailPageViewController *)self galleryItem];
  v9 = [v8 sbh_widgetName];
  v10 = [(PRComplicationGalleryDetailPageViewController *)self galleryItem];
  v11 = [v10 sbh_widgetDescription];
  v12 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)v7 initWithTitle:v9 subtitle:v11];
  descriptionView = self->_descriptionView;
  self->_descriptionView = v12;

  [(PRAddWidgetDetailSheetWidgetDescriptionView *)self->_descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PRAddWidgetDetailSheetWidgetDescriptionView *)self->_descriptionView bs_setHitTestingDisabled:1];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_descriptionView];
  v14 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self->_descriptionView widthAnchor];
  v42 = v3;
  v15 = [v3 widthAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
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
  v22 = [v17 heightAnchor];
  v40 = v20;
  v23 = [v20 heightAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
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

        v30 = [*(*(&v44 + 1) + 8 * v29) unsignedIntegerValue];
        v31 = objc_alloc(MEMORY[0x1E69D40F0]);
        v32 = [(PRComplicationGalleryDetailPageViewController *)self galleryItem];
        v33 = [(PRComplicationGalleryDetailPageViewController *)self listLayoutProvider];
        v34 = [(PRComplicationGalleryDetailPageViewController *)self iconViewProvider];
        v35 = [v31 initWithGalleryItem:v32 titleAndSubtitleVisible:0 listLayoutProvider:v33 iconViewProvider:v34];

        [v35 setSelectedSizeClass:v30];
        [v35 setDelegate:self];
        [v35 setUsesAmbientScaleFactorForRemovableBackgroundItems:0];
        v36 = [v35 wrapperView];
        [v36 setBackgroundType:0];

        v37 = [v35 wrapperView];
        [v37 setCornerRadius:PRWidgetPlatterCornerRadius()];

        v38 = self->_complicationsStackView;
        v39 = [v35 view];
        [(UIStackView *)v38 addArrangedSubview:v39];

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

- (BOOL)_shouldDisplayFamily:(int64_t)a3
{
  v5 = CHSWidgetFamilyMaskFromWidgetFamily();
  v6 = [(PRComplicationGalleryDetailPageViewController *)self galleryItem];
  v7 = [v6 sbh_supportedSizeClasses] & v5;

  v8 = self->_allowedFamilies & v5;
  if (a3 == 1)
  {
    v9 = [(PRComplicationGalleryDetailPageViewController *)self galleryItem];
    v10 = v9;
    v11 = 0;
    if (v7 && v8)
    {
      v11 = [v9 sbh_supportsRemovableBackground];
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

  return v11;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PRComplicationGalleryDetailPageViewController;
  [(PRComplicationGalleryDetailPageViewController *)&v7 viewWillAppear:a3];
  v4 = [(PRAddWidgetDetailSheetWidgetDescriptionView *)self->_descriptionView heightAnchor];
  v5 = [(UILayoutGuide *)self->_layoutGuide heightAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v6 setActive:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PRComplicationGalleryDetailPageViewController;
  [(PRComplicationGalleryDetailPageViewController *)&v3 viewDidLayoutSubviews];
  [(PRComplicationGalleryDetailPageViewController *)self updateParallaxEffectInReferenceView:self->_referenceView];
}

- (void)updateParallaxEffectInReferenceView:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_referenceView, a3);
  if (self->_referenceView)
  {
    v6 = [(PRComplicationGalleryDetailPageViewController *)self view];
    v7 = self->_complicationsStackView;
    [v6 bounds];
    [v5 convertRect:v6 fromView:?];
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

- (void)iconTapped:(id)a3
{
  v4 = [a3 wrapperView];
  v6 = [v4 contentView];

  if (v6)
  {
    v5 = [(PRComplicationGalleryDetailPageViewController *)self delegate];
    [v5 complicationGalleryDetailPageViewController:self didSelectWidgetIconView:v6];
  }
}

- (PRComplicationGalleryDetailPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end