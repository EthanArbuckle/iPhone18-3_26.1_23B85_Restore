@interface SCUISensitiveContentOverlayView
- (SCUISensitiveContentOverlayView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)onAnalysisChanged;
- (id)onReportEvidenceRequested;
- (void)clear;
- (void)configureWithAnalysis:(id)a3;
- (void)configureWithParticipant:(id)a3 analysis:(id)a4;
- (void)setHostingView:(id)a3;
- (void)setOnAnalysisChanged:(id)a3;
- (void)setOnBlockParticipant:(id)a3;
- (void)setOnDeleteContent:(id)a3;
- (void)setOnEndCall:(id)a3;
- (void)setOnHideContent:(id)a3;
- (void)setOnLeaveConversation:(id)a3;
- (void)setOnMessageSomeone:(id)a3;
- (void)setOnReportEvidenceRequested:(id)a3;
- (void)setOnShieldUp:(id)a3;
- (void)setOnShowContent:(id)a3;
- (void)setOnUnsubscribe:(id)a3;
@end

@implementation SCUISensitiveContentOverlayView

- (id)onAnalysisChanged
{
  v2 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onAnalysisChanged);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BC739AF8;
    aBlock[3] = &block_descriptor_209;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOnAnalysisChanged:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742530;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onAnalysisChanged);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (void)setOnShowContent:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742928;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onShowContent);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (void)setOnHideContent:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742928;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onHideContent);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (void)setOnDeleteContent:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742928;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onDeleteContent);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (void)setOnShieldUp:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742928;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onShieldUp);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (void)setOnMessageSomeone:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742928;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onMessageSomeone);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (void)setOnLeaveConversation:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742928;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onLeaveConversation);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (id)onReportEvidenceRequested
{
  v2 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onReportEvidenceRequested);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BC73A1F4;
    aBlock[3] = &block_descriptor_158;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOnReportEvidenceRequested:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742520;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onReportEvidenceRequested);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (void)setOnBlockParticipant:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742928;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onBlockParticipant);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (void)setOnEndCall:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742928;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onEndCall);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (void)setOnUnsubscribe:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC742928;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SCUISensitiveContentOverlayView_onUnsubscribe);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1BC635484(v7);
}

- (void)setHostingView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView);
  *(self + OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView) = a3;
  v3 = a3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v15.receiver = self;
  v15.super_class = SCUISensitiveContentOverlayView;
  v7 = self;
  v8 = a4;
  v9 = [(SCUISensitiveContentOverlayView *)&v15 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v11 = v9;
  v12 = (*(**(v7 + OBJC_IVAR___SCUISensitiveContentOverlayView_state) + 464))(v9, v10);

  v13 = v11;
  v7 = v11;
  if ((v12 & 1) == 0)
  {
LABEL_5:

    v13 = 0;
  }

  return v13;
}

- (void)configureWithParticipant:(id)a3 analysis:(id)a4
{
  v7 = type metadata accessor for SCUISensitiveContentOverlayView.Kind(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a3;
  v10[1] = a4;
  v10[2] = nullsub_1;
  v10[3] = 0;
  swift_storeEnumTagMultiPayload();
  v11 = a3;
  v12 = a4;
  v13 = v11;
  v14 = v12;
  v15 = self;
  SCUISensitiveContentOverlayView.configure(_:)(v10);

  sub_1BC741C4C(v10, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
}

- (void)configureWithAnalysis:(id)a3
{
  v5 = type metadata accessor for SCUISensitiveContentOverlayView.Kind(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a3;
  swift_storeEnumTagMultiPayload();
  v9 = a3;
  v10 = self;
  SCUISensitiveContentOverlayView.configure(_:)(v8);

  sub_1BC741C4C(v8, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
}

- (void)clear
{
  v2 = *(**(self + OBJC_IVAR___SCUISensitiveContentOverlayView_state) + 328);
  v3 = self;
  v2(0);
}

- (SCUISensitiveContentOverlayView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end