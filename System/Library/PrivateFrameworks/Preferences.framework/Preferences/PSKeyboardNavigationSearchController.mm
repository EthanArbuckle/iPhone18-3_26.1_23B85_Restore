@interface PSKeyboardNavigationSearchController
- (PSKeyboardNavigationSearchController)initWithSearchResultsController:(id)a3;
- (void)_downArrowKeyPressed;
- (void)_upArrowKeyPressed;
@end

@implementation PSKeyboardNavigationSearchController

- (PSKeyboardNavigationSearchController)initWithSearchResultsController:(id)a3
{
  v4 = a3;
  v5 = [PSKeyboardNavigationSearchBar alloc];
  v6 = [(PSKeyboardNavigationSearchBar *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(PSKeyboardNavigationSearchController *)self setSearchBar:v6];

  v7 = +[PSListController appearance];
  v8 = [v7 buttonTextColor];

  if (v8)
  {
    v9 = +[PSListController appearance];
    v10 = [v9 buttonTextColor];
    v11 = [(PSKeyboardNavigationSearchController *)self searchBar];
    [v11 setTintColor:v10];
  }

  v18.receiver = self;
  v18.super_class = PSKeyboardNavigationSearchController;
  v12 = [(PSKeyboardNavigationSearchController *)&v18 initWithSearchResultsController:v4];
  v13 = v12;
  if (v12)
  {
    [(PSKeyboardNavigationSearchController *)v12 setSearchResultsController:v4];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v13 selector:sel__escapeKeyPressed name:@"PSSearchBarEscapeKeyPressedNotification" object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v13 selector:sel__downArrowKeyPressed name:@"PSSearchBarDownArrowKeyPressedNotification" object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v13 selector:sel__upArrowKeyPressed name:@"PSSearchBarUpArrowKeyPressedNotification" object:0];

    [(PSKeyboardNavigationSearchController *)v13 setObscuresBackgroundDuringPresentation:1];
  }

  return v13;
}

- (void)_downArrowKeyPressed
{
  v2 = [(PSKeyboardNavigationSearchController *)self searchResultsController];
  [v2 selectNextSearchResult];
}

- (void)_upArrowKeyPressed
{
  v2 = [(PSKeyboardNavigationSearchController *)self searchResultsController];
  [v2 selectPreviousSearchResult];
}

@end