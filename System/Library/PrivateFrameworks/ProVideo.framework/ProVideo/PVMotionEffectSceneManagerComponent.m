@interface PVMotionEffectSceneManagerComponent
- (PVMotionEffectSceneManagerComponent)initWithMotionEffect:(id)a3;
- (id)handleForOZID:(unsigned int)a3;
- (void)add3DObject:(id)a3 handle:(id)a4;
- (void)deleteObjectsWithHandles:(id)a3;
@end

@implementation PVMotionEffectSceneManagerComponent

- (PVMotionEffectSceneManagerComponent)initWithMotionEffect:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PVMotionEffectSceneManagerComponent;
  v5 = [(PVMotionEffectComponent *)&v9 initWithMotionEffect:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    handleToOZID = v5->_handleToOZID;
    v5->_handleToOZID = v6;
  }

  return v5;
}

- (void)add3DObject:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PVMotionEffectComponent *)self motionEffect];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = *"";
  v11[2] = __58__PVMotionEffectSceneManagerComponent_add3DObject_handle___block_invoke;
  v11[3] = &unk_279AA5468;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 runEnsuringDocumentReadyAndLockingDocument:v11];
}

- (void)deleteObjectsWithHandles:(id)a3
{
  v4 = a3;
  v5 = [(PVMotionEffectComponent *)self motionEffect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __64__PVMotionEffectSceneManagerComponent_deleteObjectsWithHandles___block_invoke;
  v7[3] = &unk_279AA58C0;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 runEnsuringDocumentReadyAndLockingDocument:v7];
}

- (id)handleForOZID:(unsigned int)a3
{
  handleToOZID = self->_handleToOZID;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&a3];
  v5 = [(NSMutableDictionary *)handleToOZID allKeysForObject:v4];

  v6 = [v5 firstObject];

  return v6;
}

@end