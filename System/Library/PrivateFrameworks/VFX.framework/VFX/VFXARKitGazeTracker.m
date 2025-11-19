@interface VFXARKitGazeTracker
- (VFXARKitGazeTracker)init;
- (void)dealloc;
@end

@implementation VFXARKitGazeTracker

- (VFXARKitGazeTracker)init
{
  v3.receiver = self;
  v3.super_class = VFXARKitGazeTracker;
  return [(VFXARKitGazeTracker *)&v3 init];
}

- (void)dealloc
{
  objc_msgSend_stop(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = VFXARKitGazeTracker;
  [(VFXARKitGazeTracker *)&v5 dealloc];
}

@end