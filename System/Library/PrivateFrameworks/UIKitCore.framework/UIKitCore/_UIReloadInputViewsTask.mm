@interface _UIReloadInputViewsTask
- (UIResponder)responder;
- (_UIReloadInputViewsTask)initWithResponder:(id)a3 force:(BOOL)a4 fromBecomeFirstResponder:(BOOL)a5;
@end

@implementation _UIReloadInputViewsTask

- (_UIReloadInputViewsTask)initWithResponder:(id)a3 force:(BOOL)a4 fromBecomeFirstResponder:(BOOL)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = _UIReloadInputViewsTask;
  v9 = [(_UIReloadInputViewsTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_responder, v8);
    v10->_force = a4;
    v10->_fromBecomeFirstResponder = a5;
  }

  return v10;
}

- (UIResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

@end