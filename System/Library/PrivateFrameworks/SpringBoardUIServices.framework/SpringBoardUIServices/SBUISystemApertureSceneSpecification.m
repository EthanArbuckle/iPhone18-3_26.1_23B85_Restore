@interface SBUISystemApertureSceneSpecification
- (id)baseSceneComponentClassDictionary;
@end

@implementation SBUISystemApertureSceneSpecification

- (id)baseSceneComponentClassDictionary
{
  v7.receiver = self;
  v7.super_class = SBUISystemApertureSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v7 baseSceneComponentClassDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mutableCopy];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v5 = v4;
  [v4 setObject:objc_opt_class() forKey:@"SBUISystemApertureElementSourceKey"];

  return v5;
}

@end