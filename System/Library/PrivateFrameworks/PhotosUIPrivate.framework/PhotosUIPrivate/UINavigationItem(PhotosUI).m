@interface UINavigationItem(PhotosUI)
- (uint64_t)_pu_shouldUpdateBarButtonItems:()PhotosUI withNewBarButtonItems:;
- (uint64_t)pu_shouldUpdateLeftBarButtonItems:()PhotosUI;
- (uint64_t)pu_shouldUpdateRightBarButtonItems:()PhotosUI;
- (void)pu_setDefaultBackBarButtonItemWithTitle:()PhotosUI;
@end

@implementation UINavigationItem(PhotosUI)

- (void)pu_setDefaultBackBarButtonItemWithTitle:()PhotosUI
{
  v4 = MEMORY[0x1E69DC708];
  v5 = a3;
  v6 = [[v4 alloc] initWithTitle:v5 style:0 target:0 action:0];

  [a1 setBackBarButtonItem:v6];
}

- (uint64_t)_pu_shouldUpdateBarButtonItems:()PhotosUI withNewBarButtonItems:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
LABEL_12:
    v15 = 1;
    goto LABEL_13;
  }

  if ([v5 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      v10 = [v6 objectAtIndexedSubscript:v8];
      if (![v9 isSystemItem] || !objc_msgSend(v10, "isSystemItem") || (v11 = objc_msgSend(v9, "systemItem"), v11 != objc_msgSend(v10, "systemItem")) || (objc_msgSend(v9, "width"), v13 = v12, objc_msgSend(v10, "width"), v13 != v14))
      {
        if (v9 != v10)
        {
          break;
        }
      }

      if (++v8 >= [v5 count])
      {
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

LABEL_10:
  v15 = 0;
LABEL_13:

  return v15;
}

- (uint64_t)pu_shouldUpdateRightBarButtonItems:()PhotosUI
{
  v4 = a3;
  v5 = [a1 rightBarButtonItems];
  v6 = [a1 _pu_shouldUpdateBarButtonItems:v5 withNewBarButtonItems:v4];

  return v6;
}

- (uint64_t)pu_shouldUpdateLeftBarButtonItems:()PhotosUI
{
  v4 = a3;
  v5 = [a1 leftBarButtonItems];
  v6 = [a1 _pu_shouldUpdateBarButtonItems:v5 withNewBarButtonItems:v4];

  return v6;
}

@end