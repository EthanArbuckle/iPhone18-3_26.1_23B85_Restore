@interface OKNavigatorFixedViewControllerProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)prepareForDisplay;
- (BOOL)prepareForUnload;
- (BOOL)prepareForWarmup;
- (void)commonInit;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)resolutionDidChange;
- (void)updatePageViewController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation OKNavigatorFixedViewControllerProxy

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewController *)&v3 commonInit];
  self->_pageViewController = 0;
}

- (void)dealloc
{
  [(OKPageViewController *)self->_pageViewController setNavigatorViewController:0];
  pageViewController = self->_pageViewController;
  if (pageViewController)
  {

    self->_pageViewController = 0;
  }

  v4.receiver = self;
  v4.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewController *)&v3 viewDidLoad];
  [(OKNavigatorFixedViewControllerProxy *)self setPageViewController:[(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:[(NSMutableArray *)[(OKPresentationNavigator *)[(OKNavigatorViewControllerProxy *)self navigator] pagesNames] firstObject] createIfNeeded:1]];
  [(OKPageViewController *)[(OKNavigatorFixedViewControllerProxy *)self pageViewController] setNavigatorViewController:self];
  [(OKNavigatorFixedViewControllerProxy *)self addChildViewControllerInstantly:[(OKNavigatorFixedViewControllerProxy *)self pageViewController]];
  [(OKNavigatorViewControllerProxy *)self setCurrentPageViewController:[(OKNavigatorFixedViewControllerProxy *)self pageViewController]];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewDidDisappear:disappear];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 viewDidLayoutSubviews];
}

- (void)resolutionDidChange
{
  v2.receiver = self;
  v2.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 resolutionDidChange];
}

- (void)willMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 willMoveToParentViewController:controller];
}

- (void)didMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 didMoveToParentViewController:controller];
}

+ (id)supportedSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKNavigatorFixedViewControllerProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  [v2 addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  return v2;
}

- (void)updatePageViewController
{
  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 1)
  {
    pageViewController = self->_pageViewController;

    [(OKPageViewController *)pageViewController prepareForDisplay];
  }

  else
  {
    prepareMode = [(OKNavigatorViewControllerProxy *)self prepareMode];
    v5 = self->_pageViewController;
    if (prepareMode == 2)
    {

      [(OKPageViewController *)v5 prepareForWarmup];
    }

    else
    {

      [(OKPageViewController *)v5 prepareForUnload];
    }
  }
}

- (BOOL)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = OKNavigatorFixedViewControllerProxy;
  prepareForDisplay = [(OKNavigatorViewControllerProxy *)&v5 prepareForDisplay];
  if (prepareForDisplay)
  {
    [(OKNavigatorFixedViewControllerProxy *)self updatePageViewController];
  }

  return prepareForDisplay;
}

- (BOOL)prepareForWarmup
{
  v5.receiver = self;
  v5.super_class = OKNavigatorFixedViewControllerProxy;
  prepareForWarmup = [(OKNavigatorViewControllerProxy *)&v5 prepareForWarmup];
  if (prepareForWarmup)
  {
    [(OKNavigatorFixedViewControllerProxy *)self updatePageViewController];
  }

  return prepareForWarmup;
}

- (BOOL)prepareForUnload
{
  v5.receiver = self;
  v5.super_class = OKNavigatorFixedViewControllerProxy;
  prepareForUnload = [(OKNavigatorViewControllerProxy *)&v5 prepareForUnload];
  if (prepareForUnload)
  {
    [(OKNavigatorFixedViewControllerProxy *)self updatePageViewController];
  }

  return prepareForUnload;
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKNavigatorFixedViewController"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end