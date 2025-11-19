@interface PKViewController
- (PKViewController)init;
- (PKViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation PKViewController

- (PKViewController)init
{
  v3.receiver = self;
  v3.super_class = PKViewController;
  return [(PKViewController *)&v3 initWithNibName:0 bundle:0];
}

- (PKViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  result = a4;
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_alloc_init(PKView);
  [(PKViewController *)self setView:v3];
}

@end