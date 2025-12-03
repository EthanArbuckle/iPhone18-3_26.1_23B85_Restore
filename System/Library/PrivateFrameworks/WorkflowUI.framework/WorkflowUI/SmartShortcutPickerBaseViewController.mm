@interface SmartShortcutPickerBaseViewController
- (_TtC10WorkflowUI37SmartShortcutPickerBaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)preferredUserInterfaceStyle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
@end

@implementation SmartShortcutPickerBaseViewController

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
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
  selfCopy = self;
  sub_2747DFBEC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2747DFDD4(change);
}

- (int64_t)preferredUserInterfaceStyle
{
  selfCopy = self;
  v3 = sub_2747E281C();

  return v3;
}

- (_TtC10WorkflowUI37SmartShortcutPickerBaseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  SmartShortcutPickerBaseViewController.init(nibName:bundle:)();
}

@end