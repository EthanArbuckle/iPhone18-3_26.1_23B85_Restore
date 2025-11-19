@interface _UIDelegate
- (void)attachToObjectLifecycle:(id)a3;
- (void)detachFromObjectLifecycle;
@end

@implementation _UIDelegate

- (void)attachToObjectLifecycle:(id)a3
{
  key = self;
  self->_attachedObject = a3;
  objc_setAssociatedObject(a3, &key, self, 1);
}

- (void)detachFromObjectLifecycle
{
  key = self;
  objc_setAssociatedObject(self->_attachedObject, &key, 0, 1);
  key->_attachedObject = 0;
}

@end