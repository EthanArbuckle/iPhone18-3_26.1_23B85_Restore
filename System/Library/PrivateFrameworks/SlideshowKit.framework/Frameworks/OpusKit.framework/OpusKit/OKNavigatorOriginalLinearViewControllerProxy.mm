@interface OKNavigatorOriginalLinearViewControllerProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)prepareForDisplay;
- (BOOL)prepareForUnload;
- (BOOL)prepareForWarmup;
- (id)nameForPageAfterPage:(id)page;
- (id)nameForPageBeforePage:(id)page;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)applySettings;
- (void)commonInit;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)gotoNext:(id)next;
- (void)gotoPrevious:(id)previous;
- (void)navigateToPageWithName:(id)name animated:(BOOL)animated completion:(id)completion;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)prepareAdjacentPageViewControllers;
- (void)reloadPagesViewController;
- (void)setSettingOrientation:(unint64_t)orientation;
- (void)setSettingTransition:(unint64_t)transition;
- (void)updatePagesViewController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation OKNavigatorOriginalLinearViewControllerProxy

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewController *)&v3 commonInit];
  self->_pagesViewController = 0;
  self->_orderedPagesNames = 0;
  self->_transitionStyle = 1;
  self->_navigationOrientation = 0;
}

- (void)dealloc
{
  [(UIPageViewController *)self->_pagesViewController setDataSource:0];
  pagesViewController = self->_pagesViewController;
  if (pagesViewController)
  {
    [(UIPageViewController *)pagesViewController setDelegate:0];

    self->_pagesViewController = 0;
  }

  orderedPagesNames = self->_orderedPagesNames;
  if (orderedPagesNames)
  {

    self->_orderedPagesNames = 0;
  }

  v5.receiver = self;
  v5.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewController *)&v3 viewDidLoad];
  self->_orderedPagesNames = [(NSMutableArray *)[(OKPresentationNavigator *)[(OKNavigatorViewControllerProxy *)self navigator] pagesNames] copy];
  [(OKNavigatorOriginalLinearViewControllerProxy *)self reloadPagesViewController];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewDidDisappear:disappear];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 viewDidLayoutSubviews];
}

- (void)willMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 willMoveToParentViewController:controller];
}

- (void)didMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 didMoveToParentViewController:controller];
}

- (void)applySettings
{
  v12.receiver = self;
  v12.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v12 applySettings];
  navigationOrientation = self->_navigationOrientation;
  v4 = +[(OKActionBindingProxy *)OKActionBindingSwipe];
  v5 = v4;
  v6 = navigationOrientation == 0;
  if (navigationOrientation)
  {
    v7 = 16;
  }

  else
  {
    v7 = 2;
  }

  if (navigationOrientation)
  {
    v8 = 8;
  }

  else
  {
    v8 = 4;
  }

  if (v6)
  {
    v9 = &selRef_gotoNext_;
  }

  else
  {
    v9 = &selRef_gotoPrevious_;
  }

  if (v6)
  {
    v10 = &selRef_gotoPrevious_;
  }

  else
  {
    v10 = &selRef_gotoNext_;
  }

  [v4 setDirection:v7];
  [v5 setTarget:self];
  [v5 setSelector:*v9];
  v11 = +[(OKActionBindingProxy *)OKActionBindingSwipe];
  [v11 setDirection:v8];
  [v11 setTarget:self];
  [v11 setSelector:*v10];
  [(OKNavigatorViewControllerProxy *)self addActionBinding:v5 scope:2];
  [(OKNavigatorViewControllerProxy *)self addActionBinding:v11 scope:2];
}

+ (id)supportedSettings
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OKNavigatorOriginalLinearViewControllerProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v10[0] = @"transition";
  v8[0] = @"type";
  v8[1] = @"mapping";
  v9[0] = &unk_287AF04A0;
  v9[1] = &unk_287AF1E38;
  v8[2] = @"default";
  v9[2] = @"scroll";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v10[1] = @"orientation";
  v11[0] = v3;
  v6[0] = @"type";
  v6[1] = @"mapping";
  v7[0] = &unk_287AF04A0;
  v7[1] = &unk_287AF1E60;
  v6[2] = @"default";
  v7[2] = @"horizontal";
  v11[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, v10, 2)}];
  return v2;
}

- (void)setSettingTransition:(unint64_t)transition
{
  if (self->_transitionStyle != transition)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_transitionStyle = transition;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __69__OKNavigatorOriginalLinearViewControllerProxy_setSettingTransition___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"reloadPagesViewController"];
  }
}

- (void)setSettingOrientation:(unint64_t)orientation
{
  if (self->_navigationOrientation != orientation)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_navigationOrientation = orientation;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __70__OKNavigatorOriginalLinearViewControllerProxy_setSettingOrientation___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"reloadPagesViewController"];
  }
}

- (void)reloadPagesViewController
{
  pagesViewController = self->_pagesViewController;
  if (pagesViewController)
  {
    [(UIPageViewController *)pagesViewController removeFromParentViewControllerInstantly];
    [(UIPageViewController *)self->_pagesViewController setDataSource:0];
    v4 = self->_pagesViewController;
    if (v4)
    {
      [(UIPageViewController *)v4 setDelegate:0];

      self->_pagesViewController = 0;
    }
  }

  v5 = [objc_alloc(MEMORY[0x277D757F0]) initWithTransitionStyle:self->_transitionStyle navigationOrientation:self->_navigationOrientation options:0];
  self->_pagesViewController = v5;
  [(UIPageViewController *)v5 setDataSource:self];
  [(UIPageViewController *)self->_pagesViewController setDelegate:self];
  [(OKNavigatorOriginalLinearViewControllerProxy *)self addChildViewControllerInstantly:self->_pagesViewController];
  if ([(NSArray *)self->_orderedPagesNames count])
  {
    currentPageViewController = [(OKNavigatorViewControllerProxy *)self currentPageViewController];
    if (currentPageViewController || (currentPageViewController = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:[(NSArray *)self->_orderedPagesNames firstObject] createIfNeeded:1]) != 0)
    {
      v7 = currentPageViewController;
      [-[OKNavigatorOriginalLinearViewControllerProxy view](self "view")];
      [-[OKPageViewController view](v7 "view")];
      v12 = self->_pagesViewController;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{v7, 0}];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __73__OKNavigatorOriginalLinearViewControllerProxy_reloadPagesViewController__block_invoke;
      v14[3] = &unk_279C90630;
      v14[4] = self;
      v14[5] = v7;
      [(UIPageViewController *)v12 setViewControllers:v13 direction:0 animated:0 completion:v14];
    }
  }
}

- (void)updatePagesViewController
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 1)
  {
    [(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] prepareForDisplay];
LABEL_5:

    [(OKNavigatorOriginalLinearViewControllerProxy *)self prepareAdjacentPageViewControllers];
    return;
  }

  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 2)
  {
    [(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] prepareForWarmup];
    goto LABEL_5;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(OKNavigatorViewControllerProxy *)self cachedPageViewControllerForPageWithNames:self->_orderedPagesNames, 0];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v8 prepareForUnload];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)prepareAdjacentPageViewControllers
{
  v18 = *MEMORY[0x277D85DE8];
  firstObject = [(NSArray *)[(UIPageViewController *)self->_pagesViewController viewControllers] firstObject];
  v4 = [(OKNavigatorOriginalLinearViewControllerProxy *)self pageViewController:self->_pagesViewController viewControllerBeforeViewController:firstObject];
  v5 = [(OKNavigatorOriginalLinearViewControllerProxy *)self pageViewController:self->_pagesViewController viewControllerAfterViewController:firstObject];
  v6 = [MEMORY[0x277CBEB58] setWithArray:{-[OKNavigatorViewControllerProxy cachedPageViewControllerForPageWithNames:](self, "cachedPageViewControllerForPageWithNames:", self->_orderedPagesNames)}];
  v7 = v6;
  if (firstObject)
  {
    [v6 removeObject:firstObject];
  }

  if (v4)
  {
    [v4 prepareForWarmup];
    [v7 removeObject:v4];
  }

  if (v5)
  {
    [v5 prepareForWarmup];
    [v7 removeObject:v5];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v12 prepareForUnload];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  v16 = *MEMORY[0x277D85DE8];
  [(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] pageWillDisappear:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [controllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(controllers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        [v10 prepareForMode:{-[OKNavigatorViewControllerProxy prepareMode](self, "prepareMode")}];
        [v10 pageWillAppear:0];
        ++v9;
      }

      while (v7 != v9);
      v7 = [controllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  v7 = [(OKNavigatorViewControllerProxy *)self currentPageViewController:controller];
  [(OKNavigatorViewControllerProxy *)self setCurrentPageViewController:[(NSArray *)[(UIPageViewController *)self->_pagesViewController viewControllers] firstObject]];
  [(OKNavigatorOriginalLinearViewControllerProxy *)self prepareAdjacentPageViewControllers];
  [(OKPageViewController *)v7 pageDidDisappear:0];
  [(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] pageDidAppear:0];
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  if (!viewController)
  {
    return 0;
  }

  v6 = -[NSArray indexOfObject:](self->_orderedPagesNames, "indexOfObject:", [objc_msgSend(viewController page]);
  v7 = v6;
  if (v6)
  {
    v8 = v6 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v4 = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:[(NSArray *)self->_orderedPagesNames objectAtIndex:v6 - 1] createIfNeeded:1];
    [v4 setNavigatorViewController:self];
    [-[OKNavigatorOriginalLinearViewControllerProxy view](self "view")];
    [objc_msgSend(v4 "view")];
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0)
  {
    return 0;
  }

  return v4;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  if (!viewController)
  {
    return 0;
  }

  v5 = -[NSArray indexOfObject:](self->_orderedPagesNames, "indexOfObject:", [objc_msgSend(viewController page]);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v5;
  if (v5 == [(NSArray *)self->_orderedPagesNames count]- 1)
  {
    return 0;
  }

  v7 = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:[(NSArray *)self->_orderedPagesNames objectAtIndex:v6 + 1] createIfNeeded:1];
  [v7 setNavigatorViewController:self];
  [-[OKNavigatorOriginalLinearViewControllerProxy view](self "view")];
  [objc_msgSend(v7 "view")];
  return v7;
}

- (BOOL)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  prepareForDisplay = [(OKNavigatorViewControllerProxy *)&v5 prepareForDisplay];
  if (prepareForDisplay)
  {
    [(OKNavigatorOriginalLinearViewControllerProxy *)self updatePagesViewController];
  }

  return prepareForDisplay;
}

- (BOOL)prepareForWarmup
{
  v5.receiver = self;
  v5.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  prepareForWarmup = [(OKNavigatorViewControllerProxy *)&v5 prepareForWarmup];
  if (prepareForWarmup)
  {
    [(OKNavigatorOriginalLinearViewControllerProxy *)self updatePagesViewController];
  }

  return prepareForWarmup;
}

- (BOOL)prepareForUnload
{
  v5.receiver = self;
  v5.super_class = OKNavigatorOriginalLinearViewControllerProxy;
  prepareForUnload = [(OKNavigatorViewControllerProxy *)&v5 prepareForUnload];
  if (prepareForUnload)
  {
    [(OKNavigatorOriginalLinearViewControllerProxy *)self updatePagesViewController];
  }

  return prepareForUnload;
}

- (id)nameForPageBeforePage:(id)page
{
  pagesNames = [(OKPresentationNavigator *)[(OKNavigatorViewControllerProxy *)self navigator] pagesNames];
  v5 = -[NSMutableArray indexOfObject:](pagesNames, "indexOfObject:", [objc_msgSend(page "page")]);
  if (!v5 || v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(NSMutableArray *)pagesNames objectAtIndex:v5 - 1];
}

- (id)nameForPageAfterPage:(id)page
{
  pagesNames = [(OKPresentationNavigator *)[(OKNavigatorViewControllerProxy *)self navigator] pagesNames];
  v5 = -[NSMutableArray indexOfObject:](pagesNames, "indexOfObject:", [objc_msgSend(page "page")]);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v5;
  if (v5 >= [(NSMutableArray *)pagesNames count]- 1)
  {
    return 0;
  }

  return [(NSMutableArray *)pagesNames objectAtIndex:v6 + 1];
}

- (void)gotoPrevious:(id)previous
{
  v5 = [(OKNavigatorOriginalLinearViewControllerProxy *)self nameForPageBeforePage:[(OKNavigatorViewControllerProxy *)self currentPageViewController]];
  [previous setShouldPropagate:v5 == 0];
  if (v5)
  {

    [(OKNavigatorOriginalLinearViewControllerProxy *)self navigateToPageWithName:v5 animated:1 completion:0];
  }
}

- (void)gotoNext:(id)next
{
  v5 = [(OKNavigatorOriginalLinearViewControllerProxy *)self nameForPageAfterPage:[(OKNavigatorViewControllerProxy *)self currentPageViewController]];
  [next setShouldPropagate:v5 == 0];
  if (v5)
  {

    [(OKNavigatorOriginalLinearViewControllerProxy *)self navigateToPageWithName:v5 animated:1 completion:0];
  }
}

- (void)navigateToPageWithName:(id)name animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:name createIfNeeded:1];
  if (!v8)
  {
    if (!completion)
    {
      return;
    }

    v19 = *(completion + 2);
    completionCopy2 = completion;
    v21 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  if (v8 != [(OKNavigatorViewControllerProxy *)self currentPageViewController])
  {
    [(OKPageViewController *)v9 setNavigatorViewController:self];
    [-[OKNavigatorOriginalLinearViewControllerProxy view](self "view")];
    [-[OKPageViewController view](v9 "view")];
    v14 = [(NSArray *)self->_orderedPagesNames indexOfObject:[(OKPresentationCanvas *)[(OKPageViewController *)v9 page] name]];
    v15 = v14 < [(NSArray *)self->_orderedPagesNames indexOfObject:[(OKPresentationCanvas *)[(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] page] name]];
    [(OKPageViewController *)v9 prepareForMode:[(OKNavigatorViewControllerProxy *)self prepareMode]];
    currentPageViewController = [(OKNavigatorViewControllerProxy *)self currentPageViewController];
    [(OKPageViewController *)currentPageViewController pageWillDisappear:1];
    [(OKPageViewController *)v9 pageWillAppear:1];
    pagesViewController = self->_pagesViewController;
    v23[0] = v9;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __91__OKNavigatorOriginalLinearViewControllerProxy_navigateToPageWithName_animated_completion___block_invoke;
    v22[3] = &unk_279C90658;
    v22[4] = self;
    v22[5] = v9;
    v22[6] = currentPageViewController;
    v22[7] = completion;
    [(UIPageViewController *)pagesViewController setViewControllers:v18 direction:v15 animated:animatedCopy completion:v22];
    return;
  }

  if (completion)
  {
    v19 = *(completion + 2);
    completionCopy2 = completion;
    v21 = 1;
LABEL_8:

    v19(completionCopy2, v21);
  }
}

uint64_t __91__OKNavigatorOriginalLinearViewControllerProxy_navigateToPageWithName_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentPageViewController:*(a1 + 40)];
  [*(a1 + 32) prepareAdjacentPageViewControllers];
  [*(a1 + 48) pageDidDisappear:1];
  [*(a1 + 40) pageDidAppear:1];

  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKNavigatorOriginalLinearViewController"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end