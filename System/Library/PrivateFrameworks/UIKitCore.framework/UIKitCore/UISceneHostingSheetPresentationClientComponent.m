@interface UISceneHostingSheetPresentationClientComponent
@end

@implementation UISceneHostingSheetPresentationClientComponent

void __108___UISceneHostingSheetPresentationClientComponent__sheetPresentationControllerClientConfigurationDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 setSheetClientConfiguration:v4];
  v6 = +[UIView _currentAnimationSettings];
  [v5 setAnimationSettings:v6];
}

@end