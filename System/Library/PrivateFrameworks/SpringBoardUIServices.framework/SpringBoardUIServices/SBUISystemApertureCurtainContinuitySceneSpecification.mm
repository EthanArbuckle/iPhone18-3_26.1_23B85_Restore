@interface SBUISystemApertureCurtainContinuitySceneSpecification
- (id)defaultExtensions;
@end

@implementation SBUISystemApertureCurtainContinuitySceneSpecification

- (id)defaultExtensions
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SBUISystemApertureCurtainContinuitySceneSpecification;
  defaultExtensions = [(UIApplicationSceneSpecification *)&v9 defaultExtensions];
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

  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

@end