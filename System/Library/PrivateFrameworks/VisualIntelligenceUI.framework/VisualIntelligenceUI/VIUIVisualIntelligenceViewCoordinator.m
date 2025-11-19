@interface VIUIVisualIntelligenceViewCoordinator
- (VIUVisualIntelligenceView)overlayView;
- (VKCImageAnalysisInteractionDelegate)hostDelegate;
- (void)resetInterface;
- (void)setAnalysisResult:(id)a3;
- (void)setHostDelegate:(id)a3;
@end

@implementation VIUIVisualIntelligenceViewCoordinator

- (VKCImageAnalysisInteractionDelegate)hostDelegate
{
  v2 = self;
  sub_21E086C58();
  v4 = v3;

  return v4;
}

- (void)setHostDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_21E086D94();
}

- (VIUVisualIntelligenceView)overlayView
{
  result = *(&self->super.isa + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_objcOverlayView);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (void)resetInterface
{
  v2 = self;
  sub_21E088720();
}

- (void)setAnalysisResult:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_analysisResult);
  *(&self->super.isa + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_analysisResult) = a3;
  v5 = a3;
  v6 = self;

  sub_21E088A70();
}

@end