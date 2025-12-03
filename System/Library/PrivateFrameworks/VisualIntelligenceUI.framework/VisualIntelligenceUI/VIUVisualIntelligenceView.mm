@interface VIUVisualIntelligenceView
- (BOOL)isDraggingSheet;
- (BOOL)isSheetPresented;
- (CGRect)contentsRect;
- (CGRect)normalizedVisibleRect;
- (VIUVisualIntelligenceView)initWithCoder:(id)coder;
- (VIUVisualIntelligenceView)initWithFrame:(CGRect)frame;
- (_TtP20VisualIntelligenceUI33VIUVisualIntelligenceViewDelegate_)delegate;
- (double)currentSheetProgress;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAnalysisResult:(id)result;
- (void)setDelegate:(id)delegate;
- (void)setIsSheetPresented:(BOOL)presented;
@end

@implementation VIUVisualIntelligenceView

- (_TtP20VisualIntelligenceUI33VIUVisualIntelligenceViewDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_21E13E474();
  swift_unknownObjectRelease();
}

- (void)setAnalysisResult:(id)result
{
  v5 = *(self + OBJC_IVAR___VIUVisualIntelligenceView_analysisResult);
  *(self + OBJC_IVAR___VIUVisualIntelligenceView_analysisResult) = result;
  resultCopy = result;
  selfCopy = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470);

  sub_21E11EFC8(result);
}

- (BOOL)isSheetPresented
{
  selfCopy = self;
  v3 = sub_21E08A1EC();

  return v3 & 1;
}

- (void)setIsSheetPresented:(BOOL)presented
{
  selfCopy = self;
  sub_21E141D64();
  sub_21E13F864();
}

- (double)currentSheetProgress
{
  selfCopy = self;
  v3 = sub_21E08A7C0();

  return v3;
}

- (BOOL)isDraggingSheet
{
  v3 = self + OBJC_IVAR___VIUVisualIntelligenceView_overlayView;
  v4 = *(*&v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470) + 52)] + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  sub_21E08CE80(&qword_280F6C000, type metadata accessor for SheetModel);
  selfCopy = self;

  sub_21E13D3C4();

  LOBYTE(v3) = *(v4 + 17);

  return v3;
}

- (CGRect)normalizedVisibleRect
{
  v2 = *(self + OBJC_IVAR___VIUVisualIntelligenceView_normalizedVisibleRect);
  v3 = *(self + OBJC_IVAR___VIUVisualIntelligenceView_normalizedVisibleRect + 8);
  v4 = *(self + OBJC_IVAR___VIUVisualIntelligenceView_normalizedVisibleRect + 16);
  v5 = *(self + OBJC_IVAR___VIUVisualIntelligenceView_normalizedVisibleRect + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)contentsRect
{
  v2 = *(self + OBJC_IVAR___VIUVisualIntelligenceView_contentsRect);
  v3 = *(self + OBJC_IVAR___VIUVisualIntelligenceView_contentsRect + 8);
  v4 = *(self + OBJC_IVAR___VIUVisualIntelligenceView_contentsRect + 16);
  v5 = *(self + OBJC_IVAR___VIUVisualIntelligenceView_contentsRect + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (VIUVisualIntelligenceView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___VIUVisualIntelligenceView_analysisResult) = 0;
  v4 = self + OBJC_IVAR___VIUVisualIntelligenceView_normalizedVisibleRect;
  *v4 = 0;
  *(v4 + 1) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v4 + 1) = _Q0;
  v10 = self + OBJC_IVAR___VIUVisualIntelligenceView_contentsRect;
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 1) = _Q0;
  result = sub_21E1429C4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for VIUVisualIntelligenceView(0);
  v2 = v4.receiver;
  [(VIUVisualIntelligenceView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR___VIUVisualIntelligenceView_hostingView];
  [v2 bounds];
  [v3 setFrame_];
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_21E08B3F4();
}

- (VIUVisualIntelligenceView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end