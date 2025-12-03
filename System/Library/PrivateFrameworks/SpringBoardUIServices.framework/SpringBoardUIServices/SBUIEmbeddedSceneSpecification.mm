@interface SBUIEmbeddedSceneSpecification
- (id)baseSceneComponentClassDictionary;
- (id)defaultExtensions;
@end

@implementation SBUIEmbeddedSceneSpecification

- (id)defaultExtensions
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = NSClassFromString(&cfstr_Sbsskexternald.isa);
  v2 = objc_opt_self();
  v6[1] = v2;
  v6[2] = NSClassFromString(&cfstr_Sbscenerenderi.isa);
  v3 = objc_opt_self();
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

- (id)baseSceneComponentClassDictionary
{
  v5.receiver = self;
  v5.super_class = SBUIEmbeddedSceneSpecification;
  baseSceneComponentClassDictionary = [(UIApplicationSceneSpecification *)&v5 baseSceneComponentClassDictionary];
  v3 = [baseSceneComponentClassDictionary mutableCopy];

  [v3 setObject:NSClassFromString(&cfstr_Sbwindowscenes.isa) forKey:*MEMORY[0x1E69DEA70]];

  return v3;
}

@end