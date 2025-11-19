@interface VideosExtrasShowcaseTemplateViewController
- (IKShowcaseTemplate)templateElement;
- (VideosExtrasShowcaseTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5;
- (id)_mainChildViewController;
- (id)animationControllerForNavigationOperation:(int64_t)a3 fromViewController:(id)a4 toViewController:(id)a5;
- (unint64_t)indexOfVisibleItem;
- (unint64_t)numberOfImagesForBrowserViewController:(id)a3;
- (unint64_t)numberOfItemsInCarouselViewController:(id)a3;
- (void)_loadTextElement:(id)a3 textAttributes:(id)a4 withCompletionHandler:(id)a5;
- (void)_prepareLayout;
- (void)_pushImageBrowserWithVisibleItemIndex:(unint64_t)a3;
- (void)carouselViewController:(id)a3 configureCarouselCollectionViewCell:(id)a4 forItemAtIndex:(unint64_t)a5 withThumbnailImageContainerSize:(CGSize)a6;
- (void)carouselViewController:(id)a3 didHighlightItemAtIndex:(unint64_t)a4;
- (void)carouselViewController:(id)a3 didSelectItemAtIndex:(unint64_t)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4;
- (void)handlePinchGestureForZoomingImageInteractiveTransitionWithContext:(id)a3;
- (void)imageBrowserViewController:(id)a3 loadDescriptionAtIndex:(unint64_t)a4 withCompletionHandler:(id)a5;
- (void)imageBrowserViewController:(id)a3 loadImageAtIndex:(unint64_t)a4 withCompletionHandler:(id)a5;
- (void)imageBrowserViewController:(id)a3 loadSubtitleAtIndex:(unint64_t)a4 withCompletionHandler:(id)a5;
- (void)imageBrowserViewController:(id)a3 loadTitleAtIndex:(unint64_t)a4 withCompletionHandler:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performZoomingImageTransitionWithContext:(id)a3;
- (void)prepareZoomingImageTransitionWithContext:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VideosExtrasShowcaseTemplateViewController

- (VideosExtrasShowcaseTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = VideosExtrasShowcaseTemplateViewController;
  v5 = [(VideosExtrasTemplateViewController *)&v30 initWithDocument:a3 options:a4 context:a5];
  v6 = v5;
  if (v5)
  {
    v21 = [(VideosExtrasShowcaseTemplateViewController *)v5 templateElement];
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = v6;
    v6->_autohighlightIndex = 0x7FFFFFFFFFFFFFFFLL;
    v20 = [v21 carousel];
    v8 = [v20 sections];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 items];
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __79__VideosExtrasShowcaseTemplateViewController_initWithDocument_options_context___block_invoke;
            v23[3] = &unk_1E87352D0;
            v24 = v7;
            v25 = v22;
            [v14 enumerateObjectsUsingBlock:v23];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    v6 = v7;
    [(VideosExtrasShowcaseTemplateViewController *)v7 setCarouselLockupElements:v22];
    v15 = [v21 modes];
    v16 = [v15 containsObject:*MEMORY[0x1E69A87C8]];
    [(VideosExtrasShowcaseTemplateViewController *)v7 setSupportsOneupMode:v16];
    if ([v15 containsObject:*MEMORY[0x1E69A87D0]])
    {
      v17 = objc_alloc_init(VideosExtrasCarouselViewController);
      [(VideosExtrasCarouselViewController *)v17 setDataSource:v7];
      [(VideosExtrasCarouselViewController *)v17 setDelegate:v7];
      [(VideosExtrasShowcaseTemplateViewController *)v7 setCarouselViewController:v17];
      v18 = v20;
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = v20;
      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = objc_alloc_init(VideosExtrasImageBrowserViewController);
      [(VideosExtrasShowcaseTemplateViewController *)v6 setImageBrowserViewController:v17];
      [(VideosExtrasCarouselViewController *)v17 addObserver:v6 forKeyPath:@"title" options:0 context:0];
      [(VideosExtrasCarouselViewController *)v17 setDataSource:v6];
      [(VideosExtrasCarouselViewController *)v17 setVisibleImageIndex:v6->_autohighlightIndex];
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    [(VideosExtrasShowcaseTemplateViewController *)v6 addChildViewController:v17];
    [(VideosExtrasCarouselViewController *)v17 didMoveToParentViewController:v6];

LABEL_17:
  }

  return v6;
}

void __79__VideosExtrasShowcaseTemplateViewController_initWithDocument_options_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v6 autoHighlightIdentifier];

    if (v5)
    {
      *(*(a1 + 32) + 1104) = a3;
    }

    [*(a1 + 40) addObject:v6];
  }
}

- (void)dealloc
{
  v3 = [(VideosExtrasShowcaseTemplateViewController *)self _mainChildViewController];
  v4 = v3;
  if (v3)
  {
    [v3 willMoveToParentViewController:0];
    if ([v4 isViewLoaded])
    {
      v5 = [v4 view];
      [v5 removeFromSuperview];
    }

    [v4 removeFromParentViewController];
  }

  v6 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  [v6 setDataSource:0];
  [v6 setDelegate:0];
  v7 = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
  [v7 setDataSource:0];
  [v7 setZoomingImageInteractiveTransitionSource:0];
  if (v4 == v7)
  {
    [v7 removeObserver:self forKeyPath:@"title" context:0];
  }

  v8.receiver = self;
  v8.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
  v14 = [(VideosExtrasShowcaseTemplateViewController *)self _mainChildViewController];
  v15 = v14;
  if (v13 != v11 || v13 != v14)
  {

    goto LABEL_6;
  }

  v16 = [v10 isEqualToString:@"title"];

  if (!v16)
  {
LABEL_6:
    v18.receiver = self;
    v18.super_class = VideosExtrasShowcaseTemplateViewController;
    [(VideosExtrasShowcaseTemplateViewController *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_7;
  }

  v17 = [v13 title];
  [(VideosExtrasShowcaseTemplateViewController *)self setTitle:v17];

LABEL_7:
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v33 viewDidLoad];
  v3 = [(VideosExtrasShowcaseTemplateViewController *)self templateElement];
  v4 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v3 background];

  if (v6)
  {
    v7 = [v3 background];
    [v5 addObject:v7];
  }

  v8 = [v3 documentBanner];
  v9 = [v8 background];

  if (v9)
  {
    v10 = [v3 documentBanner];
    v11 = [v10 background];
    [v5 addObject:v11];
  }

  [(VideosExtrasTemplateViewController *)self configureBackgroundWithElements:v5];
  if (v4)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(VideosExtrasShowcaseTemplateViewController *)self title];
  }

  v13 = [v3 documentBanner];
  [(VideosExtrasElementViewController *)self _configureBannerWithElement:v13];

  if (!v4)
  {
    v14 = [(VideosExtrasShowcaseTemplateViewController *)self navigationItem];
    v15 = [(VideosExtrasShowcaseTemplateViewController *)self title];
    [v14 setBackButtonTitle:v15];

    [(VideosExtrasShowcaseTemplateViewController *)self setTitle:v12];
  }

  v16 = [v4 view];
  if (!v16)
  {
    v17 = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
    v16 = [v17 view];

    v18 = [MEMORY[0x1E69DC888] clearColor];
    [v16 setBackgroundColor:v18];
  }

  v19 = [(VideosExtrasShowcaseTemplateViewController *)self view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 addSubview:v16];
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = MEMORY[0x1E696ACD8];
  if (v4)
  {
    v22 = [v19 safeAreaLayoutGuide];
    v23 = [v21 constraintWithItem:v16 attribute:3 relatedBy:0 toItem:v22 attribute:3 multiplier:1.0 constant:0.0];
    [v20 addObject:v23];

    v24 = MEMORY[0x1E696ACD8];
    v25 = *MEMORY[0x1E69DDCE0];
    v26 = *(MEMORY[0x1E69DDCE0] + 8);
    v27 = *(MEMORY[0x1E69DDCE0] + 16);
    v28 = *(MEMORY[0x1E69DDCE0] + 24);
    v29 = v16;
    v30 = v19;
    v31 = 14;
  }

  else
  {
    v25 = *MEMORY[0x1E69DDCE0];
    v26 = *(MEMORY[0x1E69DDCE0] + 8);
    v27 = *(MEMORY[0x1E69DDCE0] + 16);
    v28 = *(MEMORY[0x1E69DDCE0] + 24);
    v24 = MEMORY[0x1E696ACD8];
    v29 = v16;
    v30 = v19;
    v31 = 15;
  }

  v32 = [v24 constraintsByAttachingView:v29 toView:v30 alongEdges:v31 insets:{v25, v26, v27, v28}];
  [v20 addObjectsFromArray:v32];

  [v19 addConstraints:v20];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v4 viewDidDisappear:a3];
  [(VideosExtrasShowcaseTemplateViewController *)self setActiveZoomingImageInteractiveTransitionController:0];
  [(VideosExtrasShowcaseTemplateViewController *)self setOverriddenFullscreenImages:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasElementViewController *)&v12 viewWillAppear:a3];
  v4 = 1104;
  if (self->_autohighlightIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];

    if (v5)
    {
      v6 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
      [v6 setIndexOfVisibleItem:self->_autohighlightIndex];
    }

    else
    {
      v6 = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
      [v6 setVisibleImageIndex:self->_autohighlightIndex];
    }

    self->_autohighlightIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v4 = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
    v8 = v4 != 0;
  }

  v9 = [(VideosExtrasTemplateViewController *)self context];
  v10 = [v9 extrasRootViewController];
  v11 = [v10 mainMenuBar];
  [v11 setHidden:v8];

  if (!v7)
  {
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v6 viewDidAppear:a3];
  v4 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];

  if (v4)
  {
    v5 = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
    [v5 setDataSource:0];
    [v5 setZoomingImageInteractiveTransitionSource:0];
    [(VideosExtrasShowcaseTemplateViewController *)self setImageBrowserViewController:0];
  }

  [(VideosExtrasShowcaseTemplateViewController *)self setActiveZoomingImageInteractiveTransitionController:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasShowcaseTemplateViewController *)&v7 viewWillDisappear:a3];
  v4 = [(VideosExtrasTemplateViewController *)self context];
  v5 = [v4 extrasRootViewController];
  v6 = [v5 mainMenuBar];
  [v6 setHidden:0];
}

- (IKShowcaseTemplate)templateElement
{
  v2 = [(VideosExtrasTemplateViewController *)self document];
  v3 = [v2 templateElement];

  return v3;
}

- (void)_prepareLayout
{
  v4.receiver = self;
  v4.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasElementViewController *)&v4 _prepareLayout];
  v3 = [(VideosExtrasElementViewController *)self backgroundViewController];
  [v3 setVignetteType:3];
}

- (unint64_t)numberOfItemsInCarouselViewController:(id)a3
{
  v3 = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
  v4 = [v3 count];

  return v4;
}

- (void)carouselViewController:(id)a3 configureCarouselCollectionViewCell:(id)a4 forItemAtIndex:(unint64_t)a5 withThumbnailImageContainerSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v109[2] = *MEMORY[0x1E69E9840];
  v96 = a4;
  v85 = self;
  v10 = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
  v83 = a5;
  v95 = [v10 objectAtIndex:a5];

  v93 = [v96 titleTextStyle];
  v11 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:?];
  v107 = *MEMORY[0x1E69DB650];
  v12 = v107;
  v13 = [MEMORY[0x1E69DC888] whiteColor];
  v109[0] = v13;
  v108 = *MEMORY[0x1E69DB648];
  v14 = v108;
  v92 = v11;
  v15 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];
  v109[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:&v107 count:2];

  v90 = [v96 subtitleTextStyle];
  v17 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:?];
  v105[0] = v12;
  v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
  v105[1] = v14;
  v106[0] = v18;
  v89 = v17;
  v19 = [MEMORY[0x1E69DB878] fontWithDescriptor:v17 size:0.0];
  v106[1] = v19;
  v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];

  v88 = [v96 descriptionTextStyle];
  v20 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:?];
  v103[0] = v12;
  v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.6 alpha:1.0];
  v103[1] = v14;
  v104[0] = v21;
  v87 = v20;
  v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v20 size:0.0];
  v104[1] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:2];

  v24 = [v95 title];
  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x1E696AD40]);
    v26 = [v24 text];
    v27 = [v26 string];
    v28 = [v25 initWithString:v27 attributes:v16];

    v29 = [v24 textAttributes];
    [v28 addAttributes:v29 range:{0, objc_msgSend(v28, "length")}];
    [v96 setTitleText:v28];
  }

  v91 = v16;
  v30 = [v95 subtitle];
  if (v30)
  {
    v31 = objc_alloc(MEMORY[0x1E696AD40]);
    v32 = [v30 text];
    v33 = [v32 string];
    v34 = [v31 initWithString:v33 attributes:v94];

    v35 = [v30 textAttributes];
    [v34 addAttributes:v35 range:{0, objc_msgSend(v34, "length")}];
    [v96 setSubtitleText:v34];
  }

  v36 = [v95 descriptionText];
  if (v36)
  {
    v37 = objc_alloc(MEMORY[0x1E696AD40]);
    v38 = [v36 text];
    v39 = [v38 string];
    v40 = [v37 initWithString:v39 attributes:v23];

    v41 = [v36 textAttributes];
    [v40 addAttributes:v41 range:{0, objc_msgSend(v40, "length")}];
    [v96 setDescriptionText:v40];
  }

  v86 = v24;
  v42 = [v95 overlays];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v43 = [v42 children];
  v44 = [v43 countByEnumeratingWithState:&v98 objects:v102 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = v30;
    v47 = v23;
    v48 = v42;
    v49 = *v99;
    while (2)
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v99 != v49)
        {
          objc_enumerationMutation(v43);
        }

        v51 = *(*(&v98 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = [v51 resourceImage];
          goto LABEL_17;
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v98 objects:v102 count:16];
      if (v45)
      {
        continue;
      }

      break;
    }

    v52 = 0;
LABEL_17:
    v42 = v48;
    v23 = v47;
    v30 = v46;
  }

  else
  {
    v52 = 0;
  }

  [v96 setAllowsPinchingThumbnailImageForInteractiveZoomingImageTransition:{-[VideosExtrasShowcaseTemplateViewController supportsOneupMode](v85, "supportsOneupMode")}];
  v53 = [MEMORY[0x1E69DC938] currentDevice];
  v54 = [v53 userInterfaceIdiom];

  if (v54)
  {
    v55 = [v95 image];
    v56 = MEMORY[0x1E69DCAB8];
    v57 = [v55 placeholderURL];
    v58 = [v56 imageForPlaceholderURL:v57];
    [v96 setThumbnailImagePlaceholder:v58];

    v59 = [v55 accessibilityText];
    [v96 setThumbnailImageAccessibilityText:v59];

    v60 = [v55 borderColor];
    v61 = v60;
    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v66 = [MEMORY[0x1E69DC888] whiteColor];
      v62 = [v66 colorWithAlphaComponent:0.2];
    }

    v67 = v91;

    [v96 setThumbnailBorderColor:v62];
    if (v52)
    {
      [v96 setThumbnailOverlayImage:v52];
    }

    v68 = [v55 artworkCatalog];
    [v68 setFittingSize:{width, height}];
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __152__VideosExtrasShowcaseTemplateViewController_carouselViewController_configureCarouselCollectionViewCell_forItemAtIndex_withThumbnailImageContainerSize___block_invoke_2;
    v97[3] = &__block_descriptor_40_e60_v24__0__VideosExtrasCarouselCollectionViewCell_8__UIImage_16l;
    v97[4] = v83;
    [v68 setDestination:v96 configurationBlock:v97];
LABEL_44:

    goto LABEL_45;
  }

  v63 = [(VideosExtrasElementViewController *)v85 extrasSize];
  v64 = 175.0;
  if (v63)
  {
    if (v63 == 2)
    {
      v64 = 220.0;
      v65 = 300.0;
    }

    else if (v63 == 1)
    {
      v65 = 260.0;
    }

    else
    {
      v64 = 270.0;
      v65 = 335.0;
    }
  }

  else
  {
    v65 = 205.0;
  }

  [v96 setThumbnailMaxSize:{v65, v64}];
  v69 = [v95 image];
  v55 = v69;
  if (v69)
  {
    v81 = v42;
    v62 = [v69 placeholderURL];
    v68 = [MEMORY[0x1E69DCAB8] imageForPlaceholderURL:v62];
    [v96 setThumbnailImagePlaceholder:v68];
    v70 = [v55 borderColor];
    v71 = v70;
    v84 = v30;
    if (v70)
    {
      v72 = v70;
    }

    else
    {
      v73 = [MEMORY[0x1E69DC888] whiteColor];
      v72 = [v73 colorWithAlphaComponent:0.2];
    }

    v82 = v36;

    [v96 setThumbnailBorderColor:v72];
    if (v52)
    {
      [v96 setThumbnailOverlayImage:v52];
    }

    v74 = [v55 artworkCatalog];
    [v74 setFittingSize:{v65, v64}];
    v75 = [(VideosExtrasShowcaseTemplateViewController *)v85 view];
    v76 = [v75 window];
    v77 = [v76 screen];
    [v77 scale];
    v79 = v78;

    if (v79 == 0.0)
    {
      v80 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v80 scale];
      [v74 setDestinationScale:?];
    }

    else
    {
      [v74 setDestinationScale:v79];
    }

    v67 = v91;
    v36 = v82;
    v30 = v84;
    [v74 setDestination:v96 configurationBlock:&__block_literal_global_128];

    v42 = v81;
    goto LABEL_44;
  }

  v67 = v91;
LABEL_45:
}

uint64_t __152__VideosExtrasShowcaseTemplateViewController_carouselViewController_configureCarouselCollectionViewCell_forItemAtIndex_withThumbnailImageContainerSize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    return [a2 setThumbnailImage:?];
  }

  return result;
}

void __152__VideosExtrasShowcaseTemplateViewController_carouselViewController_configureCarouselCollectionViewCell_forItemAtIndex_withThumbnailImageContainerSize___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5 && [v6 itemIndex] == *(a1 + 32))
  {
    [v6 setThumbnailImage:v5];
  }
}

- (void)carouselViewController:(id)a3 didHighlightItemAtIndex:(unint64_t)a4
{
  v5 = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
  v6 = [v5 objectAtIndex:a4];

  [v6 dispatchEventOfType:4 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
}

- (void)carouselViewController:(id)a3 didSelectItemAtIndex:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
  v9 = [v8 objectAtIndex:a4];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108__VideosExtrasShowcaseTemplateViewController_carouselViewController_didSelectItemAtIndex_completionHandler___block_invoke;
  v11[3] = &unk_1E8735338;
  v11[4] = self;
  v12 = v7;
  v13 = a4;
  v10 = v7;
  [v9 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:v11];
}

void __108__VideosExtrasShowcaseTemplateViewController_carouselViewController_didSelectItemAtIndex_completionHandler___block_invoke(void *a1, char a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __108__VideosExtrasShowcaseTemplateViewController_carouselViewController_didSelectItemAtIndex_completionHandler___block_invoke_2;
  v6[3] = &unk_1E872F668;
  v9 = a2;
  v3 = a1[5];
  v6[4] = a1[4];
  v4 = v3;
  v5 = a1[6];
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __108__VideosExtrasShowcaseTemplateViewController_carouselViewController_didSelectItemAtIndex_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(*(a1 + 40) + 16);

    return v2();
  }

  else
  {
    v4 = [*(a1 + 32) supportsOneupMode];
    result = (*(*(a1 + 40) + 16))();
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);

      return [v5 _pushImageBrowserWithVisibleItemIndex:v6];
    }
  }

  return result;
}

- (unint64_t)numberOfImagesForBrowserViewController:(id)a3
{
  v3 = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
  v4 = [v3 count];

  return v4;
}

- (void)imageBrowserViewController:(id)a3 loadImageAtIndex:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(VideosExtrasShowcaseTemplateViewController *)self overriddenFullscreenImages];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    v9[2](v9, v12);
  }

  else
  {
    v13 = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
    v14 = [v13 objectAtIndex:a4];

    v15 = [v14 image];
    v16 = [v8 view];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v21 = [v15 artworkCatalog];
    [v21 setFittingSize:{v18, v20}];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __112__VideosExtrasShowcaseTemplateViewController_imageBrowserViewController_loadImageAtIndex_withCompletionHandler___block_invoke;
    v22[3] = &unk_1E8735360;
    v23 = v9;
    [v21 requestImageWithCompletion:v22];
  }
}

void __112__VideosExtrasShowcaseTemplateViewController_imageBrowserViewController_loadImageAtIndex_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __112__VideosExtrasShowcaseTemplateViewController_imageBrowserViewController_loadImageAtIndex_withCompletionHandler___block_invoke_2;
      v7[3] = &unk_1E872DC10;
      v9 = *(a1 + 32);
      v8 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }
}

- (void)imageBrowserViewController:(id)a3 loadTitleAtIndex:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  if ([(VideosExtrasElementViewController *)self isWide])
  {
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v15[0] = *MEMORY[0x1E69DB650];
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    v16[0] = v9;
    v15[1] = *MEMORY[0x1E69DB648];
    v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    v12 = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
    v13 = [v12 objectAtIndex:a4];

    v14 = [v13 title];
    [(VideosExtrasShowcaseTemplateViewController *)self _loadTextElement:v14 textAttributes:v11 withCompletionHandler:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)imageBrowserViewController:(id)a3 loadSubtitleAtIndex:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  if ([(VideosExtrasElementViewController *)self isWide])
  {
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD00]];
    v15[0] = *MEMORY[0x1E69DB650];
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    v16[0] = v9;
    v15[1] = *MEMORY[0x1E69DB648];
    v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    v12 = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
    v13 = [v12 objectAtIndex:a4];

    v14 = [v13 subtitle];
    [(VideosExtrasShowcaseTemplateViewController *)self _loadTextElement:v14 textAttributes:v11 withCompletionHandler:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)imageBrowserViewController:(id)a3 loadDescriptionAtIndex:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  if ([(VideosExtrasElementViewController *)self isWide])
  {
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08]];
    v15[0] = *MEMORY[0x1E69DB650];
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.6 alpha:1.0];
    v16[0] = v9;
    v15[1] = *MEMORY[0x1E69DB648];
    v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    v12 = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
    v13 = [v12 objectAtIndex:a4];

    v14 = [v13 descriptionText];
    [(VideosExtrasShowcaseTemplateViewController *)self _loadTextElement:v14 textAttributes:v11 withCompletionHandler:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (id)animationControllerForNavigationOperation:(int64_t)a3 fromViewController:(id)a4 toViewController:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = a3 == 1 && v8 == self;
  v12 = v11;
  if (v11)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = v10;
    if (isKindOfClass)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    v16 = v10;
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  v22 = 0;
  v18 = 0;
  v23 = 0;
  if (a3 == 2 && v9 == self)
  {
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    v14 = v8;
    if (v24)
    {
LABEL_17:
      v22 = v14;
      if (v22)
      {
        v25 = [(VideosExtrasShowcaseTemplateViewController *)self activeZoomingImageInteractiveTransitionController];
        if (v25)
        {
          v23 = v25;
        }

        else
        {
          v23 = [[VideosExtrasZoomingImageTransitionController alloc] initWithItemIndex:[(VideosExtrasShowcaseTemplateViewController *)v22 visibleImageIndex] forInteractiveTransition:0];
          [(VideosExtrasZoomingImageTransitionController *)v23 setShouldUseSpringAnimation:v12];
        }

        v18 = 0;
        goto LABEL_39;
      }

      goto LABEL_22;
    }

    objc_opt_class();
    v26 = objc_opt_isKindOfClass();
    v16 = v8;
    if ((v26 & 1) == 0)
    {
LABEL_21:
      v22 = 0;
LABEL_22:
      v18 = 0;
LABEL_23:
      v23 = 0;
      goto LABEL_39;
    }

LABEL_11:
    v17 = v16;
    v18 = v17;
    if (!v17)
    {
      v22 = 0;
      goto LABEL_23;
    }

    v19 = [(VideosExtrasShowcaseTemplateViewController *)v17 slideshowViewController];
    v20 = v19;
    if (a3 == 1)
    {
      v21 = [(VideosExtrasShowcaseTemplateViewController *)self indexOfVisibleItem];
    }

    else
    {
      v21 = [v19 visibleImageIndex];
    }

    v27 = v21;
    v28 = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
    if (v27 >= [v28 count])
    {
      v23 = 0;
LABEL_38:

      v22 = 0;
      goto LABEL_39;
    }

    v29 = [v28 objectAtIndex:v27];
    v30 = [v29 image];
    if ([(VideosExtrasShowcaseTemplateViewController *)v18 shouldPerformZoomingImageTransitionFromImageElement:v30 toImageAtIndex:v27])
    {
    }

    else
    {
      [v29 fullscreenImage];
      v31 = v34 = v29;
      v33 = [(VideosExtrasShowcaseTemplateViewController *)v18 shouldPerformZoomingImageTransitionFromImageElement:v31 toImageAtIndex:v27];

      v29 = v34;
      if (!v33)
      {
        v23 = 0;
LABEL_37:

        goto LABEL_38;
      }
    }

    if (a3 == 1)
    {
      [v20 setVisibleImageIndex:v27];
    }

    v23 = [[VideosExtrasZoomingImageTransitionController alloc] initWithItemIndex:v27 forInteractiveTransition:0];
    [(VideosExtrasZoomingImageTransitionController *)v23 setShouldUseSpringAnimation:v12];
    goto LABEL_37;
  }

LABEL_39:

  return v23;
}

- (void)handlePinchGestureForZoomingImageInteractiveTransitionWithContext:(id)a3
{
  v15 = a3;
  v4 = [v15 pinchGestureRecognizer];
  v5 = [v4 state];
  if ((v5 - 3) < 2)
  {
    v11 = [(VideosExtrasShowcaseTemplateViewController *)self activeZoomingImageInteractiveTransitionController];
    [(VideosExtrasZoomingImageTransitionController *)v11 completeInteractiveTransitionWithPinchGestureRecognizer:v4];
LABEL_12:

    goto LABEL_13;
  }

  if (v5 == 2)
  {
    v11 = [(VideosExtrasShowcaseTemplateViewController *)self activeZoomingImageInteractiveTransitionController];
    [(VideosExtrasZoomingImageTransitionController *)v11 updateInteractiveTransitionWithPinchGestureRecognizer:v4];
    goto LABEL_12;
  }

  if (v5 == 1)
  {
    v6 = [v15 supportedZoomingImageTransitionDirections];
    [v4 velocity];
    if (v7 >= 0.0 && (v6 & 1) != 0 || (v8 = 0, v9 = 0, v7 < 0.0) && (v6 & 2) != 0)
    {
      v10 = [v15 identifier];
      v9 = [v10 isEqualToString:@"VideosExtrasCarouselZoomingImageTransitionIdentifier"];
      if (v9)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v10 isEqualToString:@"VideosExtrasImageBrowserZoomingImageTransitionIdentifier"];
      }
    }

    if ((v8 & 1) != 0 || v9)
    {
      v12 = [v15 itemIndex];
      v11 = [[VideosExtrasZoomingImageTransitionController alloc] initWithItemIndex:v12 forInteractiveTransition:1];
      [(VideosExtrasShowcaseTemplateViewController *)self setActiveZoomingImageInteractiveTransitionController:v11];
      [(VideosExtrasZoomingImageTransitionController *)v11 prepareInteractiveTransitionWithPinchGestureRecognizer:v4];
      if (v9)
      {
        [(VideosExtrasShowcaseTemplateViewController *)self _pushImageBrowserWithVisibleItemIndex:v12];
      }

      else
      {
        v13 = [(VideosExtrasShowcaseTemplateViewController *)self navigationController];
        v14 = [v13 popViewControllerAnimated:1];
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)prepareZoomingImageTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 appearState];
  if (v5 == 1)
  {
    v8 = 0.0;
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v6 = [(VideosExtrasElementViewController *)self backgroundViewController];
    v7 = [v6 view];
    [v7 setAlpha:0.0];

    v8 = 1.0;
  }

  v9 = [(VideosExtrasTemplateViewController *)self context];
  v10 = [v9 extrasRootViewController];
  v11 = [v10 mainTemplateViewController];
  v12 = [v11 menuBarView];
  [v12 setAlpha:v8];

LABEL_6:
  v13 = [(VideosExtrasShowcaseTemplateViewController *)self _mainChildViewController];
  [v13 prepareZoomingImageTransitionWithContext:v4];
}

- (void)performZoomingImageTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 appearState];
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = [(VideosExtrasElementViewController *)self backgroundViewController];
  v8 = [v7 view];
  [v8 setAlpha:v6];

  v9 = [(VideosExtrasTemplateViewController *)self context];
  v10 = [v9 extrasRootViewController];
  v11 = [v10 mainTemplateViewController];
  v12 = [v11 menuBarView];
  [v12 setAlpha:v6];

LABEL_6:
  v13 = [(VideosExtrasShowcaseTemplateViewController *)self _mainChildViewController];
  [v13 performZoomingImageTransitionWithContext:v4];
}

- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 appearState];
  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_12;
    }

    if (v4)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    v9 = [(VideosExtrasTemplateViewController *)self context];
    v10 = [v9 extrasRootViewController];
    v11 = [v10 mainTemplateViewController];
    v12 = [v11 menuBarView];
    [v12 setAlpha:v8];

    v13 = [(VideosExtrasElementViewController *)self backgroundViewController];
    v14 = [v13 view];
    [v14 setAlpha:1.0];
  }

  else
  {
    if (v4)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    v13 = [(VideosExtrasTemplateViewController *)self context];
    v14 = [v13 extrasRootViewController];
    v16 = [v14 mainTemplateViewController];
    v17 = [v16 menuBarView];
    [v17 setAlpha:v15];
  }

LABEL_12:
  v18 = [(VideosExtrasShowcaseTemplateViewController *)self _mainChildViewController];
  [v18 finalizeZoomingImageTransitionWithContext:v6 transitionFinished:v4];
}

- (unint64_t)indexOfVisibleItem
{
  v3 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 indexOfVisibleItem];
  }

  else
  {
    v6 = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 visibleImageIndex];
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (void)_loadTextElement:(id)a3 textAttributes:(id)a4 withCompletionHandler:(id)a5
{
  v16 = a3;
  v7 = a4;
  if (v16)
  {
    v8 = MEMORY[0x1E696AD40];
    v9 = a5;
    v10 = [v8 alloc];
    v11 = [v16 text];
    v12 = [v11 string];
    v13 = [v10 initWithString:v12 attributes:v7];

    v14 = [v16 textAttributes];
    [v13 addAttributes:v14 range:{0, objc_msgSend(v13, "length")}];
    v9[2](v9, v13);
  }

  else
  {
    v15 = *(a5 + 2);
    v13 = a5;
    v15();
  }
}

- (id)_mainChildViewController
{
  v3 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
  }

  v6 = v5;

  return v6;
}

- (void)_pushImageBrowserWithVisibleItemIndex:(unint64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  v6 = [v5 carouselCollectionViewCellForItemAtIndex:a3];

  v7 = [v6 thumbnailImage];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v12 = v8;
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(VideosExtrasShowcaseTemplateViewController *)self setOverriddenFullscreenImages:v9];
  }

  v10 = objc_alloc_init(VideosExtrasImageBrowserViewController);
  [(VideosExtrasImageBrowserViewController *)v10 setDataSource:self];
  [(VideosExtrasImageBrowserViewController *)v10 setVisibleImageIndex:a3];
  [(VideosExtrasImageBrowserViewController *)v10 setAllowsPinchingImageForInteractiveZoomingImageTransition:1];
  [(VideosExtrasImageBrowserViewController *)v10 setZoomingImageInteractiveTransitionSource:self];
  [(VideosExtrasShowcaseTemplateViewController *)self setImageBrowserViewController:v10];
  v11 = [(VideosExtrasShowcaseTemplateViewController *)self navigationController];
  [v11 pushViewController:v10 animated:1];
}

@end