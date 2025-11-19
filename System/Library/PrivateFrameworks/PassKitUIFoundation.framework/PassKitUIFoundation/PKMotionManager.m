@interface PKMotionManager
+ (id)sharedManager;
- (id)_init;
- (void)dealloc;
- (void)registerClient:(id)a3;
- (void)unregisterClient:(id)a3;
- (void)updateWithMotion:(id)a3;
@end

@implementation PKMotionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[PKMotionManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __32__PKMotionManager_sharedManager__block_invoke()
{
  sharedManager_manager = [[PKMotionManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = PKMotionManager;
  v2 = [(PKMotionManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] pk_weakObjectsHashTableUsingPointerPersonality];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = objc_alloc_init(MEMORY[0x277CC1CD8]);
    motionManager = v2->_motionManager;
    v2->_motionManager = v5;

    [(CMMotionManager *)v2->_motionManager setDeviceMotionUpdateInterval:0.0333333333];
  }

  return v2;
}

- (void)dealloc
{
  if (self->_monitoring)
  {
    [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
  }

  v3.receiver = self;
  v3.super_class = PKMotionManager;
  [(PKMotionManager *)&v3 dealloc];
}

- (void)updateWithMotion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSHashTable *)self->_clients copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) motionManager:self didReceiveMotion:{v4, v12}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerClient:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSHashTable *)self->_clients addObject:v4];
    if (self->_monitoring)
    {
      if (self->_motion)
      {
        [v4 motionManager:self didReceiveMotion:?];
      }
    }

    else
    {
      self->_monitoring = 1;
      motionManager = self->_motionManager;
      v6 = [MEMORY[0x277CCABD8] mainQueue];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __34__PKMotionManager_registerClient___block_invoke;
      v7[3] = &unk_279A004D8;
      v7[4] = self;
      [(CMMotionManager *)motionManager startDeviceMotionUpdatesToQueue:v6 withHandler:v7];
    }
  }
}

void __34__PKMotionManager_registerClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  if (v8)
  {
    v7 = *(a1 + 32);
    if (*(v7 + 24) == 1)
    {
      objc_storeStrong((v7 + 32), a2);
      [*(a1 + 32) updateWithMotion:v8];
    }
  }
}

- (void)unregisterClient:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    [(NSHashTable *)self->_clients removeObject:v4];
    v4 = [(NSHashTable *)self->_clients anyObject];
    if (v4)
    {
    }

    else
    {
      v5 = v7;
      if (!self->_monitoring)
      {
        goto LABEL_7;
      }

      self->_monitoring = 0;
      motion = self->_motion;
      self->_motion = 0;

      v4 = [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
    }

    v5 = v7;
  }

LABEL_7:

  MEMORY[0x2821F96F8](v4, v5);
}

@end