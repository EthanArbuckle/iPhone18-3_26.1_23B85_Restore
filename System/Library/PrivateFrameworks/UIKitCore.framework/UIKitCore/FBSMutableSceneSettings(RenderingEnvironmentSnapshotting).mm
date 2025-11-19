@interface FBSMutableSceneSettings(RenderingEnvironmentSnapshotting)
- (uint64_t)setActiveAppearanceOverride:()RenderingEnvironmentSnapshotting;
@end

@implementation FBSMutableSceneSettings(RenderingEnvironmentSnapshotting)

- (uint64_t)setActiveAppearanceOverride:()RenderingEnvironmentSnapshotting
{
  result = [a1 conformsToExtension:objc_opt_class()];
  if (result)
  {

    return [a1 setActiveAppearance:a3];
  }

  return result;
}

@end