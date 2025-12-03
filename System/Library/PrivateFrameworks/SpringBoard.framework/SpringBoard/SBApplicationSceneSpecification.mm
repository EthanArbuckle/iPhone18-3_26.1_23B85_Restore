@interface SBApplicationSceneSpecification
- (id)baseSceneComponentClassDictionary;
- (id)defaultExtensions;
@end

@implementation SBApplicationSceneSpecification

- (id)defaultExtensions
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SBApplicationSceneSpecification;
  defaultExtensions = [(UIApplicationSceneSpecification *)&v10 defaultExtensions];
  v3 = defaultExtensions;
  if (defaultExtensions)
  {
    v4 = defaultExtensions;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v5 = v4;

  v11[0] = objc_opt_class();
  v6 = objc_opt_self();
  v11[1] = v6;
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v11[4] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];

  v8 = [v5 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (id)baseSceneComponentClassDictionary
{
  v5.receiver = self;
  v5.super_class = SBApplicationSceneSpecification;
  baseSceneComponentClassDictionary = [(UIApplicationSceneSpecification *)&v5 baseSceneComponentClassDictionary];
  v3 = [baseSceneComponentClassDictionary mutableCopy];

  [v3 setObject:objc_opt_class() forKey:*MEMORY[0x277D77598]];

  return v3;
}

@end