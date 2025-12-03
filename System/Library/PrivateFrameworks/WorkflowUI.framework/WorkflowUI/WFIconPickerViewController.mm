@interface WFIconPickerViewController
- (UIView)iconPreview;
- (WFIconPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WFPreviewNavigationController)previewNavigationController;
- (void)setPreviewNavigationController:(id)controller;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation WFIconPickerViewController

- (WFPreviewNavigationController)previewNavigationController
{
  v2 = sub_27486AD68();

  return v2;
}

- (void)setPreviewNavigationController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_27486ADD4(controller);
}

- (UIView)iconPreview
{
  v2 = sub_27486AE50();

  return v2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_27486B04C();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_27486B2F0(appearing);
}

- (WFIconPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  sub_27486B6C4();
}

@end