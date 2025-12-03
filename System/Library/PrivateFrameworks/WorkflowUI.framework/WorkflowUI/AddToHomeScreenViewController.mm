@interface AddToHomeScreenViewController
- (_TtC10WorkflowUI29AddToHomeScreenViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addHomeScreenShortcut;
- (void)cancel;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
@end

@implementation AddToHomeScreenViewController

- (void)cancel
{
  selfCopy = self;
  sub_2747971B0();
}

- (void)addHomeScreenShortcut
{
  selfCopy = self;
  sub_274797298();
}

- (_TtC10WorkflowUI29AddToHomeScreenViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  AddToHomeScreenViewController.init(nibName:bundle:)();
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_27479846C(&qword_280967330, type metadata accessor for InfoKey);
  v6 = sub_2749FCCA4();
  controllerCopy = controller;
  selfCopy = self;
  AddToHomeScreenViewController.imagePickerController(_:didFinishPickingMediaWithInfo:)(selfCopy, v6);
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  sub_2749F9064();
  v6 = sub_2749FCF84();
  pickerCopy = picker;
  selfCopy = self;
  AddToHomeScreenViewController.documentPicker(_:didPickDocumentsAt:)(selfCopy, v6);
}

@end