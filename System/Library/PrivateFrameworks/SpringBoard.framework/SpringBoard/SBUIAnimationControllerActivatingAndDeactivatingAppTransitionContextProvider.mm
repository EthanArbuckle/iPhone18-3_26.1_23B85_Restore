@interface SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider
+ (id)transitionContextProviderWithToApplicationSceneEntity:(id)a3 fromApplicationSceneEntity:(id)a4;
- (NSSet)fromApplicationSceneEntities;
- (NSSet)toApplicationSceneEntities;
- (SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider)initWithToApplicationSceneEntity:(id)a3 fromApplicationSceneEntity:(id)a4;
@end

@implementation SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider

+ (id)transitionContextProviderWithToApplicationSceneEntity:(id)a3 fromApplicationSceneEntity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider alloc] initWithToApplicationSceneEntity:v6 fromApplicationSceneEntity:v5];

  return v7;
}

- (SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider)initWithToApplicationSceneEntity:(id)a3 fromApplicationSceneEntity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider;
  v9 = [(SBUIAnimationControllerActivatingAndDeactivatingAppTransitionContextProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_toAppSceneEntity, a3);
    objc_storeStrong(&v10->_fromAppSceneEntity, a4);
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