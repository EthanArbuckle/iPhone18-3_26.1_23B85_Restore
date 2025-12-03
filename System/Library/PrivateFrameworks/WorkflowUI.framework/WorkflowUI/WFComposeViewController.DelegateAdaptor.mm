@interface WFComposeViewController.DelegateAdaptor
- (BOOL)settingsViewControllerWantsToKnowIfNewShortcutFlow:(id)flow;
- (BOOL)shouldShowShareButtonForDocumentMenu:(id)menu;
- (id)activityControllerForDocumentMenu:(id)menu;
- (void)collapseDrawerAsAuxiliaryViewPresenter;
- (void)documentMenu:(id)menu renameShortcutToName:(id)name;
- (void)duplicateShortcutForDocumentMenu:(id)menu;
- (void)expandDrawerAsAuxiliaryViewPresenter;
- (void)exportFileForDocumentMenu:(id)menu sourceView:(id)view sourceRect:(CGRect)rect;
- (void)inspectorPaneSegmentedControl:(id)control didSelectPane:(int64_t)pane;
- (void)moveShortcutForDocumentMenu:(id)menu;
- (void)presentAddToHomeScreenForDocumentMenu:(id)menu;
- (void)presentDrawerViewControllerAsAuxiliaryViewPresenter:(id)presenter inPopover:(BOOL)popover sourceRect:(CGRect)rect;
- (void)presentIconPickerForDocumentMenu:(id)menu;
- (void)presentShortcutDetailsAsAuxiliaryViewPresenter;
- (void)runToolbarPlayTapped:(id)tapped;
- (void)runToolbarRedoTapped:(id)tapped;
- (void)runToolbarSettingsTapped:(id)tapped;
- (void)runToolbarShareTapped:(id)tapped sender:(id)sender;
- (void)runToolbarStopTapped:(id)tapped;
- (void)runToolbarUndoRedoStateChanged:(id)changed;
- (void)runToolbarUndoTapped:(id)tapped;
@end

@implementation WFComposeViewController.DelegateAdaptor

- (void)presentShortcutDetailsAsAuxiliaryViewPresenter
{
  selfCopy = self;
  sub_2748B5E54();
}

- (void)expandDrawerAsAuxiliaryViewPresenter
{
  selfCopy = self;
  sub_2748B5F8C(sub_274815140);
}

- (void)collapseDrawerAsAuxiliaryViewPresenter
{
  selfCopy = self;
  sub_2748B5F8C(sub_274814B54);
}

- (void)presentDrawerViewControllerAsAuxiliaryViewPresenter:(id)presenter inPopover:(BOOL)popover sourceRect:(CGRect)rect
{
  presenterCopy = presenter;
  selfCopy = self;
  sub_2748B6074();
}

- (void)runToolbarPlayTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_2748B63CC();
}

- (void)runToolbarStopTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_2748B67F8(tappedCopy, &OBJC_IVAR___WFComposeViewController_editorHostingViewController, MEMORY[0x277D7BCD0]);
}

- (void)runToolbarSettingsTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_2748B5E54();
}

- (void)runToolbarUndoTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_2748B661C(tappedCopy, &selRef_undo);
}

- (void)runToolbarRedoTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_2748B661C(tappedCopy, &selRef_redo);
}

- (void)runToolbarShareTapped:(id)tapped sender:(id)sender
{
  tappedCopy = tapped;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2748B6704(tappedCopy, sender);

  swift_unknownObjectRelease();
}

- (void)runToolbarUndoRedoStateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_2748B67F8(changedCopy, &OBJC_IVAR___WFComposeViewController_drawerCoordinator, sub_2748146F4);
}

- (void)documentMenu:(id)menu renameShortcutToName:(id)name
{
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;
  menuCopy = menu;
  selfCopy = self;
  sub_2748B6910(menuCopy, v6, v8);
}

- (void)duplicateShortcutForDocumentMenu:(id)menu
{
  menuCopy = menu;
  selfCopy = self;
  sub_2748B6EF0();
}

- (void)exportFileForDocumentMenu:(id)menu sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  menuCopy = menu;
  viewCopy = view;
  selfCopy = self;
  sub_2748B7530(x, y, width, height, menuCopy, view);
}

- (void)moveShortcutForDocumentMenu:(id)menu
{
  menuCopy = menu;
  selfCopy = self;
  sub_2748B7CF4();
}

- (void)presentIconPickerForDocumentMenu:(id)menu
{
  menuCopy = menu;
  selfCopy = self;
  sub_2748B7F18();
}

- (void)presentAddToHomeScreenForDocumentMenu:(id)menu
{
  menuCopy = menu;
  selfCopy = self;
  sub_2748B7FD0();
}

- (BOOL)shouldShowShareButtonForDocumentMenu:(id)menu
{
  menuCopy = menu;
  selfCopy = self;
  LOBYTE(self) = sub_2748B81D4();

  return self & 1;
}

- (id)activityControllerForDocumentMenu:(id)menu
{
  menuCopy = menu;
  selfCopy = self;
  v6 = sub_2748B8274(menuCopy);

  return v6;
}

- (BOOL)settingsViewControllerWantsToKnowIfNewShortcutFlow:(id)flow
{
  flowCopy = flow;
  selfCopy = self;
  LOBYTE(self) = sub_2748B8364();

  return self & 1;
}

- (void)inspectorPaneSegmentedControl:(id)control didSelectPane:(int64_t)pane
{
  controlCopy = control;
  selfCopy = self;
  sub_2748B8408(controlCopy, pane);
}

@end