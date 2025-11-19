@interface PencilActionConfigurationSearchViewController
- (_TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PencilActionConfigurationSearchViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10000C244();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10000C574(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10000C624();
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  sub_1000135EC();
  v6 = a3;
  v7 = self;
  sub_10000CA00();
}

- (_TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1000135EC();
  }

  v5 = a4;
  sub_10000CAE0();
}

@end