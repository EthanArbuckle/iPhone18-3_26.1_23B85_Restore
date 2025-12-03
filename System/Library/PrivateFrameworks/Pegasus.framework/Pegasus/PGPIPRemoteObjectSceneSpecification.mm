@interface PGPIPRemoteObjectSceneSpecification
- (id)baseSceneComponentClassDictionary;
@end

@implementation PGPIPRemoteObjectSceneSpecification

- (id)baseSceneComponentClassDictionary
{
  v9.receiver = self;
  v9.super_class = PGPIPRemoteObjectSceneSpecification;
  baseSceneComponentClassDictionary = [(UIApplicationSceneSpecification *)&v9 baseSceneComponentClassDictionary];
  v3 = [baseSceneComponentClassDictionary mutableCopy];
  v4 = v3;
  if (v3)
  {
    dictionary = v3;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = dictionary;

  [v6 setObject:objc_opt_class() forKeyedSubscript:@"PGPIPProxySceneComponent"];
  v7 = [v6 copy];

  return v7;
}

@end