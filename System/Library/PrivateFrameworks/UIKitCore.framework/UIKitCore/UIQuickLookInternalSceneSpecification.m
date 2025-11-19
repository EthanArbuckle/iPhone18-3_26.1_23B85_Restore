@interface UIQuickLookInternalSceneSpecification
- (id)initialActionHandlers;
@end

@implementation UIQuickLookInternalSceneSpecification

- (id)initialActionHandlers
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v8.receiver = self;
  v8.super_class = UIQuickLookInternalSceneSpecification;
  v5 = [(UIApplicationSceneSpecification *)&v8 initialActionHandlers];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  return v6;
}

@end