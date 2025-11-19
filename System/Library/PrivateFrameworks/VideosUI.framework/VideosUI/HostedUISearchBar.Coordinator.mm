@interface HostedUISearchBar.Coordinator
- (BOOL)textFieldShouldClear:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
@end

@implementation HostedUISearchBar.Coordinator

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = sub_1E4205F14();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1E3E3E7F4(v9, v6, v8);
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3E3EAF4();
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3E3EBE4();
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3E3EFFC(v6);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3E3F1C0(v6);
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3E3F390();

  return 1;
}

@end