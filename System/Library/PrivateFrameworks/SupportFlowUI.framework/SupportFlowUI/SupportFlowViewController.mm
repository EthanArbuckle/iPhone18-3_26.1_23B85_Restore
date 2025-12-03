@interface SupportFlowViewController
- (_TtC13SupportFlowUI25SupportFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)clientIsReady;
@end

@implementation SupportFlowViewController

- (void)clientIsReady
{
  selfCopy = self;
  sub_26BCB7208();
}

- (_TtC13SupportFlowUI25SupportFlowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_26BCC8F6C();
  }

  bundleCopy = bundle;
  SupportFlowViewController.init(nibName:bundle:)();
}

@end