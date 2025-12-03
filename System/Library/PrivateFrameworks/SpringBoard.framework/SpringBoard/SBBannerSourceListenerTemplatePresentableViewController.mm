@interface SBBannerSourceListenerTemplatePresentableViewController
- (BOOL)shouldAcquireWindowLevelAssertion;
- (SBBannerSourceListenerTemplatePresentableViewController)initWithPresentable:(id)presentable;
- (SBBannerSourceListenerTemplatePresentableViewController)initWithSpecification:(id)specification serviceDomain:(id)domain readyCompletion:(id)completion;
- (UIEdgeInsets)bannerContentOutsets;
- (id)_pillView;
- (id)_templateContentProvider;
- (id)leadingTemplateViewProvider;
- (id)primaryTemplateItemProvider;
- (id)secondaryTemplateItemProvider;
- (id)trailingTemplateViewProvider;
- (int64_t)userInterfaceStyleOverride;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBBannerSourceListenerTemplatePresentableViewController

- (SBBannerSourceListenerTemplatePresentableViewController)initWithSpecification:(id)specification serviceDomain:(id)domain readyCompletion:(id)completion
{
  specificationCopy = specification;
  domainCopy = domain;
  completionCopy = completion;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([specificationCopy providesTemplateContent] & 1) == 0)
  {
    [SBBannerSourceListenerTemplatePresentableViewController initWithSpecification:a2 serviceDomain:self readyCompletion:specificationCopy];
  }

  v18.receiver = self;
  v18.super_class = SBBannerSourceListenerTemplatePresentableViewController;
  v13 = [(BNBannerSourceListenerPresentableViewController *)&v18 initWithSpecification:specificationCopy serviceDomain:domainCopy readyCompletion:completionCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_templateContentProvidingSpecification, specification);
    v15 = objc_alloc_init(SBBannerCustomTransitioningDelegate);
    customTransitioningDelegate = v14->_customTransitioningDelegate;
    v14->_customTransitioningDelegate = v15;

    [(SBBannerSourceListenerTemplatePresentableViewController *)v14 setTransitioningDelegate:v14->_customTransitioningDelegate];
  }

  return v14;
}

- (SBBannerSourceListenerTemplatePresentableViewController)initWithPresentable:(id)presentable
{
  v7.receiver = self;
  v7.super_class = SBBannerSourceListenerTemplatePresentableViewController;
  v3 = [(BNBannerSourceListenerPresentableViewController *)&v7 initWithPresentable:presentable];
  if (v3)
  {
    v4 = objc_alloc_init(SBBannerCustomTransitioningDelegate);
    customTransitioningDelegate = v3->_customTransitioningDelegate;
    v3->_customTransitioningDelegate = v4;

    [(SBBannerSourceListenerTemplatePresentableViewController *)v3 setTransitioningDelegate:v3->_customTransitioningDelegate];
  }

  return v3;
}

- (id)leadingTemplateViewProvider
{
  _templateContentProvider = [(SBBannerSourceListenerTemplatePresentableViewController *)self _templateContentProvider];
  if (objc_opt_respondsToSelector())
  {
    leadingTemplateViewProvider = [_templateContentProvider leadingTemplateViewProvider];
  }

  else
  {
    leadingTemplateViewProvider = 0;
  }

  return leadingTemplateViewProvider;
}

- (id)trailingTemplateViewProvider
{
  _templateContentProvider = [(SBBannerSourceListenerTemplatePresentableViewController *)self _templateContentProvider];
  if (objc_opt_respondsToSelector())
  {
    trailingTemplateViewProvider = [_templateContentProvider trailingTemplateViewProvider];
  }

  else
  {
    trailingTemplateViewProvider = 0;
  }

  return trailingTemplateViewProvider;
}

- (id)primaryTemplateItemProvider
{
  _templateContentProvider = [(SBBannerSourceListenerTemplatePresentableViewController *)self _templateContentProvider];
  if (objc_opt_respondsToSelector())
  {
    primaryTemplateItemProvider = [_templateContentProvider primaryTemplateItemProvider];
  }

  else
  {
    primaryTemplateItemProvider = 0;
  }

  return primaryTemplateItemProvider;
}

- (id)secondaryTemplateItemProvider
{
  _templateContentProvider = [(SBBannerSourceListenerTemplatePresentableViewController *)self _templateContentProvider];
  if (objc_opt_respondsToSelector())
  {
    secondaryTemplateItemProvider = [_templateContentProvider secondaryTemplateItemProvider];
  }

  else
  {
    secondaryTemplateItemProvider = 0;
  }

  return secondaryTemplateItemProvider;
}

- (int64_t)userInterfaceStyleOverride
{
  _templateContentProvider = [(SBBannerSourceListenerTemplatePresentableViewController *)self _templateContentProvider];
  if (objc_opt_respondsToSelector())
  {
    userInterfaceStyleOverride = [_templateContentProvider userInterfaceStyleOverride];
  }

  else
  {
    userInterfaceStyleOverride = 0;
  }

  return userInterfaceStyleOverride;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SBBannerSourceListenerTemplatePresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v6 viewDidLoad];
  _pillView = [(SBBannerSourceListenerTemplatePresentableViewController *)self _pillView];
  [(BNBannerSourceListenerPresentableViewController *)self _setContentView:_pillView];
  [_pillView intrinsicContentSize];
  [(SBBannerSourceListenerTemplatePresentableViewController *)self setPreferredContentSize:?];
  view = [(SBBannerSourceListenerTemplatePresentableViewController *)self view];
  [view addSubview:_pillView];

  userInterfaceStyleOverride = [(SBBannerSourceListenerTemplatePresentableViewController *)self userInterfaceStyleOverride];
  if (userInterfaceStyleOverride)
  {
    [(SBBannerSourceListenerTemplatePresentableViewController *)self setOverrideUserInterfaceStyle:userInterfaceStyleOverride];
  }
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBBannerSourceListenerTemplatePresentableViewController;
  [(SBBannerSourceListenerTemplatePresentableViewController *)&v4 viewWillLayoutSubviews];
  view = [(SBBannerSourceListenerTemplatePresentableViewController *)self view];
  [view bounds];

  [(SBBannerSourceListenerTemplatePresentableViewController *)self bannerContentOutsets];
  UIRectInset();
  [(PLPillView *)self->_pillView setFrame:?];
}

- (UIEdgeInsets)bannerContentOutsets
{
  _pillView = [(SBBannerSourceListenerTemplatePresentableViewController *)self _pillView];
  [_pillView shadowOutsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (BOOL)shouldAcquireWindowLevelAssertion
{
  _templateContentProvider = [(SBBannerSourceListenerTemplatePresentableViewController *)self _templateContentProvider];
  if (objc_opt_respondsToSelector())
  {
    shouldAcquireWindowLevelAssertion = [_templateContentProvider shouldAcquireWindowLevelAssertion];
  }

  else
  {
    shouldAcquireWindowLevelAssertion = 0;
  }

  return shouldAcquireWindowLevelAssertion;
}

- (id)_templateContentProvider
{
  presentable = [(BNBannerSourceListenerPresentableViewController *)self presentable];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (templateContentProvidingSpecification = presentable, ([(BNTemplateContentProvidingSpecifying *)presentable providesTemplateContent]& 1) == 0))
  {
    templateContentProvidingSpecification = self->_templateContentProvidingSpecification;
  }

  v5 = templateContentProvidingSpecification;

  return templateContentProvidingSpecification;
}

- (id)_pillView
{
  pillView = self->_pillView;
  if (!pillView)
  {
    _templateContentProvider = [(SBBannerSourceListenerTemplatePresentableViewController *)self _templateContentProvider];
    if (objc_opt_respondsToSelector())
    {
      leadingTemplateViewProvider = [_templateContentProvider leadingTemplateViewProvider];
    }

    else
    {
      leadingTemplateViewProvider = 0;
    }

    objc_initWeak(location, self);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke;
    v36[3] = &unk_2783B3140;
    objc_copyWeak(&v37, location);
    v6 = SBTemplateItemViewFromProvider(leadingTemplateViewProvider, v36);
    if (objc_opt_respondsToSelector())
    {
      trailingTemplateViewProvider = [_templateContentProvider trailingTemplateViewProvider];
    }

    else
    {
      trailingTemplateViewProvider = 0;
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_3;
    v34[3] = &unk_2783B3140;
    objc_copyWeak(&v35, location);
    v8 = SBTemplateItemViewFromProvider(trailingTemplateViewProvider, v34);
    v9 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:v6 trailingAccessoryView:v8];
    v10 = self->_pillView;
    self->_pillView = v9;

    [(PLPillView *)self->_pillView setMaterialGroupNameBase:@"SBBannerSourceListenerTemplatePresentableViewControllerMaterialGroup"];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_5;
    v33[3] = &unk_2783B3168;
    v33[4] = self;
    v11 = MEMORY[0x223D6F7F0](v33);
    (v11)[2](v11, v6, leadingTemplateViewProvider);
    (v11)[2](v11, v8, trailingTemplateViewProvider);
    v28 = v8;
    v29 = trailingTemplateViewProvider;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_6;
    v31[3] = &unk_2783B31E0;
    objc_copyWeak(&v32, location);
    v12 = MEMORY[0x223D6F7F0](v31);
    v13 = objc_opt_respondsToSelector();
    if (v13)
    {
      primaryTemplateItemProvider = [_templateContentProvider primaryTemplateItemProvider];
    }

    else
    {
      primaryTemplateItemProvider = 0;
    }

    v30 = (v12)[2](v12, primaryTemplateItemProvider, 1);
    v26 = v6;
    v27 = leadingTemplateViewProvider;
    if (v13)
    {
    }

    v15 = objc_opt_respondsToSelector();
    if (v15)
    {
      secondaryTemplateItemProvider = [_templateContentProvider secondaryTemplateItemProvider];
    }

    else
    {
      secondaryTemplateItemProvider = 0;
    }

    v17 = (v12)[2](v12, secondaryTemplateItemProvider, 0);
    if (v15)
    {
    }

    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    v19 = v18;
    if (v30)
    {
      [v18 addObject:v30];
    }

    if (v17)
    {
      [v19 addObject:v17];
    }

    [(PLPillView *)self->_pillView setCenterContentItems:v19 animated:0];
    v20 = self->_pillView;
    v21 = objc_opt_respondsToSelector();
    if (v21)
    {
      presentableAccessibilityIdentifier = [_templateContentProvider presentableAccessibilityIdentifier];
    }

    else
    {
      presentableAccessibilityIdentifier = 0;
    }

    [(PLPillView *)v20 setAccessibilityIdentifier:presentableAccessibilityIdentifier];
    if (v21)
    {
    }

    v23 = self->_pillView;
    v24 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapOnPillView_];
    [(PLPillView *)v23 addGestureRecognizer:v24];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v35);

    objc_destroyWeak(&v37);
    objc_destroyWeak(location);

    pillView = self->_pillView;
  }

  return pillView;
}

id __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D750C8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_2;
  v4[3] = &unk_2783ADB30;
  objc_copyWeak(&v5, (a1 + 32));
  v2 = [v1 actionWithHandler:v4];
  objc_destroyWeak(&v5);

  return v2;
}

void __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleButtonPrimaryAction:v3 forEvent:1];
}

id __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277D750C8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_4;
  v4[3] = &unk_2783ADB30;
  objc_copyWeak(&v5, (a1 + 32));
  v2 = [v1 actionWithHandler:v4];
  objc_destroyWeak(&v5);

  return v2;
}

void __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleButtonPrimaryAction:v3 forEvent:2];
}

void __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ([v5 visualStyleCategory] >= 1 && objc_msgSend(v5, "visualStyle") >= 1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = [*(*(a1 + 32) + 1104) visualStylingProviderForCategory:{objc_msgSend(v5, "visualStyleCategory")}];
    v8 = [v5 visualStyle];
    if (isKindOfClass)
    {
      v9 = [v7 _visualStylingForStyle:v8];

      v10 = v14;
      v11 = [v10 configuration];
      v12 = [v11 background];
      v13 = [v9 visualEffect];
      [v12 setVisualEffect:v13];

      [v11 setBackground:v12];
      [v10 setConfiguration:v11];

      v7 = v9;
    }

    else
    {
      [v7 automaticallyUpdateView:v14 withStyle:v8];
    }
  }
}

id __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_6(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 templateItemText];
    if (v7 && ((v8 = objc_alloc(MEMORY[0x277D3D308]), a3) ? (v9 = 1) : (v9 = 2), (v10 = [v8 initWithText:v7 style:v9]) != 0))
    {
      v11 = v10;
    }

    else
    {
      v12 = [v6 templateItemAttributedText];
      if (!v12 || ((v13 = v12, v14 = objc_alloc(MEMORY[0x277D3D308]), a3) ? (v15 = 1) : (v15 = 2), v11 = [v14 initWithAttributedText:v13 style:v15], v13, !v11))
      {
        v19 = MEMORY[0x277D85DD0];
        v20 = 3221225472;
        v21 = __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_7;
        v22 = &unk_2783B31B8;
        objc_copyWeak(&v23, (a1 + 32));
        v24 = a3;
        v16 = SBTemplateItemViewFromProvider(v6, &v19);
        if (v16)
        {
          v17 = objc_alloc(MEMORY[0x277D3D308]);
          v11 = [v17 initWithAccessoryView:{v16, v19, v20, v21, v22}];
        }

        else
        {
          v11 = 0;
        }

        objc_destroyWeak(&v23);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277D750C8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_8;
  v5[3] = &unk_2783B3190;
  objc_copyWeak(&v6, (a1 + 32));
  v7 = *(a1 + 40);
  v3 = [v2 actionWithHandler:v5];
  objc_destroyWeak(&v6);

  return v3;
}

void __68__SBBannerSourceListenerTemplatePresentableViewController__pillView__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (*(a1 + 40))
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  [WeakRetained _handleButtonPrimaryAction:v3 forEvent:v5];
}

- (void)initWithSpecification:(uint64_t)a1 serviceDomain:(uint64_t)a2 readyCompletion:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBBannerSourceListenerTemplatePresentableViewController.m" lineNumber:33 description:{@"Presentable specification doesn't specify a presentable that provides template content: %@", a3}];
}

@end