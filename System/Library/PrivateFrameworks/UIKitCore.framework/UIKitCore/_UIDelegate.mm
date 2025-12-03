@interface _UIDelegate
- (void)attachToObjectLifecycle:(id)lifecycle;
- (void)detachFromObjectLifecycle;
@end

@implementation _UIDelegate

- (void)attachToObjectLifecycle:(id)lifecycle
{
  key = self;
  self->_attachedObject = lifecycle;
  objc_setAssociatedObject(lifecycle, &key, self, 1);
}

- (void)detachFromObjectLifecycle
{
  key = self;
  objc_setAssociatedObject(self->_attachedObject, &key, 0, 1);
  key->_attachedObject = 0;
}

@end