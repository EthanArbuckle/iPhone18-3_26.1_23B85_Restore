@interface WFActionDetailsViewController
- (_TtC14WorkflowEditor29WFActionDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleTapOnDescriptionTextView:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation WFActionDetailsViewController

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_27455966C();
}

- (void)handleTapOnDescriptionTextView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27455A1A4(v4);
}

- (_TtC14WorkflowEditor29WFActionDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_27463B6AC();
  }

  v5 = a4;
  WFActionDetailsViewController.init(nibName:bundle:)();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  WFActionDetailsViewController.scrollViewDidScroll(_:)(v5);
}

@end