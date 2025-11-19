@interface SBSceneManagerSceneHandleWeakRegistry
- (void)addSceneHandle:(id)a3 forSceneIdentity:(id)a4;
@end

@implementation SBSceneManagerSceneHandleWeakRegistry

- (void)addSceneHandle:(id)a3 forSceneIdentity:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    sceneHandlesBySceneIdentity = self->_sceneHandlesBySceneIdentity;
    if (!sceneHandlesBySceneIdentity)
    {
      v8 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v9 = self->_sceneHandlesBySceneIdentity;
      self->_sceneHandlesBySceneIdentity = v8;

      sceneHandlesBySceneIdentity = self->_sceneHandlesBySceneIdentity;
    }

    [(NSMapTable *)sceneHandlesBySceneIdentity setObject:v10 forKey:v6];
  }
}

@end