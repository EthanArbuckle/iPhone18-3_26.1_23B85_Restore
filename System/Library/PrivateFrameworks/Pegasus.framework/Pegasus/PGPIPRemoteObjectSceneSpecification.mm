@interface PGPIPRemoteObjectSceneSpecification
- (id)baseSceneComponentClassDictionary;
@end

@implementation PGPIPRemoteObjectSceneSpecification

- (id)baseSceneComponentClassDictionary
{
  v9.receiver = self;
  v9.super_class = PGPIPRemoteObjectSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v9 baseSceneComponentClassDictionary];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = v5;

  [v6 setObject:objc_opt_class() forKeyedSubscript:@"PGPIPProxySceneComponent"];
  v7 = [v6 copy];

  return v7;
}

@end