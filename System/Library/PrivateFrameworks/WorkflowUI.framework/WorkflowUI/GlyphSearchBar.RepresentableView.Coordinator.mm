@interface GlyphSearchBar.RepresentableView.Coordinator
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(void *)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
@end

@implementation GlyphSearchBar.RepresentableView.Coordinator

- (void)searchBarSearchButtonClicked:(void *)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_2747528A0();
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_27491A354();
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;
  barCopy = bar;
  selfCopy = self;
  sub_27491A3C8(barCopy, v6, v8);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_27491A63C();
}

@end