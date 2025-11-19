@interface WFComposeViewController.DelegateAdaptor
- (BOOL)settingsViewControllerWantsToKnowIfNewShortcutFlow:(id)a3;
- (BOOL)shouldShowShareButtonForDocumentMenu:(id)a3;
- (id)activityControllerForDocumentMenu:(id)a3;
- (void)collapseDrawerAsAuxiliaryViewPresenter;
- (void)documentMenu:(id)a3 renameShortcutToName:(id)a4;
- (void)duplicateShortcutForDocumentMenu:(id)a3;
- (void)expandDrawerAsAuxiliaryViewPresenter;
- (void)exportFileForDocumentMenu:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (void)inspectorPaneSegmentedControl:(id)a3 didSelectPane:(int64_t)a4;
- (void)moveShortcutForDocumentMenu:(id)a3;
- (void)presentAddToHomeScreenForDocumentMenu:(id)a3;
- (void)presentDrawerViewControllerAsAuxiliaryViewPresenter:(id)a3 inPopover:(BOOL)a4 sourceRect:(CGRect)a5;
- (void)presentIconPickerForDocumentMenu:(id)a3;
- (void)presentShortcutDetailsAsAuxiliaryViewPresenter;
- (void)runToolbarPlayTapped:(id)a3;
- (void)runToolbarRedoTapped:(id)a3;
- (void)runToolbarSettingsTapped:(id)a3;
- (void)runToolbarShareTapped:(id)a3 sender:(id)a4;
- (void)runToolbarStopTapped:(id)a3;
- (void)runToolbarUndoRedoStateChanged:(id)a3;
- (void)runToolbarUndoTapped:(id)a3;
@end

@implementation WFComposeViewController.DelegateAdaptor

- (void)presentShortcutDetailsAsAuxiliaryViewPresenter
{
  v2 = self;
  sub_2748B5E54();
}

- (void)expandDrawerAsAuxiliaryViewPresenter
{
  v2 = self;
  sub_2748B5F8C(sub_274815140);
}

- (void)collapseDrawerAsAuxiliaryViewPresenter
{
  v2 = self;
  sub_2748B5F8C(sub_274814B54);
}

- (void)presentDrawerViewControllerAsAuxiliaryViewPresenter:(id)a3 inPopover:(BOOL)a4 sourceRect:(CGRect)a5
{
  v6 = a3;
  v7 = self;
  sub_2748B6074();
}

- (void)runToolbarPlayTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748B63CC();
}

- (void)runToolbarStopTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748B67F8(v4, &OBJC_IVAR___WFComposeViewController_editorHostingViewController, MEMORY[0x277D7BCD0]);
}

- (void)runToolbarSettingsTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748B5E54();
}

- (void)runToolbarUndoTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748B661C(v4, &selRef_undo);
}

- (void)runToolbarRedoTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748B661C(v4, &selRef_redo);
}

- (void)runToolbarShareTapped:(id)a3 sender:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_2748B6704(v6, a4);

  swift_unknownObjectRelease();
}

- (void)runToolbarUndoRedoStateChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748B67F8(v4, &OBJC_IVAR___WFComposeViewController_drawerCoordinator, sub_2748146F4);
}

- (void)documentMenu:(id)a3 renameShortcutToName:(id)a4
{
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_2748B6910(v9, v6, v8);
}

- (void)duplicateShortcutForDocumentMenu:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748B6EF0();
}

- (void)exportFileForDocumentMenu:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_2748B7530(x, y, width, height, v11, a4);
}

- (void)moveShortcutForDocumentMenu:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748B7CF4();
}

- (void)presentIconPickerForDocumentMenu:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748B7F18();
}

- (void)presentAddToHomeScreenForDocumentMenu:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748B7FD0();
}

- (BOOL)shouldShowShareButtonForDocumentMenu:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_2748B81D4();

  return self & 1;
}

- (id)activityControllerForDocumentMenu:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2748B8274(v4);

  return v6;
}

- (BOOL)settingsViewControllerWantsToKnowIfNewShortcutFlow:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_2748B8364();

  return self & 1;
}

- (void)inspectorPaneSegmentedControl:(id)a3 didSelectPane:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_2748B8408(v6, a4);
}

@end