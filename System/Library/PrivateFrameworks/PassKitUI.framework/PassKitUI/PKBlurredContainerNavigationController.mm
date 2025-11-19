@interface PKBlurredContainerNavigationController
- (PKBlurredContainerNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_observers;
- (void)addContentContainerObserver:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)removeContentContainerObserver:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKBlurredContainerNavigationController

- (PKBlurredContainerNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = PKBlurredContainerNavigationController;
  v4 = [(PKBlurredContainerNavigationController *)&v9 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_observersLock._os_unfair_lock_opaque = 0;
    v6 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v5->_observers;
    v5->_observers = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKBlurredContainerNavigationController;
  [(PKBlurredContainerNavigationController *)&v8 viewDidLoad];
  [(PKBlurredContainerNavigationController *)self _setBuiltinTransitionStyle:1];
  v3 = objc_alloc(MEMORY[0x1E69DD298]);
  v4 = [MEMORY[0x1E69DC730] effectWithStyle:1200];
  v5 = [v3 initWithEffect:v4];
  backdropView = self->_backdropView;
  self->_backdropView = v5;

  v7 = [(PKBlurredContainerNavigationController *)self view];
  [v7 insertSubview:self->_backdropView atIndex:0];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKBlurredContainerNavigationController;
  [(PKBlurredContainerNavigationController *)&v5 viewWillLayoutSubviews];
  v3 = [(PKBlurredContainerNavigationController *)self view];
  backdropView = self->_backdropView;
  [v3 bounds];
  [(UIVisualEffectView *)backdropView setFrame:?];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKBlurredContainerNavigationController;
  [(PKBlurredContainerNavigationController *)&v14 preferredContentSizeDidChangeForChildContentContainer:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(PKBlurredContainerNavigationController *)self _observers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) contentContainer:self preferredContentSizeDidChangeForChildContentContainer:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)addContentContainerObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_observersLock);
    v4 = v5;
  }
}

- (void)removeContentContainerObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_observersLock);
    v4 = v5;
  }
}

- (id)_observers
{
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v4 = [v3 copy];

  return v4;
}

@end