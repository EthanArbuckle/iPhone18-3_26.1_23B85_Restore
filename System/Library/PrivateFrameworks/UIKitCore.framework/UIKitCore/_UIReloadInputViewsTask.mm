@interface _UIReloadInputViewsTask
- (UIResponder)responder;
- (_UIReloadInputViewsTask)initWithResponder:(id)responder force:(BOOL)force fromBecomeFirstResponder:(BOOL)firstResponder;
@end

@implementation _UIReloadInputViewsTask

- (_UIReloadInputViewsTask)initWithResponder:(id)responder force:(BOOL)force fromBecomeFirstResponder:(BOOL)firstResponder
{
  responderCopy = responder;
  v12.receiver = self;
  v12.super_class = _UIReloadInputViewsTask;
  v9 = [(_UIReloadInputViewsTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_responder, responderCopy);
    v10->_force = force;
    v10->_fromBecomeFirstResponder = firstResponder;
  }

  return v10;
}

- (UIResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

@end