@interface Li3DEngineSceneManager
- (BOOL)applyForce:(const void *)force node:(id)node arScale:(float)scale objects:(void *)objects;
- (BOOL)hasAppliedForce:(id)force;
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
  appliedForces = [(Li3DEngineSceneManager *)self appliedForces];

  [(NSMutableSet *)appliedForces removeAllObjects];
}

- (BOOL)hasAppliedForce:(id)force
{
  appliedForces = [(Li3DEngineSceneManager *)self appliedForces];

  return [(NSMutableSet *)appliedForces containsObject:force];
}

- (BOOL)applyForce:(const void *)force node:(id)node arScale:(float)scale objects:(void *)objects
{
  if (*(force + 5) == 0.0 || !*(force + 6) || *force == 1 && [(Li3DEngineSceneManager *)self hasAppliedForce:?])
  {
    return 0;
  }

  LiPhysicsUtils::ApplyForce(force, node, objects, scale);
  [(NSMutableSet *)[(Li3DEngineSceneManager *)self appliedForces] addObject:*(force + 6)];
  return 1;
}

@end