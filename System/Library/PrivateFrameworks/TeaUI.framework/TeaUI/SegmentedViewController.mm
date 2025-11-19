@interface SegmentedViewController
- (_TtC5TeaUI23SegmentedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doSegmentChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SegmentedViewController

- (_TtC5TeaUI23SegmentedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return SegmentedViewController.init(nibName:bundle:)(a4, v6, a4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1D8144994(a3);
}

- (void)doSegmentChange
{
  v2 = self;
  sub_1D8144B30();
}

@end