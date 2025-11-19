@interface SKUIDismissingProductViewController
- (SKUIDismissingProductViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)productViewControllerDidFinish:(id)a3;
@end

@implementation SKUIDismissingProductViewController

- (SKUIDismissingProductViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SKUIDismissingProductViewController;
  v4 = [(SKStoreProductViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(SKStoreProductViewController *)v4 setDelegate:v4];
  }

  return v5;
}

- (void)productViewControllerDidFinish:(id)a3
{
  [(SKStoreProductViewController *)self setDelegate:0];

  [(SKStoreProductViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end