@interface PHActivityViewController
- (PHActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (void)_updateActivityItems:(id)items;
@end

@implementation PHActivityViewController

- (void)_updateActivityItems:(id)items
{
  itemsCopy = items;
  [(PHActivityViewController *)self _setPHActivityItems:itemsCopy];
  v5.receiver = self;
  v5.super_class = PHActivityViewController;
  [(PHActivityViewController *)&v5 _updateActivityItems:itemsCopy];
}

- (PHActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  activitiesCopy = activities;
  v21.receiver = self;
  v21.super_class = PHActivityViewController;
  v8 = [(PHActivityViewController *)&v21 initWithActivityItems:itemsCopy applicationActivities:activitiesCopy];
  v9 = v8;
  if (v8)
  {
    [(PHActivityViewController *)v8 _setPHActivityItems:itemsCopy];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = activitiesCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 setDataSource:{v9, v17}];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }

  return v9;
}

@end