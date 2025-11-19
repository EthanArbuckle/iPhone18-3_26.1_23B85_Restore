@interface UIWindowSceneDragInteraction
- (UIView)view;
- (UIWindowSceneDragInteraction)init;
- (void)didMoveToView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UIWindowSceneDragInteraction

- (UIWindowSceneDragInteraction)init
{
  v6.receiver = self;
  v6.super_class = UIWindowSceneDragInteraction;
  v2 = [(UIWindowSceneDragInteraction *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_UIWindowSceneDragInteractionImpl_iOS);
    impl = v2->_impl;
    v2->_impl = v3;
  }

  return v2;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)didMoveToView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_view, v4);
  [(_UIWindowSceneDragInteractionImpl *)self->_impl didMoveToView:v4];
}

- (void)willMoveToView:(id)a3
{
  [(_UIWindowSceneDragInteractionImpl *)self->_impl willMoveToView:a3];

  objc_storeWeak(&self->_view, 0);
}

@end