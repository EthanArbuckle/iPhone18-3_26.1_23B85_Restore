@interface SupportFlowSceneHostingController
- (_TtC13SupportFlowUI33SupportFlowSceneHostingController)initWithNibName:(id)name bundle:(id)bundle;
- (void)clientIsReady;
- (void)viewDidLoad;
@end

@implementation SupportFlowSceneHostingController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_26BCBE190();
}

- (_TtC13SupportFlowUI33SupportFlowSceneHostingController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_26BCC8F6C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return SupportFlowSceneHostingController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)clientIsReady
{
  selfCopy = self;
  SupportFlowSceneHostingController.clientIsReady()();
}

@end