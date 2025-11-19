@interface VFXARKitHandTracker
- (VFXARKitHandTracker)init;
- (void)dealloc;
@end

@implementation VFXARKitHandTracker

- (VFXARKitHandTracker)init
{
  v3.receiver = self;
  v3.super_class = VFXARKitHandTracker;
  return [(VFXARKitHandTracker *)&v3 init];
}

- (void)dealloc
{
  objc_msgSend_stop(self, a2, v2, v3);
  updater = self->_updater;
  if (updater)
  {

    self->_updater = 0;
  }

  v6.receiver = self;
  v6.super_class = VFXARKitHandTracker;
  [(VFXARKitHandTracker *)&v6 dealloc];
}

@end