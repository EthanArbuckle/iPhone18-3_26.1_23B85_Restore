@interface _UISceneRenderingEnvironmentSettings
+ (void)configureSetting:(id)a3;
@end

@implementation _UISceneRenderingEnvironmentSettings

+ (void)configureSetting:(id)a3
{
  v3 = a3;
  if (([v3 matchesProperty:sel_modern_isCapturingContentForAdditionalRenderingDestination] & 1) != 0 || objc_msgSend(v3, "matchesProperty:", sel_systemDisplayIdentifier))
  {
    [v3 setPropagating:1];
    [v3 setNullPreserving:1];
  }

  if ([v3 matchesProperty:sel_activeAppearance])
  {
    [v3 setPropagating:1];
    [v3 setNullPreserving:1];
    [v3 setDefaultValue:&unk_1EFE321E8];
    [v3 setDescriptionProvider:&__block_literal_global_442];
  }
}

@end