@interface OverlayTextView.Coordinator
- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction;
- (_TtCV20VisualIntelligenceUI15OverlayTextView11Coordinator)init;
- (id)contentImageForImageAnalysisInteraction:(id)interaction;
- (void)imageAnalysisInteractionSubjectInteractionInProgressDidChange:(id)change;
- (void)textSelectionDidChangeForImageAnalysisInteraction:(id)interaction;
@end

@implementation OverlayTextView.Coordinator

- (_TtCV20VisualIntelligenceUI15OverlayTextView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  v6 = sub_21E0A3620();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)contentImageForImageAnalysisInteraction:(id)interaction
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV20VisualIntelligenceUI15OverlayTextView11Coordinator_model);
  swift_getKeyPath();
  sub_21E0A35D8(&unk_280F6B040, type metadata accessor for OverlayViewModel);
  selfCopy = self;
  sub_21E13D3C4();

  v6 = *(v4 + 40);
  v7 = v6;

  return v6;
}

- (void)textSelectionDidChangeForImageAnalysisInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_21E0A2288(interactionCopy);
}

- (void)imageAnalysisInteractionSubjectInteractionInProgressDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21E11F640([changeCopy subjectInteractionInProgress]);
}

@end