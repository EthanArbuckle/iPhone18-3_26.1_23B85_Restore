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
  v10 = [MEMORY[0x277CBEB18] array];
  if (objc_opt_respondsToSelector())
  {
    v11 = [a1 impressionableElementsContainedInDocument:v6];
    [v10 addObjectsFromArray:v11];
  }

  else
  {
    v14 = [a1 tv_associatedIKViewElement];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v7 tv_associatedIKViewElement];
    }

    v11 = v16;

    v17 = ImpressionVisibilityFactor(a1);
    if (v11 && v17 >= v9 && ActuallyVisibleView(a1))
    {
      [v10 addObject:v11];
    }
  }

  v12 = [v10 copy];

  return v12;
}

@end