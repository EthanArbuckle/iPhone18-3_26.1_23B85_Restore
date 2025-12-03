@interface WFActionDetailsViewController
- (_TtC14WorkflowEditor29WFActionDetailsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleTapOnDescriptionTextView:(id)view;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewWillLayoutSubviews;
@end

@implementation WFActionDetailsViewController

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_27455966C();
}

- (void)handleTapOnDescriptionTextView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_27455A1A4(viewCopy);
}

- (_TtC14WorkflowEditor29WFActionDetailsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_27463B6AC();
  }

  bundleCopy = bundle;
  WFActionDetailsViewController.init(nibName:bundle:)();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  WFActionDetailsViewController.scrollViewDidScroll(_:)(selfCopy);
}

@end