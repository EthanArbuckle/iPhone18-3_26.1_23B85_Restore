@interface SBWindowingUsageStageItem
- (SBWindowingUsageStageItem)initWithSceneIdentifier:(id)a3 maximized:(BOOL)a4;
@end

@implementation SBWindowingUsageStageItem

- (SBWindowingUsageStageItem)initWithSceneIdentifier:(id)a3 maximized:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBWindowingUsageStageItem;
  v7 = [(SBWindowingUsageStageItem *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    sceneIdentifier = v7->_sceneIdentifier;
    v7->_sceneIdentifier = v8;

    v7->_maximized = a4;
  }

  return v7;
}

@end