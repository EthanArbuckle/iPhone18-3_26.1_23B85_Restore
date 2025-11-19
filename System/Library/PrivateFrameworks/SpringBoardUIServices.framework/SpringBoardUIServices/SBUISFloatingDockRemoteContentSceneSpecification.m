@interface SBUISFloatingDockRemoteContentSceneSpecification
- (id)defaultExtensions;
@end

@implementation SBUISFloatingDockRemoteContentSceneSpecification

- (id)defaultExtensions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end