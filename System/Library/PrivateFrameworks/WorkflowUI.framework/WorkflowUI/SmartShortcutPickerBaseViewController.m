@interface SmartShortcutPickerBaseViewController
- (_TtC10WorkflowUI37SmartShortcutPickerBaseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)preferredUserInterfaceStyle;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation SmartShortcutPickerBaseViewController

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v4 = sub_2749F9284();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  (*(v5 + 8))(v7, v4);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_2747DFBEC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2747DFDD4(a3);
}

- (int64_t)preferredUserInterfaceStyle
{
  v2 = self;
  v3 = sub_2747E281C();

  return v3;
}

- (_TtC10WorkflowUI37SmartShortcutPickerBaseViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  SmartShortcutPickerBaseViewController.init(nibName:bundle:)();
}

@end