@interface NSObject(FBScene_UIKit)
- (id)uiPresentationManager;
@end

@implementation NSObject(FBScene_UIKit)

- (id)uiPresentationManager
{
  BSDispatchQueueAssertMain();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_getAssociatedObject(a1, &uiPresentationManager__UI_PRESENTATION_MANAGER_KEY);
    if (!v2)
    {
      v2 = [[UIScenePresentationManager alloc] _initWithScene:a1];
      objc_setAssociatedObject(a1, &uiPresentationManager__UI_PRESENTATION_MANAGER_KEY, v2, 0x301);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end