@interface SCUISensitiveContentOverlayView
- (SCUISensitiveContentOverlayView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)onAnalysisChanged;
- (id)onReportEvidenceRequested;
- (void)clear;
- (void)configureWithAnalysis:(id)analysis;
- (void)configureWithParticipant:(id)participant analysis:(id)analysis;
- (void)setHostingView:(id)view;
- (void)setOnAnalysisChanged:(id)changed;
- (void)setOnBlockParticipant:(id)participant;
- (void)setOnDeleteContent:(id)content;
- (void)setOnEndCall:(id)call;
- (void)setOnHideContent:(id)content;
- (void)setOnLeaveConversation:(id)conversation;
- (void)setOnMessageSomeone:(id)someone;
- (void)setOnReportEvidenceRequested:(id)requested;
- (void)setOnShieldUp:(id)up;
- (void)setOnShowContent:(id)content;
- (void)setOnUnsubscribe:(id)unsubscribe;
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

- (void)setOnAnalysisChanged:(id)changed
{
  v4 = _Block_copy(changed);
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
  selfCopy = self;
  sub_1BC635484(v7);
}

- (void)setOnShowContent:(id)content
{
  v4 = _Block_copy(content);
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
  selfCopy = self;
  sub_1BC635484(v7);
}

- (void)setOnHideContent:(id)content
{
  v4 = _Block_copy(content);
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
  selfCopy = self;
  sub_1BC635484(v7);
}

- (void)setOnDeleteContent:(id)content
{
  v4 = _Block_copy(content);
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
  selfCopy = self;
  sub_1BC635484(v7);
}

- (void)setOnShieldUp:(id)up
{
  v4 = _Block_copy(up);
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
  selfCopy = self;
  sub_1BC635484(v7);
}

- (void)setOnMessageSomeone:(id)someone
{
  v4 = _Block_copy(someone);
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
  selfCopy = self;
  sub_1BC635484(v7);
}

- (void)setOnLeaveConversation:(id)conversation
{
  v4 = _Block_copy(conversation);
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
  selfCopy = self;
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

- (void)setOnReportEvidenceRequested:(id)requested
{
  v4 = _Block_copy(requested);
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
  selfCopy = self;
  sub_1BC635484(v7);
}

- (void)setOnBlockParticipant:(id)participant
{
  v4 = _Block_copy(participant);
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
  selfCopy = self;
  sub_1BC635484(v7);
}

- (void)setOnEndCall:(id)call
{
  v4 = _Block_copy(call);
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
  selfCopy = self;
  sub_1BC635484(v7);
}

- (void)setOnUnsubscribe:(id)unsubscribe
{
  v4 = _Block_copy(unsubscribe);
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
  selfCopy = self;
  sub_1BC635484(v7);
}

- (void)setHostingView:(id)view
{
  v4 = *(self + OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView);
  *(self + OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView) = view;
  viewCopy = view;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v15.receiver = self;
  v15.super_class = SCUISensitiveContentOverlayView;
  selfCopy = self;
  eventCopy = event;
  v9 = [(SCUISensitiveContentOverlayView *)&v15 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v11 = v9;
  v12 = (*(**(selfCopy + OBJC_IVAR___SCUISensitiveContentOverlayView_state) + 464))(v9, v10);

  v13 = v11;
  selfCopy = v11;
  if ((v12 & 1) == 0)
  {
LABEL_5:

    v13 = 0;
  }

  return v13;
}

- (void)configureWithParticipant:(id)participant analysis:(id)analysis
{
  v7 = type metadata accessor for SCUISensitiveContentOverlayView.Kind(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = participant;
  v10[1] = analysis;
  v10[2] = nullsub_1;
  v10[3] = 0;
  swift_storeEnumTagMultiPayload();
  participantCopy = participant;
  analysisCopy = analysis;
  v13 = participantCopy;
  v14 = analysisCopy;
  selfCopy = self;
  SCUISensitiveContentOverlayView.configure(_:)(v10);

  sub_1BC741C4C(v10, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
}

- (void)configureWithAnalysis:(id)analysis
{
  v5 = type metadata accessor for SCUISensitiveContentOverlayView.Kind(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = analysis;
  swift_storeEnumTagMultiPayload();
  analysisCopy = analysis;
  selfCopy = self;
  SCUISensitiveContentOverlayView.configure(_:)(v8);

  sub_1BC741C4C(v8, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
}

- (void)clear
{
  v2 = *(**(self + OBJC_IVAR___SCUISensitiveContentOverlayView_state) + 328);
  selfCopy = self;
  v2(0);
}

- (SCUISensitiveContentOverlayView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end