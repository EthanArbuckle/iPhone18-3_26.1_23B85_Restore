@interface GlyphSearchBar.RepresentableView.Coordinator
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(void *)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
@end

@implementation GlyphSearchBar.RepresentableView.Coordinator

- (void)searchBarSearchButtonClicked:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_2747528A0();
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27491A354();
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_27491A3C8(v9, v6, v8);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27491A63C();
}

@end