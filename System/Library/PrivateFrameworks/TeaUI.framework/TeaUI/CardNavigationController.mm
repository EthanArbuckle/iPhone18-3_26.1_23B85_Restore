@interface CardNavigationController
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)viewDidLoad;
@end

@implementation CardNavigationController

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  CardNavigationController.navigationController(_:willShow:animated:)(v7, v8, 0);
}

- (void)viewDidLoad
{
  v2 = self;
  CardNavigationController.viewDidLoad()();
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v10 = self;
  CardNavigationController.navigationController(_:didShow:animated:)(&v10->super.super.super, v9, 0);
}

@end