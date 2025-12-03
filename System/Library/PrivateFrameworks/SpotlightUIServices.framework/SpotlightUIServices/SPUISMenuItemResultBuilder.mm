@interface SPUISMenuItemResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISMenuItemResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildMenuBarAppIconImage;
- (id)buildMenuItemSymbolImage;
@end

@implementation SPUISMenuItemResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v5 = [resultCopy valueForAttribute:*MEMORY[0x277CC2770] withType:objc_opt_class()];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___SPUISMenuItemResultBuilder;
  if (objc_msgSendSuper2(&v10, sel_supportsResult_, resultCopy))
  {
    v6 = [v5 hasPrefix:@"com.apple.duetexpertd.menuitem"];
  }

  else
  {
    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    bundleId = [self bundleId];
    if ([applicationBundleIdentifier isEqualToString:bundleId])
    {
      v6 = [v5 hasPrefix:@"com.apple.duetexpertd.menuitem"];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (SPUISMenuItemResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v25.receiver = self;
  v25.super_class = SPUISMenuItemResultBuilder;
  v5 = [(SPUISResultBuilder *)&v25 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISMenuItemResultBuilder *)v5 setTitle:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2E80] withType:objc_opt_class()];
    [(SPUISMenuItemResultBuilder *)v5 setPath:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F8] withType:objc_opt_class()];
    pathComponents = [v8 pathComponents];
    [(SPUISMenuItemResultBuilder *)v5 setPathComponents:pathComponents];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC2BD8] withType:objc_opt_class()];
    [(SPUISMenuItemResultBuilder *)v5 setIdentifier:v10];

    v11 = [resultCopy valueForAttribute:*MEMORY[0x277CC2638] withType:objc_opt_class()];
    [(SPUISMenuItemResultBuilder *)v5 setPid:v11];

    pathComponents2 = [(SPUISMenuItemResultBuilder *)v5 pathComponents];
    firstObject = [pathComponents2 firstObject];
    v14 = [firstObject isEqualToString:@"/"];

    if (v14)
    {
      pathComponents3 = [(SPUISMenuItemResultBuilder *)v5 pathComponents];
      v16 = [pathComponents3 count];

      pathComponents4 = [(SPUISMenuItemResultBuilder *)v5 pathComponents];
      lastObject = [pathComponents4 lastObject];
      title = [(SPUISMenuItemResultBuilder *)v5 title];
      v20 = [lastObject isEqualToString:title];

      if (v20)
      {
        v21 = -2;
      }

      else
      {
        v21 = -1;
      }

      pathComponents5 = [(SPUISMenuItemResultBuilder *)v5 pathComponents];
      v23 = [pathComponents5 subarrayWithRange:{1, v21 + v16}];
      [(SPUISMenuItemResultBuilder *)v5 setPathComponents:v23];
    }
  }

  return v5;
}

- (id)buildMenuBarAppIconImage
{
  v3 = objc_opt_new();
  relatedAppBundleIdentifier = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  [v3 setBundleIdentifier:relatedAppBundleIdentifier];

  return v3;
}

- (id)buildDescriptions
{
  v16[2] = *MEMORY[0x277D85DE8];
  pathComponents = [(SPUISMenuItemResultBuilder *)self pathComponents];
  v4 = [pathComponents mutableCopy];

  relatedAppBundleIdentifier = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  v6 = SSAppNameForBundleId();

  if ([v4 count])
  {
    if ([v6 length])
    {
      [v4 insertObject:v6 atIndex:0];
    }

    path2 = [v4 componentsJoinedByString:@" > "];
LABEL_5:
    v8 = path2;
    if (path2)
    {
LABEL_6:
      v9 = [MEMORY[0x277D4C598] textWithString:v8];
      v15 = v9;
      path = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  path = [(SPUISMenuItemResultBuilder *)self path];

  if (!path)
  {
    goto LABEL_11;
  }

  if (![v6 length])
  {
    path2 = [(SPUISMenuItemResultBuilder *)self path];
    goto LABEL_5;
  }

  v16[0] = v6;
  path3 = [(SPUISMenuItemResultBuilder *)self path];
  v16[1] = path3;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v8 = [v12 componentsJoinedByString:@" > "];

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_10:
  path = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return path;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  title = [(SPUISMenuItemResultBuilder *)self title];
  [v3 setMenuItemIdentifier:title];

  relatedAppBundleIdentifier = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  [v3 setApplicationBundleIdentifier:relatedAppBundleIdentifier];

  v6 = [(SPUISMenuItemResultBuilder *)self pid];
  [v3 setPid:v6];

  title2 = [(SPUISMenuItemResultBuilder *)self title];
  [v3 setTitle:title2];

  pathComponents = [(SPUISMenuItemResultBuilder *)self pathComponents];
  v9 = pathComponents;
  if (pathComponents)
  {
    v10 = pathComponents;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  [v3 setMenuItemPathComponents:v10];

  return v3;
}

- (id)buildMenuItemSymbolImage
{
  v2 = objc_opt_new();
  [v2 setIsTemplate:1];
  [v2 setSymbolName:@"filemenu.and.selection"];

  return v2;
}

@end