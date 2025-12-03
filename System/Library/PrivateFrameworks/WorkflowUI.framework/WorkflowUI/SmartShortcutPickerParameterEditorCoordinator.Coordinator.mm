@interface SmartShortcutPickerParameterEditorCoordinator.Coordinator
- (void)moduleSummaryPresenter:(id)presenter didCommitParameterState:(id)state;
- (void)moduleSummaryPresenterDidFinish:(id)finish;
@end

@implementation SmartShortcutPickerParameterEditorCoordinator.Coordinator

- (void)moduleSummaryPresenter:(id)presenter didCommitParameterState:(id)state
{
  presenterCopy = presenter;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27486D7AC();

  swift_unknownObjectRelease();
}

- (void)moduleSummaryPresenterDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_27486D9D8(finishCopy);
}

@end