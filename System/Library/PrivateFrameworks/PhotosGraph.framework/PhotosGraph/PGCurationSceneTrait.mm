@interface PGCurationSceneTrait
- (PGCurationSceneTrait)initWithSceneNames:(id)names;
@end

@implementation PGCurationSceneTrait

- (PGCurationSceneTrait)initWithSceneNames:(id)names
{
  namesCopy = names;
  v13.receiver = self;
  v13.super_class = PGCurationSceneTrait;
  v6 = [(PGCurationTrait *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneNames, names);
    v8 = objc_alloc(MEMORY[0x277D3C7B0]);
    allObjects = [(NSSet *)v7->_sceneNames allObjects];
    v10 = [v8 initWithSceneNames:allObjects thresholdType:5];
    helper = v7->_helper;
    v7->_helper = v10;
  }

  return v7;
}

@end