@interface ProductPageViewController
- (BOOL)lookupItemDidLoad:(id)a3 parameters:(id)a4;
- (_TtC22TVProductPageExtension25ProductPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ProductPageViewController

- (_TtC22TVProductPageExtension25ProductPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100006B78();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100001718(v5, v7, a4);
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
  v2 = self;
  sub_100002504();
}

- (BOOL)lookupItemDidLoad:(id)a3 parameters:(id)a4
{
  v6 = sub_100006B48();
  v7 = a3;
  v8 = self;
  v9 = sub_100002CCC(v7, v6);

  return v9 & 1;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end