@interface WFIconPickerViewController
- (UIView)iconPreview;
- (WFIconPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WFPreviewNavigationController)previewNavigationController;
- (void)setPreviewNavigationController:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation WFIconPickerViewController

- (WFPreviewNavigationController)previewNavigationController
{
  v2 = sub_27486AD68();

  return v2;
}

- (void)setPreviewNavigationController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_27486ADD4(a3);
}

- (UIView)iconPreview
{
  v2 = sub_27486AE50();

  return v2;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_27486B04C();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_27486B2F0(a3);
}

- (WFIconPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  sub_27486B6C4();
}

@end