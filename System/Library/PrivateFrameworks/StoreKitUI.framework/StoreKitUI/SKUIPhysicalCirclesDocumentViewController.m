@interface SKUIPhysicalCirclesDocumentViewController
- (SKUIPhysicalCirclesDocumentViewController)initWithPhysicalCirclesTemplateViewElement:(id)a3;
- (id)_affiliationItemsWithCircleItemElements:(id)a3;
- (id)_leftFooterButtonElement;
- (id)_profileImageElement;
- (id)_rightFooterButtonElement;
- (void)_footerLeftButtonAction:(id)a3;
- (void)_footerRightButtonAction:(id)a3;
- (void)_loadImagesWithReason:(int64_t)a3;
- (void)_reloadFooterViewAnimated:(BOOL)a3;
- (void)_reloadInstructionsView;
- (void)_styleAttributedString:(id)a3 withStyle:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)loadView;
- (void)onboardingCircles:(id)a3 didRemoveAffiliationItem:(id)a4;
- (void)onboardingCircles:(id)a3 didSelectAffiliationItem:(id)a4 atIndex:(int64_t)a5;
- (void)physicalCirclesDOMFeature:(id)a3 didRequestAnimation:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SKUIPhysicalCirclesDocumentViewController

- (SKUIPhysicalCirclesDocumentViewController)initWithPhysicalCirclesTemplateViewElement:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPhysicalCirclesDocumentViewController initWithPhysicalCirclesTemplateViewElement:];
  }

  v10.receiver = self;
  v10.super_class = SKUIPhysicalCirclesDocumentViewController;
  v6 = [(SKUIPhysicalCirclesDocumentViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, a3);
    v8 = [(SKUIPhysicalCirclesTemplateViewElement *)v7->_templateElement scriptInterface];
    [v8 setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer delegate];

  if (v3 == self)
  {
    [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer setDelegate:0];
  }

  [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController setDelegate:0];
  v4 = [(SKUIOnboardingFooterView *)self->_footerView leftButton];
  [v4 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v5 = [(SKUIOnboardingFooterView *)self->_footerView rightButton];
  [v5 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v6 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement scriptInterface];
  [v6 setDelegate:0];

  v7.receiver = self;
  v7.super_class = SKUIPhysicalCirclesDocumentViewController;
  [(SKUIViewController *)&v7 dealloc];
}

- (void)loadView
{
  v24 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement style];
  v4 = [v3 ikBackgroundColor];
  v5 = [v4 color];

  if (!v5)
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
  }

  [v24 setBackgroundColor:v5];
  [(SKUIPhysicalCirclesDocumentViewController *)self setView:v24];
  if (!self->_circlesViewController)
  {
    v6 = objc_alloc_init(SKUIOnboardingAffiliationCirclesViewController);
    circlesViewController = self->_circlesViewController;
    self->_circlesViewController = v6;

    v8 = self->_circlesViewController;
    v9 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement circleItemElements];
    v10 = [(SKUIPhysicalCirclesDocumentViewController *)self _affiliationItemsWithCircleItemElements:v9];
    [(SKUIOnboardingAffiliationCirclesViewController *)v8 setAffiliationItems:v10];

    v11 = self->_circlesViewController;
    v12 = [(SKUIViewController *)self clientContext];
    [(SKUIOnboardingAffiliationCirclesViewController *)v11 setClientContext:v12];

    [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController setDelegate:self];
    [(SKUIPhysicalCirclesDocumentViewController *)self addChildViewController:self->_circlesViewController];
    [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController didMoveToParentViewController:self];
  }

  if (!self->_footerView)
  {
    v13 = objc_alloc_init(SKUIOnboardingFooterView);
    footerView = self->_footerView;
    self->_footerView = v13;

    v15 = self->_footerView;
    v16 = [MEMORY[0x277D75348] clearColor];
    [(SKUIOnboardingFooterView *)v15 setBackgroundColor:v16];

    v17 = [(SKUIOnboardingFooterView *)self->_footerView leftButton];
    [v17 addTarget:self action:sel__footerLeftButtonAction_ forControlEvents:64];

    v18 = [(SKUIOnboardingFooterView *)self->_footerView rightButton];
    [v18 addTarget:self action:sel__footerRightButtonAction_ forControlEvents:64];

    [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController setFooterView:self->_footerView];
  }

  if (!self->_progressView)
  {
    v19 = objc_alloc_init(SKUIOnboardingProgressView);
    progressView = self->_progressView;
    self->_progressView = v19;

    v21 = self->_progressView;
    v22 = [MEMORY[0x277D75348] clearColor];
    [(SKUIOnboardingProgressView *)v21 setBackgroundColor:v22];

    [(SKUIOnboardingProgressView *)self->_progressView setFillColor:v5];
    [(SKUIOnboardingProgressView *)self->_progressView sizeToFit];
    [(SKUIOnboardingFooterView *)self->_footerView setProgressView:self->_progressView];
  }

  [(SKUIPhysicalCirclesDocumentViewController *)self _reloadFooterViewAnimated:0];
  [(SKUIPhysicalCirclesDocumentViewController *)self _reloadInstructionsView];
  v23 = [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController view];
  [v23 setAutoresizingMask:18];
  [v24 bounds];
  [v23 setFrame:?];
  [v24 addSubview:v23];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(SKUIResourceLoader *)self->_resourceLoader enterForeground];
  if (!self->_resourceLoader)
  {
    [(SKUIPhysicalCirclesDocumentViewController *)self _loadImagesWithReason:0];
  }

  v5 = [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer delegate];

  if (v5 == self)
  {
    [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer setDelegate:0];
  }

  v6 = [(SKUIPhysicalCirclesDocumentViewController *)self navigationController];
  v7 = [v6 interactivePopGestureRecognizer];
  interactivePopGestureRecognizer = self->_interactivePopGestureRecognizer;
  self->_interactivePopGestureRecognizer = v7;

  v9 = self->_interactivePopGestureRecognizer;
  if (v9)
  {
    [(UIGestureRecognizer *)v9 setDelegate:self];
  }

  v10.receiver = self;
  v10.super_class = SKUIPhysicalCirclesDocumentViewController;
  [(SKUIPhysicalCirclesDocumentViewController *)&v10 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer delegate];

  if (v5 == self)
  {
    [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer setDelegate:0];
  }

  interactivePopGestureRecognizer = self->_interactivePopGestureRecognizer;
  self->_interactivePopGestureRecognizer = 0;

  v7.receiver = self;
  v7.super_class = SKUIPhysicalCirclesDocumentViewController;
  [(SKUIPhysicalCirclesDocumentViewController *)&v7 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIPhysicalCirclesDocumentViewController;
  [(SKUIPhysicalCirclesDocumentViewController *)&v4 viewDidDisappear:a3];
  [(SKUIResourceLoader *)self->_resourceLoader enterBackground];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(SKUIPhysicalCirclesDocumentViewController *)self topLayoutGuide];
  [v3 length];
  v5 = v4;

  v6 = [(SKUIPhysicalCirclesDocumentViewController *)self bottomLayoutGuide];
  [v6 length];
  v8 = v7;

  v9 = [(SKUIPhysicalCirclesDocumentViewController *)self view];
  [v9 bounds];
  v10 = CGRectGetHeight(v15) - v5 - v8;

  v11 = [(SKUIPhysicalCirclesDocumentViewController *)self view];
  [v11 bounds];
  Width = CGRectGetWidth(v16);

  v13 = [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController view];
  [v13 setFrame:{0.0, v5, Width, v10}];

  v14.receiver = self;
  v14.super_class = SKUIPhysicalCirclesDocumentViewController;
  [(SKUIPhysicalCirclesDocumentViewController *)&v14 viewDidLayoutSubviews];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = [v8 requestIdentifier];

  v11 = [v9 initWithUnsignedLongLong:v10];
  v12 = [(SKUIPhysicalCirclesDocumentViewController *)self _profileImageElement];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_5;
  }

  imageRequests = self->_imageRequests;
  v15 = [v12 resourceCacheKey];
  v16 = [(NSMapTable *)imageRequests objectForKey:v15];

  if (![v16 isEqualToNumber:v11])
  {

LABEL_5:
    v17 = [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController affiliationItems];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__SKUIPhysicalCirclesDocumentViewController_artworkRequest_didLoadImage___block_invoke;
    v18[3] = &unk_2781F8478;
    v18[4] = self;
    v19 = v11;
    v20 = v6;
    [v17 enumerateObjectsUsingBlock:v18];

    goto LABEL_6;
  }

  [(SKUIOnboardingProgressView *)self->_progressView setImage:v6];

LABEL_6:
}

void __73__SKUIPhysicalCirclesDocumentViewController_artworkRequest_didLoadImage___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1[4] + 1080);
  v10 = v6;
  v8 = [v6 identifier];
  v9 = [v7 objectForKey:v8];

  if ([v9 isEqualToNumber:a1[5]])
  {
    [*(a1[4] + 1064) setImage:a1[6] forAffiliationItem:v10];
    *a4 = 1;
  }
}

- (void)documentDidUpdate:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v6 = [v4 templateElement];

  templateElement = self->_templateElement;
  if (templateElement != v6)
  {
    v8 = [(SKUIPhysicalCirclesTemplateViewElement *)templateElement scriptInterface];
    [v8 setDelegate:0];

    objc_storeStrong(&self->_templateElement, v6);
    v9 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement scriptInterface];
    [v9 setDelegate:self];
  }

  [(SKUIPhysicalCirclesDocumentViewController *)self _reloadFooterViewAnimated:1];
  [(SKUIPhysicalCirclesDocumentViewController *)self _reloadInstructionsView];
  v10 = [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController affiliationItems];
  v11 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement circleItemElements];
  v12 = [(SKUIPhysicalCirclesDocumentViewController *)self _affiliationItemsWithCircleItemElements:v11];

  v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__SKUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke;
  v26[3] = &unk_2781F84C8;
  v14 = v12;
  v27 = v14;
  v15 = v13;
  v28 = v15;
  v16 = v5;
  v29 = v16;
  v30 = self;
  [v10 enumerateObjectsUsingBlock:v26];
  if ([v15 count])
  {
    dispatch_group_enter(v16);
    circlesViewController = self->_circlesViewController;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__SKUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke_3;
    v24[3] = &unk_2781F84A0;
    v25 = v16;
    [(SKUIOnboardingAffiliationCirclesViewController *)circlesViewController removeAffiliationItemsInIndexSet:v15 animated:1 completionBlock:v24];
  }

  if ([v14 count])
  {
    [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController addAffiliationItems:v14];
  }

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __63__SKUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke_4;
  v22 = &unk_2781F80F0;
  v23 = v6;
  v18 = v6;
  dispatch_group_notify(v16, MEMORY[0x277D85CD0], &v19);
  [(SKUIPhysicalCirclesDocumentViewController *)self _loadImagesWithReason:0, v19, v20, v21, v22];
}

void __63__SKUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) indexOfObject:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addIndex:a3];
  }

  else
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectAtIndex:v6];
    v9 = [v5 userAffinityCount];
    if (v9 != [v8 userAffinityCount])
    {
      dispatch_group_enter(*(a1 + 48));
      v10 = *(*(a1 + 56) + 1064);
      v11 = [v8 userAffinityCount];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __63__SKUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke_2;
      v12[3] = &unk_2781F84A0;
      v13 = *(a1 + 48);
      [v10 setUserAffinityCount:v11 forAffiliationItemAtIndex:a3 animated:1 completionBlock:v12];
    }

    [*(a1 + 32) removeObjectAtIndex:v7];
  }
}

void __63__SKUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) scriptInterface];
  [v1 finishDOMUpdates];
}

- (void)onboardingCircles:(id)a3 didRemoveAffiliationItem:(id)a4
{
  v5 = [a4 identifier];
  v6 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement circleItemElements];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__SKUIPhysicalCirclesDocumentViewController_onboardingCircles_didRemoveAffiliationItem___block_invoke;
  v8[3] = &unk_2781F84F0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __88__SKUIPhysicalCirclesDocumentViewController_onboardingCircles_didRemoveAffiliationItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 itemIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    [*(*(a1 + 40) + 1112) dispatchRemovedEventWithChildViewElement:v8];
    *a4 = 1;
  }
}

- (void)onboardingCircles:(id)a3 didSelectAffiliationItem:(id)a4 atIndex:(int64_t)a5
{
  v6 = [a4 identifier];
  v7 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement circleItemElements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__SKUIPhysicalCirclesDocumentViewController_onboardingCircles_didSelectAffiliationItem_atIndex___block_invoke;
  v9[3] = &unk_2781F8518;
  v10 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __96__SKUIPhysicalCirclesDocumentViewController_onboardingCircles_didSelectAffiliationItem_atIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 itemIdentifier];
  LODWORD(a1) = [v6 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    [v7 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    *a4 = 1;
  }
}

- (void)physicalCirclesDOMFeature:(id)a3 didRequestAnimation:(id)a4
{
  v5 = a4;
  v6 = [v5 animationType];
  if (v6 == 1)
  {
    circlesViewController = self->_circlesViewController;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __91__SKUIPhysicalCirclesDocumentViewController_physicalCirclesDOMFeature_didRequestAnimation___block_invoke_2;
    v10[3] = &unk_2781F84A0;
    v8 = &v11;
    v11 = v5;
    [(SKUIOnboardingAffiliationCirclesViewController *)circlesViewController resetWithAffiliationItems:0 animated:1 completionBlock:v10];
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = self->_circlesViewController;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91__SKUIPhysicalCirclesDocumentViewController_physicalCirclesDOMFeature_didRequestAnimation___block_invoke;
    v12[3] = &unk_2781F8540;
    v8 = &v13;
    v13 = v5;
    [(SKUIOnboardingAffiliationCirclesViewController *)v7 performFinishAnimationWithCompletionBlock:v12];
LABEL_5:
  }
}

- (void)_footerLeftButtonAction:(id)a3
{
  v3 = [(SKUIPhysicalCirclesDocumentViewController *)self _leftFooterButtonElement];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)_footerRightButtonAction:(id)a3
{
  v3 = [(SKUIPhysicalCirclesDocumentViewController *)self _rightFooterButtonElement];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (id)_affiliationItemsWithCircleItemElements:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__SKUIPhysicalCirclesDocumentViewController__affiliationItemsWithCircleItemElements___block_invoke;
  v8[3] = &unk_2781F8518;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __85__SKUIPhysicalCirclesDocumentViewController__affiliationItemsWithCircleItemElements___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [v17 circleSize];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v3;
    v5 = objc_alloc_init(SKUIOnboardingAffiliationItem);
    v6 = [v17 itemIdentifier];
    [(SKUIOnboardingAffiliationItem *)v5 setIdentifier:v6];

    v7 = [v17 titleElement];
    v8 = [v7 text];
    v9 = [v8 string];
    [(SKUIOnboardingAffiliationItem *)v5 setTitle:v9];

    [(SKUIOnboardingAffiliationItem *)v5 setUserAffinityCount:v4];
    v10 = [v17 imageElement];
    v11 = [v10 resourceName];
    if (v11)
    {
      [(SKUIOnboardingAffiliationItem *)v5 setImageName:v11];
    }

    else
    {
      v12 = [v10 URL];
      [(SKUIOnboardingAffiliationItem *)v5 setImageURL:v12];
    }

    v13 = [v17 style];
    v14 = [v13 ikColor];
    v15 = [v14 color];
    [(SKUIOnboardingAffiliationItem *)v5 setFillColor:v15];

    v16 = [v13 imageTreatment];
    [(SKUIOnboardingAffiliationItem *)v5 setImageTreatment:v16];

    [*(a1 + 32) addObject:v5];
  }
}

- (id)_leftFooterButtonElement
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v2 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement footerPaletteElement];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SKUIPhysicalCirclesDocumentViewController__leftFooterButtonElement__block_invoke;
  v5[3] = &unk_2781F8568;
  v5[4] = &v6;
  [v2 enumerateChildrenUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__SKUIPhysicalCirclesDocumentViewController__leftFooterButtonElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 12)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else if ([v6 elementType] != 95)
  {
    goto LABEL_5;
  }

  *a3 = 1;
LABEL_5:
}

- (void)_loadImagesWithReason:(int64_t)a3
{
  v55 = *MEMORY[0x277D85DE8];
  if (!self->_imageRequests)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    imageRequests = self->_imageRequests;
    self->_imageRequests = v4;
  }

  if (!self->_resourceLoader)
  {
    v6 = [SKUIResourceLoader alloc];
    v7 = [(SKUIViewController *)self operationQueue];
    v8 = [(SKUIViewController *)self clientContext];
    v9 = [(SKUIResourceLoader *)v6 initWithOperationQueue:v7 clientContext:v8];
    resourceLoader = self->_resourceLoader;
    self->_resourceLoader = v9;
  }

  v11 = [(SKUIPhysicalCirclesDocumentViewController *)self _profileImageElement];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 resourceCacheKey];
    v14 = [(NSMapTable *)self->_imageRequests objectForKey:v13];
    v15 = v14;
    if (!v14 || !-[SKUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_resourceLoader, "trySetReason:forRequestWithIdentifier:", a3, [v14 unsignedIntegerValue]))
    {
      v16 = objc_alloc_init(SKUIArtworkRequest);
      [(SKUIResourceRequest *)v16 setCacheKey:v13];
      [(SKUIArtworkRequest *)v16 setDelegate:self];
      v17 = [v12 URL];
      [(SKUIArtworkRequest *)v16 setURL:v17];

      v18 = [(SKUIPhysicalCirclesDocumentViewController *)self traitCollection];
      v19 = [v18 userInterfaceIdiom];

      if (v19 == 1)
      {
        v20 = 120.0;
      }

      else
      {
        v20 = 78.0;
      }

      v21 = objc_alloc_init(SKUIOnboardingCircleImageDataConsumer);
      [objc_opt_class() preferredImageSizeForViewSize:{v20, v20}];
      [(SKUIOnboardingCircleImageDataConsumer *)v21 setOutputSize:?];
      [(SKUIArtworkRequest *)v16 setDataConsumer:v21];
      v22 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[SKUIResourceRequest requestIdentifier](v16, "requestIdentifier")}];
      [(NSMapTable *)self->_imageRequests setObject:v22 forKey:v13];
      [(SKUIResourceLoader *)self->_resourceLoader loadResourceWithRequest:v16 reason:a3];
    }
  }

  v44 = v12;
  v23 = [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController affiliationItems];
  v24 = [(SKUIPhysicalCirclesDocumentViewController *)self view];
  v45 = [v24 tintColor];

  [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController maximumCircleDiameter];
  v26 = v25;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v23;
  v48 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v48)
  {
    v47 = *v51;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v51 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v50 + 1) + 8 * i);
        v29 = [v28 identifier];
        v30 = [(NSMapTable *)self->_imageRequests objectForKey:v29];
        v31 = v30;
        if (!v30 || !-[SKUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_resourceLoader, "trySetReason:forRequestWithIdentifier:", a3, [v30 unsignedIntegerValue]))
        {
          v32 = objc_alloc_init(SKUIArtworkRequest);
          [(SKUIArtworkRequest *)v32 setDelegate:self];
          v33 = [v28 imageName];
          if (v33)
          {
            [(SKUIArtworkRequest *)v32 setImageName:v33];
          }

          else
          {
            v34 = [v28 imageURL];
            [(SKUIArtworkRequest *)v32 setURL:v34];
          }

          v35 = objc_alloc_init(SKUIOnboardingCircleImageDataConsumer);
          [(SKUIOnboardingCircleImageDataConsumer *)v35 setOutputSize:v26, v26];
          v36 = [v28 imageTreatment];
          v37 = [v36 isEqualToString:0x282809088];

          if (v37)
          {
            v38 = [v28 fillColor];
            v39 = v38;
            if (v38)
            {
              v40 = v38;
            }

            else
            {
              v40 = v45;
            }

            [(SKUIOnboardingCircleImageDataConsumer *)v35 setTintColor:v40];

            [(SKUIOnboardingCircleImageDataConsumer *)v35 setUsesSaturationFilter:1];
          }

          [(SKUIArtworkRequest *)v32 setDataConsumer:v35];
          v41 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[SKUIResourceRequest requestIdentifier](v32, "requestIdentifier")}];
          v42 = self->_imageRequests;
          v43 = [v28 identifier];
          [(NSMapTable *)v42 setObject:v41 forKey:v43];

          [(SKUIResourceLoader *)self->_resourceLoader loadResourceWithRequest:v32 reason:a3];
        }
      }

      v48 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v48);
  }
}

- (id)_profileImageElement
{
  v2 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement footerPaletteElement];
  v3 = [v2 firstChildForElementType:95];

  v4 = [v3 firstChildForElementType:49];

  return v4;
}

- (void)_reloadFooterViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIPhysicalCirclesDocumentViewController *)self _leftFooterButtonElement];
  footerView = self->_footerView;
  v26 = v5;
  if (v5)
  {
    v7 = [v5 buttonText];
    v8 = [v7 string];
    if (v3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [(SKUIOnboardingFooterView *)footerView showLeftButtonWithTitle:v8 animation:v9];

    v10 = [(SKUIOnboardingFooterView *)self->_footerView leftButton];
    [v10 setEnabled:{objc_msgSend(v26, "isEnabled")}];
  }

  else
  {
    [(SKUIOnboardingFooterView *)footerView hideLeftButtonWithAnimation:v3 ^ 1];
  }

  v11 = [(SKUIPhysicalCirclesDocumentViewController *)self _rightFooterButtonElement];
  v12 = v11;
  v13 = self->_footerView;
  if (v11)
  {
    v14 = [v11 buttonText];
    v15 = [v14 string];
    if (v3)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    [(SKUIOnboardingFooterView *)v13 showRightButtonWithTitle:v15 animation:v16];

    v17 = [(SKUIOnboardingFooterView *)self->_footerView rightButton];
    [v17 setEnabled:{objc_msgSend(v12, "isEnabled")}];
  }

  else
  {
    [(SKUIOnboardingFooterView *)self->_footerView hideRightButtonWithAnimation:v3 ^ 1];
  }

  v18 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement footerPaletteElement];
  v19 = [v18 firstChildForElementType:95];

  v20 = [v19 firstChildForElementType:138];
  progressView = self->_progressView;
  [v19 value];
  [(SKUIOnboardingProgressView *)progressView setProgress:v3 animated:v22];
  v23 = self->_progressView;
  v24 = [v20 text];
  v25 = [v24 string];
  [(SKUIOnboardingProgressView *)v23 setTitle:v25];
}

- (void)_reloadInstructionsView
{
  v17 = [(SKUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController instructionsView];
  v3 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement titleElement];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [v3 text];
    v6 = [v5 string];
    v7 = [v4 titleAttributedStringWithString:v6];

    v8 = [v3 style];
    [(SKUIPhysicalCirclesDocumentViewController *)self _styleAttributedString:v7 withStyle:v8];
  }

  else
  {
    v7 = 0;
  }

  v9 = [v17 titleLabel];
  [v9 setAttributedText:v7];

  v10 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement subtitleElement];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [v10 text];
    v13 = [v12 string];
    v14 = [v11 explanationAttributedStringWithString:v13];

    v15 = [v10 style];
    [(SKUIPhysicalCirclesDocumentViewController *)self _styleAttributedString:v14 withStyle:v15];
  }

  else
  {
    v14 = 0;
  }

  v16 = [v17 explanationLabel];
  [v16 setAttributedText:v14];

  [v17 setNeedsLayout];
}

- (id)_rightFooterButtonElement
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy_;
  v12[4] = __Block_byref_object_dispose_;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v2 = [(SKUIPhysicalCirclesTemplateViewElement *)self->_templateElement footerPaletteElement];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SKUIPhysicalCirclesDocumentViewController__rightFooterButtonElement__block_invoke;
  v5[3] = &unk_2781F8590;
  v5[4] = v12;
  v5[5] = &v6;
  [v2 enumerateChildrenUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(v12, 8);

  return v3;
}

void __70__SKUIPhysicalCirclesDocumentViewController__rightFooterButtonElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 elementType];
  v7 = *(*(a1 + 32) + 8);
  if (v6 == 95)
  {
    objc_storeStrong((v7 + 40), a2);
  }

  else if (*(v7 + 40) && [v8 elementType] == 12)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_styleAttributedString:(id)a3 withStyle:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = SKUIViewElementFontWithStyle(v6);
  if (v7)
  {
    [v12 addAttribute:*MEMORY[0x277D740A8] value:v7 range:{0, objc_msgSend(v12, "length")}];
  }

  v8 = [v6 ikColor];
  v9 = [(SKUIPhysicalCirclesDocumentViewController *)self view];
  v10 = [v9 tintColor];
  v11 = SKUIViewElementPlainColorWithIKColor(v8, v10);

  if (v11)
  {
    [v12 addAttribute:*MEMORY[0x277D740C0] value:v11 range:{0, objc_msgSend(v12, "length")}];
  }
}

- (void)initWithPhysicalCirclesTemplateViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPhysicalCirclesDocumentViewController initWithPhysicalCirclesTemplateViewElement:]";
}

@end