@interface ProductPageViewController
- (BOOL)lookupItemDidLoad:(id)load parameters:(id)parameters;
- (_TtC22TVProductPageExtension25ProductPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ProductPageViewController

- (_TtC22TVProductPageExtension25ProductPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100006B78();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100001718(v5, v7, bundle);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProductPageViewController();
  v2 = v3.receiver;
  [(ProductPageViewController *)&v3 viewDidLoad];
  [v2 setNeedsUpdateOfSupportedInterfaceOrientations];
  sub_100002720(1);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100002504();
}

- (BOOL)lookupItemDidLoad:(id)load parameters:(id)parameters
{
  v6 = sub_100006B48();
  loadCopy = load;
  selfCopy = self;
  v9 = sub_100002CCC(loadCopy, v6);

  return v9 & 1;
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end