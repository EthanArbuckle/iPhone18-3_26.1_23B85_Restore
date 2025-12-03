@interface PVLivePlayerRenderLink
- (BOOL)setThrottledFPS:(unsigned int)s;
- (BOOL)skipThrottledRenderLinkTime:(id *)time;
- (PVLivePlayerRenderLink)init;
- (unsigned)_throttledRenderLinkFPS_NoLock;
- (unsigned)thermalPolicyThrottledFPS;
- (unsigned)throttledFPS;
- (void)dealloc;
- (void)registerWithPlayer:(id)player;
- (void)signalDroppedRenderLink;
- (void)signalPlayer:(id *)player;
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

- (void)registerWithPlayer:(id)player
{
  playerCopy = player;
  lock = self->_lock;
  obj = playerCopy;
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

- (BOOL)setThrottledFPS:(unsigned int)s
{
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  WeakRetained = objc_loadWeakRetained(&self->_player);
  thermalThrottlingPolicy = [WeakRetained thermalThrottlingPolicy];

  if (thermalThrottlingPolicy)
  {
    v8 = objc_loadWeakRetained(&self->_player);
    NSLog(&cfstr_IgnoreSetthrot.isa, self, v8, lock, 0);
  }

  else
  {
    self->_throttledFPS = s;
  }

  HGSynchronizable::Unlock(lock);
  return thermalThrottlingPolicy == 0;
}

- (unsigned)throttledFPS
{
  selfCopy = self;
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  LODWORD(selfCopy) = selfCopy->_throttledFPS;
  HGSynchronizable::Unlock(lock);
  return selfCopy;
}

- (unsigned)thermalPolicyThrottledFPS
{
  selfCopy = self;
  lock = self->_lock;
  LOBYTE(v5) = 0;
  HGSynchronizable::Lock(lock);
  LODWORD(selfCopy) = [(PVLivePlayerRenderLink *)selfCopy _throttledRenderLinkFPS_NoLock:lock];
  HGSynchronizable::Unlock(lock);
  return selfCopy;
}

- (BOOL)skipThrottledRenderLinkTime:(id *)time
{
  lock = self->_lock;
  v12 = lock;
  v13 = 0;
  HGSynchronizable::Lock(lock);
  _throttledRenderLinkFPS_NoLock = [(PVLivePlayerRenderLink *)self _throttledRenderLinkFPS_NoLock];
  if (_throttledRenderLinkFPS_NoLock)
  {
    memset(&v11, 0, sizeof(v11));
    time = *time;
    CMTimeConvertScale(&v11, &time, _throttledRenderLinkFPS_NoLock, kCMTimeRoundingMethod_RoundTowardZero);
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
  throttledFPS = [(PVLivePlayerRenderLink *)self throttledFPS];
  WeakRetained = objc_loadWeakRetained(&self->_player);
  thermalThrottlingPolicy = [WeakRetained thermalThrottlingPolicy];

  if (thermalThrottlingPolicy)
  {
    v6 = objc_loadWeakRetained(&self->_player);
    thermalThrottlingPolicy2 = [v6 thermalThrottlingPolicy];
    populatedControlParametersForCurrentThermalLevel = [thermalThrottlingPolicy2 populatedControlParametersForCurrentThermalLevel];

    renderLinkRate = [populatedControlParametersForCurrentThermalLevel renderLinkRate];
    if (renderLinkRate)
    {
      renderLinkRate2 = [populatedControlParametersForCurrentThermalLevel renderLinkRate];
      unsignedIntegerValue = [renderLinkRate2 unsignedIntegerValue];

      if (unsignedIntegerValue)
      {
        renderLinkRate3 = [populatedControlParametersForCurrentThermalLevel renderLinkRate];
        throttledFPS = [renderLinkRate3 unsignedIntegerValue];
      }
    }
  }

  return throttledFPS;
}

- (void)signalPlayer:(id *)player
{
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  WeakRetained = objc_loadWeakRetained(&self->_player);
  HGSynchronizable::Unlock(lock);
  if (WeakRetained)
  {
    v7 = *&player->var0;
    var3 = player->var3;
    if ([(PVLivePlayerRenderLink *)self skipThrottledRenderLinkTime:&v7])
    {
      [WeakRetained renderLinkSignalSkipped];
    }

    else
    {
      v7 = *&player->var0;
      var3 = player->var3;
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