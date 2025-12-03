@interface OKNavigatorLinearViewController
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)canPerformAction:(id)action;
- (BOOL)pageViewController:(id)controller canAutomaticallyHandleGestureRecognizer:(id)recognizer;
- (BOOL)prepareForDisplay;
- (BOOL)prepareForUnload;
- (BOOL)prepareForWarmup;
- (id)_pageViewControllerForActionResponder:(id)responder;
- (id)initNavigationWithKey:(id)key isKeyUp:(BOOL)up andMethod:(SEL)method;
- (id)nameForPageAfterPage:(id)page;
- (id)nameForPageBeforePage:(id)page;
- (id)navigationController:(id)controller animationControllerForDirection:(int64_t)direction fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)navigationController:(id)controller interactionControllerForAnimationController:(id)animationController;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController createIfNeeded:(BOOL)needed;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController createIfNeeded:(BOOL)needed;
- (id)transitionAfterPage:(id)page;
- (id)transitionBeforePage:(id)page;
- (int64_t)presentationCountForPageViewController:(id)controller;
- (int64_t)presentationIndexForPageViewController:(id)controller;
- (void)_navigateToPrevious:(BOOL)previous withAction:(id)action overridingTransition:(BOOL)transition;
- (void)applySettings;
- (void)commonInit;
- (void)dealloc;
- (void)gotoPageWithName:(id)name animated:(BOOL)animated completion:(id)completion;
- (void)navigateToPageWithName:(id)name animated:(BOOL)animated completion:(id)completion;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating fromViewController:(id)viewController transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller didFinishTransitioningToViewController:(id)viewController fromViewController:(id)fromViewController transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller didStartTransitioningToViewController:(id)viewController fromViewController:(id)fromViewController;
- (void)pageViewController:(id)controller didUpdateTransitioningToViewController:(id)viewController fromViewController:(id)fromViewController withProgress:(double)progress andVelocity:(double)velocity;
- (void)pageViewController:(id)controller willStartBouncingWithDirection:(int64_t)direction;
- (void)pageViewController:(id)controller willStartTransitioningToViewController:(id)viewController fromViewController:(id)fromViewController withDirection:(int64_t)direction;
- (void)pageViewControllerDidFinishBouncing:(id)bouncing;
- (void)prepareAdjacentPageViewControllers;
- (void)presentationDidLiveUpdate;
- (void)registerActionBindingTransition:(id)transition;
- (void)reloadPagesViewController;
- (void)setCurrentPageToPageWithName:(id)name direction:(int64_t)direction animated:(BOOL)animated completionHandler:(id)handler;
- (void)setNavigationOrientation:(int64_t)orientation;
- (void)setPanIsEnabled:(BOOL)enabled;
- (void)setSettingInteractiveTransitionSettings:(id)settings;
- (void)setSettingOrientation:(int64_t)orientation;
- (void)setSettingTransitions:(id)transitions;
- (void)setWantsPageControl:(BOOL)control;
- (void)unregisterActionBindingTransition:(id)transition;
- (void)updatePagesViewController;
- (void)viewDidLoad;
@end

@implementation OKNavigatorLinearViewController

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OKNavigatorLinearViewController;
  [(OKNavigatorViewController *)&v3 commonInit];
  self->_pagesViewController = 0;
  self->_navigationOrientation = 0;
  self->_panIsEnabled = 1;
  self->_keyboardIsEnabled = 1;
  self->_registeredActionBindingTransitions = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  self->_actionRespondersTransitionContexts = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  self->_orderedPagesNames = objc_alloc_init(MEMORY[0x277CBEB18]);
}

- (void)dealloc
{
  defaultTransition = self->_defaultTransition;
  if (defaultTransition)
  {

    self->_defaultTransition = 0;
  }

  overrideTransition = self->_overrideTransition;
  if (overrideTransition)
  {

    self->_overrideTransition = 0;
  }

  orderedPagesNames = self->_orderedPagesNames;
  if (orderedPagesNames)
  {

    self->_orderedPagesNames = 0;
  }

  registeredActionBindingTransitions = self->_registeredActionBindingTransitions;
  if (registeredActionBindingTransitions)
  {

    self->_registeredActionBindingTransitions = 0;
  }

  actionRespondersTransitionContexts = self->_actionRespondersTransitionContexts;
  if (actionRespondersTransitionContexts)
  {

    self->_actionRespondersTransitionContexts = 0;
  }

  [(OFPageViewController *)self->_pagesViewController setDataSource:0];
  pagesViewController = self->_pagesViewController;
  if (pagesViewController)
  {
    [(OFPageViewController *)pagesViewController setDelegate:0];

    self->_pagesViewController = 0;
  }

  v9.receiver = self;
  v9.super_class = OKNavigatorLinearViewController;
  [(OKNavigatorViewController *)&v9 dealloc];
}

- (void)setNavigationOrientation:(int64_t)orientation
{
  if (self->_navigationOrientation != orientation)
  {
    self->_navigationOrientation = orientation;
    pagesViewController = self->_pagesViewController;
    if (pagesViewController)
    {
      [(OFPageViewController *)pagesViewController setNavigationOrientation:?];
    }
  }
}

- (void)setPanIsEnabled:(BOOL)enabled
{
  if (self->_panIsEnabled != enabled)
  {
    self->_panIsEnabled = enabled;
    pagesViewController = self->_pagesViewController;
    if (pagesViewController)
    {
      [(OFPageViewController *)pagesViewController setPanIsEnabled:?];
    }
  }
}

- (void)setWantsPageControl:(BOOL)control
{
  if (self->_wantsPageControl != control)
  {
    self->_wantsPageControl = control;
    pagesViewController = self->_pagesViewController;
    if (pagesViewController)
    {
      [(OFPageViewController *)pagesViewController setWantsPageControl:?];
    }
  }
}

- (void)applySettings
{
  v11.receiver = self;
  v11.super_class = OKNavigatorLinearViewController;
  [(OKNavigatorViewControllerProxy *)&v11 applySettings];
  navigationOrientation = self->_navigationOrientation;
  v4 = +[(OKActionBindingProxy *)OKActionBindingSwipe];
  v5 = v4;
  if (navigationOrientation)
  {
    [v4 setDirection:16];
    [v5 setTarget:self];
    [v5 setSelector:sel_goToPrevious_];
    v6 = +[(OKActionBindingProxy *)OKActionBindingSwipe];
    [v6 setDirection:8];
    [v6 setTarget:self];
    v7 = v6;
    v8 = sel_goToNext_;
  }

  else
  {
    [v4 setDirection:2];
    [v5 setTarget:self];
    [v5 setSelector:sel_goToNext_];
    v6 = +[(OKActionBindingProxy *)OKActionBindingSwipe];
    [v6 setDirection:4];
    [v6 setTarget:self];
    v7 = v6;
    v8 = sel_goToPrevious_;
  }

  [v7 setSelector:v8];
  [(OKNavigatorViewControllerProxy *)self addActionBinding:v5 scope:2];
  [(OKNavigatorViewControllerProxy *)self addActionBinding:v6 scope:2];
  if ([(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] arrowKeysSendSwipeAndPan])
  {
    v9 = [(OKNavigatorLinearViewController *)self initNavigationWithKey:@"LeftArrow" isKeyUp:1 andMethod:sel_goToPrevious_];
    v10 = [(OKNavigatorLinearViewController *)self initNavigationWithKey:@"RightArrow" isKeyUp:1 andMethod:sel_goToNext_];
    [(OKNavigatorViewControllerProxy *)self addActionBinding:v9 scope:3];
    [(OKNavigatorViewControllerProxy *)self addActionBinding:v10 scope:3];
  }
}

- (id)initNavigationWithKey:(id)key isKeyUp:(BOOL)up andMethod:(SEL)method
{
  upCopy = up;
  v9 = +[(OKActionBindingProxy *)OKActionBindingKeyPressed];
  [v9 setKeyPressed:key];
  [v9 setTarget:self];
  [v9 setSelector:method];
  [v9 setIsKeyUp:upCopy];
  return v9;
}

+ (id)supportedSettings
{
  v33[9] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(OKTransitionParallaxPush);
  [(OKTransition *)v3 setDuration:0.5];
  [(OKTransitionParallaxPush *)v3 setDirection:1];
  v4 = objc_alloc_init(OKTransitionParallaxControl);
  [(OKTransition *)v4 setDuration:0.15];
  [(OKTransitionParallaxPush *)v4 setDirection:1];
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___OKNavigatorLinearViewController;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v11, sel_supportedSettings)}];
  v32[0] = @"defaultTransition";
  v31[0] = &unk_287AF04E8;
  v30[0] = @"type";
  v30[1] = @"class";
  v6 = objc_opt_class();
  v30[2] = @"default";
  v31[1] = v6;
  v31[2] = v3;
  v33[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v32[1] = @"overrideTransition";
  v29[0] = &unk_287AF04E8;
  v28[0] = @"type";
  v28[1] = @"class";
  v7 = objc_opt_class();
  v28[2] = @"default";
  v29[1] = v7;
  v29[2] = v4;
  v33[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v32[2] = @"orientation";
  v26[0] = @"type";
  v26[1] = @"mapping";
  v27[0] = &unk_287AF0500;
  v27[1] = &unk_287AF1E88;
  v26[2] = @"default";
  v27[2] = @"horizontal";
  v33[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v32[3] = @"wraps";
  v24[0] = @"type";
  v24[1] = @"default";
  v8 = MEMORY[0x277CBEC28];
  v25[0] = &unk_287AF0548;
  v25[1] = MEMORY[0x277CBEC28];
  v33[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v32[4] = @"panIsEnabled";
  v22[0] = @"type";
  v22[1] = @"default";
  v9 = MEMORY[0x277CBEC38];
  v23[0] = &unk_287AF0548;
  v23[1] = MEMORY[0x277CBEC38];
  v33[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v32[5] = @"keyboardIsEnabled";
  v20[0] = @"type";
  v20[1] = @"default";
  v21[0] = &unk_287AF0548;
  v21[1] = v9;
  v33[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v32[6] = @"wantsPageControl";
  v18[0] = @"type";
  v18[1] = @"default";
  v19[0] = &unk_287AF0548;
  v19[1] = v8;
  v33[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v32[7] = @"transitions";
  v17[0] = &unk_287AF0560;
  v16[0] = @"type";
  v16[1] = @"class";
  v17[1] = objc_opt_class();
  v16[2] = @"default";
  v17[2] = [MEMORY[0x277CBEB68] null];
  v33[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v32[8] = @"interactiveTransitionSettings";
  v14[1] = @"default";
  v15[0] = &unk_287AF0578;
  v12[0] = @"trackingBoxRadiusDefaultValue";
  v12[1] = @"progressThresholdDefaultValue";
  v13[0] = &unk_287AF22A8;
  v13[1] = &unk_287AF22B8;
  v12[2] = @"velocityThresholdDefaultValue";
  v13[2] = &unk_287AF22C8;
  v14[0] = @"type";
  v15[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v33[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v5 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v33, v32, 9)}];

  return v5;
}

- (void)setSettingOrientation:(int64_t)orientation
{
  [(OKNavigatorLinearViewController *)self setNavigationOrientation:?];
  if (orientation == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(OKTransition *)self->_defaultTransition direction]== 1)
    {
      [(OKTransition *)self->_defaultTransition setDirection:3];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(OKTransition *)self->_overrideTransition direction]== 1)
    {
      overrideTransition = self->_overrideTransition;

      [(OKTransition *)overrideTransition setDirection:3];
    }
  }
}

- (void)setSettingTransitions:(id)transitions
{
  transitions = self->_transitions;
  if (transitions != transitions)
  {

    self->_transitions = transitions;
  }
}

- (void)setSettingInteractiveTransitionSettings:(id)settings
{
  if ([settings objectForKeyedSubscript:@"trackingBoxRadiusDefaultValue"])
  {
    [objc_msgSend(settings objectForKeyedSubscript:{@"trackingBoxRadiusDefaultValue", "floatValue"}];
    [(OKNavigatorLinearViewController *)self setInteractiveTransitionTrackingBoxRadius:v5];
  }

  if ([settings objectForKeyedSubscript:@"progressThresholdDefaultValue"])
  {
    [objc_msgSend(settings objectForKeyedSubscript:{@"progressThresholdDefaultValue", "floatValue"}];
    [(OKNavigatorLinearViewController *)self setInteractiveTransitionProgressThreshold:v6];
  }

  if ([settings objectForKeyedSubscript:@"velocityThresholdDefaultValue"])
  {
    [objc_msgSend(settings objectForKeyedSubscript:{@"velocityThresholdDefaultValue", "floatValue"}];
    v8 = v7;

    [(OKNavigatorLinearViewController *)self setInteractiveTransitionVelocityThreshold:v8];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = OKNavigatorLinearViewController;
  [(OKNavigatorViewController *)&v4 viewDidLoad];
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  [(NSMutableArray *)self->_orderedPagesNames removeAllObjects];
  [(NSMutableArray *)self->_orderedPagesNames addObjectsFromArray:[(OKPresentationNavigator *)[(OKNavigatorViewControllerProxy *)self navigator] pagesNames]];
  [(OKNavigatorLinearViewController *)self reloadPagesViewController];
  objc_sync_exit(orderedPagesNames);
}

- (BOOL)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = OKNavigatorLinearViewController;
  prepareForDisplay = [(OKNavigatorViewControllerProxy *)&v5 prepareForDisplay];
  if (prepareForDisplay)
  {
    [(OKNavigatorLinearViewController *)self updatePagesViewController];
  }

  return prepareForDisplay;
}

- (BOOL)prepareForWarmup
{
  v5.receiver = self;
  v5.super_class = OKNavigatorLinearViewController;
  prepareForWarmup = [(OKNavigatorViewControllerProxy *)&v5 prepareForWarmup];
  if (prepareForWarmup)
  {
    [(OKNavigatorLinearViewController *)self updatePagesViewController];
  }

  return prepareForWarmup;
}

- (BOOL)prepareForUnload
{
  v5.receiver = self;
  v5.super_class = OKNavigatorLinearViewController;
  prepareForUnload = [(OKNavigatorViewControllerProxy *)&v5 prepareForUnload];
  if (prepareForUnload)
  {
    [(OKNavigatorLinearViewController *)self updatePagesViewController];
  }

  return prepareForUnload;
}

- (void)presentationDidLiveUpdate
{
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  [(NSMutableArray *)self->_orderedPagesNames removeAllObjects];
  [(NSMutableArray *)self->_orderedPagesNames addObjectsFromArray:[(OKPresentationNavigator *)[(OKNavigatorViewControllerProxy *)self navigator] pagesNames]];

  objc_sync_exit(orderedPagesNames);
}

+ (void)setupJavascriptContext:(id)context
{
  v23[4] = *MEMORY[0x277D85DE8];
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKNavigatorLinearViewController"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:context];
  v4 = [objc_msgSend(context objectForKeyedSubscript:{@"OKNavigatorLinearViewController", "objectForKeyedSubscript:", @"prototype"}];
  v6 = *MEMORY[0x277CD4638];
  v20[0] = *MEMORY[0x277CD4630];
  v5 = v20[0];
  v20[1] = v6;
  v7 = MEMORY[0x277CBEC38];
  v23[0] = &__block_literal_global_18;
  v23[1] = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CBEC28];
  v10 = *MEMORY[0x277CD4610];
  v21 = *MEMORY[0x277CD4618];
  v8 = v21;
  v22 = v10;
  v23[2] = MEMORY[0x277CBEC28];
  v23[3] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"goToNext" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v23, v20, 4)}];
  v11 = [objc_msgSend(context objectForKeyedSubscript:{@"OKNavigatorLinearViewController", "objectForKeyedSubscript:", @"prototype"}];
  v18[0] = v5;
  v18[1] = v6;
  v19[0] = &__block_literal_global_110;
  v19[1] = v7;
  v18[2] = v8;
  v18[3] = v10;
  v19[2] = v9;
  v19[3] = v7;
  [v11 defineProperty:@"goToPrevious" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v19, v18, 4)}];
  v12 = [objc_msgSend(context objectForKeyedSubscript:{@"OKNavigatorLinearViewController", "objectForKeyedSubscript:", @"prototype"}];
  v16[0] = v5;
  v16[1] = v6;
  v17[0] = &__block_literal_global_115;
  v17[1] = v7;
  v16[2] = v8;
  v16[3] = v10;
  v17[2] = MEMORY[0x277CBEC28];
  v17[3] = v7;
  [v12 defineProperty:@"navigateToNext" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, v16, 4)}];
  v13 = [objc_msgSend(context objectForKeyedSubscript:{@"OKNavigatorLinearViewController", "objectForKeyedSubscript:", @"prototype"}];
  v14[0] = v5;
  v14[1] = v6;
  v15[0] = &__block_literal_global_120;
  v15[1] = v7;
  v14[2] = v8;
  v14[3] = v10;
  v15[2] = MEMORY[0x277CBEC28];
  v15[3] = v7;
  [v13 defineProperty:@"navigateToPrevious" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v15, v14, 4)}];
}

uint64_t __58__OKNavigatorLinearViewController_setupJavascriptContext___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 goToNext:0];
}

uint64_t __58__OKNavigatorLinearViewController_setupJavascriptContext___block_invoke_2()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 goToPrevious:0];
}

uint64_t __58__OKNavigatorLinearViewController_setupJavascriptContext___block_invoke_3()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 navigateToNext:0];
}

uint64_t __58__OKNavigatorLinearViewController_setupJavascriptContext___block_invoke_4()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 navigateToPrevious:0];
}

- (void)setCurrentPageToPageWithName:(id)name direction:(int64_t)direction animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v10 = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:name createIfNeeded:1];
  if (v10)
  {
    v11 = v10;
    if (v10 != [(OKNavigatorViewControllerProxy *)self currentPageViewController])
    {
      [(OKPageViewController *)v11 setNavigatorViewController:self];
      pagesViewController = self->_pagesViewController;

      [(OFPageViewController *)pagesViewController setViewController:v11 direction:direction animated:animatedCopy completionHandler:handler];
      return;
    }

    if (!handler)
    {
      return;
    }

    v13 = *(handler + 2);
    handlerCopy2 = handler;
    v15 = 1;
  }

  else
  {
    if (!handler)
    {
      return;
    }

    v13 = *(handler + 2);
    handlerCopy2 = handler;
    v15 = 0;
  }

  v13(handlerCopy2, v15);
}

- (id)nameForPageBeforePage:(id)page
{
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  v6 = -[NSMutableArray indexOfObject:](self->_orderedPagesNames, "indexOfObject:", [objc_msgSend(page "page")]);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || [(NSMutableArray *)self->_orderedPagesNames count]< 2)
  {
    goto LABEL_9;
  }

  if (!v6)
  {
    if (self->_wraps && [(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] couchModeLoops])
    {
      lastObject = [(NSMutableArray *)self->_orderedPagesNames lastObject];
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  lastObject = [(NSMutableArray *)self->_orderedPagesNames objectAtIndex:v6 - 1];
LABEL_5:
  v8 = lastObject;
LABEL_10:
  objc_sync_exit(orderedPagesNames);
  return v8;
}

- (id)nameForPageAfterPage:(id)page
{
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  v6 = -[NSMutableArray indexOfObject:](self->_orderedPagesNames, "indexOfObject:", [objc_msgSend(page "page")]);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || [(NSMutableArray *)self->_orderedPagesNames count]< 2)
  {
    goto LABEL_9;
  }

  if (v6 >= [(NSMutableArray *)self->_orderedPagesNames count]- 1)
  {
    if (self->_wraps && [(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] couchModeLoops])
    {
      firstObject = [(NSMutableArray *)self->_orderedPagesNames firstObject];
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  firstObject = [(NSMutableArray *)self->_orderedPagesNames objectAtIndex:v6 + 1];
LABEL_5:
  v8 = firstObject;
LABEL_10:
  objc_sync_exit(orderedPagesNames);
  return v8;
}

- (id)transitionBeforePage:(id)page
{
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  transitions = self->_transitions;
  if (!transitions || ![(NSArray *)transitions count])
  {
    goto LABEL_8;
  }

  v7 = -[NSMutableArray indexOfObject:](self->_orderedPagesNames, "indexOfObject:", [objc_msgSend(page "page")]);
  if (!v7)
  {
    v7 = [(NSMutableArray *)self->_orderedPagesNames count];
  }

  if (v7 - 1 >= [(NSArray *)self->_transitions count])
  {
    NSLog(&cfstr_ConsistencyErr.isa);
LABEL_8:
    defaultTransition = [(OKNavigatorLinearViewController *)self defaultTransition];
    goto LABEL_9;
  }

  defaultTransition = [(NSArray *)self->_transitions objectAtIndexedSubscript:?];
LABEL_9:
  v9 = defaultTransition;
  objc_sync_exit(orderedPagesNames);
  return v9;
}

- (id)transitionAfterPage:(id)page
{
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  transitions = self->_transitions;
  if (!transitions || ![(NSArray *)transitions count])
  {
    goto LABEL_6;
  }

  v7 = -[NSMutableArray indexOfObject:](self->_orderedPagesNames, "indexOfObject:", [objc_msgSend(page "page")]);
  if (v7 >= [(NSArray *)self->_transitions count])
  {
    NSLog(&cfstr_ConsistencyErr.isa);
LABEL_6:
    defaultTransition = [(OKNavigatorLinearViewController *)self defaultTransition];
    goto LABEL_7;
  }

  defaultTransition = [(NSArray *)self->_transitions objectAtIndexedSubscript:v7];
LABEL_7:
  v9 = defaultTransition;
  objc_sync_exit(orderedPagesNames);
  return v9;
}

- (void)_navigateToPrevious:(BOOL)previous withAction:(id)action overridingTransition:(BOOL)transition
{
  transitionCopy = transition;
  previousCopy = previous;
  currentPageViewController = [(OKNavigatorViewControllerProxy *)self currentPageViewController];
  if (previousCopy)
  {
    v10 = [(OKNavigatorLinearViewController *)self nameForPageBeforePage:currentPageViewController];
  }

  else
  {
    v10 = [(OKNavigatorLinearViewController *)self nameForPageAfterPage:currentPageViewController];
  }

  v11 = v10;
  [action setShouldPropagate:v10 == 0];
  if (v11)
  {
    if (transitionCopy)
    {
      overrideTransition = self->_overrideTransition;
      self->_currentTransition = overrideTransition;
      [(OKTransition *)overrideTransition setIsForward:!previousCopy];
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__OKNavigatorLinearViewController__navigateToPrevious_withAction_overridingTransition___block_invoke;
    v13[3] = &unk_279C8FA38;
    v13[4] = self;
    [(OKNavigatorLinearViewController *)self navigateToPageWithName:v11 animated:1 completion:v13];
  }
}

- (BOOL)pageViewController:(id)controller canAutomaticallyHandleGestureRecognizer:(id)recognizer
{
  v4 = [(OKNavigatorViewControllerProxy *)self presentationViewController:controller];

  return [(OKPresentationViewControllerProxy *)v4 interactivityEnabled];
}

- (void)pageViewController:(id)controller willStartTransitioningToViewController:(id)viewController fromViewController:(id)fromViewController withDirection:(int64_t)direction
{
  [(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] preventCouchPlayback];
  [viewController prepareForMode:{-[OKNavigatorViewControllerProxy prepareMode](self, "prepareMode")}];
  [fromViewController pageWillDisappear:1];
  [viewController pageWillAppear:1];
  if (!self->_currentTransition)
  {
    if (direction)
    {
      v10 = [(OKNavigatorLinearViewController *)self transitionBeforePage:fromViewController];
    }

    else
    {
      v10 = [(OKNavigatorLinearViewController *)self transitionAfterPage:fromViewController];
    }

    self->_currentTransition = v10;

    [(OKTransition *)v10 setIsForward:direction == 0];
  }
}

- (void)pageViewController:(id)controller didStartTransitioningToViewController:(id)viewController fromViewController:(id)fromViewController
{
  v32 = *MEMORY[0x277D85DE8];
  obj = self->_registeredActionBindingTransitions;
  objc_sync_enter(obj);
  [(NSMapTable *)self->_actionRespondersTransitionContexts removeAllObjects];
  v8 = [(NSMapTable *)self->_registeredActionBindingTransitions objectForKey:fromViewController];
  viewControllerCopy = viewController;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = +[OKAction createContext];
        [(NSMapTable *)self->_actionRespondersTransitionContexts setObject:v13 forKey:v12];
        [v12 sendAction:+[OKActionTransition transitionWithState:target:progress:velocity:context:](OKActionTransition toTarget:{"transitionWithState:target:progress:velocity:context:", 1, 1, v13, 0.0, 0.0), 0}];
      }

      v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v14 = [(NSMapTable *)self->_registeredActionBindingTransitions objectForKey:viewControllerCopy];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = +[OKAction createContext];
        [(NSMapTable *)self->_actionRespondersTransitionContexts setObject:v19 forKey:v18];
        [v18 sendAction:+[OKActionTransition transitionWithState:target:progress:velocity:context:](OKActionTransition toTarget:{"transitionWithState:target:progress:velocity:context:", 1, 2, v19, 0.0, 0.0), 0}];
      }

      v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  objc_sync_exit(obj);
}

- (void)pageViewController:(id)controller didFinishTransitioningToViewController:(id)viewController fromViewController:(id)fromViewController transitionCompleted:(BOOL)completed
{
  completedCopy = completed;
  v40 = *MEMORY[0x277D85DE8];
  obj = self->_registeredActionBindingTransitions;
  objc_sync_enter(obj);
  fromViewControllerCopy = fromViewController;
  v10 = [(NSMapTable *)self->_registeredActionBindingTransitions objectForKey:fromViewController];
  viewControllerCopy = viewController;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = *v35;
    if (completedCopy)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_actionRespondersTransitionContexts objectForKey:v15];
        *&v17 = v13;
        [v15 sendAction:+[OKActionTransition transitionWithState:target:progress:velocity:context:](OKActionTransition toTarget:{"transitionWithState:target:progress:velocity:context:", 3, 1, v16, v17, 0.0), 0}];
      }

      v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  v18 = viewControllerCopy;
  v19 = [(NSMapTable *)self->_registeredActionBindingTransitions objectForKey:viewControllerCopy];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = *v31;
    if (completedCopy)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * j);
        v25 = [(NSMapTable *)self->_actionRespondersTransitionContexts objectForKey:v24];
        *&v26 = v22;
        [v24 sendAction:+[OKActionTransition transitionWithState:target:progress:velocity:context:](OKActionTransition toTarget:{"transitionWithState:target:progress:velocity:context:", 3, 2, v25, v26, 0.0), 0}];
      }

      v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v20);
    v18 = viewControllerCopy;
  }

  [(NSMapTable *)self->_actionRespondersTransitionContexts removeAllObjects];
  objc_sync_exit(obj);
  if (completedCopy)
  {
    [fromViewControllerCopy pageDidDisappear:1];
    [v18 pageDidAppear:1];
    [(OKNavigatorViewControllerProxy *)self setCurrentPageViewController:v18];
  }

  else
  {
    [fromViewControllerCopy pageDidAppear:1];
    [v18 pageDidDisappear:1];
  }

  [(OKNavigatorLinearViewController *)self prepareAdjacentPageViewControllers];
  self->_currentTransition = 0;
  [(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] allowCouchPlayback];
}

- (void)pageViewController:(id)controller didUpdateTransitioningToViewController:(id)viewController fromViewController:(id)fromViewController withProgress:(double)progress andVelocity:(double)velocity
{
  v43 = *MEMORY[0x277D85DE8];
  obj = self->_registeredActionBindingTransitions;
  objc_sync_enter(obj);
  v12 = [(NSMapTable *)self->_registeredActionBindingTransitions objectForKey:fromViewController];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v13)
  {
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        v19 = [(NSMapTable *)self->_actionRespondersTransitionContexts objectForKey:v18];
        progressCopy = progress;
        *&v20 = progressCopy;
        velocityCopy = velocity;
        *&v21 = velocityCopy;
        [v18 sendAction:+[OKActionTransition transitionWithState:target:progress:velocity:context:](OKActionTransition toTarget:{"transitionWithState:target:progress:velocity:context:", 2, 1, v19, v20, v21), 0}];
      }

      v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v13);
  }

  v22 = [(NSMapTable *)self->_registeredActionBindingTransitions objectForKey:viewController];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v23)
  {
    v24 = *v34;
    progressCopy2 = progress;
    velocityCopy2 = velocity;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v33 + 1) + 8 * j);
        v29 = [(NSMapTable *)self->_actionRespondersTransitionContexts objectForKey:v28];
        *&v30 = progressCopy2;
        *&v31 = velocityCopy2;
        [v28 sendAction:+[OKActionTransition transitionWithState:target:progress:velocity:context:](OKActionTransition toTarget:{"transitionWithState:target:progress:velocity:context:", 2, 2, v29, v30, v31), 0}];
      }

      v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);
  }

  objc_sync_exit(obj);
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating fromViewController:(id)viewController transitionCompleted:(BOOL)completed
{
  if (completed)
  {
    [(OKNavigatorViewControllerProxy *)self setCurrentPageViewController:[(OFPageViewController *)self->_pagesViewController viewController:controller]];

    [(OKNavigatorLinearViewController *)self prepareAdjacentPageViewControllers];
  }
}

- (void)pageViewController:(id)controller willStartBouncingWithDirection:(int64_t)direction
{
  [(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] preventCouchPlayback];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  if (!self->_currentTransition)
  {
    v6 = objc_alloc_init(OKTransitionPush);
    self->_currentTransition = &v6->super.super;

    [(OKTransition *)v6 setIsForward:direction == 0];
  }
}

- (void)pageViewControllerDidFinishBouncing:(id)bouncing
{
  self->_currentTransition = 0;
  [objc_msgSend(MEMORY[0x277CCAB98] defaultCenter];
  presentationViewController = [(OKNavigatorViewControllerProxy *)self presentationViewController];

  [(OKPresentationViewControllerProxy *)presentationViewController allowCouchPlayback];
}

- (id)navigationController:(id)controller animationControllerForDirection:(int64_t)direction fromViewController:(id)viewController toViewController:(id)toViewController
{
  v6 = self->_currentTransition;

  return v6;
}

- (id)navigationController:(id)controller interactionControllerForAnimationController:(id)animationController
{
  v4 = self->_currentTransition;

  return v4;
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController createIfNeeded:(BOOL)needed
{
  if (!viewController)
  {
    return 0;
  }

  neededCopy = needed;
  v7 = [(OKNavigatorLinearViewController *)self nameForPageBeforePage:viewController];
  if (!v7)
  {
    return 0;
  }

  v8 = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:v7 createIfNeeded:neededCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setNavigatorViewController:self];
    [-[OKNavigatorLinearViewController view](self "view")];
    [objc_msgSend(v9 "view")];
  }

  return v9;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController createIfNeeded:(BOOL)needed
{
  if (!viewController)
  {
    return 0;
  }

  neededCopy = needed;
  v7 = [(OKNavigatorLinearViewController *)self nameForPageAfterPage:viewController];
  if (!v7)
  {
    return 0;
  }

  v8 = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:v7 createIfNeeded:neededCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setNavigatorViewController:self];
    [-[OKNavigatorLinearViewController view](self "view")];
    [objc_msgSend(v9 "view")];
  }

  return v9;
}

- (int64_t)presentationCountForPageViewController:(id)controller
{
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  v5 = [(NSMutableArray *)self->_orderedPagesNames count];
  objc_sync_exit(orderedPagesNames);
  return v5;
}

- (int64_t)presentationIndexForPageViewController:(id)controller
{
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  v5 = [(NSMutableArray *)self->_orderedPagesNames indexOfObject:[(OKPresentationCanvas *)[(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] page] name]];
  objc_sync_exit(orderedPagesNames);
  return v5;
}

- (void)reloadPagesViewController
{
  pagesViewController = self->_pagesViewController;
  if (pagesViewController)
  {
    [(OFPageViewController *)pagesViewController removeFromParentViewControllerInstantly];
    [(OFPageViewController *)self->_pagesViewController setDataSource:0];
    v4 = self->_pagesViewController;
    if (v4)
    {
      [(OFPageViewController *)v4 setDelegate:0];

      self->_pagesViewController = 0;
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277D627D0]);
  self->_pagesViewController = v5;
  [(OFPageViewController *)v5 setNavigationOrientation:self->_navigationOrientation];
  [(OFPageViewController *)self->_pagesViewController setDataSource:self];
  [(OFPageViewController *)self->_pagesViewController setDelegate:self];
  [(OKNavigatorLinearViewController *)self addChildViewControllerInstantly:self->_pagesViewController];
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  if ([(NSMutableArray *)self->_orderedPagesNames count])
  {
    currentPageViewController = [(OKNavigatorViewControllerProxy *)self currentPageViewController];
    if (!currentPageViewController)
    {
      currentPageViewController = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:[(NSMutableArray *)self->_orderedPagesNames firstObject] createIfNeeded:1];
    }

    [(OKPageViewController *)currentPageViewController prepareForMode:[(OKNavigatorViewControllerProxy *)self prepareMode]];
    if (currentPageViewController)
    {
      [-[OKNavigatorLinearViewController view](self "view")];
      [-[OKPageViewController view](currentPageViewController "view")];
      v12 = self->_pagesViewController;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __60__OKNavigatorLinearViewController_reloadPagesViewController__block_invoke;
      v13[3] = &unk_279C90630;
      v13[4] = self;
      v13[5] = currentPageViewController;
      [(OFPageViewController *)v12 setViewController:currentPageViewController direction:0 animated:0 completionHandler:v13];
    }
  }

  objc_sync_exit(orderedPagesNames);
}

- (void)updatePagesViewController
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 1)
  {
    [(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] prepareForDisplay];
LABEL_5:

    [(OKNavigatorLinearViewController *)self prepareAdjacentPageViewControllers];
    return;
  }

  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 2)
  {
    [(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] prepareForWarmup];
    goto LABEL_5;
  }

  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(OKNavigatorViewControllerProxy *)self cachedPageViewControllerForPageWithNames:self->_orderedPagesNames, 0];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v8 prepareForUnload];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(orderedPagesNames);
}

- (void)prepareAdjacentPageViewControllers
{
  v43 = *MEMORY[0x277D85DE8];
  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 1)
  {
    currentPageViewController = [(OKNavigatorViewControllerProxy *)self currentPageViewController];
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    orderedPagesNames = self->_orderedPagesNames;
    objc_sync_enter(orderedPagesNames);
    v7 = [(OKNavigatorLinearViewController *)self pageViewController:self->_pagesViewController viewControllerAfterViewController:currentPageViewController];
    v8 = [(OKNavigatorLinearViewController *)self pageViewController:self->_pagesViewController viewControllerBeforeViewController:currentPageViewController];
    if (v7)
    {
      v9 = v7 == currentPageViewController;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && ([v4 containsObject:v7] & 1) == 0)
    {
      [v4 addObject:v7];
    }

    if (v8)
    {
      v10 = v8 == currentPageViewController;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && ([v4 containsObject:v8] & 1) == 0)
    {
      [v4 addObject:v8];
    }

    v11 = 6;
    do
    {
      v7 = [(OKNavigatorLinearViewController *)self pageViewController:self->_pagesViewController viewControllerAfterViewController:v7 createIfNeeded:0];
      v8 = [(OKNavigatorLinearViewController *)self pageViewController:self->_pagesViewController viewControllerBeforeViewController:v8 createIfNeeded:0];
      if (v7)
      {
        v12 = v7 == currentPageViewController;
      }

      else
      {
        v12 = 1;
      }

      if (!v12 && ([v4 containsObject:v7] & 1) == 0 && (objc_msgSend(v5, "containsObject:", v7) & 1) == 0)
      {
        [v5 addObject:v7];
      }

      if (v8)
      {
        v13 = v8 == currentPageViewController;
      }

      else
      {
        v13 = 1;
      }

      if (!v13 && ([v4 containsObject:v8] & 1) == 0 && (objc_msgSend(v5, "containsObject:", v8) & 1) == 0)
      {
        [v5 addObject:v8];
      }

      --v11;
    }

    while (v11);
    v14 = [MEMORY[0x277CBEB58] setWithArray:{-[OKNavigatorViewControllerProxy cachedPageViewControllerForPageWithNames:](self, "cachedPageViewControllerForPageWithNames:", self->_orderedPagesNames)}];
    objc_sync_exit(orderedPagesNames);
    if (currentPageViewController)
    {
      [v14 removeObject:currentPageViewController];
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = [v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v15)
    {
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v4);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          [v18 prepareForWarmup];
          [v14 removeObject:v18];
        }

        v15 = [v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v15);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = [v5 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v19)
    {
      v20 = *v32;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v5);
          }

          v22 = *(*(&v31 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v22 prepareForUnload];
            [v14 removeObject:v22];
          }
        }

        v19 = [v5 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v19);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = [v14 countByEnumeratingWithState:&v27 objects:v40 count:16];
    if (v23)
    {
      v24 = *v28;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v14);
          }

          v26 = *(*(&v27 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v26 prepareForUnload];
            name = [v26 name];
            -[OKNavigatorViewControllerProxy uncachePageViewControllerForPageWithNames:](self, "uncachePageViewControllerForPageWithNames:", [MEMORY[0x277CBEA60] arrayWithObjects:&name count:1]);
          }
        }

        v23 = [v14 countByEnumeratingWithState:&v27 objects:v40 count:16];
      }

      while (v23);
    }
  }
}

- (void)gotoPageWithName:(id)name animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  if (animatedCopy)
  {
    overrideTransition = self->_overrideTransition;
    self->_currentTransition = overrideTransition;
    [(OKTransition *)overrideTransition setIsForward:1];
  }

  v11 = -[NSMutableArray indexOfObject:](self->_orderedPagesNames, "indexOfObject:", [objc_msgSend(-[OKNavigatorViewControllerProxy pageViewControllerForPageWithName:createIfNeeded:](self pageViewControllerForPageWithName:name createIfNeeded:{1), "page"), "name"}]);
  v12 = [(NSMutableArray *)self->_orderedPagesNames indexOfObject:[(OKPresentationCanvas *)[(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] page] name]];
  v13 = v11 < v12;
  if (v11 < v12 && animatedCopy)
  {
    [(OKTransition *)self->_currentTransition setIsForward:0, v13];
    v13 = 1;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__OKNavigatorLinearViewController_gotoPageWithName_animated_completion___block_invoke;
  v15[3] = &unk_279C8E798;
  v15[4] = self;
  v15[5] = completion;
  [(OKNavigatorLinearViewController *)self setCurrentPageToPageWithName:name direction:v13 animated:animatedCopy completionHandler:v15];
  objc_sync_exit(orderedPagesNames);
}

- (void)navigateToPageWithName:(id)name animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  orderedPagesNames = self->_orderedPagesNames;
  objc_sync_enter(orderedPagesNames);
  -[OKNavigatorLinearViewController setCurrentPageToPageWithName:direction:animated:completionHandler:](self, "setCurrentPageToPageWithName:direction:animated:completionHandler:", name, -[NSMutableArray indexOfObject:](self->_orderedPagesNames, "indexOfObject:", [objc_msgSend(-[OKNavigatorViewControllerProxy pageViewControllerForPageWithName:createIfNeeded:](self pageViewControllerForPageWithName:name createIfNeeded:{1), "page"), "name"}]) < -[NSMutableArray indexOfObject:](self->_orderedPagesNames, "indexOfObject:", -[OKPresentationCanvas name](-[OKPageViewController page](-[OKNavigatorViewControllerProxy currentPageViewController](self, "currentPageViewController"), "page"), "name")), animatedCopy, completion);

  objc_sync_exit(orderedPagesNames);
}

- (BOOL)canPerformAction:(id)action
{
  if (self->_panIsEnabled)
  {
    v3 = 1;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

- (id)_pageViewControllerForActionResponder:(id)responder
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [responder pageViewController];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return responder;
    }

    else
    {
      return 0;
    }
  }
}

- (void)registerActionBindingTransition:(id)transition
{
  v5 = [(OKNavigatorLinearViewController *)self _pageViewControllerForActionResponder:?];
  if (v5)
  {
    v6 = v5;
    registeredActionBindingTransitions = self->_registeredActionBindingTransitions;
    objc_sync_enter(registeredActionBindingTransitions);
    v8 = [(NSMapTable *)self->_registeredActionBindingTransitions objectForKey:v6];
    if (v8 || (v8 = [MEMORY[0x277CBEB18] array], -[NSMapTable setObject:forKey:](self->_registeredActionBindingTransitions, "setObject:forKey:", v8, v6), v8))
    {
      [v8 addObject:transition];
    }

    objc_sync_exit(registeredActionBindingTransitions);
  }
}

- (void)unregisterActionBindingTransition:(id)transition
{
  v5 = [(OKNavigatorLinearViewController *)self _pageViewControllerForActionResponder:?];
  if (v5)
  {
    v6 = v5;
    registeredActionBindingTransitions = self->_registeredActionBindingTransitions;
    objc_sync_enter(registeredActionBindingTransitions);
    v8 = [(NSMapTable *)self->_registeredActionBindingTransitions objectForKey:v6];
    if (v8)
    {
      [v8 removeObject:transition];
    }

    objc_sync_exit(registeredActionBindingTransitions);
  }
}

@end