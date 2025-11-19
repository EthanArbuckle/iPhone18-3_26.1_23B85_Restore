@interface Li3DEngineSceneManager
- (BOOL)applyForce:(const void *)a3 node:(id)a4 arScale:(float)a5 objects:(void *)a6;
- (BOOL)hasAppliedForce:(id)a3;
- (Li3DEngineSceneManager)init;
- (void)resetSim;
@end

@implementation Li3DEngineSceneManager

- (Li3DEngineSceneManager)init
{
  v4.receiver = self;
  v4.super_class = Li3DEngineSceneManager;
  v2 = [(Li3DEngineSceneManager *)&v4 init];
  if (v2)
  {
    v2->_appliedForces = objc_opt_new();
  }

  return v2;
}

- (void)resetSim
{
  v2 = [(Li3DEngineSceneManager *)self appliedForces];

  [(NSMutableSet *)v2 removeAllObjects];
}

- (BOOL)hasAppliedForce:(id)a3
{
  v4 = [(Li3DEngineSceneManager *)self appliedForces];

  return [(NSMutableSet *)v4 containsObject:a3];
}

- (BOOL)applyForce:(const void *)a3 node:(id)a4 arScale:(float)a5 objects:(void *)a6
{
  if (*(a3 + 5) == 0.0 || !*(a3 + 6) || *a3 == 1 && [(Li3DEngineSceneManager *)self hasAppliedForce:?])
  {
    return 0;
  }

  LiPhysicsUtils::ApplyForce(a3, a4, a6, a5);
  [(NSMutableSet *)[(Li3DEngineSceneManager *)self appliedForces] addObject:*(a3 + 6)];
  return 1;
}

@end