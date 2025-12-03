@interface TonesUsageBundleDetailController
- (id)specifiers;
- (void)loadView;
@end

@implementation TonesUsageBundleDetailController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = TonesUsageBundleDetailController;
  [(TonesUsageBundleDetailController *)&v3 loadView];
  [(TonesUsageBundleDetailController *)self setEditingButtonHidden:1 animated:0];
}

- (id)specifiers
{
  v3 = *&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v26 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    specifier = [(TonesUsageBundleDetailController *)self specifier];
    v6 = [specifier propertyForKey:@"USAGE_BUNDLE_APP"];

    name = [v6 name];
    v8 = [PSSpecifier preferenceSpecifierNamed:name target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v8 setProperty:@"PSUsageSizeHeader" forKey:PSHeaderCellClassGroupKey];
    selfCopy = self;
    specifier2 = [(TonesUsageBundleDetailController *)self specifier];
    v10 = [specifier2 propertyForKey:@"TOTAL_SIZE"];
    [v8 setProperty:v10 forKey:@"SIZE"];

    v11 = v4;
    v24 = v8;
    [v4 insertObject:v8 atIndex:0];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v6;
    obj = [v6 categories];
    v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      v15 = PSIDKey;
      v16 = PSCellClassKey;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          name2 = [v18 name];
          v20 = [PSSpecifier preferenceSpecifierNamed:name2 target:selfCopy set:0 get:"sizeForSpecifier:" detail:0 cell:4 edit:0];

          [v20 setProperty:v18 forKey:@"USAGE_BUNDLE_CATEGORY"];
          name3 = [v18 name];
          [v20 setProperty:name3 forKey:v15];

          [v20 setProperty:objc_opt_class() forKey:v16];
          [v11 addObject:v20];
        }

        v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    v22 = *&selfCopy->PSUsageBundleDetailController_opaque[v26];
    *&selfCopy->PSUsageBundleDetailController_opaque[v26] = v11;

    v3 = *&selfCopy->PSUsageBundleDetailController_opaque[v26];
  }

  return v3;
}

@end