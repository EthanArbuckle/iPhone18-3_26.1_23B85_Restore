@interface LazyViewController
- (NSString)description;
- (_TtC5TeaUI18LazyViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)childViewControllerForStatusBarStyle;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation LazyViewController

- (id)childViewControllerForStatusBarStyle
{
  v1 = a1;
  v2 = LazyViewController.childForStatusBarStyle.getter();

  return v2;
}

- (void)viewDidLoad
{
  v2 = self;
  LazyViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  LazyViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  LazyViewController.viewWillLayoutSubviews()();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  LazyViewController.setEditing(_:animated:)(a3, a4);
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = self;
  LazyViewController.contentScrollView(for:)(v5, a3);
  v7 = v6;

  return v7;
}

- (_TtC5TeaUI18LazyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  LazyViewController.init(nibName:bundle:)();
}

- (NSString)description
{
  v2 = self;
  LazyViewController.description.getter();

  v3 = sub_1D8190EE4();

  return v3;
}

@end