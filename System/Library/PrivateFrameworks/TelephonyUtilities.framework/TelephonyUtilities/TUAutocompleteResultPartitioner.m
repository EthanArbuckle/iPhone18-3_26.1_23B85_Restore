@interface TUAutocompleteResultPartitioner
- (TUAutocompleteResultPartitioner)init;
- (TUSearchController)searchController;
- (id)searchResults;
- (void)addResult:(id)a3;
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

- (void)addResult:(id)a3
{
  v7 = a3;
  v4 = [[TUProxyAutocompleteResult alloc] initWithAutocompleteResult:v7];
  if ([objc_opt_class() sourceTypeIsFoundInMail:{objc_msgSend(v7, "sourceType")}])
  {
    v5 = [(TUAutocompleteResultPartitioner *)self foundInMailResultsArray];
  }

  else
  {
    if ([objc_opt_class() sourceTypeIsFoundOnServers:{objc_msgSend(v7, "sourceType")}])
    {
      [(TUAutocompleteResultPartitioner *)self foundOnServersResultsArray];
    }

    else
    {
      [(TUAutocompleteResultPartitioner *)self normalResultsArray];
    }
    v5 = ;
  }

  v6 = v5;
  [v5 addObject:v4];
}

- (TUSearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

- (id)searchResults
{
  v3 = objc_alloc_init(TUSearchResults);
  v4 = [(TUAutocompleteResultPartitioner *)self searchController];
  [(TUSearchResults *)v3 setSearchController:v4];

  v5 = [(TUAutocompleteResultPartitioner *)self normalResultsArray];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [TUResultGroup alloc];
    v8 = TUBundle();
    v9 = [v8 localizedStringForKey:@"CONTACTS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v10 = [(TUAutocompleteResultPartitioner *)self normalResultsArray];
    v11 = [(TUResultGroup *)v7 initWithTitle:v9 results:v10];
    [(TUSearchResults *)v3 addResultGroup:v11];
  }

  v12 = [(TUAutocompleteResultPartitioner *)self foundInMailResultsArray];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [TUResultGroup alloc];
    v15 = TUBundle();
    v16 = [v15 localizedStringForKey:@"FOUND_IN_APPS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v17 = [(TUAutocompleteResultPartitioner *)self foundInMailResultsArray];
    v18 = [(TUResultGroup *)v14 initWithTitle:v16 results:v17];
    [(TUSearchResults *)v3 addResultGroup:v18];
  }

  return v3;
}

@end