@interface SBAccessoryWindowSceneSpecification
- (id)defaultExtensions;
@end

@implementation SBAccessoryWindowSceneSpecification

- (id)defaultExtensions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SBAccessoryWindowSceneSpecification;
  defaultExtensions = [(UIApplicationSceneSpecification *)&v9 defaultExtensions];
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

  v10[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

@end