@interface SBUISystemApertureEmbeddedSceneSpecification
- (id)defaultExtensions;
@end

@implementation SBUISystemApertureEmbeddedSceneSpecification

- (id)defaultExtensions
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = NSClassFromString(&cfstr_Sbscenerenderi.isa);
  v2 = objc_opt_self();
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

@end