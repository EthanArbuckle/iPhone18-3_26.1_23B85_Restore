@interface UIViewController(Impressionable)
- (id)tv_impressionableElementsForDocument:()Impressionable;
@end

@implementation UIViewController(Impressionable)

- (id)tv_impressionableElementsForDocument:()Impressionable
{
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  if (objc_opt_respondsToSelector())
  {
    view = [self impressionableElementsContainedInDocument:v4];
    [array addObjectsFromArray:view];
  }

  else if ([self isViewLoaded])
  {
    view = [self view];
    v7 = [view tv_impressionableElementsForDocument:v4 parentViewController:self];
    [array addObjectsFromArray:v7];
  }

  else
  {
    view = [self tv_associatedIKViewElement];
    if (view)
    {
      [array addObject:view];
    }
  }

  v8 = [array copy];

  return v8;
}

@end