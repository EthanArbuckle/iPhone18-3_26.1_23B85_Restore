@interface PencilActionConfigurationSearchViewController
- (_TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PencilActionConfigurationSearchViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000C244();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10000C574(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10000C624();
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  sub_1000135EC();
  barCopy = bar;
  selfCopy = self;
  sub_10000CA00();
}

- (_TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1000135EC();
  }

  bundleCopy = bundle;
  sub_10000CAE0();
}

@end