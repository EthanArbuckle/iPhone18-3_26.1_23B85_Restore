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

  v8 = [a1 navigationBar];
  if (a3 == 1)
  {
    v9 = [a4 lightKeyColor];
    v10 = 0;
    goto LABEL_6;
  }

  if (a3 == 2)
  {
    v9 = [a4 darkKeyColor];
    v10 = 1;
LABEL_6:
    v11 = [MEMORY[0x1E69DC888] labelColor];
    [v8 setBarStyle:v10];
    if (v9)
    {
      [objc_msgSend(a1 "view")];
    }

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E695DF20]);
      v13 = [v12 initWithObjectsAndKeys:{v11, *MEMORY[0x1E69DB650], 0}];
      [v8 setTitleTextAttributes:v13];
    }
  }

  v28 = a3;
  v14 = [objc_msgSend(a1 "navigationBar")];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = [v14 rightBarButtonItems];
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v34;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v21 customView];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v21 customView];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = [v14 leftBarButtonItems];
  v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v29 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27 customView];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v27 customView];
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v24);
  }

  [v14 titleView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v14 titleView];
  }

  return [v18 setBarStyle:v28 == 2];
}

@end