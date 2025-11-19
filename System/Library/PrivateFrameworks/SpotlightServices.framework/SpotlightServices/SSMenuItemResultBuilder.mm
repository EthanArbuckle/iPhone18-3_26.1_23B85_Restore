@interface SSMenuItemResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SSMenuItemResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildMenuBarAppIconImage;
- (id)buildMenuItemSymbolImage;
@end

@implementation SSMenuItemResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForAttribute:*MEMORY[0x1E6963F88] withType:objc_opt_class()];
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___SSMenuItemResultBuilder;
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

- (SSMenuItemResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SSMenuItemResultBuilder;
  v5 = [(SSResultBuilder *)&v25 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSMenuItemResultBuilder *)v5 setTitle:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x1E69646E0] withType:objc_opt_class()];
    [(SSMenuItemResultBuilder *)v5 setPath:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x1E6964C38] withType:objc_opt_class()];
    v9 = [v8 pathComponents];
    [(SSMenuItemResultBuilder *)v5 setPathComponents:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x1E6964440] withType:objc_opt_class()];
    [(SSMenuItemResultBuilder *)v5 setIdentifier:v10];

    v11 = [v4 valueForAttribute:*MEMORY[0x1E6963E60] withType:objc_opt_class()];
    [(SSMenuItemResultBuilder *)v5 setPid:v11];

    v12 = [(SSMenuItemResultBuilder *)v5 pathComponents];
    v13 = [v12 firstObject];
    v14 = [v13 isEqualToString:@"/"];

    if (v14)
    {
      v15 = [(SSMenuItemResultBuilder *)v5 pathComponents];
      v16 = [v15 count];

      v17 = [(SSMenuItemResultBuilder *)v5 pathComponents];
      v18 = [v17 lastObject];
      v19 = [(SSMenuItemResultBuilder *)v5 title];
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        v21 = -2;
      }

      else
      {
        v21 = -1;
      }

      v22 = [(SSMenuItemResultBuilder *)v5 pathComponents];
      v23 = [v22 subarrayWithRange:{1, v21 + v16}];
      [(SSMenuItemResultBuilder *)v5 setPathComponents:v23];
    }
  }

  return v5;
}

- (id)buildMenuBarAppIconImage
{
  v3 = objc_opt_new();
  v4 = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  [v3 setBundleIdentifier:v4];

  return v3;
}

- (id)buildDescriptions
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [(SSMenuItemResultBuilder *)self pathComponents];
  v4 = [v3 mutableCopy];

  v5 = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  v6 = SSAppNameForBundleId(v5);

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
      v9 = [MEMORY[0x1E69CA3A0] textWithString:v8];
      v15 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = [(SSMenuItemResultBuilder *)self path];

  if (!v10)
  {
    goto LABEL_11;
  }

  if (![v6 length])
  {
    v7 = [(SSMenuItemResultBuilder *)self path];
    goto LABEL_5;
  }

  v16[0] = v6;
  v11 = [(SSMenuItemResultBuilder *)self path];
  v16[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v8 = [v12 componentsJoinedByString:@" > "];

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  v4 = [(SSMenuItemResultBuilder *)self title];
  [v3 setMenuItemIdentifier:v4];

  v5 = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  [v3 setApplicationBundleIdentifier:v5];

  v6 = [(SSMenuItemResultBuilder *)self pid];
  [v3 setPid:v6];

  v7 = [(SSMenuItemResultBuilder *)self title];
  [v3 setTitle:v7];

  v8 = [(SSMenuItemResultBuilder *)self pathComponents];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
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