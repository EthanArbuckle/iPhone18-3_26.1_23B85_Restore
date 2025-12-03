@interface UIButton(SUScriptButtonAdditions)
- (uint64_t)configureFromScriptButton:()SUScriptButtonAdditions;
@end

@implementation UIButton(SUScriptButtonAdditions)

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

  [self setImage:image forState:0];
  [a3 imageEdgeInsets];
  [self setImageEdgeInsets:?];
  [a3 title];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  title = 0;
  if ((isKindOfClass & 1) == 0)
  {
    title = [a3 title];
  }

  [self setTitle:title forState:0];
  result = [a3 tag];
  if (result)
  {

    return [self setTag:result];
  }

  return result;
}

@end