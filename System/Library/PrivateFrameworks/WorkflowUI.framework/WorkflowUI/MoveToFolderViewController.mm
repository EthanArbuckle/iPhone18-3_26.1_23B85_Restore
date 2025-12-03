@interface MoveToFolderViewController
- (_TtC10WorkflowUI26MoveToFolderViewController)initWithDatabase:(id)database shortcutsToMove:(id)move;
- (_TtC10WorkflowUI26MoveToFolderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MoveToFolderViewController

- (_TtC10WorkflowUI26MoveToFolderViewController)initWithDatabase:(id)database shortcutsToMove:(id)move
{
  sub_27471CF08(0, &qword_28159E4A8);
  v5 = sub_2749FCF84();
  return MoveToFolderViewController.init(database:shortcutsToMove:)(database, v5);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2747F7234();
}

- (void)cancel
{
  selfCopy = self;
  sub_2747F734C();
}

- (_TtC10WorkflowUI26MoveToFolderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  MoveToFolderViewController.init(nibName:bundle:)();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_2749F9284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  viewCopy = view;
  selfCopy = self;
  MoveToFolderViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

@end