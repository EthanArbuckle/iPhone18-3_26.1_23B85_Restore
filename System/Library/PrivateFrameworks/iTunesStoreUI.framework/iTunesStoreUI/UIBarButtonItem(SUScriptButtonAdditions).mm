@interface UIBarButtonItem(SUScriptButtonAdditions)
- (uint64_t)configureFromScriptButton:()SUScriptButtonAdditions;
@end

@implementation UIBarButtonItem(SUScriptButtonAdditions)

- (uint64_t)configureFromScriptButton:()SUScriptButtonAdditions
{
  [self setEnabled:{objc_msgSend(a3, "enabled")}];
  [a3 image];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = 0;
  }

  else
  {
    image = [a3 image];
  }

  [self setImage:image];
  [a3 imageEdgeInsets];
  [self setImageInsets:?];
  style = [a3 style];
  v7 = &off_1E8165720;
  v8 = 4;
  while (![*v7 isEqualToString:style])
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
  [self setStyle:v9];
  [a3 title];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title = 0;
  }

  else
  {
    title = [a3 title];
  }

  [self setTitle:title];
  result = [a3 tag];
  if (result)
  {

    return [self setTag:result];
  }

  return result;
}

@end