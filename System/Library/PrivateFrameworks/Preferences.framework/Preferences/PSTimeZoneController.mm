@interface PSTimeZoneController
+ (void)setTimeZone:(id)a3;
- (PSListController)parentController;
- (id)currentTimeZoneCityName;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PSTimeZoneController

+ (void)setTimeZone:(id)a3
{
  v3 = a3;
  [v3 UTF8String];
  if (tzlink())
  {
    NSLog(&cfstr_FailedToSetThe.isa, v3);
  }
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PSTimeZoneController;
  [(PSTimeZoneController *)&v24 viewDidLoad];
  v3 = PS_LocalizedString(@"TIME_ZONE");
  [(PSTimeZoneController *)self setTitle:v3];

  v4 = [(PSTimeZoneController *)self tableView];
  [v4 _setDisplaysCellContentStringsOnTapAndHold:1];

  v5 = [(PSTimeZoneController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"TIMEZONE_CELL"];

  v6 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
  [(PSTimeZoneController *)self setSearchController:v6];

  v7 = [(PSTimeZoneController *)self searchController];
  [v7 setSearchResultsUpdater:self];

  v8 = [(PSTimeZoneController *)self searchController];
  [v8 setDimsBackgroundDuringPresentation:0];

  v9 = [(PSTimeZoneController *)self searchController];
  v10 = [v9 searchBar];
  [v10 setAutocapitalizationType:0];

  v11 = [(PSTimeZoneController *)self searchController];
  v12 = [v11 searchBar];
  [v12 setKeyboardType:0];

  v13 = [(PSTimeZoneController *)self searchController];
  v14 = [v13 searchBar];
  [v14 setAutocorrectionType:1];

  v15 = [(PSTimeZoneController *)self searchController];
  v16 = [(PSTimeZoneController *)self navigationItem];
  [v16 setSearchController:v15];

  v17 = [(PSTimeZoneController *)self navigationItem];
  [v17 setHidesSearchBarWhenScrolling:0];

  [(PSTimeZoneController *)self setDefinesPresentationContext:1];
  v18 = [(PSTimeZoneController *)self currentTimeZoneCityName];
  if ([v18 length])
  {
    v19 = [(PSTimeZoneController *)self searchController];
    v20 = [v19 searchBar];
    [v20 setPlaceholder:v18];

    v21 = [MEMORY[0x1E698B670] sharedManager];
    v22 = [v21 citiesMatchingName:v18];
    cities = self->_cities;
    self->_cities = v22;
  }
}

- (id)currentTimeZoneCityName
{
  v2 = [(PSTimeZoneController *)self specifier];
  v3 = PSCityForSpecifier(v2, 1);

  v4 = [v3 displayNameIncludingCountry:0];

  return v4;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PSTimeZoneController;
  [(PSTimeZoneController *)&v5 viewDidAppear:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PSTimeZoneController_viewDidAppear___block_invoke;
  block[3] = &unk_1E71DBE20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __38__PSTimeZoneController_viewDidAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchController];
  v1 = [v2 searchBar];
  [v1 becomeFirstResponder];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"TIMEZONE_CELL" forIndexPath:v6];
  cities = self->_cities;
  v9 = [v6 row];

  v10 = [(NSArray *)cities objectAtIndex:v9];
  [v7 setCity:v10];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = -[NSArray objectAtIndex:](self->_cities, "objectAtIndex:", [a4 row]);
  v5 = [v9 properties];
  [PSRootController setPreferenceValue:v5 specifier:self->_specifier];

  [(PSSpecifier *)self->_specifier performSetterWithValue:v9];
  v6 = [(PSTimeZoneController *)self parentController];
  [v6 reloadSpecifier:self->_specifier];

  v7 = [(PSTimeZoneController *)self navigationController];
  v8 = [v7 popViewControllerAnimated:1];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v11 = [v4 text];

  if ([v11 length])
  {
    v5 = v11;
  }

  else
  {
    v5 = [(PSTimeZoneController *)self currentTimeZoneCityName];
  }

  v6 = v5;
  v7 = [MEMORY[0x1E698B670] sharedManager];
  v8 = [v7 citiesMatchingName:v6];
  cities = self->_cities;
  self->_cities = v8;

  v10 = [(PSTimeZoneController *)self tableView];
  [v10 reloadData];
}

- (PSListController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end