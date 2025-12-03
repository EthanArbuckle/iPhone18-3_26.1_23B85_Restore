@interface PVMotionEffectSceneManagerComponent
- (PVMotionEffectSceneManagerComponent)initWithMotionEffect:(id)effect;
- (id)handleForOZID:(unsigned int)d;
- (void)add3DObject:(id)object handle:(id)handle;
- (void)deleteObjectsWithHandles:(id)handles;
@end

@implementation PVMotionEffectSceneManagerComponent

- (PVMotionEffectSceneManagerComponent)initWithMotionEffect:(id)effect
{
  effectCopy = effect;
  v9.receiver = self;
  v9.super_class = PVMotionEffectSceneManagerComponent;
  v5 = [(PVMotionEffectComponent *)&v9 initWithMotionEffect:effectCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    handleToOZID = v5->_handleToOZID;
    v5->_handleToOZID = v6;
  }

  return v5;
}

- (void)add3DObject:(id)object handle:(id)handle
{
  objectCopy = object;
  handleCopy = handle;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = *"";
  v11[2] = __58__PVMotionEffectSceneManagerComponent_add3DObject_handle___block_invoke;
  v11[3] = &unk_279AA5468;
  v11[4] = self;
  v9 = objectCopy;
  v12 = v9;
  v10 = handleCopy;
  v13 = v10;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v11];
}

- (void)deleteObjectsWithHandles:(id)handles
{
  handlesCopy = handles;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __64__PVMotionEffectSceneManagerComponent_deleteObjectsWithHandles___block_invoke;
  v7[3] = &unk_279AA58C0;
  v7[4] = self;
  v6 = handlesCopy;
  v8 = v6;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v7];
}

- (id)handleForOZID:(unsigned int)d
{
  handleToOZID = self->_handleToOZID;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&d];
  v5 = [(NSMutableDictionary *)handleToOZID allKeysForObject:v4];

  firstObject = [v5 firstObject];

  return firstObject;
}

@end