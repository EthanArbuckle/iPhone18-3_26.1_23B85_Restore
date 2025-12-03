@interface PSKeyboardNavigationSearchController
- (PSKeyboardNavigationSearchController)initWithSearchResultsController:(id)controller;
- (void)_downArrowKeyPressed;
- (void)_upArrowKeyPressed;
@end

@implementation PSKeyboardNavigationSearchController

- (PSKeyboardNavigationSearchController)initWithSearchResultsController:(id)controller
{
  controllerCopy = controller;
  v5 = [PSKeyboardNavigationSearchBar alloc];
  v6 = [(PSKeyboardNavigationSearchBar *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(PSKeyboardNavigationSearchController *)self setSearchBar:v6];

  v7 = +[PSListController appearance];
  buttonTextColor = [v7 buttonTextColor];

  if (buttonTextColor)
  {
    v9 = +[PSListController appearance];
    buttonTextColor2 = [v9 buttonTextColor];
    searchBar = [(PSKeyboardNavigationSearchController *)self searchBar];
    [searchBar setTintColor:buttonTextColor2];
  }

  v18.receiver = self;
  v18.super_class = PSKeyboardNavigationSearchController;
  v12 = [(PSKeyboardNavigationSearchController *)&v18 initWithSearchResultsController:controllerCopy];
  v13 = v12;
  if (v12)
  {
    [(PSKeyboardNavigationSearchController *)v12 setSearchResultsController:controllerCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__escapeKeyPressed name:@"PSSearchBarEscapeKeyPressedNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v13 selector:sel__downArrowKeyPressed name:@"PSSearchBarDownArrowKeyPressedNotification" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v13 selector:sel__upArrowKeyPressed name:@"PSSearchBarUpArrowKeyPressedNotification" object:0];

    [(PSKeyboardNavigationSearchController *)v13 setObscuresBackgroundDuringPresentation:1];
  }

  return v13;
}

- (void)_downArrowKeyPressed
{
  searchResultsController = [(PSKeyboardNavigationSearchController *)self searchResultsController];
  [searchResultsController selectNextSearchResult];
}

- (void)_upArrowKeyPressed
{
  searchResultsController = [(PSKeyboardNavigationSearchController *)self searchResultsController];
  [searchResultsController selectPreviousSearchResult];
}

@end