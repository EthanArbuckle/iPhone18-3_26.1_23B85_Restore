@interface SBBiometricMonitorPearlDataSource
- (SBBiometricMonitorPearlDataSource)init;
- (SBBiometricMonitorPearlDataSource)initWithPearlDevice:(id)a3;
- (void)_forEachObserver:(id)a3;
- (void)_setFaceDetecting:(BOOL)a3;
- (void)_setMatching:(BOOL)a3;
- (void)_setPoseIsMarginal:(BOOL)a3;
- (void)_updateFaceDetecting;
- (void)_updateMatching;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)device:(id)a3 pearlEventOccurred:(int64_t)a4;
- (void)device:(id)a3 pearlStateChanged:(int64_t)a4;
@end

@implementation SBBiometricMonitorPearlDataSource

- (SBBiometricMonitorPearlDataSource)init
{
  v3 = objc_alloc_init(MEMORY[0x277D67E78]);
  v4 = [v3 createPearlDevice];

  v5 = [MEMORY[0x277D67C98] sharedInstance];
  [v5 addObserver:self];
  v6 = [(SBBiometricMonitorPearlDataSource *)self initWithPearlDevice:v4];

  return v6;
}

- (SBBiometricMonitorPearlDataSource)initWithPearlDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBBiometricMonitorPearlDataSource;
  v6 = [(SBBiometricMonitorPearlDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pearlDevice, a3);
    [(BKDevicePearl *)v7->_pearlDevice setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(BKDevicePearl *)self->_pearlDevice setDelegate:0];
  v3.receiver = self;
  v3.super_class = SBBiometricMonitorPearlDataSource;
  [(SBBiometricMonitorPearlDataSource *)&v3 dealloc];
}

- (void)_forEachObserver:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_setMatching:(BOOL)a3
{
  if (self->_matching != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_matching = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__SBBiometricMonitorPearlDataSource__setMatching___block_invoke;
    v5[3] = &unk_2783AC9E0;
    v5[4] = self;
    [(SBBiometricMonitorPearlDataSource *)self _forEachObserver:v5];
  }
}

void __50__SBBiometricMonitorPearlDataSource__setMatching___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 24) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 biometricMonitorDataSourceMatchingStarted:*(a1 + 32)];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 biometricMonitorDataSourceMatchingEnded:*(a1 + 32)];
  }
}

- (void)_setFaceDetecting:(BOOL)a3
{
  if (self->_faceDetecting != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_faceDetecting = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__SBBiometricMonitorPearlDataSource__setFaceDetecting___block_invoke;
    v5[3] = &unk_2783AC9E0;
    v5[4] = self;
    [(SBBiometricMonitorPearlDataSource *)self _forEachObserver:v5];
  }
}

void __55__SBBiometricMonitorPearlDataSource__setFaceDetecting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 24) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 biometricMonitorDataSourcePresenceDetectionStarted:*(a1 + 32)];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 biometricMonitorDataSourcePresenceDetectionEnded:*(a1 + 32)];
  }
}

- (void)_setPoseIsMarginal:(BOOL)a3
{
  if (self->_poseIsMarginal != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_poseIsMarginal = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__SBBiometricMonitorPearlDataSource__setPoseIsMarginal___block_invoke;
    v5[3] = &unk_2783AC9E0;
    v5[4] = self;
    [(SBBiometricMonitorPearlDataSource *)self _forEachObserver:v5];
  }
}

void __56__SBBiometricMonitorPearlDataSource__setPoseIsMarginal___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 biometricMonitorDataSourcePoseUpdated:*(a1 + 32)];
  }
}

- (void)_updateMatching
{
  v3 = [(BKDevicePearl *)self->_pearlDevice pearlState]== 3;

  [(SBBiometricMonitorPearlDataSource *)self _setMatching:v3];
}

- (void)_updateFaceDetecting
{
  v3 = ([(BKDevicePearl *)self->_pearlDevice pearlState]- 2) < 3;

  [(SBBiometricMonitorPearlDataSource *)self _setFaceDetecting:v3];
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

- (void)device:(id)a3 pearlStateChanged:(int64_t)a4
{
  v6 = a3;
  v7 = a4 - 1;
  if ((a4 - 1) <= 4)
  {
    v8 = 0xEu >> v7;
    v9 = v6;
    [(SBBiometricMonitorPearlDataSource *)self _setMatching:(4u >> v7) & 1];
    [(SBBiometricMonitorPearlDataSource *)self _setFaceDetecting:v8 & 1];
    v6 = v9;
  }
}

- (void)device:(id)a3 pearlEventOccurred:(int64_t)a4
{
  v6 = a3;
  if (a4 > 5)
  {
    if (a4 == 7)
    {
      v7 = v12;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v8 = __63__SBBiometricMonitorPearlDataSource_device_pearlEventOccurred___block_invoke_2;
      goto LABEL_10;
    }

    if (a4 == 6)
    {
      v7 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v8 = __63__SBBiometricMonitorPearlDataSource_device_pearlEventOccurred___block_invoke;
      goto LABEL_10;
    }
  }

  else
  {
    if (a4 == 3)
    {
      v7 = v11;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v8 = __63__SBBiometricMonitorPearlDataSource_device_pearlEventOccurred___block_invoke_3;
      goto LABEL_10;
    }

    if (a4 == 4)
    {
      v7 = &v9;
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v8 = __63__SBBiometricMonitorPearlDataSource_device_pearlEventOccurred___block_invoke_4;
LABEL_10:
      v7[2] = v8;
      v7[3] = &unk_2783AC9E0;
      v7[4] = self;
      [(SBBiometricMonitorPearlDataSource *)self _forEachObserver:v9, v10];
    }
  }
}

void __63__SBBiometricMonitorPearlDataSource_device_pearlEventOccurred___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 biometricMonitorDataSourceMatchingSucceeded:*(a1 + 32)];
  }
}

void __63__SBBiometricMonitorPearlDataSource_device_pearlEventOccurred___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 biometricMonitorDataSourceMatchingFailed:*(a1 + 32)];
  }
}

void __63__SBBiometricMonitorPearlDataSource_device_pearlEventOccurred___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 biometricMonitorDataSourcePresenceDetectionSucceeded:*(a1 + 32)];
  }
}

void __63__SBBiometricMonitorPearlDataSource_device_pearlEventOccurred___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 biometricMonitorDataSourcePresenceDetectionFailed:*(a1 + 32)];
  }
}

@end