@interface WFAddToHomeScreenViewController
- (WFAddToHomeScreenViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addHomeScreenShortcut;
- (void)cancel;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation WFAddToHomeScreenViewController

- (void)viewDidLoad
{
  v2 = self;
  WFAddToHomeScreenViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  WFAddToHomeScreenViewController.viewIsAppearing(_:)(a3);
}

- (void)cancel
{
  v2 = self;
  sub_2747C84E0();
}

- (void)addHomeScreenShortcut
{
  v2 = self;
  sub_2747C859C();
}

- (WFAddToHomeScreenViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  WFAddToHomeScreenViewController.init(nibName:bundle:)();
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_2747CA5EC(&qword_280967330, 255, type metadata accessor for InfoKey);
  v6 = sub_2749FCCA4();
  v7 = a3;
  v8 = self;
  WFAddToHomeScreenViewController.imagePickerController(_:didFinishPickingMediaWithInfo:)(v8, v6);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  sub_2749F9064();
  v6 = sub_2749FCF84();
  v7 = a3;
  v8 = self;
  WFAddToHomeScreenViewController.documentPicker(_:didPickDocumentsAt:)(v8, v6);
}

@end