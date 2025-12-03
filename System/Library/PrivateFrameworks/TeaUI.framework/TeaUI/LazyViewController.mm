@interface LazyViewController
- (NSString)description;
- (_TtC5TeaUI18LazyViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)childViewControllerForStatusBarStyle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation LazyViewController

- (id)childViewControllerForStatusBarStyle
{
  selfCopy = self;
  v2 = LazyViewController.childForStatusBarStyle.getter();

  return v2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  LazyViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  LazyViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  LazyViewController.viewWillLayoutSubviews()();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  LazyViewController.setEditing(_:animated:)(editing, animated);
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  selfCopy = self;
  LazyViewController.contentScrollView(for:)(v5, edge);
  v7 = v6;

  return v7;
}

- (_TtC5TeaUI18LazyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  LazyViewController.init(nibName:bundle:)();
}

- (NSString)description
{
  selfCopy = self;
  LazyViewController.description.getter();

  v3 = sub_1D8190EE4();

  return v3;
}

@end