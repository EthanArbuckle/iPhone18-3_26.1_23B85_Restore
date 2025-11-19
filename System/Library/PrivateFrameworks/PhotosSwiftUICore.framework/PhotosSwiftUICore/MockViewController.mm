@interface MockViewController
- (_TtC17PhotosSwiftUICore18MockViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation MockViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1C1188898();
}

- (_TtC17PhotosSwiftUICore18MockViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1C1265EA0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return MockViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end