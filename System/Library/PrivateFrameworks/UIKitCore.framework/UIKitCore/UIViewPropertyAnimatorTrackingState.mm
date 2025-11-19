@interface UIViewPropertyAnimatorTrackingState
- (UIViewPropertyAnimatorTrackingState)init;
@end

@implementation UIViewPropertyAnimatorTrackingState

- (UIViewPropertyAnimatorTrackingState)init
{
  v6.receiver = self;
  v6.super_class = UIViewPropertyAnimatorTrackingState;
  v2 = [(UIViewPropertyAnimatorTrackingState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uuid = v2->_uuid;
    v2->_uuid = v3;

    *&v2->_startPaused = 0x1000000;
    v2->_shouldLayoutSubviews = 1;
  }

  return v2;
}

@end