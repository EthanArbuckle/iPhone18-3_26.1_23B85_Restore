@interface SmartShortcutPickerParameterEditorCoordinator.Coordinator
- (void)moduleSummaryPresenter:(id)a3 didCommitParameterState:(id)a4;
- (void)moduleSummaryPresenterDidFinish:(id)a3;
@end

@implementation SmartShortcutPickerParameterEditorCoordinator.Coordinator

- (void)moduleSummaryPresenter:(id)a3 didCommitParameterState:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_27486D7AC();

  swift_unknownObjectRelease();
}

- (void)moduleSummaryPresenterDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27486D9D8(v4);
}

@end