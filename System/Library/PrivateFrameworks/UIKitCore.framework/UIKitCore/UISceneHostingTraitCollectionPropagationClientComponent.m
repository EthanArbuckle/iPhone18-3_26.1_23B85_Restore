@interface UISceneHostingTraitCollectionPropagationClientComponent
@end

@implementation UISceneHostingTraitCollectionPropagationClientComponent

void __106___UISceneHostingTraitCollectionPropagationClientComponent_modifiedTraitCollectionForHostTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = dyld_program_sdk_at_least();
  v3 = -1;
  if (v2 && UIApp)
  {
    v3 = [UIApp userInterfaceLayoutDirection];
  }

  [v6 setLayoutDirection:v3];
  v4 = [UIApp _effectiveUserInterfaceStyle];
  if (v4)
  {
    [v6 setUserInterfaceStyle:v4];
  }

  v5 = [v6 _tintColor];

  if (v5)
  {
    [v6 _setTintColor:0];
  }
}

@end