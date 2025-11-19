@interface UIAirDropActivity
+ (BOOL)canPerformActivityWithItemClasses:(id)a3;
+ (CGSize)_thumbnailSize;
+ (id)classNamesForItems:(id)a3;
+ (id)classesForClassNames:(id)a3;
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (CGSize)_thumbnailSize;
- (id)activityTitle;
@end

@implementation UIAirDropActivity

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (CGSize)_thumbnailSize
{
  v2 = objc_opt_class();

  [v2 _thumbnailSize];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)_thumbnailSize
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  SFSuggestedAirDropThumbnailSize();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"AirDrop" value:@"AirDrop" table:@"Localizable"];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() classNamesForItems:v3];

  v5 = [objc_opt_class() classesForClassNames:v4];
  v6 = [objc_opt_class() canPerformActivityWithItemClasses:v5];

  return v6;
}

+ (id)classNamesForItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        [v4 addObject:{v11, v13}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)classesForClassNames:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = NSClassFromString(*(*(&v12 + 1) + 8 * i));
        if (v10)
        {
          [v4 addObject:{v10, v12}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (BOOL)canPerformActivityWithItemClasses:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v9 = [v8 description];
        if ([v9 length] >= 0x3D)
        {
          v10 = [v8 description];
          v11 = [v10 substringToIndex:60];

          v9 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v5);
  }

  if ([v3 count] >= 2)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v30 + 1) + 8 * j) isSubclassOfClass:objc_opt_class()];
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v14);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v3;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v26 + 1) + 8 * v22);
        v20 = v20 || ([v23 isSubclassOfClass:{objc_opt_class(), v26}] & 1) != 0 || (objc_msgSend(v23, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v23, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v23, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v23, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v23, "isSubclassOfClass:", objc_opt_class());
        if (([v23 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v23, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v23, "isSubclassOfClass:", objc_opt_class()))
        {
          v20 = 1;
        }

        if (([v23 isSubclassOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(v23, "isSubclassOfClass:", objc_opt_class()))
        {
          v20 = 1;
        }

        ++v22;
      }

      while (v19 != v22);
      v24 = [v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
      v19 = v24;
    }

    while (v24);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end