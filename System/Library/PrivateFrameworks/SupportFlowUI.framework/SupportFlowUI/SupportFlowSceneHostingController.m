@interface SupportFlowSceneHostingController
- (_TtC13SupportFlowUI33SupportFlowSceneHostingController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)clientIsReady;
- (void)viewDidLoad;
@end

@implementation SupportFlowSceneHostingController

- (void)viewDidLoad
{
  v2 = self;
  sub_26BCBE190();
}

- (_TtC13SupportFlowUI33SupportFlowSceneHostingController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_26BCC8F6C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SupportFlowSceneHostingController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)clientIsReady
{
  v2 = self;
  SupportFlowSceneHostingController.clientIsReady()();
}

@end