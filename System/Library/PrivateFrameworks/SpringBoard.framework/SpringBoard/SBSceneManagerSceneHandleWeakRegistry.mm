@interface SBSceneManagerSceneHandleWeakRegistry
- (void)addSceneHandle:(id)handle forSceneIdentity:(id)identity;
@end

@implementation SBSceneManagerSceneHandleWeakRegistry

- (void)addSceneHandle:(id)handle forSceneIdentity:(id)identity
{
  handleCopy = handle;
  identityCopy = identity;
  if (identityCopy)
  {
    sceneHandlesBySceneIdentity = self->_sceneHandlesBySceneIdentity;
    if (!sceneHandlesBySceneIdentity)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v9 = self->_sceneHandlesBySceneIdentity;
      self->_sceneHandlesBySceneIdentity = strongToWeakObjectsMapTable;

      sceneHandlesBySceneIdentity = self->_sceneHandlesBySceneIdentity;
    }

    [(NSMapTable *)sceneHandlesBySceneIdentity setObject:handleCopy forKey:identityCopy];
  }
}

@end