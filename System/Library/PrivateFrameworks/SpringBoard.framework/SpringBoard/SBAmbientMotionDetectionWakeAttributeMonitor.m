@interface SBAmbientMotionDetectionWakeAttributeMonitor
+ (SBAmbientMotionDetectionWakeAttributeMonitor)sharedInstance;
- (SBAmbientMotionDetectionWakeAttributeMonitor)init;
- (void)_setShouldEnableMotionDetectionWake:(BOOL)a3;
- (void)addObserver:(id)a3;
@end

@implementation SBAmbientMotionDetectionWakeAttributeMonitor

+ (SBAmbientMotionDetectionWakeAttributeMonitor)sharedInstance
{
  if (sharedInstance_onceToken_61 != -1)
  {
    +[SBAmbientMotionDetectionWakeAttributeMonitor sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_9;

  return v3;
}

void __62__SBAmbientMotionDetectionWakeAttributeMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBAmbientMotionDetectionWakeAttributeMonitor);
  v1 = sharedInstance_sharedInstance_9;
  sharedInstance_sharedInstance_9 = v0;
}

- (SBAmbientMotionDetectionWakeAttributeMonitor)init
{
  v7.receiver = self;
  v7.super_class = SBAmbientMotionDetectionWakeAttributeMonitor;
  v2 = [(SBAmbientMotionDetectionWakeAttributeMonitor *)&v7 init];
  if (v2)
  {
    v3 = [SBApp blshService];
    v4 = [v3 localAssertionService];

    v5 = [(BLSHLocalAssertionAttributeHandler *)SBEnableMotionDetectionWakeAttributeHandler registerHandlerForService:v4];
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)_setShouldEnableMotionDetectionWake:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_shouldEnableMotionDetectionWake != a3)
  {
    self->_shouldEnableMotionDetectionWake = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) motionDetectionWakeAttributeMonitor:self didUpdateShouldEnableMotionDetectionWake:self->_shouldEnableMotionDetectionWake];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

@end