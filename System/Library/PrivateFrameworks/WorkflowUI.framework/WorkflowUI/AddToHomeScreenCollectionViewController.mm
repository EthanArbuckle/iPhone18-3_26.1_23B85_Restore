@interface AddToHomeScreenCollectionViewController
- (_TtC10WorkflowUI39AddToHomeScreenCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation AddToHomeScreenCollectionViewController

- (_TtC10WorkflowUI39AddToHomeScreenCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  AddToHomeScreenCollectionViewController.init(nibName:bundle:)();
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
  AddToHomeScreenCollectionViewController.collectionView(_:didSelectItemAt:)(selfCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_2749F9284();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  AddToHomeScreenCollectionViewController.collectionView(_:willDisplay:forItemAt:)(selfCopy, cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  AddToHomeScreenCollectionViewController.scrollViewDidScroll(_:)(scrollCopy);
}

@end