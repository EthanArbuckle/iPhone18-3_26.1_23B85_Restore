@interface _UIViewWindowRotationNotificationObserver
- (void)windowWillAnimateRotation:(id)a3;
@end

@implementation _UIViewWindowRotationNotificationObserver

- (void)windowWillAnimateRotation:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  memset(v4, 0, sizeof(v4));
  [(UIView *)WeakRetained _notifyBoundingPathChangeObserversWithChangeInfo:v4 forAncestor:0];
}

@end