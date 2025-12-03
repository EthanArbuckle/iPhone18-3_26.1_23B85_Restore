@interface SBUIExtendedDisplaySceneSpecification
- (id)baseSceneComponentClassDictionary;
- (id)defaultExtensions;
@end

@implementation SBUIExtendedDisplaySceneSpecification

- (id)defaultExtensions
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = NSClassFromString(&cfstr_Sbsskexternald.isa);
  v5[1] = NSClassFromString(&cfstr_Sbscenerenderi.isa);
  v2 = objc_opt_self();
  v5[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

- (id)baseSceneComponentClassDictionary
{
  v5.receiver = self;
  v5.super_class = SBUIExtendedDisplaySceneSpecification;
  baseSceneComponentClassDictionary = [(UIApplicationSceneSpecification *)&v5 baseSceneComponentClassDictionary];
  v3 = [baseSceneComponentClassDictionary mutableCopy];

  [v3 setObject:NSClassFromString(&cfstr_Sbwindowscenes.isa) forKey:*MEMORY[0x1E69DEA70]];

  return v3;
}

@end