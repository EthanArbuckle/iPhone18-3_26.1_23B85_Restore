@interface HostedUISearchBar.Coordinator
- (BOOL)textFieldShouldClear:(id)clear;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
@end

@implementation HostedUISearchBar.Coordinator

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v6 = sub_1E4205F14();
  v8 = v7;
  barCopy = bar;
  selfCopy = self;
  sub_1E3E3E7F4(barCopy, v6, v8);
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1E3E3EAF4();
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1E3E3EBE4();
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3E3EFFC(v6);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3E3F1C0(v6);
}

- (BOOL)textFieldShouldClear:(id)clear
{
  clearCopy = clear;
  selfCopy = self;
  sub_1E3E3F390();

  return 1;
}

@end