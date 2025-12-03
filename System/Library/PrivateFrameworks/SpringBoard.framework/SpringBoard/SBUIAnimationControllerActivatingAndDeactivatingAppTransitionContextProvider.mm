@interface SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider
+ (id)transitionContextProviderWithToApplicationSceneEntity:(id)entity fromApplicationSceneEntity:(id)sceneEntity;
- (NSSet)fromApplicationSceneEntities;
- (NSSet)toApplicationSceneEntities;
- (SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider)initWithToApplicationSceneEntity:(id)entity fromApplicationSceneEntity:(id)sceneEntity;
@end

@implementation SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider

+ (id)transitionContextProviderWithToApplicationSceneEntity:(id)entity fromApplicationSceneEntity:(id)sceneEntity
{
  sceneEntityCopy = sceneEntity;
  entityCopy = entity;
  v7 = [[SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider alloc] initWithToApplicationSceneEntity:entityCopy fromApplicationSceneEntity:sceneEntityCopy];

  return v7;
}

- (SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider)initWithToApplicationSceneEntity:(id)entity fromApplicationSceneEntity:(id)sceneEntity
{
  entityCopy = entity;
  sceneEntityCopy = sceneEntity;
  v12.receiver = self;
  v12.super_class = SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider;
  v9 = [(SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_toAppSceneEntity, entity);
    objc_storeStrong(&v10->_fromAppSceneEntity, sceneEntity);
  }

  return v10;
}

- (NSSet)toApplicationSceneEntities
{
  if (self->_toAppSceneEntity)
  {
    [MEMORY[0x277CBEB98] setWithObject:?];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v2 = ;

  return v2;
}

- (NSSet)fromApplicationSceneEntities
{
  if (self->_fromAppSceneEntity)
  {
    [MEMORY[0x277CBEB98] setWithObject:?];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v2 = ;

  return v2;
}

@end