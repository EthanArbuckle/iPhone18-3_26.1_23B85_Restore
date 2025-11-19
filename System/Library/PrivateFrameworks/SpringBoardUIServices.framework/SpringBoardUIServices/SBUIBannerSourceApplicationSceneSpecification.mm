@interface SBUIBannerSourceApplicationSceneSpecification
- (id)defaultExtensions;
@end

@implementation SBUIBannerSourceApplicationSceneSpecification

- (id)defaultExtensions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getAMUIAmbientPresentationSceneExtensionClass_softClass;
  v10 = getAMUIAmbientPresentationSceneExtensionClass_softClass;
  if (!getAMUIAmbientPresentationSceneExtensionClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getAMUIAmbientPresentationSceneExtensionClass_block_invoke;
    v6[3] = &unk_1E789DA88;
    v6[4] = &v7;
    __getAMUIAmbientPresentationSceneExtensionClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  return v4;
}

@end