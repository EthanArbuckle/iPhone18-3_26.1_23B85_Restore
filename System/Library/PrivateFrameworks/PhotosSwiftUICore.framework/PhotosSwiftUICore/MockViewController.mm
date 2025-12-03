@interface MockViewController
- (_TtC17PhotosSwiftUICore18MockViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation MockViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1C1188898();
}

- (_TtC17PhotosSwiftUICore18MockViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1C1265EA0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return MockViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end