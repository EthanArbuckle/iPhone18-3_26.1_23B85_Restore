@interface APPCMetricsView
- (APPCDiagnosticMetricsHelping)diagnosticMetricHelper;
- (APPCMetricsView)initWithFrame:(CGRect)a3;
- (APPCPromotedContentInfo)promotedContentInfo;
- (APPrivacyMarker)privacyMarkerView;
- (BOOL)ready;
- (BOOL)safeExpandAndReturnError:(id *)a3;
- (CGRect)frame;
- (CGRect)privacyMarkerFrame;
- (UIEdgeInsets)metricsViewEdgeInsets;
- (void)collapse;
- (void)didBecomeVisible;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)expand;
- (void)registerHandlerForAllMetricsWithClosure:(id)a3;
- (void)removeHandler;
- (void)setFrame:(CGRect)a3;
- (void)setInteractionPresentationDelegate:(id)a3;
- (void)setPromotedContentInfo:(id)a3;
- (void)setReady:(BOOL)a3;
- (void)setReadyDelegate:(id)a3;
- (void)unloadAdViewIfRequired;
- (void)willEnterforeground;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation APPCMetricsView

- (void)setPromotedContentInfo:(id)a3
{
  v5 = OBJC_IVAR___APPCMetricsView_promotedContentInfo;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)setReady:(BOOL)a3
{
  v5 = OBJC_IVAR___APPCMetricsView_ready;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_1C199DA50();
}

- (void)collapse
{
  v2 = self;
  MetricsView.collapse()();
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MetricsView();
  v7 = v9.receiver;
  [(APPCMetricsView *)&v9 setFrame:x, y, width, height];
  sub_1C199BA6C();
  v8 = [v7 superview];
  if (v8 || (v8 = [v7 window]) != 0)
  {

    sub_1C19DACB8(0, 0, 0);
  }
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MetricsView();
  [(APPCMetricsView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (APPCPromotedContentInfo)promotedContentInfo
{
  v3 = OBJC_IVAR___APPCMetricsView_promotedContentInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1C19A0EA8(a3);
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1C19A1600("MetricsView is being moved to a new window, the superview is %{private}s. PC Identifier: %{private}s", &selRef_didMoveToWindow, &selRef_window);
}

- (BOOL)ready
{
  v3 = OBJC_IVAR___APPCMetricsView_ready;
  swift_beginAccess();
  return *(self + v3);
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_1C19A1600("MetricsView super view changed, the superview is %{private}s. PC Identifier: %{private}s", &selRef_didMoveToSuperview, &selRef_superview);
}

- (void)unloadAdViewIfRequired
{
  v2 = self;
  sub_1C19CC250();
}

- (void)willEnterforeground
{
  v2 = self;
  sub_1C19CC52C();
}

- (void)setInteractionPresentationDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C19DC498();
}

- (APPrivacyMarker)privacyMarkerView
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x420))();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR___APPCPromotedContentView_privacyMarkerView);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)privacyMarkerFrame
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x420))();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___APPCPromotedContentView_privacyMarkerView);
    v5 = v3;
    v6 = self;
    v7 = v4;

    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = 0.0;
    v11 = 0.0;
    v13 = 0.0;
    v15 = 0.0;
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)setReadyDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C19DCB18();
}

- (APPCDiagnosticMetricsHelping)diagnosticMetricHelper
{
  v2 = [*(self + OBJC_IVAR___APPCMetricsView_promotedContent) diagnosticMetricHelper];

  return v2;
}

- (UIEdgeInsets)metricsViewEdgeInsets
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x420))();
  if (v4)
  {
    v5 = v4;
    v6 = *((*v3 & *v4) + 0x2B0);
    v7 = self;
    v8 = v6();
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v10 = 0.0;
    v8 = 40.0;
    *&v12 = 40.0;
    v14 = 0.0;
  }

  v15 = v8;
  v16 = v10;
  v17 = *&v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)expand
{
  v2 = self;
  sub_1C19DDA38();
}

- (BOOL)safeExpandAndReturnError:(id *)a3
{
  v3 = self;
  sub_1C19DDA38();

  return 1;
}

- (void)didBecomeVisible
{
  v2 = self;
  sub_1C19DEE6C();
}

- (APPCMetricsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)registerHandlerForAllMetricsWithClosure:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  MetricsView.registerHandlerForAllMetrics(closure:)(sub_1C19E2CE4, v5);
}

- (void)removeHandler
{
  v2 = *(self + OBJC_IVAR___APPCMetricsView_promotedContent);
  v3 = self;
  v4 = [v2 metricsHelper];
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    [v5 removeHandler];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

@end