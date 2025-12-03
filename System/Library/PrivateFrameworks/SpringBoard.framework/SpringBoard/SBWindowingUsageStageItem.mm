@interface SBWindowingUsageStageItem
- (SBWindowingUsageStageItem)initWithSceneIdentifier:(id)identifier maximized:(BOOL)maximized;
@end

@implementation SBWindowingUsageStageItem

- (SBWindowingUsageStageItem)initWithSceneIdentifier:(id)identifier maximized:(BOOL)maximized
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SBWindowingUsageStageItem;
  v7 = [(SBWindowingUsageStageItem *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    sceneIdentifier = v7->_sceneIdentifier;
    v7->_sceneIdentifier = v8;

    v7->_maximized = maximized;
  }

  return v7;
}

@end