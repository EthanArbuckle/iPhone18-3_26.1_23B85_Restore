@interface PKCountryPickerViewController
- (PKCountryPickerViewController)initWithStyle:(int64_t)a3;
- (PKCountryPickerViewControllerDelegate)delegate;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (void)_configureSections;
- (void)_loadCountryCodes;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PKCountryPickerViewController

- (PKCountryPickerViewController)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKCountryPickerViewController;
  result = [(PKCountryPickerViewController *)&v5 initWithStyle:0];
  if (result)
  {
    result->_style = a3;
  }

  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKCountryPickerViewController;
  [(PKCountryPickerViewController *)&v5 viewDidLoad];
  v3 = [(PKCountryPickerViewController *)self tableView];
  [v3 setRowHeight:*MEMORY[0x1E69DE3D0]];

  v4 = [(PKCountryPickerViewController *)self tableView];
  [v4 setEstimatedRowHeight:44.0];

  [(PKCountryPickerViewController *)self _loadCountryCodes];
}

- (void)_loadCountryCodes
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF58] ISOCountryCodes];
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  if (v3)
  {
    v19 = self;
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v3;
    obj = v3;
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
          v12 = [MEMORY[0x1E69967B8] addressFormats];
          v13 = [v9 lowercaseString];
          v14 = [v12 objectForKey:v13];

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
    self = v19;
    countries = v19->_countries;
    v19->_countries = v16;

    v3 = v18;
  }

  [(PKCountryPickerViewController *)self _configureSections];
}

- (void)_configureSections
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCC40] currentCollation];
  collation = self->_collation;
  self->_collation = v3;

  v5 = [(PKCountryPickerViewController *)self collation];
  v6 = [v5 sectionTitles];
  v7 = [v6 count];

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
  v11 = [(PKCountryPickerViewController *)self countries];
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [(PKCountryPickerViewController *)self collation];
        v18 = [v17 sectionForObject:v16 collationStringSelector:sel_localizedCountryName];

        v19 = [v8 objectAtIndexedSubscript:v18];
        [v19 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  if (v7)
  {
    v20 = 0;
    do
    {
      v21 = [v8 objectAtIndexedSubscript:v20];
      v22 = [(PKCountryPickerViewController *)self collation];
      v23 = [v22 sortedArrayFromArray:v21 collationStringSelector:sel_localizedCountryName];

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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(UILocalizedIndexedCollation *)self->_collation sectionTitles];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(PKCountryPickerViewController *)self tableView:a3 numberOfRowsInSection:?]< 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(UILocalizedIndexedCollation *)self->_collation sectionTitles];
    v7 = [v6 objectAtIndex:a4];
  }

  return v7;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  v3 = [(PKCountryPickerViewController *)self collation];
  v4 = [v3 sectionIndexTitles];

  return v4;
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v6 = [(PKCountryPickerViewController *)self collation:a3];
  v7 = [v6 sectionForSectionIndexTitleAtIndex:a5];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Cell"];
    [v7 setSelectionStyle:3];
    v8 = [v7 textLabel];
    [v8 setAdjustsFontSizeToFitWidth:1];
  }

  v9 = -[NSArray objectAtIndex:](self->_sections, "objectAtIndex:", [v6 section]);
  v10 = [v6 row];

  v11 = [v9 objectAtIndex:v10];
  v12 = [v7 textLabel];
  v13 = [v11 localizedCountryName];
  [v12 setText:v13];

  if (self->_style == 2)
  {
    v14 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v14, v7);
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v7 = a4;
  v8 = a3;
  v14 = -[NSArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [v7 row];

  v10 = [v14 objectAtIndexedSubscript:v9];
  v11 = [(PKCountryPickerViewController *)self delegate];
  v12 = [v10 countryCode];
  [v11 countryPicker:self didPickCountryCode:v12];

  v13 = [v8 indexPathForSelectedRow];
  [v8 deselectRowAtIndexPath:v13 animated:1];
}

- (PKCountryPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end