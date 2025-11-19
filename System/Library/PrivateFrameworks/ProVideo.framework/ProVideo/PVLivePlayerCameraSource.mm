@interface PVLivePlayerCameraSource
- (PVLivePlayerCameraSource)init;
- (id)imageBufferForHostTime:(double)a3;
- (void)cameraFrameSetDropped;
- (void)cameraFrameSetRecieved:(id)a3;
- (void)dealloc;
- (void)registerRenderLink:(id)a3;
@end

@implementation PVLivePlayerCameraSource

- (PVLivePlayerCameraSource)init
{
  v3.receiver = self;
  v3.super_class = PVLivePlayerCameraSource;
  if ([(PVLivePlayerCameraSource *)&v3 init])
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
  v4.super_class = PVLivePlayerCameraSource;
  [(PVLivePlayerCameraSource *)&v4 dealloc];
}

- (void)cameraFrameSetRecieved:(id)a3
{
  v7 = a3;
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  objc_storeStrong(&self->_mostRecentFrameSet, a3);
  v6 = self->_renderLink;
  HGSynchronizable::Unlock(lock);
  if (v6)
  {
    [(PVLivePlayerCameraRenderLink *)v6 cameraSourceRecievedFrameSet:v7];
  }
}

- (void)cameraFrameSetDropped
{
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  v4 = self->_renderLink;
  HGSynchronizable::Unlock(lock);
  if (v4)
  {
    [(PVLivePlayerCameraRenderLink *)v4 cameraSourceDroppedFrame];
  }
}

- (void)registerRenderLink:(id)a3
{
  v6 = a3;
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  objc_storeStrong(&self->_renderLink, a3);
  HGSynchronizable::Unlock(lock);
}

- (id)imageBufferForHostTime:(double)a3
{
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  v5 = self->_mostRecentFrameSet;
  HGSynchronizable::Unlock(lock);

  return v5;
}

@end