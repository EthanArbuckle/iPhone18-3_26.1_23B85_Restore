@interface OKNavigatorFixedViewController
- (void)commonInit;
- (void)dealloc;
@end

@implementation OKNavigatorFixedViewController

- (void)commonInit
{
  v2.receiver = self;
  v2.super_class = OKNavigatorFixedViewController;
  [(OKNavigatorFixedViewControllerProxy *)&v2 commonInit];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKNavigatorFixedViewController;
  [(OKNavigatorFixedViewControllerProxy *)&v2 dealloc];
}

@end