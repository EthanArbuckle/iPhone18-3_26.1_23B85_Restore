@interface FBSScene(_UISceneLayoutPreferencesController)
- (uint64_t)_ui_layoutPreferencesController;
@end

@implementation FBSScene(_UISceneLayoutPreferencesController)

- (uint64_t)_ui_layoutPreferencesController
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end