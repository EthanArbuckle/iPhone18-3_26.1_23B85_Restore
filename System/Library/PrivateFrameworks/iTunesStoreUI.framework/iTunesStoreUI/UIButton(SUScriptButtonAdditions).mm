@interface UIButton(SUScriptButtonAdditions)
- (uint64_t)configureFromScriptButton:()SUScriptButtonAdditions;
@end

@implementation UIButton(SUScriptButtonAdditions)

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

  [a1 setImage:v5 forState:0];
  [a3 imageEdgeInsets];
  [a1 setImageEdgeInsets:?];
  [a3 title];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = 0;
  if ((isKindOfClass & 1) == 0)
  {
    v7 = [a3 title];
  }

  [a1 setTitle:v7 forState:0];
  result = [a3 tag];
  if (result)
  {

    return [a1 setTag:result];
  }

  return result;
}

@end