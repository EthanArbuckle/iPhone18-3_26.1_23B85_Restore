@interface PXTabDataSectionObjectTransformer
+ (BOOL)canChangeDisplayOrderForTransformedObject:(id)object;
+ (id)createTransformedObjectForDataSectionObject:(id)object associatedObjectProvider:(id)provider;
+ (void)updateTransformedObject:(id)object forDataSectionObject:(id)sectionObject;
@end

@implementation PXTabDataSectionObjectTransformer

+ (void)updateTransformedObject:(id)object forDataSectionObject:(id)sectionObject
{
  objectCopy = object;
  sectionObjectCopy = sectionObject;
  v12 = objectCopy;
  title = [sectionObjectCopy title];
  [v12 setTitle:title];

  userInfo = [v12 userInfo];
  tabBarController = userInfo;
  if (userInfo != sectionObjectCopy)
  {
    v10 = [userInfo isEqual:sectionObjectCopy];

    if (v10)
    {
      goto LABEL_5;
    }

    [v12 setUserInfo:sectionObjectCopy];
    tabBarController = [v12 tabBarController];
    sidebar = [tabBarController sidebar];
    [sidebar reconfigureItemForTab:v12];
  }

LABEL_5:
}

+ (BOOL)canChangeDisplayOrderForTransformedObject:(id)object
{
  objectCopy = object;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
    goto LABEL_6;
  }

  v4 = objectCopy;

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

+ (id)createTransformedObjectForDataSectionObject:(id)object associatedObjectProvider:(id)provider
{
  v22[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v6 = _Block_copy(provider);
  collection = [objectCopy collection];
  if ([objectCopy isExpandable])
  {
    v8 = objc_alloc(MEMORY[0x1E69DD010]);
    title = [objectCopy title];
    identifier = [objectCopy identifier];
    v11 = [v8 initWithTitle:title image:0 identifier:identifier viewControllerProvider:v6];

    [v11 setUserInfo:objectCopy];
    [v11 setIsSidebarDestination:1];
    [v11 setAllowsReordering:{objc_msgSend(objectCopy, "canRearrangeContent")}];
    if (objc_opt_respondsToSelector())
    {
      [v11 setCollapsedByDefault:1];
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E69DCFE0]);
    title2 = [objectCopy title];
    identifier2 = [objectCopy identifier];
    v11 = [v12 initWithTitle:title2 image:0 identifier:identifier2 viewControllerProvider:v6];

    [v11 setUserInfo:objectCopy];
    if ([collection px_isAllAlbumsVirtualCollection])
    {
      identifier3 = [objectCopy identifier];
      v16 = [identifier3 stringByAppendingString:@".inlineGroupContainer"];

      v17 = objc_alloc(MEMORY[0x1E69DD010]);
      title3 = [objectCopy title];
      v19 = [v17 initWithTitle:title3 image:0 identifier:v16 viewControllerProvider:0];

      [v19 setSidebarAppearance:1];
      v22[0] = v11;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v19 setChildren:v20];

      [v11 setUserInfo:objectCopy];
      v11 = v19;
    }
  }

  [v11 setSpringLoaded:{objc_msgSend(collection, "px_allowsSpringLoading")}];

  return v11;
}

@end