@interface AddToHomeScreenCollectionViewController
- (_TtC10WorkflowUI39AddToHomeScreenCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation AddToHomeScreenCollectionViewController

- (_TtC10WorkflowUI39AddToHomeScreenCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  AddToHomeScreenCollectionViewController.init(nibName:bundle:)();
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
  AddToHomeScreenCollectionViewController.collectionView(_:didSelectItemAt:)(v11, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_2749F9284();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  v12 = a3;
  v13 = a4;
  v14 = self;
  AddToHomeScreenCollectionViewController.collectionView(_:willDisplay:forItemAt:)(v14, v13);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  AddToHomeScreenCollectionViewController.scrollViewDidScroll(_:)(v4);
}

@end