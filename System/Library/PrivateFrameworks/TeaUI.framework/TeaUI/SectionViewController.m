@interface SectionViewController
- (_TtC5TeaUI21SectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doSegmentChangeWithSender:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7F62414();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D7F62C50();
}

- (void)doSegmentChangeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7F64668(v4);
}

- (_TtC5TeaUI21SectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  SectionViewController.init(nibName:bundle:)();
}

@end