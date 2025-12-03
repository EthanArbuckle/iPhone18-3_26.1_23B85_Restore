@interface SectionViewController
- (_TtC5TeaUI21SectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doSegmentChangeWithSender:(id)sender;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7F62414();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D7F62C50();
}

- (void)doSegmentChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D7F64668(senderCopy);
}

- (_TtC5TeaUI21SectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  SectionViewController.init(nibName:bundle:)();
}

@end