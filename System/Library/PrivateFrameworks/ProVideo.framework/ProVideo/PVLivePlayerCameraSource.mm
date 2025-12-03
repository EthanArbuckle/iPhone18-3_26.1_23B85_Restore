@interface PVLivePlayerCameraSource
- (PVLivePlayerCameraSource)init;
- (id)imageBufferForHostTime:(double)time;
- (void)cameraFrameSetDropped;
- (void)cameraFrameSetRecieved:(id)recieved;
- (void)dealloc;
- (void)registerRenderLink:(id)link;
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

- (void)cameraFrameSetRecieved:(id)recieved
{
  recievedCopy = recieved;
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  objc_storeStrong(&self->_mostRecentFrameSet, recieved);
  v6 = self->_renderLink;
  HGSynchronizable::Unlock(lock);
  if (v6)
  {
    [(PVLivePlayerCameraRenderLink *)v6 cameraSourceRecievedFrameSet:recievedCopy];
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

- (void)registerRenderLink:(id)link
{
  linkCopy = link;
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  objc_storeStrong(&self->_renderLink, link);
  HGSynchronizable::Unlock(lock);
}

- (id)imageBufferForHostTime:(double)time
{
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  v5 = self->_mostRecentFrameSet;
  HGSynchronizable::Unlock(lock);

  return v5;
}

@end