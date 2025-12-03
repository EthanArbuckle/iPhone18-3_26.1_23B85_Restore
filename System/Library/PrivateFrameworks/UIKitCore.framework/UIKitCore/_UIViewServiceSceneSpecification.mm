@interface _UIViewServiceSceneSpecification
- (id)defaultExtensions;
@end

@implementation _UIViewServiceSceneSpecification

- (id)defaultExtensions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7.receiver = self;
  v7.super_class = _UIViewServiceSceneSpecification;
  defaultExtensions = [(_UISceneHostingSceneSpecification *)&v7 defaultExtensions];
  v5 = [v3 arrayByAddingObjectsFromArray:defaultExtensions];

  return v5;
}

@end