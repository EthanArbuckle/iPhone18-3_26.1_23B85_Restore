@interface SegmentedViewController
- (_TtC5TeaUI23SegmentedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doSegmentChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SegmentedViewController

- (_TtC5TeaUI23SegmentedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return SegmentedViewController.init(nibName:bundle:)(bundle, v6, bundle);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D8144994(appear);
}

- (void)doSegmentChange
{
  selfCopy = self;
  sub_1D8144B30();
}

@end