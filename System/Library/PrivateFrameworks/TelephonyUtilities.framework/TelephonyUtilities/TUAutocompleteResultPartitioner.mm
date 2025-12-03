@interface TUAutocompleteResultPartitioner
- (TUAutocompleteResultPartitioner)init;
- (TUSearchController)searchController;
- (id)searchResults;
- (void)addResult:(id)result;
@end

@implementation TUAutocompleteResultPartitioner

- (TUAutocompleteResultPartitioner)init
{
  v11.receiver = self;
  v11.super_class = TUAutocompleteResultPartitioner;
  v2 = [(TUAutocompleteResultPartitioner *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    normalResultsArray = v2->_normalResultsArray;
    v2->_normalResultsArray = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    foundInMailResultsArray = v2->_foundInMailResultsArray;
    v2->_foundInMailResultsArray = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    foundOnServersResultsArray = v2->_foundOnServersResultsArray;
    v2->_foundOnServersResultsArray = v7;

    v9 = v2;
  }

  return v2;
}

- (void)addResult:(id)result
{
  resultCopy = result;
  v4 = [[TUProxyAutocompleteResult alloc] initWithAutocompleteResult:resultCopy];
  if ([objc_opt_class() sourceTypeIsFoundInMail:{objc_msgSend(resultCopy, "sourceType")}])
  {
    foundInMailResultsArray = [(TUAutocompleteResultPartitioner *)self foundInMailResultsArray];
  }

  else
  {
    if ([objc_opt_class() sourceTypeIsFoundOnServers:{objc_msgSend(resultCopy, "sourceType")}])
    {
      [(TUAutocompleteResultPartitioner *)self foundOnServersResultsArray];
    }

    else
    {
      [(TUAutocompleteResultPartitioner *)self normalResultsArray];
    }
    foundInMailResultsArray = ;
  }

  v6 = foundInMailResultsArray;
  [foundInMailResultsArray addObject:v4];
}

- (TUSearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

- (id)searchResults
{
  v3 = objc_alloc_init(TUSearchResults);
  searchController = [(TUAutocompleteResultPartitioner *)self searchController];
  [(TUSearchResults *)v3 setSearchController:searchController];

  normalResultsArray = [(TUAutocompleteResultPartitioner *)self normalResultsArray];
  v6 = [normalResultsArray count];

  if (v6)
  {
    v7 = [TUResultGroup alloc];
    v8 = TUBundle();
    v9 = [v8 localizedStringForKey:@"CONTACTS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    normalResultsArray2 = [(TUAutocompleteResultPartitioner *)self normalResultsArray];
    v11 = [(TUResultGroup *)v7 initWithTitle:v9 results:normalResultsArray2];
    [(TUSearchResults *)v3 addResultGroup:v11];
  }

  foundInMailResultsArray = [(TUAutocompleteResultPartitioner *)self foundInMailResultsArray];
  v13 = [foundInMailResultsArray count];

  if (v13)
  {
    v14 = [TUResultGroup alloc];
    v15 = TUBundle();
    v16 = [v15 localizedStringForKey:@"FOUND_IN_APPS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    foundInMailResultsArray2 = [(TUAutocompleteResultPartitioner *)self foundInMailResultsArray];
    v18 = [(TUResultGroup *)v14 initWithTitle:v16 results:foundInMailResultsArray2];
    [(TUSearchResults *)v3 addResultGroup:v18];
  }

  return v3;
}

@end