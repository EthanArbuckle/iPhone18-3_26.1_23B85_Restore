@interface OKNavigatorCollectionViewController
- (void)commonInit;
- (void)dealloc;
@end

@implementation OKNavigatorCollectionViewController

- (void)commonInit
{
  v2.receiver = self;
  v2.super_class = OKNavigatorCollectionViewController;
  [(OKNavigatorCollectionViewControllerProxy *)&v2 commonInit];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKNavigatorCollectionViewController;
  [(OKNavigatorCollectionViewControllerProxy *)&v2 dealloc];
}

@end