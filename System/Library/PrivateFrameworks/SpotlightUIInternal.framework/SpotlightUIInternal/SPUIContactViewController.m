@interface SPUIContactViewController
- (SPUIContactViewController)init;
- (void)updateWithContactIdentifier:(id)a3 preferredBundleIdentifiers:(id)a4;
- (void)willUpdateFromResultsWithHighlightedResult:(id)a3 viewController:(id)a4;
@end

@implementation SPUIContactViewController

- (SPUIContactViewController)init
{
  v6.receiver = self;
  v6.super_class = SPUIContactViewController;
  v2 = [(SPUIViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(SPUIViewController *)v2 searchResultViewController];
    [v4 setShouldAnimateUpdates:1];
  }

  return v3;
}

- (void)updateWithContactIdentifier:(id)a3 preferredBundleIdentifiers:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  objc_storeStrong(&self->_contactIdentifier, a3);
  v8 = a4;
  v9 = [v8 copy];

  preferredBundleIdentifiers = self->_preferredBundleIdentifiers;
  self->_preferredBundleIdentifiers = v9;

  [(SPUIViewController *)self activateViewController:0 animate:0];
  v11 = +[SPUISearchModel sharedGeneralInstance];
  [v11 activate];
  [v11 updateWithQueryContext:0];
  v12 = [(SPUIViewController *)self searchResultViewController];
  [v12 searchAgentClearedResults:v11];

  v13 = [(SPUIContactViewController *)self backgroundColorView];
  [v13 setColor:0];

  if ([v7 length])
  {
    v14 = [MEMORY[0x277D65888] searchEntityWithContactIdentifier:v7 fromSuggestion:0];
    [v14 setPreferredBundleIDs:self->_preferredBundleIdentifiers];
    v15 = objc_alloc(MEMORY[0x277D65898]);
    v16 = [v14 tokenText];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &stru_287C49600;
    }

    v19 = [v15 initWithSearchString:v18];

    v30[0] = v14;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [v19 setSearchEntities:v20];

    [v11 updateWithQueryContext:v19];
    v21 = [v14 tokenText];
    v22 = [(SPUIViewController *)self searchResultViewController];
    [v22 setQueryString:v21];

    if (![(SPUIContactViewController *)self isBackgroundColorViewHidden])
    {
      v23 = objc_opt_new();
      v29 = v7;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [v23 setContactIdentifiers:v24];

      v25 = objc_opt_new();
      [v25 setImage:v23];
      v26 = [(SPUIContactViewController *)self backgroundColorView];
      if (!v26)
      {
        v26 = objc_opt_new();
        [v26 setShowsPlaceholderPlatterView:0];
        [v26 setDelegate:self];
        v27 = [(SPUIContactViewController *)self view];
        [v27 insertSubview:v26 atIndex:0];

        [MEMORY[0x277D4C828] fillContainerWithView:v26];
        [(SPUIContactViewController *)self setBackgroundColorView:v26];
      }

      [v26 setColor:v25];
      [v14 setEntityBackgroundColor:v25];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)willUpdateFromResultsWithHighlightedResult:(id)a3 viewController:(id)a4
{
  v5 = [(SPUIViewController *)self searchResultViewController:a3];
  [(SPUIViewController *)self activateViewController:v5 animate:1];
}

@end