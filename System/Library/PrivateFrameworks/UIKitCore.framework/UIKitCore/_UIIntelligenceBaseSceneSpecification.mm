@interface _UIIntelligenceBaseSceneSpecification
- (id)defaultExtensions;
- (id)uiSceneSessionRole;
@end

@implementation _UIIntelligenceBaseSceneSpecification

- (id)defaultExtensions
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v7.receiver = self;
  v7.super_class = _UIIntelligenceBaseSceneSpecification;
  defaultExtensions = [(UIApplicationSceneSpecification *)&v7 defaultExtensions];
  v5 = [defaultExtensions arrayByAddingObjectsFromArray:v3];

  return v5;
}

- (id)uiSceneSessionRole
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIIntelligenceLightSourceSceneSpecification.m" lineNumber:22 description:@"Subclass must override uiSceneSessionRole"];

  v7.receiver = self;
  v7.super_class = _UIIntelligenceBaseSceneSpecification;
  uiSceneSessionRole = [(UIApplicationSceneSpecification *)&v7 uiSceneSessionRole];

  return uiSceneSessionRole;
}

@end