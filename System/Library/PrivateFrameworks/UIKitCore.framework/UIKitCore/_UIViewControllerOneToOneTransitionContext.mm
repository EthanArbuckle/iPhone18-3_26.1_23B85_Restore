@interface _UIViewControllerOneToOneTransitionContext
- (CGAffineTransform)finalTransformForViewController:(SEL)controller;
- (CGAffineTransform)fromEndTransform;
- (CGAffineTransform)toEndTransform;
- (CGRect)finalFrameForViewController:(id)controller;
- (CGRect)fromEndFrame;
- (CGRect)fromStartFrame;
- (CGRect)initialFrameForViewController:(id)controller;
- (CGRect)toEndFrame;
- (CGRect)toStartFrame;
- (UIView)_fromView;
- (UIView)_toView;
- (_UIViewControllerOneToOneTransitionContext)init;
- (id)viewControllerForKey:(id)key;
- (id)viewForKey:(id)key;
- (void)_setFromEndTransform:(CGAffineTransform *)transform;
- (void)_setToEndTransform:(CGAffineTransform *)transform;
- (void)dealloc;
@end

@implementation _UIViewControllerOneToOneTransitionContext

- (_UIViewControllerOneToOneTransitionContext)init
{
  v7.receiver = self;
  v7.super_class = _UIViewControllerOneToOneTransitionContext;
  result = [(_UIViewControllerTransitionContext *)&v7 init];
  if (result)
  {
    v3 = MEMORY[0x1E695EFD0];
    v4 = *MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_toEndTransform.a = *MEMORY[0x1E695EFD0];
    *&result->_toEndTransform.c = v5;
    v6 = *(v3 + 32);
    *&result->_toEndTransform.tx = v6;
    *&result->_fromEndTransform.c = v5;
    *&result->_fromEndTransform.tx = v6;
    *&result->_fromEndTransform.a = v4;
  }

  return result;
}

- (void)dealloc
{
  [(_UIViewControllerTransitionContext *)self _setAnimator:0];
  [(_UIViewControllerTransitionContext *)self _setInteractor:0];
  v3.receiver = self;
  v3.super_class = _UIViewControllerOneToOneTransitionContext;
  [(_UIViewControllerTransitionContext *)&v3 dealloc];
}

- (UIView)_toView
{
  if (self->_isToViewSet)
  {
    view = self->_toView;
  }

  else
  {
    toViewController = [(_UIViewControllerOneToOneTransitionContext *)self toViewController];
    view = [toViewController view];
  }

  return view;
}

- (UIView)_fromView
{
  if (self->_isFromViewSet)
  {
    view = self->_fromView;
  }

  else
  {
    fromViewController = [(_UIViewControllerOneToOneTransitionContext *)self fromViewController];
    view = [fromViewController view];
  }

  return view;
}

- (CGRect)toEndFrame
{
  x = self->_toEndFrame.origin.x;
  y = self->_toEndFrame.origin.y;
  width = self->_toEndFrame.size.width;
  height = self->_toEndFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)toEndTransform
{
  v3 = *&self[7].d;
  *&retstr->a = *&self[7].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[7].ty;
  return self;
}

- (CGRect)fromStartFrame
{
  x = self->_fromStartFrame.origin.x;
  y = self->_fromStartFrame.origin.y;
  width = self->_fromStartFrame.size.width;
  height = self->_fromStartFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)fromEndFrame
{
  x = self->_fromEndFrame.origin.x;
  y = self->_fromEndFrame.origin.y;
  width = self->_fromEndFrame.size.width;
  height = self->_fromEndFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)viewForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy == @"UITransitionContextToView")
  {
    _toView = [(_UIViewControllerOneToOneTransitionContext *)self _toView];
  }

  else
  {
    if (keyCopy != @"UITransitionContextFromView")
    {
      v6 = 0;
      goto LABEL_7;
    }

    _toView = [(_UIViewControllerOneToOneTransitionContext *)self _fromView];
  }

  v6 = _toView;
LABEL_7:

  return v6;
}

- (id)viewControllerForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy == @"UITransitionContextToViewController")
  {
    toViewController = [(_UIViewControllerOneToOneTransitionContext *)self toViewController];
  }

  else
  {
    if (keyCopy != @"UITransitionContextFromViewController")
    {
      v6 = 0;
      goto LABEL_7;
    }

    toViewController = [(_UIViewControllerOneToOneTransitionContext *)self fromViewController];
  }

  v6 = toViewController;
LABEL_7:

  return v6;
}

- (CGRect)initialFrameForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (self->_toViewController == controllerCopy)
  {
    [(_UIViewControllerOneToOneTransitionContext *)self toStartFrame];
LABEL_6:
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v9 = v13;
    goto LABEL_7;
  }

  if (self->_fromViewController == controllerCopy)
  {
    [(_UIViewControllerOneToOneTransitionContext *)self fromStartFrame];
    goto LABEL_6;
  }

  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
LABEL_7:

  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)finalFrameForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (self->_toViewController == controllerCopy)
  {
    [(_UIViewControllerOneToOneTransitionContext *)self toEndFrame];
LABEL_6:
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v9 = v13;
    goto LABEL_7;
  }

  if (self->_fromViewController == controllerCopy)
  {
    [(_UIViewControllerOneToOneTransitionContext *)self fromEndFrame];
    goto LABEL_6;
  }

  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
LABEL_7:

  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGAffineTransform)finalTransformForViewController:(SEL)controller
{
  v6 = a4;
  if (self->_toViewController == v6)
  {
    v10 = v6;
    [(_UIViewControllerOneToOneTransitionContext *)self toEndTransform];
  }

  else
  {
    if (self->_fromViewController != v6)
    {
      v7 = MEMORY[0x1E695EFD0];
      v8 = *(MEMORY[0x1E695EFD0] + 16);
      *&retstr->a = *MEMORY[0x1E695EFD0];
      *&retstr->c = v8;
      *&retstr->tx = *(v7 + 32);
      goto LABEL_7;
    }

    v10 = v6;
    [(_UIViewControllerOneToOneTransitionContext *)self fromEndTransform];
  }

  v6 = v10;
LABEL_7:

  return result;
}

- (CGRect)toStartFrame
{
  x = self->_toStartFrame.origin.x;
  y = self->_toStartFrame.origin.y;
  width = self->_toStartFrame.size.width;
  height = self->_toStartFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_setToEndTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_toEndTransform.a = *&transform->a;
  *&self->_toEndTransform.c = v4;
  *&self->_toEndTransform.tx = v3;
}

- (CGAffineTransform)fromEndTransform
{
  v3 = *&self[8].d;
  *&retstr->a = *&self[8].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[8].ty;
  return self;
}

- (void)_setFromEndTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_fromEndTransform.a = *&transform->a;
  *&self->_fromEndTransform.c = v4;
  *&self->_fromEndTransform.tx = v3;
}

@end