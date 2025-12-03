@interface UINavigationController(SUTabBarControllerPackage)
- (uint64_t)_setStoreBarStyle:()SUTabBarControllerPackage clientInterface:;
@end

@implementation UINavigationController(SUTabBarControllerPackage)

- (uint64_t)_setStoreBarStyle:()SUTabBarControllerPackage clientInterface:
{
  v39 = *MEMORY[0x1E69E9840];
  result = _UIApplicationUsesLegacyUI();
  if (result)
  {
    return result;
  }

  navigationBar = [self navigationBar];
  if (a3 == 1)
  {
    lightKeyColor = [a4 lightKeyColor];
    v10 = 0;
    goto LABEL_6;
  }

  if (a3 == 2)
  {
    lightKeyColor = [a4 darkKeyColor];
    v10 = 1;
LABEL_6:
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [navigationBar setBarStyle:v10];
    if (lightKeyColor)
    {
      [objc_msgSend(self "view")];
    }

    if (labelColor)
    {
      v12 = objc_alloc(MEMORY[0x1E695DF20]);
      v13 = [v12 initWithObjectsAndKeys:{labelColor, *MEMORY[0x1E69DB650], 0}];
      [navigationBar setTitleTextAttributes:v13];
    }
  }

  v28 = a3;
  v14 = [objc_msgSend(self "navigationBar")];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  rightBarButtonItems = [v14 rightBarButtonItems];
  v16 = [rightBarButtonItems countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    customView = 0;
    v19 = *v34;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(rightBarButtonItems);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v21 customView];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            customView = [v21 customView];
          }
        }
      }

      v17 = [rightBarButtonItems countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v17);
  }

  else
  {
    customView = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  leftBarButtonItems = [v14 leftBarButtonItems];
  v23 = [leftBarButtonItems countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(leftBarButtonItems);
        }

        v27 = *(*(&v29 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27 customView];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            customView = [v27 customView];
          }
        }
      }

      v24 = [leftBarButtonItems countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v24);
  }

  [v14 titleView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    customView = [v14 titleView];
  }

  return [customView setBarStyle:v28 == 2];
}

@end