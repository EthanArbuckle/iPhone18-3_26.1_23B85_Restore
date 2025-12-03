@interface UIWindowSceneDragInteraction
- (UIView)view;
- (UIWindowSceneDragInteraction)init;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
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

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  [(_UIWindowSceneDragInteractionImpl *)self->_impl didMoveToView:viewCopy];
}

- (void)willMoveToView:(id)view
{
  [(_UIWindowSceneDragInteractionImpl *)self->_impl willMoveToView:view];

  objc_storeWeak(&self->_view, 0);
}

@end