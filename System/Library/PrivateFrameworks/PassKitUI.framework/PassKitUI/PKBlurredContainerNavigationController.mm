@interface PKBlurredContainerNavigationController
- (PKBlurredContainerNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_observers;
- (void)addContentContainerObserver:(id)observer;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)removeContentContainerObserver:(id)observer;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKBlurredContainerNavigationController

- (PKBlurredContainerNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = PKBlurredContainerNavigationController;
  v4 = [(PKBlurredContainerNavigationController *)&v9 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_observersLock._os_unfair_lock_opaque = 0;
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v5->_observers;
    v5->_observers = pk_weakObjectsHashTableUsingPointerPersonality;
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

  view = [(PKBlurredContainerNavigationController *)self view];
  [view insertSubview:self->_backdropView atIndex:0];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKBlurredContainerNavigationController;
  [(PKBlurredContainerNavigationController *)&v5 viewWillLayoutSubviews];
  view = [(PKBlurredContainerNavigationController *)self view];
  backdropView = self->_backdropView;
  [view bounds];
  [(UIVisualEffectView *)backdropView setFrame:?];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v16 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v14.receiver = self;
  v14.super_class = PKBlurredContainerNavigationController;
  [(PKBlurredContainerNavigationController *)&v14 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _observers = [(PKBlurredContainerNavigationController *)self _observers];
  v6 = [_observers countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(_observers);
        }

        [*(*(&v10 + 1) + 8 * v9++) contentContainer:self preferredContentSizeDidChangeForChildContentContainer:containerCopy];
      }

      while (v7 != v9);
      v7 = [_observers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)addContentContainerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_observersLock);
    observerCopy = v5;
  }
}

- (void)removeContentContainerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_observersLock);
    observerCopy = v5;
  }
}

- (id)_observers
{
  os_unfair_lock_lock(&self->_observersLock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v4 = [allObjects copy];

  return v4;
}

@end