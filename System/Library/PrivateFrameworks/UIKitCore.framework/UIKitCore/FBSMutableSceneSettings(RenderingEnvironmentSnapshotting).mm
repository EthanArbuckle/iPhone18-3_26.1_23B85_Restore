@interface FBSMutableSceneSettings(RenderingEnvironmentSnapshotting)
- (uint64_t)setActiveAppearanceOverride:()RenderingEnvironmentSnapshotting;
@end

@implementation FBSMutableSceneSettings(RenderingEnvironmentSnapshotting)

- (uint64_t)setActiveAppearanceOverride:()RenderingEnvironmentSnapshotting
{
  result = [self conformsToExtension:objc_opt_class()];
  if (result)
  {

    return [self setActiveAppearance:a3];
  }

  return result;
}

@end