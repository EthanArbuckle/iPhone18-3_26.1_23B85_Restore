@interface SPUIContactViewController
- (SPUIContactViewController)init;
- (void)updateWithContactIdentifier:(id)identifier preferredBundleIdentifiers:(id)identifiers;
- (void)willUpdateFromResultsWithHighlightedResult:(id)result viewController:(id)controller;
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
    searchResultViewController = [(SPUIViewController *)v2 searchResultViewController];
    [searchResultViewController setShouldAnimateUpdates:1];
  }

  return v3;
}

- (void)updateWithContactIdentifier:(id)identifier preferredBundleIdentifiers:(id)identifiers
{
  v30[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  objc_storeStrong(&self->_contactIdentifier, identifier);
  identifiersCopy = identifiers;
  v9 = [identifiersCopy copy];

  preferredBundleIdentifiers = self->_preferredBundleIdentifiers;
  self->_preferredBundleIdentifiers = v9;

  [(SPUIViewController *)self activateViewController:0 animate:0];
  v11 = +[SPUISearchModel sharedGeneralInstance];
  [v11 activate];
  [v11 updateWithQueryContext:0];
  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  [searchResultViewController searchAgentClearedResults:v11];

  backgroundColorView = [(SPUIContactViewController *)self backgroundColorView];
  [backgroundColorView setColor:0];

  if ([identifierCopy length])
  {
    v14 = [MEMORY[0x277D65888] searchEntityWithContactIdentifier:identifierCopy fromSuggestion:0];
    [v14 setPreferredBundleIDs:self->_preferredBundleIdentifiers];
    v15 = objc_alloc(MEMORY[0x277D65898]);
    tokenText = [v14 tokenText];
    v17 = tokenText;
    if (tokenText)
    {
      v18 = tokenText;
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
    tokenText2 = [v14 tokenText];
    searchResultViewController2 = [(SPUIViewController *)self searchResultViewController];
    [searchResultViewController2 setQueryString:tokenText2];

    if (![(SPUIContactViewController *)self isBackgroundColorViewHidden])
    {
      v23 = objc_opt_new();
      v29 = identifierCopy;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [v23 setContactIdentifiers:v24];

      v25 = objc_opt_new();
      [v25 setImage:v23];
      backgroundColorView2 = [(SPUIContactViewController *)self backgroundColorView];
      if (!backgroundColorView2)
      {
        backgroundColorView2 = objc_opt_new();
        [backgroundColorView2 setShowsPlaceholderPlatterView:0];
        [backgroundColorView2 setDelegate:self];
        view = [(SPUIContactViewController *)self view];
        [view insertSubview:backgroundColorView2 atIndex:0];

        [MEMORY[0x277D4C828] fillContainerWithView:backgroundColorView2];
        [(SPUIContactViewController *)self setBackgroundColorView:backgroundColorView2];
      }

      [backgroundColorView2 setColor:v25];
      [v14 setEntityBackgroundColor:v25];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)willUpdateFromResultsWithHighlightedResult:(id)result viewController:(id)controller
{
  v5 = [(SPUIViewController *)self searchResultViewController:result];
  [(SPUIViewController *)self activateViewController:v5 animate:1];
}

@end