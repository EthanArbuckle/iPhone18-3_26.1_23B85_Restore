@interface VideosExtrasShowcaseTemplateViewController
- (IKShowcaseTemplate)templateElement;
- (VideosExtrasShowcaseTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context;
- (id)_mainChildViewController;
- (id)animationControllerForNavigationOperation:(int64_t)operation fromViewController:(id)controller toViewController:(id)viewController;
- (unint64_t)indexOfVisibleItem;
- (unint64_t)numberOfImagesForBrowserViewController:(id)controller;
- (unint64_t)numberOfItemsInCarouselViewController:(id)controller;
- (void)_loadTextElement:(id)element textAttributes:(id)attributes withCompletionHandler:(id)handler;
- (void)_prepareLayout;
- (void)_pushImageBrowserWithVisibleItemIndex:(unint64_t)index;
- (void)carouselViewController:(id)controller configureCarouselCollectionViewCell:(id)cell forItemAtIndex:(unint64_t)index withThumbnailImageContainerSize:(CGSize)size;
- (void)carouselViewController:(id)controller didHighlightItemAtIndex:(unint64_t)index;
- (void)carouselViewController:(id)controller didSelectItemAtIndex:(unint64_t)index completionHandler:(id)handler;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished;
- (void)handlePinchGestureForZoomingImageInteractiveTransitionWithContext:(id)context;
- (void)imageBrowserViewController:(id)controller loadDescriptionAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
- (void)imageBrowserViewController:(id)controller loadImageAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
- (void)imageBrowserViewController:(id)controller loadSubtitleAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
- (void)imageBrowserViewController:(id)controller loadTitleAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performZoomingImageTransitionWithContext:(id)context;
- (void)prepareZoomingImageTransitionWithContext:(id)context;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VideosExtrasShowcaseTemplateViewController

- (VideosExtrasShowcaseTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = VideosExtrasShowcaseTemplateViewController;
  v5 = [(VideosExtrasTemplateViewController *)&v30 initWithDocument:document options:options context:context];
  v6 = v5;
  if (v5)
  {
    templateElement = [(VideosExtrasShowcaseTemplateViewController *)v5 templateElement];
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = v6;
    v6->_autohighlightIndex = 0x7FFFFFFFFFFFFFFFLL;
    carousel = [templateElement carousel];
    sections = [carousel sections];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [sections countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(sections);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            items = [v13 items];
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __79__VideosExtrasShowcaseTemplateViewController_initWithDocument_options_context___block_invoke;
            v23[3] = &unk_1E87352D0;
            v24 = v7;
            v25 = v22;
            [items enumerateObjectsUsingBlock:v23];
          }
        }

        v10 = [sections countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    v6 = v7;
    [(VideosExtrasShowcaseTemplateViewController *)v7 setCarouselLockupElements:v22];
    modes = [templateElement modes];
    v16 = [modes containsObject:*MEMORY[0x1E69A87C8]];
    [(VideosExtrasShowcaseTemplateViewController *)v7 setSupportsOneupMode:v16];
    if ([modes containsObject:*MEMORY[0x1E69A87D0]])
    {
      v17 = objc_alloc_init(VideosExtrasCarouselViewController);
      [(VideosExtrasCarouselViewController *)v17 setDataSource:v7];
      [(VideosExtrasCarouselViewController *)v17 setDelegate:v7];
      [(VideosExtrasShowcaseTemplateViewController *)v7 setCarouselViewController:v17];
      v18 = carousel;
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = carousel;
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
  _mainChildViewController = [(VideosExtrasShowcaseTemplateViewController *)self _mainChildViewController];
  v4 = _mainChildViewController;
  if (_mainChildViewController)
  {
    [_mainChildViewController willMoveToParentViewController:0];
    if ([v4 isViewLoaded])
    {
      view = [v4 view];
      [view removeFromSuperview];
    }

    [v4 removeFromParentViewController];
  }

  carouselViewController = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  [carouselViewController setDataSource:0];
  [carouselViewController setDelegate:0];
  imageBrowserViewController = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
  [imageBrowserViewController setDataSource:0];
  [imageBrowserViewController setZoomingImageInteractiveTransitionSource:0];
  if (v4 == imageBrowserViewController)
  {
    [imageBrowserViewController removeObserver:self forKeyPath:@"title" context:0];
  }

  v8.receiver = self;
  v8.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  imageBrowserViewController = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
  _mainChildViewController = [(VideosExtrasShowcaseTemplateViewController *)self _mainChildViewController];
  v15 = _mainChildViewController;
  if (imageBrowserViewController != objectCopy || imageBrowserViewController != _mainChildViewController)
  {

    goto LABEL_6;
  }

  v16 = [pathCopy isEqualToString:@"title"];

  if (!v16)
  {
LABEL_6:
    v18.receiver = self;
    v18.super_class = VideosExtrasShowcaseTemplateViewController;
    [(VideosExtrasShowcaseTemplateViewController *)&v18 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_7;
  }

  title = [imageBrowserViewController title];
  [(VideosExtrasShowcaseTemplateViewController *)self setTitle:title];

LABEL_7:
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v33 viewDidLoad];
  templateElement = [(VideosExtrasShowcaseTemplateViewController *)self templateElement];
  carouselViewController = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  background = [templateElement background];

  if (background)
  {
    background2 = [templateElement background];
    [v5 addObject:background2];
  }

  documentBanner = [templateElement documentBanner];
  background3 = [documentBanner background];

  if (background3)
  {
    documentBanner2 = [templateElement documentBanner];
    background4 = [documentBanner2 background];
    [v5 addObject:background4];
  }

  [(VideosExtrasTemplateViewController *)self configureBackgroundWithElements:v5];
  if (carouselViewController)
  {
    title = 0;
  }

  else
  {
    title = [(VideosExtrasShowcaseTemplateViewController *)self title];
  }

  documentBanner3 = [templateElement documentBanner];
  [(VideosExtrasElementViewController *)self _configureBannerWithElement:documentBanner3];

  if (!carouselViewController)
  {
    navigationItem = [(VideosExtrasShowcaseTemplateViewController *)self navigationItem];
    title2 = [(VideosExtrasShowcaseTemplateViewController *)self title];
    [navigationItem setBackButtonTitle:title2];

    [(VideosExtrasShowcaseTemplateViewController *)self setTitle:title];
  }

  view = [carouselViewController view];
  if (!view)
  {
    imageBrowserViewController = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
    view = [imageBrowserViewController view];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [view setBackgroundColor:clearColor];
  }

  view2 = [(VideosExtrasShowcaseTemplateViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [view2 addSubview:view];
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = MEMORY[0x1E696ACD8];
  if (carouselViewController)
  {
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    v23 = [v21 constraintWithItem:view attribute:3 relatedBy:0 toItem:safeAreaLayoutGuide attribute:3 multiplier:1.0 constant:0.0];
    [v20 addObject:v23];

    v24 = MEMORY[0x1E696ACD8];
    v25 = *MEMORY[0x1E69DDCE0];
    v26 = *(MEMORY[0x1E69DDCE0] + 8);
    v27 = *(MEMORY[0x1E69DDCE0] + 16);
    v28 = *(MEMORY[0x1E69DDCE0] + 24);
    v29 = view;
    v30 = view2;
    v31 = 14;
  }

  else
  {
    v25 = *MEMORY[0x1E69DDCE0];
    v26 = *(MEMORY[0x1E69DDCE0] + 8);
    v27 = *(MEMORY[0x1E69DDCE0] + 16);
    v28 = *(MEMORY[0x1E69DDCE0] + 24);
    v24 = MEMORY[0x1E696ACD8];
    v29 = view;
    v30 = view2;
    v31 = 15;
  }

  v32 = [v24 constraintsByAttachingView:v29 toView:v30 alongEdges:v31 insets:{v25, v26, v27, v28}];
  [v20 addObjectsFromArray:v32];

  [view2 addConstraints:v20];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v4 viewDidDisappear:disappear];
  [(VideosExtrasShowcaseTemplateViewController *)self setActiveZoomingImageInteractiveTransitionController:0];
  [(VideosExtrasShowcaseTemplateViewController *)self setOverriddenFullscreenImages:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasElementViewController *)&v12 viewWillAppear:appear];
  imageBrowserViewController = 1104;
  if (self->_autohighlightIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    carouselViewController = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];

    if (carouselViewController)
    {
      carouselViewController2 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
      [carouselViewController2 setIndexOfVisibleItem:self->_autohighlightIndex];
    }

    else
    {
      carouselViewController2 = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
      [carouselViewController2 setVisibleImageIndex:self->_autohighlightIndex];
    }

    self->_autohighlightIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  carouselViewController3 = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  if (carouselViewController3)
  {
    v8 = 0;
  }

  else
  {
    imageBrowserViewController = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
    v8 = imageBrowserViewController != 0;
  }

  context = [(VideosExtrasTemplateViewController *)self context];
  extrasRootViewController = [context extrasRootViewController];
  mainMenuBar = [extrasRootViewController mainMenuBar];
  [mainMenuBar setHidden:v8];

  if (!carouselViewController3)
  {
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v6 viewDidAppear:appear];
  carouselViewController = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];

  if (carouselViewController)
  {
    imageBrowserViewController = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
    [imageBrowserViewController setDataSource:0];
    [imageBrowserViewController setZoomingImageInteractiveTransitionSource:0];
    [(VideosExtrasShowcaseTemplateViewController *)self setImageBrowserViewController:0];
  }

  [(VideosExtrasShowcaseTemplateViewController *)self setActiveZoomingImageInteractiveTransitionController:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasShowcaseTemplateViewController *)&v7 viewWillDisappear:disappear];
  context = [(VideosExtrasTemplateViewController *)self context];
  extrasRootViewController = [context extrasRootViewController];
  mainMenuBar = [extrasRootViewController mainMenuBar];
  [mainMenuBar setHidden:0];
}

- (IKShowcaseTemplate)templateElement
{
  document = [(VideosExtrasTemplateViewController *)self document];
  templateElement = [document templateElement];

  return templateElement;
}

- (void)_prepareLayout
{
  v4.receiver = self;
  v4.super_class = VideosExtrasShowcaseTemplateViewController;
  [(VideosExtrasElementViewController *)&v4 _prepareLayout];
  backgroundViewController = [(VideosExtrasElementViewController *)self backgroundViewController];
  [backgroundViewController setVignetteType:3];
}

- (unint64_t)numberOfItemsInCarouselViewController:(id)controller
{
  carouselLockupElements = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
  v4 = [carouselLockupElements count];

  return v4;
}

- (void)carouselViewController:(id)controller configureCarouselCollectionViewCell:(id)cell forItemAtIndex:(unint64_t)index withThumbnailImageContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v109[2] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  selfCopy = self;
  carouselLockupElements = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
  indexCopy = index;
  v95 = [carouselLockupElements objectAtIndex:index];

  titleTextStyle = [cellCopy titleTextStyle];
  v11 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:?];
  v107 = *MEMORY[0x1E69DB650];
  v12 = v107;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v109[0] = whiteColor;
  v108 = *MEMORY[0x1E69DB648];
  v14 = v108;
  v92 = v11;
  v15 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];
  v109[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:&v107 count:2];

  subtitleTextStyle = [cellCopy subtitleTextStyle];
  v17 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:?];
  v105[0] = v12;
  v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
  v105[1] = v14;
  v106[0] = v18;
  v89 = v17;
  v19 = [MEMORY[0x1E69DB878] fontWithDescriptor:v17 size:0.0];
  v106[1] = v19;
  v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];

  descriptionTextStyle = [cellCopy descriptionTextStyle];
  v20 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:?];
  v103[0] = v12;
  v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.6 alpha:1.0];
  v103[1] = v14;
  v104[0] = v21;
  v87 = v20;
  v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v20 size:0.0];
  v104[1] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:2];

  title = [v95 title];
  if (title)
  {
    v25 = objc_alloc(MEMORY[0x1E696AD40]);
    text = [title text];
    string = [text string];
    v28 = [v25 initWithString:string attributes:v16];

    textAttributes = [title textAttributes];
    [v28 addAttributes:textAttributes range:{0, objc_msgSend(v28, "length")}];
    [cellCopy setTitleText:v28];
  }

  v91 = v16;
  subtitle = [v95 subtitle];
  if (subtitle)
  {
    v31 = objc_alloc(MEMORY[0x1E696AD40]);
    text2 = [subtitle text];
    string2 = [text2 string];
    v34 = [v31 initWithString:string2 attributes:v94];

    textAttributes2 = [subtitle textAttributes];
    [v34 addAttributes:textAttributes2 range:{0, objc_msgSend(v34, "length")}];
    [cellCopy setSubtitleText:v34];
  }

  descriptionText = [v95 descriptionText];
  if (descriptionText)
  {
    v37 = objc_alloc(MEMORY[0x1E696AD40]);
    text3 = [descriptionText text];
    string3 = [text3 string];
    v40 = [v37 initWithString:string3 attributes:v23];

    textAttributes3 = [descriptionText textAttributes];
    [v40 addAttributes:textAttributes3 range:{0, objc_msgSend(v40, "length")}];
    [cellCopy setDescriptionText:v40];
  }

  v86 = title;
  overlays = [v95 overlays];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  children = [overlays children];
  v44 = [children countByEnumeratingWithState:&v98 objects:v102 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = subtitle;
    v47 = v23;
    v48 = overlays;
    v49 = *v99;
    while (2)
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v99 != v49)
        {
          objc_enumerationMutation(children);
        }

        v51 = *(*(&v98 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          resourceImage = [v51 resourceImage];
          goto LABEL_17;
        }
      }

      v45 = [children countByEnumeratingWithState:&v98 objects:v102 count:16];
      if (v45)
      {
        continue;
      }

      break;
    }

    resourceImage = 0;
LABEL_17:
    overlays = v48;
    v23 = v47;
    subtitle = v46;
  }

  else
  {
    resourceImage = 0;
  }

  [cellCopy setAllowsPinchingThumbnailImageForInteractiveZoomingImageTransition:{-[VideosExtrasShowcaseTemplateViewController supportsOneupMode](selfCopy, "supportsOneupMode")}];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    image = [v95 image];
    v56 = MEMORY[0x1E69DCAB8];
    placeholderURL = [image placeholderURL];
    v58 = [v56 imageForPlaceholderURL:placeholderURL];
    [cellCopy setThumbnailImagePlaceholder:v58];

    accessibilityText = [image accessibilityText];
    [cellCopy setThumbnailImageAccessibilityText:accessibilityText];

    borderColor = [image borderColor];
    v61 = borderColor;
    if (borderColor)
    {
      placeholderURL2 = borderColor;
    }

    else
    {
      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      placeholderURL2 = [whiteColor2 colorWithAlphaComponent:0.2];
    }

    v67 = v91;

    [cellCopy setThumbnailBorderColor:placeholderURL2];
    if (resourceImage)
    {
      [cellCopy setThumbnailOverlayImage:resourceImage];
    }

    artworkCatalog = [image artworkCatalog];
    [artworkCatalog setFittingSize:{width, height}];
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __152__VideosExtrasShowcaseTemplateViewController_carouselViewController_configureCarouselCollectionViewCell_forItemAtIndex_withThumbnailImageContainerSize___block_invoke_2;
    v97[3] = &__block_descriptor_40_e60_v24__0__VideosExtrasCarouselCollectionViewCell_8__UIImage_16l;
    v97[4] = indexCopy;
    [artworkCatalog setDestination:cellCopy configurationBlock:v97];
LABEL_44:

    goto LABEL_45;
  }

  extrasSize = [(VideosExtrasElementViewController *)selfCopy extrasSize];
  v64 = 175.0;
  if (extrasSize)
  {
    if (extrasSize == 2)
    {
      v64 = 220.0;
      v65 = 300.0;
    }

    else if (extrasSize == 1)
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

  [cellCopy setThumbnailMaxSize:{v65, v64}];
  image2 = [v95 image];
  image = image2;
  if (image2)
  {
    v81 = overlays;
    placeholderURL2 = [image2 placeholderURL];
    artworkCatalog = [MEMORY[0x1E69DCAB8] imageForPlaceholderURL:placeholderURL2];
    [cellCopy setThumbnailImagePlaceholder:artworkCatalog];
    borderColor2 = [image borderColor];
    v71 = borderColor2;
    v84 = subtitle;
    if (borderColor2)
    {
      v72 = borderColor2;
    }

    else
    {
      whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
      v72 = [whiteColor3 colorWithAlphaComponent:0.2];
    }

    v82 = descriptionText;

    [cellCopy setThumbnailBorderColor:v72];
    if (resourceImage)
    {
      [cellCopy setThumbnailOverlayImage:resourceImage];
    }

    artworkCatalog2 = [image artworkCatalog];
    [artworkCatalog2 setFittingSize:{v65, v64}];
    view = [(VideosExtrasShowcaseTemplateViewController *)selfCopy view];
    window = [view window];
    screen = [window screen];
    [screen scale];
    v79 = v78;

    if (v79 == 0.0)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      [artworkCatalog2 setDestinationScale:?];
    }

    else
    {
      [artworkCatalog2 setDestinationScale:v79];
    }

    v67 = v91;
    descriptionText = v82;
    subtitle = v84;
    [artworkCatalog2 setDestination:cellCopy configurationBlock:&__block_literal_global_128];

    overlays = v81;
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

- (void)carouselViewController:(id)controller didHighlightItemAtIndex:(unint64_t)index
{
  carouselLockupElements = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
  v6 = [carouselLockupElements objectAtIndex:index];

  [v6 dispatchEventOfType:4 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
}

- (void)carouselViewController:(id)controller didSelectItemAtIndex:(unint64_t)index completionHandler:(id)handler
{
  handlerCopy = handler;
  carouselLockupElements = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
  v9 = [carouselLockupElements objectAtIndex:index];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108__VideosExtrasShowcaseTemplateViewController_carouselViewController_didSelectItemAtIndex_completionHandler___block_invoke;
  v11[3] = &unk_1E8735338;
  v11[4] = self;
  v12 = handlerCopy;
  indexCopy = index;
  v10 = handlerCopy;
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

- (unint64_t)numberOfImagesForBrowserViewController:(id)controller
{
  carouselLockupElements = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
  v4 = [carouselLockupElements count];

  return v4;
}

- (void)imageBrowserViewController:(id)controller loadImageAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  overriddenFullscreenImages = [(VideosExtrasShowcaseTemplateViewController *)self overriddenFullscreenImages];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v12 = [overriddenFullscreenImages objectForKey:v11];

  if (v12)
  {
    handlerCopy[2](handlerCopy, v12);
  }

  else
  {
    carouselLockupElements = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
    v14 = [carouselLockupElements objectAtIndex:index];

    image = [v14 image];
    view = [controllerCopy view];
    [view bounds];
    v18 = v17;
    v20 = v19;
    artworkCatalog = [image artworkCatalog];
    [artworkCatalog setFittingSize:{v18, v20}];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __112__VideosExtrasShowcaseTemplateViewController_imageBrowserViewController_loadImageAtIndex_withCompletionHandler___block_invoke;
    v22[3] = &unk_1E8735360;
    v23 = handlerCopy;
    [artworkCatalog requestImageWithCompletion:v22];
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

- (void)imageBrowserViewController:(id)controller loadTitleAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  v16[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(VideosExtrasElementViewController *)self isWide])
  {
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v15[0] = *MEMORY[0x1E69DB650];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v16[0] = whiteColor;
    v15[1] = *MEMORY[0x1E69DB648];
    v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    carouselLockupElements = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
    v13 = [carouselLockupElements objectAtIndex:index];

    title = [v13 title];
    [(VideosExtrasShowcaseTemplateViewController *)self _loadTextElement:title textAttributes:v11 withCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)imageBrowserViewController:(id)controller loadSubtitleAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  v16[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
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

    carouselLockupElements = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
    v13 = [carouselLockupElements objectAtIndex:index];

    subtitle = [v13 subtitle];
    [(VideosExtrasShowcaseTemplateViewController *)self _loadTextElement:subtitle textAttributes:v11 withCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)imageBrowserViewController:(id)controller loadDescriptionAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  v16[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
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

    carouselLockupElements = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
    v13 = [carouselLockupElements objectAtIndex:index];

    descriptionText = [v13 descriptionText];
    [(VideosExtrasShowcaseTemplateViewController *)self _loadTextElement:descriptionText textAttributes:v11 withCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)animationControllerForNavigationOperation:(int64_t)operation fromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v10 = viewControllerCopy;
  v11 = operation == 1 && controllerCopy == self;
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
  if (operation == 2 && viewControllerCopy == self)
  {
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    v14 = controllerCopy;
    if (v24)
    {
LABEL_17:
      v22 = v14;
      if (v22)
      {
        activeZoomingImageInteractiveTransitionController = [(VideosExtrasShowcaseTemplateViewController *)self activeZoomingImageInteractiveTransitionController];
        if (activeZoomingImageInteractiveTransitionController)
        {
          v23 = activeZoomingImageInteractiveTransitionController;
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
    v16 = controllerCopy;
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

    slideshowViewController = [(VideosExtrasShowcaseTemplateViewController *)v17 slideshowViewController];
    v20 = slideshowViewController;
    if (operation == 1)
    {
      indexOfVisibleItem = [(VideosExtrasShowcaseTemplateViewController *)self indexOfVisibleItem];
    }

    else
    {
      indexOfVisibleItem = [slideshowViewController visibleImageIndex];
    }

    v27 = indexOfVisibleItem;
    carouselLockupElements = [(VideosExtrasShowcaseTemplateViewController *)self carouselLockupElements];
    if (v27 >= [carouselLockupElements count])
    {
      v23 = 0;
LABEL_38:

      v22 = 0;
      goto LABEL_39;
    }

    v29 = [carouselLockupElements objectAtIndex:v27];
    image = [v29 image];
    if ([(VideosExtrasShowcaseTemplateViewController *)v18 shouldPerformZoomingImageTransitionFromImageElement:image toImageAtIndex:v27])
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

    if (operation == 1)
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

- (void)handlePinchGestureForZoomingImageInteractiveTransitionWithContext:(id)context
{
  contextCopy = context;
  pinchGestureRecognizer = [contextCopy pinchGestureRecognizer];
  state = [pinchGestureRecognizer state];
  if ((state - 3) < 2)
  {
    activeZoomingImageInteractiveTransitionController = [(VideosExtrasShowcaseTemplateViewController *)self activeZoomingImageInteractiveTransitionController];
    [(VideosExtrasZoomingImageTransitionController *)activeZoomingImageInteractiveTransitionController completeInteractiveTransitionWithPinchGestureRecognizer:pinchGestureRecognizer];
LABEL_12:

    goto LABEL_13;
  }

  if (state == 2)
  {
    activeZoomingImageInteractiveTransitionController = [(VideosExtrasShowcaseTemplateViewController *)self activeZoomingImageInteractiveTransitionController];
    [(VideosExtrasZoomingImageTransitionController *)activeZoomingImageInteractiveTransitionController updateInteractiveTransitionWithPinchGestureRecognizer:pinchGestureRecognizer];
    goto LABEL_12;
  }

  if (state == 1)
  {
    supportedZoomingImageTransitionDirections = [contextCopy supportedZoomingImageTransitionDirections];
    [pinchGestureRecognizer velocity];
    if (v7 >= 0.0 && (supportedZoomingImageTransitionDirections & 1) != 0 || (v8 = 0, v9 = 0, v7 < 0.0) && (supportedZoomingImageTransitionDirections & 2) != 0)
    {
      identifier = [contextCopy identifier];
      v9 = [identifier isEqualToString:@"VideosExtrasCarouselZoomingImageTransitionIdentifier"];
      if (v9)
      {
        v8 = 0;
      }

      else
      {
        v8 = [identifier isEqualToString:@"VideosExtrasImageBrowserZoomingImageTransitionIdentifier"];
      }
    }

    if ((v8 & 1) != 0 || v9)
    {
      itemIndex = [contextCopy itemIndex];
      activeZoomingImageInteractiveTransitionController = [[VideosExtrasZoomingImageTransitionController alloc] initWithItemIndex:itemIndex forInteractiveTransition:1];
      [(VideosExtrasShowcaseTemplateViewController *)self setActiveZoomingImageInteractiveTransitionController:activeZoomingImageInteractiveTransitionController];
      [(VideosExtrasZoomingImageTransitionController *)activeZoomingImageInteractiveTransitionController prepareInteractiveTransitionWithPinchGestureRecognizer:pinchGestureRecognizer];
      if (v9)
      {
        [(VideosExtrasShowcaseTemplateViewController *)self _pushImageBrowserWithVisibleItemIndex:itemIndex];
      }

      else
      {
        navigationController = [(VideosExtrasShowcaseTemplateViewController *)self navigationController];
        v14 = [navigationController popViewControllerAnimated:1];
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)prepareZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  appearState = [contextCopy appearState];
  if (appearState == 1)
  {
    v8 = 0.0;
  }

  else
  {
    if (appearState)
    {
      goto LABEL_6;
    }

    backgroundViewController = [(VideosExtrasElementViewController *)self backgroundViewController];
    view = [backgroundViewController view];
    [view setAlpha:0.0];

    v8 = 1.0;
  }

  context = [(VideosExtrasTemplateViewController *)self context];
  extrasRootViewController = [context extrasRootViewController];
  mainTemplateViewController = [extrasRootViewController mainTemplateViewController];
  menuBarView = [mainTemplateViewController menuBarView];
  [menuBarView setAlpha:v8];

LABEL_6:
  _mainChildViewController = [(VideosExtrasShowcaseTemplateViewController *)self _mainChildViewController];
  [_mainChildViewController prepareZoomingImageTransitionWithContext:contextCopy];
}

- (void)performZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  appearState = [contextCopy appearState];
  if (appearState)
  {
    if (appearState != 1)
    {
      goto LABEL_6;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  backgroundViewController = [(VideosExtrasElementViewController *)self backgroundViewController];
  view = [backgroundViewController view];
  [view setAlpha:v6];

  context = [(VideosExtrasTemplateViewController *)self context];
  extrasRootViewController = [context extrasRootViewController];
  mainTemplateViewController = [extrasRootViewController mainTemplateViewController];
  menuBarView = [mainTemplateViewController menuBarView];
  [menuBarView setAlpha:v6];

LABEL_6:
  _mainChildViewController = [(VideosExtrasShowcaseTemplateViewController *)self _mainChildViewController];
  [_mainChildViewController performZoomingImageTransitionWithContext:contextCopy];
}

- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished
{
  finishedCopy = finished;
  contextCopy = context;
  appearState = [contextCopy appearState];
  if (appearState)
  {
    if (appearState != 1)
    {
      goto LABEL_12;
    }

    if (finishedCopy)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    context = [(VideosExtrasTemplateViewController *)self context];
    extrasRootViewController = [context extrasRootViewController];
    mainTemplateViewController = [extrasRootViewController mainTemplateViewController];
    menuBarView = [mainTemplateViewController menuBarView];
    [menuBarView setAlpha:v8];

    backgroundViewController = [(VideosExtrasElementViewController *)self backgroundViewController];
    view = [backgroundViewController view];
    [view setAlpha:1.0];
  }

  else
  {
    if (finishedCopy)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    backgroundViewController = [(VideosExtrasTemplateViewController *)self context];
    view = [backgroundViewController extrasRootViewController];
    mainTemplateViewController2 = [view mainTemplateViewController];
    menuBarView2 = [mainTemplateViewController2 menuBarView];
    [menuBarView2 setAlpha:v15];
  }

LABEL_12:
  _mainChildViewController = [(VideosExtrasShowcaseTemplateViewController *)self _mainChildViewController];
  [_mainChildViewController finalizeZoomingImageTransitionWithContext:contextCopy transitionFinished:finishedCopy];
}

- (unint64_t)indexOfVisibleItem
{
  carouselViewController = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  v4 = carouselViewController;
  if (carouselViewController)
  {
    indexOfVisibleItem = [carouselViewController indexOfVisibleItem];
  }

  else
  {
    imageBrowserViewController = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
    v7 = imageBrowserViewController;
    if (imageBrowserViewController)
    {
      indexOfVisibleItem = [imageBrowserViewController visibleImageIndex];
    }

    else
    {
      indexOfVisibleItem = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return indexOfVisibleItem;
}

- (void)_loadTextElement:(id)element textAttributes:(id)attributes withCompletionHandler:(id)handler
{
  elementCopy = element;
  attributesCopy = attributes;
  if (elementCopy)
  {
    v8 = MEMORY[0x1E696AD40];
    handlerCopy = handler;
    v10 = [v8 alloc];
    text = [elementCopy text];
    string = [text string];
    handlerCopy2 = [v10 initWithString:string attributes:attributesCopy];

    textAttributes = [elementCopy textAttributes];
    [handlerCopy2 addAttributes:textAttributes range:{0, objc_msgSend(handlerCopy2, "length")}];
    handlerCopy[2](handlerCopy, handlerCopy2);
  }

  else
  {
    v15 = *(handler + 2);
    handlerCopy2 = handler;
    v15();
  }
}

- (id)_mainChildViewController
{
  carouselViewController = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  v4 = carouselViewController;
  if (carouselViewController)
  {
    imageBrowserViewController = carouselViewController;
  }

  else
  {
    imageBrowserViewController = [(VideosExtrasShowcaseTemplateViewController *)self imageBrowserViewController];
  }

  v6 = imageBrowserViewController;

  return v6;
}

- (void)_pushImageBrowserWithVisibleItemIndex:(unint64_t)index
{
  v13[1] = *MEMORY[0x1E69E9840];
  carouselViewController = [(VideosExtrasShowcaseTemplateViewController *)self carouselViewController];
  v6 = [carouselViewController carouselCollectionViewCellForItemAtIndex:index];

  thumbnailImage = [v6 thumbnailImage];
  if (thumbnailImage)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    v12 = v8;
    v13[0] = thumbnailImage;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(VideosExtrasShowcaseTemplateViewController *)self setOverriddenFullscreenImages:v9];
  }

  v10 = objc_alloc_init(VideosExtrasImageBrowserViewController);
  [(VideosExtrasImageBrowserViewController *)v10 setDataSource:self];
  [(VideosExtrasImageBrowserViewController *)v10 setVisibleImageIndex:index];
  [(VideosExtrasImageBrowserViewController *)v10 setAllowsPinchingImageForInteractiveZoomingImageTransition:1];
  [(VideosExtrasImageBrowserViewController *)v10 setZoomingImageInteractiveTransitionSource:self];
  [(VideosExtrasShowcaseTemplateViewController *)self setImageBrowserViewController:v10];
  navigationController = [(VideosExtrasShowcaseTemplateViewController *)self navigationController];
  [navigationController pushViewController:v10 animated:1];
}

@end