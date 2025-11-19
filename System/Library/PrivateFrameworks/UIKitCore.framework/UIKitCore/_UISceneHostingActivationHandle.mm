@interface _UISceneHostingActivationHandle
- (BOOL)isActive;
- (BOOL)isHandleValid;
- (id)initWithActivationTarget:(id *)a1;
- (void)activate:(id)a3;
- (void)deactivate:(id)a3;
- (void)dealloc;
@end

@implementation _UISceneHostingActivationHandle

- (void)dealloc
{
  if ([(_UISceneHostingActivationHandle *)self isHandleValid])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:25 description:@"Scene activation handle deallocated before being invalidated"];
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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:35 description:@"This activation handle has invalidated!"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_activationTarget);
  v5 = [WeakRetained isActive];

  return v5;
}

- (id)initWithActivationTarget:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = _UISceneHostingActivationHandle;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
}

- (void)activate:(id)a3
{
  v5 = a3;
  if (![(_UISceneHostingActivationHandle *)self isHandleValid])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:40 description:@"This activation handle has invalidated!"];
  }

  if ([(_UISceneHostingActivationHandle *)self isActive])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:41 description:@"The scene is already active"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_activationTarget);
  [WeakRetained activate:v5];
}

- (void)deactivate:(id)a3
{
  v5 = a3;
  if (![(_UISceneHostingActivationHandle *)self isHandleValid])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:46 description:@"This activation handle has invalidated!"];
  }

  if (![(_UISceneHostingActivationHandle *)self isActive])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UISceneHostingActivationHandle.m" lineNumber:47 description:@"The scene is already inactive"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_activationTarget);
  [WeakRetained deactivate:v5];
}

@end