@interface AddToHomeScreenViewController
- (_TtC10WorkflowUI29AddToHomeScreenViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addHomeScreenShortcut;
- (void)cancel;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
@end

@implementation AddToHomeScreenViewController

- (void)cancel
{
  v2 = self;
  sub_2747971B0();
}

- (void)addHomeScreenShortcut
{
  v2 = self;
  sub_274797298();
}

- (_TtC10WorkflowUI29AddToHomeScreenViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  AddToHomeScreenViewController.init(nibName:bundle:)();
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_27479846C(&qword_280967330, type metadata accessor for InfoKey);
  v6 = sub_2749FCCA4();
  v7 = a3;
  v8 = self;
  AddToHomeScreenViewController.imagePickerController(_:didFinishPickingMediaWithInfo:)(v8, v6);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  sub_2749F9064();
  v6 = sub_2749FCF84();
  v7 = a3;
  v8 = self;
  AddToHomeScreenViewController.documentPicker(_:didPickDocumentsAt:)(v8, v6);
}

@end