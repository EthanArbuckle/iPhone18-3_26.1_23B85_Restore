@interface SBUISystemUISceneContinuitySceneSpecification
- (id)defaultExtensions;
@end

@implementation SBUISystemUISceneContinuitySceneSpecification

- (id)defaultExtensions
{
  v8.receiver = self;
  v8.super_class = SBUISystemUISceneContinuitySceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v8 defaultExtensions];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  v5 = v4;

  v6 = [v5 arrayByAddingObject:objc_opt_class()];

  return v6;
}

@end