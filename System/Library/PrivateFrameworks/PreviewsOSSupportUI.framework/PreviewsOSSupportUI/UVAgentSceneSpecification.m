@interface UVAgentSceneSpecification
- (id)baseSceneComponentClassDictionary;
@end

@implementation UVAgentSceneSpecification

- (id)baseSceneComponentClassDictionary
{
  v5.receiver = self;
  v5.super_class = UVAgentSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v5 baseSceneComponentClassDictionary];
  v3 = [v2 mutableCopy];

  [v3 setObject:objc_opt_class() forKey:@"UVAgentSceneEntryPoint"];

  return v3;
}

@end