@interface CalendarUsageBundleDetailController
- (id)specifiers;
- (void)loadView;
@end

@implementation CalendarUsageBundleDetailController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CalendarUsageBundleDetailController;
  [(CalendarUsageBundleDetailController *)&v3 loadView];
  [(CalendarUsageBundleDetailController *)self setEditingButtonHidden:1 animated:0];
}

- (id)specifiers
{
  v3 = *&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v26 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    specifier = [(CalendarUsageBundleDetailController *)self specifier];
    v6 = [specifier propertyForKey:PSUsageBundleAppKey];

    name = [v6 name];
    v8 = [PSSpecifier preferenceSpecifierNamed:name target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v8 setProperty:@"PSUsageSizeHeader" forKey:PSHeaderCellClassGroupKey];
    selfCopy = self;
    specifier2 = [(CalendarUsageBundleDetailController *)self specifier];
    v10 = [specifier2 propertyForKey:@"TOTAL_SIZE"];
    [v8 setProperty:v10 forKey:@"SIZE"];

    v28 = v4;
    v24 = v8;
    [v4 insertObject:v8 atIndex:0];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v6;
    obj = [v6 categories];
    v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      v14 = PSUsageBundleCategoryKey;
      v15 = PSIDKey;
      v16 = PSCellClassKey;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          name2 = [v18 name];
          v20 = [PSSpecifier preferenceSpecifierNamed:name2 target:selfCopy set:0 get:"sizeForSpecifier:" detail:0 cell:4 edit:0];

          [v20 setProperty:v18 forKey:v14];
          name3 = [v18 name];
          [v20 setProperty:name3 forKey:v15];

          [v20 setProperty:objc_opt_class() forKey:v16];
          [v28 addObject:v20];
        }

        v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    v22 = *&selfCopy->PSUsageBundleDetailController_opaque[v26];
    *&selfCopy->PSUsageBundleDetailController_opaque[v26] = v28;

    v3 = *&selfCopy->PSUsageBundleDetailController_opaque[v26];
  }

  return v3;
}

@end