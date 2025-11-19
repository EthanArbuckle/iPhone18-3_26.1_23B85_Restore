@interface UINavigationItem(SUAdditions)
- (uint64_t)fadeInTitleView;
- (uint64_t)mergeValuesFromItem:()SUAdditions;
- (uint64_t)resetAllValues;
- (uint64_t)setTitleView:()SUAdditions animated:;
- (void)fadeOutTitleView;
@end

@implementation UINavigationItem(SUAdditions)

- (uint64_t)fadeInTitleView
{
  [objc_msgSend(a1 "_titleView")];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__UINavigationItem_SUAdditions__fadeInTitleView__block_invoke;
  v3[3] = &unk_1E8164348;
  v3[4] = a1;
  return [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.35];
}

- (void)fadeOutTitleView
{
  [objc_msgSend(a1 "_titleView")];
  v8.width = v2;
  v8.height = v3;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  [objc_msgSend(objc_msgSend(a1 "_titleView")];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:ImageFromCurrentImageContext];
  [objc_msgSend(a1 "_titleView")];
  [v5 setFrame:?];
  [objc_msgSend(objc_msgSend(a1 "_titleView")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__UINavigationItem_SUAdditions__fadeOutTitleView__block_invoke;
  v7[3] = &unk_1E8164348;
  v7[4] = v5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__UINavigationItem_SUAdditions__fadeOutTitleView__block_invoke_2;
  v6[3] = &unk_1E8164B70;
  v6[4] = v5;
  [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.35];
}

- (uint64_t)mergeValuesFromItem:()SUAdditions
{
  if (result != a3)
  {
    v4 = result;
    v5 = [a3 backBarButtonItem];
    if (v5)
    {
      [v4 setBackBarButtonItem:v5];
      [a3 setBackBarButtonItem:0];
    }

    v6 = [a3 leftBarButtonItem];
    if (v6)
    {
      [v4 setLeftBarButtonItem:v6];
      [a3 setLeftBarButtonItem:0];
    }

    v7 = [a3 prompt];
    if (v7)
    {
      [v4 setPrompt:v7];
      [a3 setPrompt:0];
    }

    v8 = [a3 rightBarButtonItem];
    if (v8)
    {
      [v4 setRightBarButtonItem:v8];
      [a3 setRightBarButtonItem:0];
    }

    v9 = [a3 title];
    if (v9)
    {
      [v4 setTitle:v9];
      [a3 setTitle:0];
    }

    v10 = [a3 titleView];
    if (v10)
    {
      [v4 setTitleView:v10];
      [a3 setTitleView:0];
    }

    result = [a3 hidesBackButton];
    if (result)
    {

      return [v4 setHidesBackButton:1];
    }
  }

  return result;
}

- (uint64_t)resetAllValues
{
  [a1 setBackBarButtonItem:0];
  [a1 setHidesBackButton:0];
  [a1 setLeftBarButtonItem:0];
  [a1 setPrompt:0];
  [a1 setRightBarButtonItem:0];
  [a1 setTitle:0];
  [a1 titleView];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    result = [a1 titleView];
    if (result)
    {

      return [a1 setTitleView:0];
    }
  }

  return result;
}

- (uint64_t)setTitleView:()SUAdditions animated:
{
  if (a4)
  {
    [a1 fadeOutTitleView];
    [a1 setTitleView:a3];

    return [a1 fadeInTitleView];
  }

  else
  {

    return [a1 setTitleView:?];
  }
}

@end