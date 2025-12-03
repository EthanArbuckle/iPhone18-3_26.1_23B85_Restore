@interface WFDrawerViewController
- (_TtC10WorkflowUI22WFDrawerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)scrollViewDidScroll:(id)scroll;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation WFDrawerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_27483EA3C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_27483F1DC();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_2749F9284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  viewCopy = view;
  selfCopy = self;
  sub_274844580();
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_27484538C();
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_274845468(editingCopy);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  barCopy = bar;
  selfCopy = self;
  sub_2748455BC();
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_27484568C(clickedCopy);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_2748456F0(clickedCopy);
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_274845834(viewCopy, section);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v6 = sub_2749F9284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  viewCopy = view;
  selfCopy = self;
  sub_274845A98();
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_2749F9284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  viewCopy = view;
  selfCopy = self;
  sub_274845D94();

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_2749F9284();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_274846410();

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_274846848();
}

- (_TtC10WorkflowUI22WFDrawerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  sub_2748468AC();
}

@end