@interface PSTimeZoneController
+ (void)setTimeZone:(id)zone;
- (PSListController)parentController;
- (id)currentTimeZoneCityName;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PSTimeZoneController

+ (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  [zoneCopy UTF8String];
  if (tzlink())
  {
    NSLog(&cfstr_FailedToSetThe.isa, zoneCopy);
  }
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PSTimeZoneController;
  [(PSTimeZoneController *)&v24 viewDidLoad];
  v3 = PS_LocalizedString(@"TIME_ZONE");
  [(PSTimeZoneController *)self setTitle:v3];

  tableView = [(PSTimeZoneController *)self tableView];
  [tableView _setDisplaysCellContentStringsOnTapAndHold:1];

  tableView2 = [(PSTimeZoneController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"TIMEZONE_CELL"];

  v6 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
  [(PSTimeZoneController *)self setSearchController:v6];

  searchController = [(PSTimeZoneController *)self searchController];
  [searchController setSearchResultsUpdater:self];

  searchController2 = [(PSTimeZoneController *)self searchController];
  [searchController2 setDimsBackgroundDuringPresentation:0];

  searchController3 = [(PSTimeZoneController *)self searchController];
  searchBar = [searchController3 searchBar];
  [searchBar setAutocapitalizationType:0];

  searchController4 = [(PSTimeZoneController *)self searchController];
  searchBar2 = [searchController4 searchBar];
  [searchBar2 setKeyboardType:0];

  searchController5 = [(PSTimeZoneController *)self searchController];
  searchBar3 = [searchController5 searchBar];
  [searchBar3 setAutocorrectionType:1];

  searchController6 = [(PSTimeZoneController *)self searchController];
  navigationItem = [(PSTimeZoneController *)self navigationItem];
  [navigationItem setSearchController:searchController6];

  navigationItem2 = [(PSTimeZoneController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];

  [(PSTimeZoneController *)self setDefinesPresentationContext:1];
  currentTimeZoneCityName = [(PSTimeZoneController *)self currentTimeZoneCityName];
  if ([currentTimeZoneCityName length])
  {
    searchController7 = [(PSTimeZoneController *)self searchController];
    searchBar4 = [searchController7 searchBar];
    [searchBar4 setPlaceholder:currentTimeZoneCityName];

    mEMORY[0x1E698B670] = [MEMORY[0x1E698B670] sharedManager];
    v22 = [mEMORY[0x1E698B670] citiesMatchingName:currentTimeZoneCityName];
    cities = self->_cities;
    self->_cities = v22;
  }
}

- (id)currentTimeZoneCityName
{
  specifier = [(PSTimeZoneController *)self specifier];
  v3 = PSCityForSpecifier(specifier, 1);

  v4 = [v3 displayNameIncludingCountry:0];

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PSTimeZoneController;
  [(PSTimeZoneController *)&v5 viewDidAppear:appear];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"TIMEZONE_CELL" forIndexPath:pathCopy];
  cities = self->_cities;
  v9 = [pathCopy row];

  v10 = [(NSArray *)cities objectAtIndex:v9];
  [v7 setCity:v10];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v9 = -[NSArray objectAtIndex:](self->_cities, "objectAtIndex:", [path row]);
  properties = [v9 properties];
  [PSRootController setPreferenceValue:properties specifier:self->_specifier];

  [(PSSpecifier *)self->_specifier performSetterWithValue:v9];
  parentController = [(PSTimeZoneController *)self parentController];
  [parentController reloadSpecifier:self->_specifier];

  navigationController = [(PSTimeZoneController *)self navigationController];
  v8 = [navigationController popViewControllerAnimated:1];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  if ([text length])
  {
    currentTimeZoneCityName = text;
  }

  else
  {
    currentTimeZoneCityName = [(PSTimeZoneController *)self currentTimeZoneCityName];
  }

  v6 = currentTimeZoneCityName;
  mEMORY[0x1E698B670] = [MEMORY[0x1E698B670] sharedManager];
  v8 = [mEMORY[0x1E698B670] citiesMatchingName:v6];
  cities = self->_cities;
  self->_cities = v8;

  tableView = [(PSTimeZoneController *)self tableView];
  [tableView reloadData];
}

- (PSListController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end