@interface PKCountryPickerViewController
- (PKCountryPickerViewController)initWithStyle:(int64_t)style;
- (PKCountryPickerViewControllerDelegate)delegate;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (void)_configureSections;
- (void)_loadCountryCodes;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PKCountryPickerViewController

- (PKCountryPickerViewController)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = PKCountryPickerViewController;
  result = [(PKCountryPickerViewController *)&v5 initWithStyle:0];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKCountryPickerViewController;
  [(PKCountryPickerViewController *)&v5 viewDidLoad];
  tableView = [(PKCountryPickerViewController *)self tableView];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];

  tableView2 = [(PKCountryPickerViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:44.0];

  [(PKCountryPickerViewController *)self _loadCountryCodes];
}

- (void)_loadCountryCodes
{
  v27 = *MEMORY[0x1E69E9840];
  iSOCountryCodes = [MEMORY[0x1E695DF58] ISOCountryCodes];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  if (iSOCountryCodes)
  {
    selfCopy = self;
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(iSOCountryCodes, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = iSOCountryCodes;
    obj = iSOCountryCodes;
    v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * v8);
          v10 = objc_alloc_init(PKCountryInfo);
          v11 = PKLocalizedStringForCountryCode();
          [(PKCountryInfo *)v10 setCountryCode:v9];
          [(PKCountryInfo *)v10 setLocalizedCountryName:v11];
          addressFormats = [MEMORY[0x1E69967B8] addressFormats];
          lowercaseString = [v9 lowercaseString];
          v14 = [addressFormats objectForKey:lowercaseString];

          v15 = [v14 objectForKeyedSubscript:@"EDIT_FORMAT"];

          if (v15)
          {
            [v21 addObject:v10];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    v16 = [v21 copy];
    self = selfCopy;
    countries = selfCopy->_countries;
    selfCopy->_countries = v16;

    iSOCountryCodes = v18;
  }

  [(PKCountryPickerViewController *)self _configureSections];
}

- (void)_configureSections
{
  v30 = *MEMORY[0x1E69E9840];
  currentCollation = [MEMORY[0x1E69DCC40] currentCollation];
  collation = self->_collation;
  self->_collation = currentCollation;

  collation = [(PKCountryPickerViewController *)self collation];
  sectionTitles = [collation sectionTitles];
  v7 = [sectionTitles count];

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
  if (v7)
  {
    v9 = v7;
    do
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v8 addObject:v10];

      --v9;
    }

    while (v9);
  }

  v24 = v7;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  countries = [(PKCountryPickerViewController *)self countries];
  v12 = [countries countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(countries);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        collation2 = [(PKCountryPickerViewController *)self collation];
        v18 = [collation2 sectionForObject:v16 collationStringSelector:sel_localizedCountryName];

        v19 = [v8 objectAtIndexedSubscript:v18];
        [v19 addObject:v16];
      }

      v13 = [countries countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  if (v7)
  {
    v20 = 0;
    do
    {
      v21 = [v8 objectAtIndexedSubscript:v20];
      collation3 = [(PKCountryPickerViewController *)self collation];
      v23 = [collation3 sortedArrayFromArray:v21 collationStringSelector:sel_localizedCountryName];

      if (v23)
      {
        [v8 setObject:v23 atIndexedSubscript:v20];
      }

      ++v20;
    }

    while (v24 != v20);
  }

  [(PKCountryPickerViewController *)self setSections:v8];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sectionTitles = [(UILocalizedIndexedCollation *)self->_collation sectionTitles];
  v4 = [sectionTitles count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(PKCountryPickerViewController *)self tableView:view numberOfRowsInSection:?]< 1)
  {
    v7 = 0;
  }

  else
  {
    sectionTitles = [(UILocalizedIndexedCollation *)self->_collation sectionTitles];
    v7 = [sectionTitles objectAtIndex:section];
  }

  return v7;
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  collation = [(PKCountryPickerViewController *)self collation];
  sectionIndexTitles = [collation sectionIndexTitles];

  return sectionIndexTitles;
}

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  v6 = [(PKCountryPickerViewController *)self collation:view];
  v7 = [v6 sectionForSectionIndexTitleAtIndex:index];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Cell"];
    [v7 setSelectionStyle:3];
    textLabel = [v7 textLabel];
    [textLabel setAdjustsFontSizeToFitWidth:1];
  }

  v9 = -[NSArray objectAtIndex:](self->_sections, "objectAtIndex:", [pathCopy section]);
  v10 = [pathCopy row];

  v11 = [v9 objectAtIndex:v10];
  textLabel2 = [v7 textLabel];
  localizedCountryName = [v11 localizedCountryName];
  [textLabel2 setText:localizedCountryName];

  if (self->_style == 2)
  {
    v14 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v14, v7);
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  viewCopy = view;
  v14 = -[NSArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [pathCopy section]);
  v9 = [pathCopy row];

  v10 = [v14 objectAtIndexedSubscript:v9];
  delegate = [(PKCountryPickerViewController *)self delegate];
  countryCode = [v10 countryCode];
  [delegate countryPicker:self didPickCountryCode:countryCode];

  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
  [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (PKCountryPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end