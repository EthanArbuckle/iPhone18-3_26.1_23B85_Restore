@interface SiriSharedUITamaleView
- (NSString)bundleIdentifier;
- (NSString)sceneIdentifier;
- (SiriSharedUITamaleView)initWithCoder:(id)a3;
- (SiriSharedUITamaleView)initWithFrame:(CGRect)a3;
- (SiriSharedUITamaleViewDelegate)delegate;
- (void)clientIsReady;
- (void)setHostingController:(id)a3;
- (void)setSceneIdentifier:(id)a3;
- (void)siriDidDismissResults;
- (void)siriWillPresentResult;
- (void)siriWillProcessRequest;
@end

@implementation SiriSharedUITamaleView

- (void)setHostingController:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUITamaleView_hostingController);
  *(self + OBJC_IVAR___SiriSharedUITamaleView_hostingController) = a3;
  v3 = a3;
}

- (NSString)sceneIdentifier
{
  swift_beginAccess();

  v2 = sub_21E4DCF68();

  return v2;
}

- (void)setSceneIdentifier:(id)a3
{
  v4 = sub_21E4DCF78();
  v6 = v5;
  v7 = (self + OBJC_IVAR___SiriSharedUITamaleView_sceneIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSString)bundleIdentifier
{

  v2 = sub_21E4DCF68();

  return v2;
}

- (SiriSharedUITamaleViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SiriSharedUITamaleView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = sub_21E4DD468();
  __break(1u);
  return result;
}

- (SiriSharedUITamaleView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)siriWillPresentResult
{
  v2 = qword_280C14550;
  v7 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_21E4DBCC8();
  __swift_project_value_buffer(v3, qword_280C14558);
  v4 = sub_21E4DD1F8();
  sub_21E45D81C(v4, 0x100000000, 0xD000000000000017, 0x800000021E4EF390, 0xD00000000000002ELL, 0x800000021E4EF3B0);
  v5 = [(SiriSharedUITamaleView *)v7 hostingController];
  v6 = _s12SiriSharedUI36VisualIntelligenceActionHostToClientC22siriWillPresentResultsACvgZ_0();
  [(_UISceneHostingController *)v5 sendAction:v6];
}

- (void)siriWillProcessRequest
{
  v2 = qword_280C14550;
  v7 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_21E4DBCC8();
  __swift_project_value_buffer(v3, qword_280C14558);
  v4 = sub_21E4DD1F8();
  sub_21E45D81C(v4, 0x100000000, 0xD000000000000018, 0x800000021E4EF3E0, 0xD00000000000002FLL, 0x800000021E4EF400);
  v5 = [(SiriSharedUITamaleView *)v7 hostingController];
  v6 = _s12SiriSharedUI36VisualIntelligenceActionHostToClientC22siriWillProcessRequestACvgZ_0();
  [(_UISceneHostingController *)v5 sendAction:v6];
}

- (void)siriDidDismissResults
{
  v2 = qword_280C14550;
  v7 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_21E4DBCC8();
  __swift_project_value_buffer(v3, qword_280C14558);
  v4 = sub_21E4DD1F8();
  sub_21E45D81C(v4, 0x100000000, 0xD000000000000017, 0x800000021E4EF430, 0xD00000000000002ELL, 0x800000021E4EF450);
  v5 = [(SiriSharedUITamaleView *)v7 hostingController];
  v6 = _s12SiriSharedUI36VisualIntelligenceActionHostToClientC21siriDidDismissResultsACvgZ_0();
  [(_UISceneHostingController *)v5 sendAction:v6];
}

- (void)clientIsReady
{
  v2 = self;
  SiriSharedUITamaleView.clientIsReady()();
}

@end