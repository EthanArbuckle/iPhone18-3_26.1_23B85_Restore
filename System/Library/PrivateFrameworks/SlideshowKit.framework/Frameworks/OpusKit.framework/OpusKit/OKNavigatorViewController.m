@interface OKNavigatorViewController
- (void)commonInit;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation OKNavigatorViewController

- (void)commonInit
{
  v2.receiver = self;
  v2.super_class = OKNavigatorViewController;
  [(OKNavigatorViewControllerProxy *)&v2 commonInit];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKNavigatorViewController;
  [(OKNavigatorViewControllerProxy *)&v2 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OKNavigatorViewController;
  [(OKNavigatorViewControllerProxy *)&v3 viewDidLoad];
  if ([[(OKPresentationCanvas *)[(OKNavigatorViewControllerProxy *)self navigator] presentation] enableDisplayDebugging])
  {
    [objc_msgSend(-[OKNavigatorViewController view](self "view")];
    [objc_msgSend(-[OKNavigatorViewController view](self "view")];
    [-[OKNavigatorViewController view](self "view")];
  }
}

@end