@interface SupportFlowViewController
- (_TtC13SupportFlowUI25SupportFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)clientIsReady;
@end

@implementation SupportFlowViewController

- (void)clientIsReady
{
  v2 = self;
  sub_26BCB7208();
}

- (_TtC13SupportFlowUI25SupportFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_26BCC8F6C();
  }

  v5 = a4;
  SupportFlowViewController.init(nibName:bundle:)();
}

@end