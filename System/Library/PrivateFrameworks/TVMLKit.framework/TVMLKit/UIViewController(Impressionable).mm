@interface UIViewController(Impressionable)
- (id)tv_impressionableElementsForDocument:()Impressionable;
@end

@implementation UIViewController(Impressionable)

- (id)tv_impressionableElementsForDocument:()Impressionable
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if (objc_opt_respondsToSelector())
  {
    v6 = [a1 impressionableElementsContainedInDocument:v4];
    [v5 addObjectsFromArray:v6];
  }

  else if ([a1 isViewLoaded])
  {
    v6 = [a1 view];
    v7 = [v6 tv_impressionableElementsForDocument:v4 parentViewController:a1];
    [v5 addObjectsFromArray:v7];
  }

  else
  {
    v6 = [a1 tv_associatedIKViewElement];
    if (v6)
    {
      [v5 addObject:v6];
    }
  }

  v8 = [v5 copy];

  return v8;
}

@end