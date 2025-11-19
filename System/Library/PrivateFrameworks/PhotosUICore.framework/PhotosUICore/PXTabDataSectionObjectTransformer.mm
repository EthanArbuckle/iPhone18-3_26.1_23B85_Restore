@interface PXTabDataSectionObjectTransformer
+ (BOOL)canChangeDisplayOrderForTransformedObject:(id)a3;
+ (id)createTransformedObjectForDataSectionObject:(id)a3 associatedObjectProvider:(id)a4;
+ (void)updateTransformedObject:(id)a3 forDataSectionObject:(id)a4;
@end

@implementation PXTabDataSectionObjectTransformer

+ (void)updateTransformedObject:(id)a3 forDataSectionObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = v5;
  v7 = [v6 title];
  [v12 setTitle:v7];

  v8 = [v12 userInfo];
  v9 = v8;
  if (v8 != v6)
  {
    v10 = [v8 isEqual:v6];

    if (v10)
    {
      goto LABEL_5;
    }

    [v12 setUserInfo:v6];
    v9 = [v12 tabBarController];
    v11 = [v9 sidebar];
    [v11 reconfigureItemForTab:v12];
  }

LABEL_5:
}

+ (BOOL)canChangeDisplayOrderForTransformedObject:(id)a3
{
  v3 = a3;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
    goto LABEL_6;
  }

  v4 = v3;

  if (!v4)
  {
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  v5 = [v4 sidebarAppearance] != 1;
LABEL_7:

  return v5;
}

+ (id)createTransformedObjectForDataSectionObject:(id)a3 associatedObjectProvider:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _Block_copy(a4);
  v7 = [v5 collection];
  if ([v5 isExpandable])
  {
    v8 = objc_alloc(MEMORY[0x1E69DD010]);
    v9 = [v5 title];
    v10 = [v5 identifier];
    v11 = [v8 initWithTitle:v9 image:0 identifier:v10 viewControllerProvider:v6];

    [v11 setUserInfo:v5];
    [v11 setIsSidebarDestination:1];
    [v11 setAllowsReordering:{objc_msgSend(v5, "canRearrangeContent")}];
    if (objc_opt_respondsToSelector())
    {
      [v11 setCollapsedByDefault:1];
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E69DCFE0]);
    v13 = [v5 title];
    v14 = [v5 identifier];
    v11 = [v12 initWithTitle:v13 image:0 identifier:v14 viewControllerProvider:v6];

    [v11 setUserInfo:v5];
    if ([v7 px_isAllAlbumsVirtualCollection])
    {
      v15 = [v5 identifier];
      v16 = [v15 stringByAppendingString:@".inlineGroupContainer"];

      v17 = objc_alloc(MEMORY[0x1E69DD010]);
      v18 = [v5 title];
      v19 = [v17 initWithTitle:v18 image:0 identifier:v16 viewControllerProvider:0];

      [v19 setSidebarAppearance:1];
      v22[0] = v11;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v19 setChildren:v20];

      [v11 setUserInfo:v5];
      v11 = v19;
    }
  }

  [v11 setSpringLoaded:{objc_msgSend(v7, "px_allowsSpringLoading")}];

  return v11;
}

@end