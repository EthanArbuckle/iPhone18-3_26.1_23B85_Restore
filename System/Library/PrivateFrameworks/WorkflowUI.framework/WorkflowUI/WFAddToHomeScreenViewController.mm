@interface WFAddToHomeScreenViewController
- (WFAddToHomeScreenViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addHomeScreenShortcut;
- (void)cancel;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation WFAddToHomeScreenViewController

- (void)viewDidLoad
{
  selfCopy = self;
  WFAddToHomeScreenViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  WFAddToHomeScreenViewController.viewIsAppearing(_:)(appearing);
}

- (void)cancel
{
  selfCopy = self;
  sub_2747C84E0();
}

- (void)addHomeScreenShortcut
{
  selfCopy = self;
  sub_2747C859C();
}

- (WFAddToHomeScreenViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  WFAddToHomeScreenViewController.init(nibName:bundle:)();
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_2747CA5EC(&qword_280967330, 255, type metadata accessor for InfoKey);
  v6 = sub_2749FCCA4();
  controllerCopy = controller;
  selfCopy = self;
  WFAddToHomeScreenViewController.imagePickerController(_:didFinishPickingMediaWithInfo:)(selfCopy, v6);
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  sub_2749F9064();
  v6 = sub_2749FCF84();
  pickerCopy = picker;
  selfCopy = self;
  WFAddToHomeScreenViewController.documentPicker(_:didPickDocumentsAt:)(selfCopy, v6);
}

@end