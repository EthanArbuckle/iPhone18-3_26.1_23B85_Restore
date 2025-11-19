@interface PencilActionConfigurationViewController
- (CGSize)preferredContentSize;
- (_TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PencilActionConfigurationViewController

- (void)loadView
{
  v2 = self;
  sub_1000020FC();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100002E74();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10000329C();
}

- (CGSize)preferredContentSize
{
  v2 = self;
  v3 = sub_1000033E8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1000135EC();
  }

  v5 = a4;
  sub_100003824();
}

@end