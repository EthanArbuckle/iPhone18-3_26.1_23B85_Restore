@interface UIViewController(SBIconViewCustomImageViewControllerConveniences)
- (id)sbh_owningIconView;
- (id)sbh_pushOwningIconView:()SBIconViewCustomImageViewControllerConveniences;
- (id)sbh_removeOwningIconView:()SBIconViewCustomImageViewControllerConveniences;
@end

@implementation UIViewController(SBIconViewCustomImageViewControllerConveniences)

- (id)sbh_pushOwningIconView:()SBIconViewCustomImageViewControllerConveniences
{
  v4 = a3;
  weakObjectsPointerArray = objc_getAssociatedObject(self, SBHIconViewCustomViewControllerOwningIconViewsKey);
  [weakObjectsPointerArray compact];
  sbh_lastPointer = [weakObjectsPointerArray sbh_lastPointer];
  if (!weakObjectsPointerArray)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    objc_setAssociatedObject(self, SBHIconViewCustomViewControllerOwningIconViewsKey, weakObjectsPointerArray, 1);
  }

  if ([weakObjectsPointerArray sbh_indexOfPointer:v4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [weakObjectsPointerArray addPointer:v4];
  }

  return sbh_lastPointer;
}

- (id)sbh_removeOwningIconView:()SBIconViewCustomImageViewControllerConveniences
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, SBHIconViewCustomViewControllerOwningIconViewsKey);
  [v5 sbh_removePointer:v4];

  [v5 compact];
  sbh_lastPointer = [v5 sbh_lastPointer];

  return sbh_lastPointer;
}

- (id)sbh_owningIconView
{
  v1 = objc_getAssociatedObject(self, SBHIconViewCustomViewControllerOwningIconViewsKey);
  [v1 compact];
  sbh_lastPointer = [v1 sbh_lastPointer];

  return sbh_lastPointer;
}

@end