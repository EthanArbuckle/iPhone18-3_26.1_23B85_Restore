@interface UIBarButtonItem(SUScriptButtonAdditions)
- (uint64_t)configureFromScriptButton:()SUScriptButtonAdditions;
@end

@implementation UIBarButtonItem(SUScriptButtonAdditions)

- (uint64_t)configureFromScriptButton:()SUScriptButtonAdditions
{
  [a1 setEnabled:{objc_msgSend(a3, "enabled")}];
  [a3 image];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v5 = [a3 image];
  }

  [a1 setImage:v5];
  [a3 imageEdgeInsets];
  [a1 setImageInsets:?];
  v6 = [a3 style];
  v7 = &off_1E8165720;
  v8 = 4;
  while (![*v7 isEqualToString:v6])
  {
    v7 += 2;
    if (!--v8)
    {
      v9 = 0;
      goto LABEL_9;
    }
  }

  v9 = *(v7 - 1);
LABEL_9:
  [a1 setStyle:v9];
  [a3 title];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
  }

  else
  {
    v10 = [a3 title];
  }

  [a1 setTitle:v10];
  result = [a3 tag];
  if (result)
  {

    return [a1 setTag:result];
  }

  return result;
}

@end