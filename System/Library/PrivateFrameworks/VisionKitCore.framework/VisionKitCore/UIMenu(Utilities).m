@interface UIMenu(Utilities)
+ (id)vk_menuWithItems:()Utilities title:subtitle:image:;
- (id)vk_addItems:()Utilities;
- (id)vk_addNonNilItems:()Utilities;
- (void)vk_addNonNilItem:()Utilities;
@end

@implementation UIMenu(Utilities)

+ (id)vk_menuWithItems:()Utilities title:subtitle:image:
{
  v9 = a5;
  v10 = &stru_1F2C04538;
  if (a4)
  {
    v10 = a4;
  }

  v11 = v10;
  v12 = a6;
  v13 = a3;
  v14 = [MEMORY[0x1E69DCC60] menuWithTitle:v11 image:v12 identifier:0 options:0 children:v13];

  if (objc_opt_respondsToSelector())
  {
    [v14 setSubtitle:v9];
  }

  return v14;
}

- (id)vk_addNonNilItems:()Utilities
{
  v4 = a1;
  v5 = v4;
  if (a3)
  {
    v6 = [v4 vk_addItems:a3];

    v5 = v6;
  }

  return v5;
}

- (void)vk_addNonNilItem:()Utilities
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v9 count:1];

    v7 = [a1 vk_addItems:{v6, v9, v10}];
  }

  return a1;
}

- (id)vk_addItems:()Utilities
{
  v4 = a3;
  v5 = [a1 children];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v8 vk_arrayByAddingObjectsFromNonNilArray:v4];

  v10 = [a1 menuByReplacingChildren:v9];

  return v10;
}

@end