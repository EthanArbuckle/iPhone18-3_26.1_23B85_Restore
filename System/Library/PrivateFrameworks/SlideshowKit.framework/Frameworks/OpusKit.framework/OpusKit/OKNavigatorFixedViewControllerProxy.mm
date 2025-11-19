@interface OKNavigatorFixedViewControllerProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)prepareForDisplay;
- (BOOL)prepareForUnload;
- (BOOL)prepareForWarmup;
- (void)commonInit;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)resolutionDidChange;
- (void)updatePageViewController;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewWillDisappear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewDidDisappear:a3];
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

- (void)willMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 willMoveToParentViewController:a3];
}

- (void)didMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorFixedViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 didMoveToParentViewController:a3];
}

+ (id)supportedSettings
{
  v4.receiver = a1;
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
    v4 = [(OKNavigatorViewControllerProxy *)self prepareMode];
    v5 = self->_pageViewController;
    if (v4 == 2)
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
  v3 = [(OKNavigatorViewControllerProxy *)&v5 prepareForDisplay];
  if (v3)
  {
    [(OKNavigatorFixedViewControllerProxy *)self updatePageViewController];
  }

  return v3;
}

- (BOOL)prepareForWarmup
{
  v5.receiver = self;
  v5.super_class = OKNavigatorFixedViewControllerProxy;
  v3 = [(OKNavigatorViewControllerProxy *)&v5 prepareForWarmup];
  if (v3)
  {
    [(OKNavigatorFixedViewControllerProxy *)self updatePageViewController];
  }

  return v3;
}

- (BOOL)prepareForUnload
{
  v5.receiver = self;
  v5.super_class = OKNavigatorFixedViewControllerProxy;
  v3 = [(OKNavigatorViewControllerProxy *)&v5 prepareForUnload];
  if (v3)
  {
    [(OKNavigatorFixedViewControllerProxy *)self updatePageViewController];
  }

  return v3;
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKNavigatorFixedViewController"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

@end