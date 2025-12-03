@interface GlyphSearchConfiguration.ContentView
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
@end

@implementation GlyphSearchConfiguration.ContentView

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_27491AED4(editingCopy, 1);
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_27491AED4(editingCopy, 0);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;
  barCopy = bar;
  selfCopy = self;
  sub_27491AFAC(selfCopy, v6, v8);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_27491B158(clickedCopy);
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_27484568C(clickedCopy);
}

@end