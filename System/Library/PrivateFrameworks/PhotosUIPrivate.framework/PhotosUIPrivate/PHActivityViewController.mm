@interface PHActivityViewController
- (PHActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
- (void)_updateActivityItems:(id)a3;
@end

@implementation PHActivityViewController

- (void)_updateActivityItems:(id)a3
{
  v4 = a3;
  [(PHActivityViewController *)self _setPHActivityItems:v4];
  v5.receiver = self;
  v5.super_class = PHActivityViewController;
  [(PHActivityViewController *)&v5 _updateActivityItems:v4];
}

- (PHActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = PHActivityViewController;
  v8 = [(PHActivityViewController *)&v21 initWithActivityItems:v6 applicationActivities:v7];
  v9 = v8;
  if (v8)
  {
    [(PHActivityViewController *)v8 _setPHActivityItems:v6];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v7;
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