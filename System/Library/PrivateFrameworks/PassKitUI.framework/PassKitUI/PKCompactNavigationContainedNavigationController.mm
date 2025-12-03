@interface PKCompactNavigationContainedNavigationController
- (PKCompactNavigationContainedNavigationController)initWithStyle:(unint64_t)style;
- (id)_observers;
- (void)addContentContainerObserver:(id)observer;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)removeContentContainerObserver:(id)observer;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKCompactNavigationContainedNavigationController

- (PKCompactNavigationContainedNavigationController)initWithStyle:(unint64_t)style
{
  v9.receiver = self;
  v9.super_class = PKCompactNavigationContainedNavigationController;
  v4 = [(PKCompactNavigationContainedNavigationController *)&v9 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    v4->_observersLock._os_unfair_lock_opaque = 0;
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v5->_observers;
    v5->_observers = pk_weakObjectsHashTableUsingPointerPersonality;
  }

  return v5;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PKCompactNavigationContainedNavigationController;
  [(PKCompactNavigationContainedNavigationController *)&v3 loadView];
  if (self->_style == 1)
  {
    [(PKCompactNavigationContainedNavigationController *)self setNavigationBarHidden:1];
  }
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKCompactNavigationContainedNavigationController;
  [(PKCompactNavigationContainedNavigationController *)&v8 viewDidLoad];
  if (!self->_style)
  {
    [(PKCompactNavigationContainedNavigationController *)self _setBuiltinTransitionStyle:1];
    v3 = objc_alloc(MEMORY[0x1E69DD298]);
    v4 = [MEMORY[0x1E69DC730] effectWithStyle:1200];
    v5 = [v3 initWithEffect:v4];
    backdropView = self->_backdropView;
    self->_backdropView = v5;

    view = [(PKCompactNavigationContainedNavigationController *)self view];
    [view insertSubview:self->_backdropView atIndex:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKCompactNavigationContainedNavigationController;
  [(PKCompactNavigationContainedNavigationController *)&v5 viewWillLayoutSubviews];
  view = [(PKCompactNavigationContainedNavigationController *)self view];
  backdropView = self->_backdropView;
  [view bounds];
  [(UIVisualEffectView *)backdropView setFrame:?];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v16 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v14.receiver = self;
  v14.super_class = PKCompactNavigationContainedNavigationController;
  [(PKCompactNavigationContainedNavigationController *)&v14 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _observers = [(PKCompactNavigationContainedNavigationController *)self _observers];
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

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (controllerCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [[PKCompactNavigationWrapperViewController alloc] initWithWrappedViewController:controllerCopy parentNavigationController:self];

      controllerCopy = v7;
    }
  }

  v8.receiver = self;
  v8.super_class = PKCompactNavigationContainedNavigationController;
  [(PKCompactNavigationContainedNavigationController *)&v8 pushViewController:controllerCopy animated:animatedCopy];
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