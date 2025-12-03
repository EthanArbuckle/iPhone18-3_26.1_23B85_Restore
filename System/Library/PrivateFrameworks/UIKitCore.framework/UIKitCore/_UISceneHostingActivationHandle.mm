@interface _UISceneHostingActivationHandle
- (BOOL)isActive;
- (BOOL)isHandleValid;
- (id)initWithActivationTarget:(id *)target;
- (void)activate:(id)activate;
- (void)deactivate:(id)deactivate;
- (void)dealloc;
@end

@implementation _UISceneHostingActivationHandle

- (void)dealloc
{
  if ([(_UISceneHostingActivationHandle *)self isHandleValid])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:25 description:@"Scene activation handle deallocated before being invalidated"];
  }

  v5.receiver = self;
  v5.super_class = _UISceneHostingActivationHandle;
  [(_UISceneHostingActivationHandle *)&v5 dealloc];
}

- (BOOL)isHandleValid
{
  WeakRetained = objc_loadWeakRetained(&self->_activationTarget);
  v3 = WeakRetained != 0;

  return v3;
}

- (BOOL)isActive
{
  if (![(_UISceneHostingActivationHandle *)self isHandleValid])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:35 description:@"This activation handle has invalidated!"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_activationTarget);
  isActive = [WeakRetained isActive];

  return isActive;
}

- (id)initWithActivationTarget:(id *)target
{
  v3 = a2;
  if (target)
  {
    v6.receiver = target;
    v6.super_class = _UISceneHostingActivationHandle;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    target = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return target;
}

- (void)activate:(id)activate
{
  activateCopy = activate;
  if (![(_UISceneHostingActivationHandle *)self isHandleValid])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:40 description:@"This activation handle has invalidated!"];
  }

  if ([(_UISceneHostingActivationHandle *)self isActive])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:41 description:@"The scene is already active"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_activationTarget);
  [WeakRetained activate:activateCopy];
}

- (void)deactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  if (![(_UISceneHostingActivationHandle *)self isHandleValid])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:46 description:@"This activation handle has invalidated!"];
  }

  if (![(_UISceneHostingActivationHandle *)self isActive])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:47 description:@"The scene is already inactive"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_activationTarget);
  [WeakRetained deactivate:deactivateCopy];
}

@end