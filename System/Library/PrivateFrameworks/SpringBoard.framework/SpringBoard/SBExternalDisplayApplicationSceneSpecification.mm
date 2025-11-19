@interface SBExternalDisplayApplicationSceneSpecification
- (id)baseSceneComponentClassDictionary;
- (id)defaultExtensions;
@end

@implementation SBExternalDisplayApplicationSceneSpecification

- (id)defaultExtensions
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SBExternalDisplayApplicationSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v9 defaultExtensions];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v5 = v4;

  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (id)baseSceneComponentClassDictionary
{
  v5.receiver = self;
  v5.super_class = SBExternalDisplayApplicationSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v5 baseSceneComponentClassDictionary];
  v3 = [v2 mutableCopy];

  [v3 setObject:objc_opt_class() forKey:*MEMORY[0x277D77598]];

  return v3;
}

@end