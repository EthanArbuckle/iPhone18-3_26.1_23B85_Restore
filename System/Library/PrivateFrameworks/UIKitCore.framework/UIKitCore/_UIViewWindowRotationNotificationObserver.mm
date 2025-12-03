@interface _UIViewWindowRotationNotificationObserver
- (void)windowWillAnimateRotation:(id)rotation;
@end

@implementation _UIViewWindowRotationNotificationObserver

- (void)windowWillAnimateRotation:(id)rotation
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  memset(v4, 0, sizeof(v4));
  [(UIView *)WeakRetained _notifyBoundingPathChangeObserversWithChangeInfo:v4 forAncestor:0];
}

@end