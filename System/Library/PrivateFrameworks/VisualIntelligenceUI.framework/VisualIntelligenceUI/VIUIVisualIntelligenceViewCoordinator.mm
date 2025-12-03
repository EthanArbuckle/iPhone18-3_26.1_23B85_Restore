@interface VIUIVisualIntelligenceViewCoordinator
- (VIUVisualIntelligenceView)overlayView;
- (VKCImageAnalysisInteractionDelegate)hostDelegate;
- (void)resetInterface;
- (void)setAnalysisResult:(id)result;
- (void)setHostDelegate:(id)delegate;
@end

@implementation VIUIVisualIntelligenceViewCoordinator

- (VKCImageAnalysisInteractionDelegate)hostDelegate
{
  selfCopy = self;
  sub_21E086C58();
  v4 = v3;

  return v4;
}

- (void)setHostDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
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
  selfCopy = self;
  sub_21E088720();
}

- (void)setAnalysisResult:(id)result
{
  v4 = *(&self->super.isa + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_analysisResult);
  *(&self->super.isa + OBJC_IVAR___VIUIVisualIntelligenceViewCoordinator_analysisResult) = result;
  resultCopy = result;
  selfCopy = self;

  sub_21E088A70();
}

@end