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
  [objc_msgSend(self "_titleView")];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__UINavigationItem_SUAdditions__fadeInTitleView__block_invoke;
  v3[3] = &unk_1E8164348;
  v3[4] = self;
  return [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.35];
}

- (void)fadeOutTitleView
{
  [objc_msgSend(self "_titleView")];
  v8.width = v2;
  v8.height = v3;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  [objc_msgSend(objc_msgSend(self "_titleView")];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:ImageFromCurrentImageContext];
  [objc_msgSend(self "_titleView")];
  [v5 setFrame:?];
  [objc_msgSend(objc_msgSend(self "_titleView")];
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
    backBarButtonItem = [a3 backBarButtonItem];
    if (backBarButtonItem)
    {
      [v4 setBackBarButtonItem:backBarButtonItem];
      [a3 setBackBarButtonItem:0];
    }

    leftBarButtonItem = [a3 leftBarButtonItem];
    if (leftBarButtonItem)
    {
      [v4 setLeftBarButtonItem:leftBarButtonItem];
      [a3 setLeftBarButtonItem:0];
    }

    prompt = [a3 prompt];
    if (prompt)
    {
      [v4 setPrompt:prompt];
      [a3 setPrompt:0];
    }

    rightBarButtonItem = [a3 rightBarButtonItem];
    if (rightBarButtonItem)
    {
      [v4 setRightBarButtonItem:rightBarButtonItem];
      [a3 setRightBarButtonItem:0];
    }

    title = [a3 title];
    if (title)
    {
      [v4 setTitle:title];
      [a3 setTitle:0];
    }

    titleView = [a3 titleView];
    if (titleView)
    {
      [v4 setTitleView:titleView];
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
  [self setBackBarButtonItem:0];
  [self setHidesBackButton:0];
  [self setLeftBarButtonItem:0];
  [self setPrompt:0];
  [self setRightBarButtonItem:0];
  [self setTitle:0];
  [self titleView];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    result = [self titleView];
    if (result)
    {

      return [self setTitleView:0];
    }
  }

  return result;
}

- (uint64_t)setTitleView:()SUAdditions animated:
{
  if (a4)
  {
    [self fadeOutTitleView];
    [self setTitleView:a3];

    return [self fadeInTitleView];
  }

  else
  {

    return [self setTitleView:?];
  }
}

@end