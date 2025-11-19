@interface MoveToFolderViewController
- (_TtC10WorkflowUI26MoveToFolderViewController)initWithDatabase:(id)a3 shortcutsToMove:(id)a4;
- (_TtC10WorkflowUI26MoveToFolderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancel;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MoveToFolderViewController

- (_TtC10WorkflowUI26MoveToFolderViewController)initWithDatabase:(id)a3 shortcutsToMove:(id)a4
{
  sub_27471CF08(0, &qword_28159E4A8);
  v5 = sub_2749FCF84();
  return MoveToFolderViewController.init(database:shortcutsToMove:)(a3, v5);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2747F7234();
}

- (void)cancel
{
  v2 = self;
  sub_2747F734C();
}

- (_TtC10WorkflowUI26MoveToFolderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  MoveToFolderViewController.init(nibName:bundle:)();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_2749F9284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  v10 = a3;
  v11 = self;
  MoveToFolderViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

@end