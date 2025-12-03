@interface SBUISystemUISceneContinuitySceneSpecification
- (id)defaultExtensions;
@end

@implementation SBUISystemUISceneContinuitySceneSpecification

- (id)defaultExtensions
{
  v8.receiver = self;
  v8.super_class = SBUISystemUISceneContinuitySceneSpecification;
  defaultExtensions = [(UIApplicationSceneSpecification *)&v8 defaultExtensions];
  v3 = defaultExtensions;
  if (defaultExtensions)
  {
    v4 = defaultExtensions;
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