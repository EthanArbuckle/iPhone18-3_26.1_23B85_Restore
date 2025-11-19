@interface SnapshotViewController
- (_TtC11WeatherMaps22SnapshotViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation SnapshotViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_220F57070();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_220F57650();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_220F57810(a3);
}

- (_TtC11WeatherMaps22SnapshotViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_220FC2700();
  }

  v5 = a4;
  sub_220F594B8();
}

@end