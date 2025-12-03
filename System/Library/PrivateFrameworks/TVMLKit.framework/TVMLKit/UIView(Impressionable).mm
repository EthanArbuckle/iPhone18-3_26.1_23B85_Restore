@interface UIView(Impressionable)
- (id)tv_impressionableElementsForDocument:()Impressionable parentViewController:;
@end

@implementation UIView(Impressionable)

- (id)tv_impressionableElementsForDocument:()Impressionable parentViewController:
{
  v6 = a3;
  v7 = a4;
  [v6 impressionViewablePercentage];
  v9 = v8;
  array = [MEMORY[0x277CBEB18] array];
  if (objc_opt_respondsToSelector())
  {
    v11 = [self impressionableElementsContainedInDocument:v6];
    [array addObjectsFromArray:v11];
  }

  else
  {
    tv_associatedIKViewElement = [self tv_associatedIKViewElement];
    v15 = tv_associatedIKViewElement;
    if (tv_associatedIKViewElement)
    {
      tv_associatedIKViewElement2 = tv_associatedIKViewElement;
    }

    else
    {
      tv_associatedIKViewElement2 = [v7 tv_associatedIKViewElement];
    }

    v11 = tv_associatedIKViewElement2;

    v17 = ImpressionVisibilityFactor(self);
    if (v11 && v17 >= v9 && ActuallyVisibleView(self))
    {
      [array addObject:v11];
    }
  }

  v12 = [array copy];

  return v12;
}

@end