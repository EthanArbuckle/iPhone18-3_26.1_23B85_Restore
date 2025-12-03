@interface PKViewController
- (PKViewController)init;
- (PKViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation PKViewController

- (PKViewController)init
{
  v3.receiver = self;
  v3.super_class = PKViewController;
  return [(PKViewController *)&v3 initWithNibName:0 bundle:0];
}

- (PKViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  result = bundle;
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_alloc_init(PKView);
  [(PKViewController *)self setView:v3];
}

@end