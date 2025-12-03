@interface SKUIDismissingProductViewController
- (SKUIDismissingProductViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)productViewControllerDidFinish:(id)finish;
@end

@implementation SKUIDismissingProductViewController

- (SKUIDismissingProductViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SKUIDismissingProductViewController;
  v4 = [(SKStoreProductViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SKStoreProductViewController *)v4 setDelegate:v4];
  }

  return v5;
}

- (void)productViewControllerDidFinish:(id)finish
{
  [(SKStoreProductViewController *)self setDelegate:0];

  [(SKStoreProductViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end