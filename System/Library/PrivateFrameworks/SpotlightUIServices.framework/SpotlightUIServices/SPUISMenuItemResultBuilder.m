@interface SPUISMenuItemResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SPUISMenuItemResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildMenuBarAppIconImage;
- (id)buildMenuItemSymbolImage;
@end

@implementation SPUISMenuItemResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForAttribute:*MEMORY[0x277CC2770] withType:objc_opt_class()];
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___SPUISMenuItemResultBuilder;
  if (objc_msgSendSuper2(&v10, sel_supportsResult_, v4))
  {
    v6 = [v5 hasPrefix:@"com.apple.duetexpertd.menuitem"];
  }

  else
  {
    v7 = [v4 applicationBundleIdentifier];
    v8 = [a1 bundleId];
    if ([v7 isEqualToString:v8])
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

- (SPUISMenuItemResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SPUISMenuItemResultBuilder;
  v5 = [(SPUISResultBuilder *)&v25 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISMenuItemResultBuilder *)v5 setTitle:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x277CC2E80] withType:objc_opt_class()];
    [(SPUISMenuItemResultBuilder *)v5 setPath:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x277CC31F8] withType:objc_opt_class()];
    v9 = [v8 pathComponents];
    [(SPUISMenuItemResultBuilder *)v5 setPathComponents:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC2BD8] withType:objc_opt_class()];
    [(SPUISMenuItemResultBuilder *)v5 setIdentifier:v10];

    v11 = [v4 valueForAttribute:*MEMORY[0x277CC2638] withType:objc_opt_class()];
    [(SPUISMenuItemResultBuilder *)v5 setPid:v11];

    v12 = [(SPUISMenuItemResultBuilder *)v5 pathComponents];
    v13 = [v12 firstObject];
    v14 = [v13 isEqualToString:@"/"];

    if (v14)
    {
      v15 = [(SPUISMenuItemResultBuilder *)v5 pathComponents];
      v16 = [v15 count];

      v17 = [(SPUISMenuItemResultBuilder *)v5 pathComponents];
      v18 = [v17 lastObject];
      v19 = [(SPUISMenuItemResultBuilder *)v5 title];
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        v21 = -2;
      }

      else
      {
        v21 = -1;
      }

      v22 = [(SPUISMenuItemResultBuilder *)v5 pathComponents];
      v23 = [v22 subarrayWithRange:{1, v21 + v16}];
      [(SPUISMenuItemResultBuilder *)v5 setPathComponents:v23];
    }
  }

  return v5;
}

- (id)buildMenuBarAppIconImage
{
  v3 = objc_opt_new();
  v4 = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  [v3 setBundleIdentifier:v4];

  return v3;
}

- (id)buildDescriptions
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISMenuItemResultBuilder *)self pathComponents];
  v4 = [v3 mutableCopy];

  v5 = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  v6 = SSAppNameForBundleId();

  if ([v4 count])
  {
    if ([v6 length])
    {
      [v4 insertObject:v6 atIndex:0];
    }

    v7 = [v4 componentsJoinedByString:@" > "];
LABEL_5:
    v8 = v7;
    if (v7)
    {
LABEL_6:
      v9 = [MEMORY[0x277D4C598] textWithString:v8];
      v15 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = [(SPUISMenuItemResultBuilder *)self path];

  if (!v10)
  {
    goto LABEL_11;
  }

  if (![v6 length])
  {
    v7 = [(SPUISMenuItemResultBuilder *)self path];
    goto LABEL_5;
  }

  v16[0] = v6;
  v11 = [(SPUISMenuItemResultBuilder *)self path];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v8 = [v12 componentsJoinedByString:@" > "];

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  v4 = [(SPUISMenuItemResultBuilder *)self title];
  [v3 setMenuItemIdentifier:v4];

  v5 = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  [v3 setApplicationBundleIdentifier:v5];

  v6 = [(SPUISMenuItemResultBuilder *)self pid];
  [v3 setPid:v6];

  v7 = [(SPUISMenuItemResultBuilder *)self title];
  [v3 setTitle:v7];

  v8 = [(SPUISMenuItemResultBuilder *)self pathComponents];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
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