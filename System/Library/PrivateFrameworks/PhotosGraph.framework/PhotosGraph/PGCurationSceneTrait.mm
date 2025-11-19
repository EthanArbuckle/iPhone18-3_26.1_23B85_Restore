@interface PGCurationSceneTrait
- (PGCurationSceneTrait)initWithSceneNames:(id)a3;
@end

@implementation PGCurationSceneTrait

- (PGCurationSceneTrait)initWithSceneNames:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PGCurationSceneTrait;
  v6 = [(PGCurationTrait *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneNames, a3);
    v8 = objc_alloc(MEMORY[0x277D3C7B0]);
    v9 = [(NSSet *)v7->_sceneNames allObjects];
    v10 = [v8 initWithSceneNames:v9 thresholdType:5];
    helper = v7->_helper;
    v7->_helper = v10;
  }

  return v7;
}

@end