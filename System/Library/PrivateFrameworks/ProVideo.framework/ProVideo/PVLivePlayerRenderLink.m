@interface PVLivePlayerRenderLink
- (BOOL)setThrottledFPS:(unsigned int)a3;
- (BOOL)skipThrottledRenderLinkTime:(id *)a3;
- (PVLivePlayerRenderLink)init;
- (unsigned)_throttledRenderLinkFPS_NoLock;
- (unsigned)thermalPolicyThrottledFPS;
- (unsigned)throttledFPS;
- (void)dealloc;
- (void)registerWithPlayer:(id)a3;
- (void)signalDroppedRenderLink;
- (void)signalPlayer:(id *)a3;
@end

@implementation PVLivePlayerRenderLink

- (PVLivePlayerRenderLink)init
{
  v3.receiver = self;
  v3.super_class = PVLivePlayerRenderLink;
  if ([(PVLivePlayerRenderLink *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  lock = self->_lock;
  if (lock)
  {
    (*(lock->var0 + 1))(lock, a2);
  }

  v4.receiver = self;
  v4.super_class = PVLivePlayerRenderLink;
  [(PVLivePlayerRenderLink *)&v4 dealloc];
}

- (void)registerWithPlayer:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  obj = v4;
  HGSynchronizable::Lock(lock);
  v6 = objc_storeWeak(&self->_player, obj);

  if (obj)
  {
    [(PVLivePlayerRenderLink *)self rebuild];
  }

  else
  {
    [(PVLivePlayerRenderLink *)self teardown];
  }

  HGSynchronizable::Unlock(lock);
}

- (BOOL)setThrottledFPS:(unsigned int)a3
{
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  WeakRetained = objc_loadWeakRetained(&self->_player);
  v7 = [WeakRetained thermalThrottlingPolicy];

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_player);
    NSLog(&cfstr_IgnoreSetthrot.isa, self, v8, lock, 0);
  }

  else
  {
    self->_throttledFPS = a3;
  }

  HGSynchronizable::Unlock(lock);
  return v7 == 0;
}

- (unsigned)throttledFPS
{
  v2 = self;
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  LODWORD(v2) = v2->_throttledFPS;
  HGSynchronizable::Unlock(lock);
  return v2;
}

- (unsigned)thermalPolicyThrottledFPS
{
  v2 = self;
  lock = self->_lock;
  LOBYTE(v5) = 0;
  HGSynchronizable::Lock(lock);
  LODWORD(v2) = [(PVLivePlayerRenderLink *)v2 _throttledRenderLinkFPS_NoLock:lock];
  HGSynchronizable::Unlock(lock);
  return v2;
}

- (BOOL)skipThrottledRenderLinkTime:(id *)a3
{
  lock = self->_lock;
  v12 = lock;
  v13 = 0;
  HGSynchronizable::Lock(lock);
  v6 = [(PVLivePlayerRenderLink *)self _throttledRenderLinkFPS_NoLock];
  if (v6)
  {
    memset(&v11, 0, sizeof(v11));
    time = *a3;
    CMTimeConvertScale(&v11, &time, v6, kCMTimeRoundingMethod_RoundTowardZero);
    time = self->_lastTime;
    v9 = v11;
    v7 = CMTimeCompare(&time, &v9) == 0;
    self->_lastTime = v11;
  }

  else
  {
    v7 = 0;
  }

  HGSynchronizable::Unlock(lock);
  return v7;
}

- (unsigned)_throttledRenderLinkFPS_NoLock
{
  v3 = [(PVLivePlayerRenderLink *)self throttledFPS];
  WeakRetained = objc_loadWeakRetained(&self->_player);
  v5 = [WeakRetained thermalThrottlingPolicy];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_player);
    v7 = [v6 thermalThrottlingPolicy];
    v8 = [v7 populatedControlParametersForCurrentThermalLevel];

    v9 = [v8 renderLinkRate];
    if (v9)
    {
      v10 = [v8 renderLinkRate];
      v11 = [v10 unsignedIntegerValue];

      if (v11)
      {
        v12 = [v8 renderLinkRate];
        v3 = [v12 unsignedIntegerValue];
      }
    }
  }

  return v3;
}

- (void)signalPlayer:(id *)a3
{
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  WeakRetained = objc_loadWeakRetained(&self->_player);
  HGSynchronizable::Unlock(lock);
  if (WeakRetained)
  {
    v7 = *&a3->var0;
    var3 = a3->var3;
    if ([(PVLivePlayerRenderLink *)self skipThrottledRenderLinkTime:&v7])
    {
      [WeakRetained renderLinkSignalSkipped];
    }

    else
    {
      v7 = *&a3->var0;
      var3 = a3->var3;
      [WeakRetained renderLinkSignal:&v7];
    }
  }
}

- (void)signalDroppedRenderLink
{
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  WeakRetained = objc_loadWeakRetained(&self->_player);
  HGSynchronizable::Unlock(lock);
  if (WeakRetained)
  {
    [WeakRetained renderLinkSignalDropped];
  }
}

@end