@interface SBSUISystemNotesSceneSpecification
- (id)initialActionHandlers;
@end

@implementation SBSUISystemNotesSceneSpecification

- (id)initialActionHandlers
{
  v6.receiver = self;
  v6.super_class = SBSUISystemNotesSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v6 initialActionHandlers];
  v3 = objc_alloc_init(SBSUISystemNotesWindowSceneBSActionsHandler);
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

@end