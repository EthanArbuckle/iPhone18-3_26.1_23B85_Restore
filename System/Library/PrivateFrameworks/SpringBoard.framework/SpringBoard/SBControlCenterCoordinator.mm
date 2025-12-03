@interface SBControlCenterCoordinator
+ (id)_sharedInstanceCreatingIfNeeded:(uint64_t)needed;
- (BOOL)canBePresented;
- (BOOL)handleIndirectStatusBarAction;
- (BOOL)handleMenuButtonTap;
- (BOOL)isPresented;
- (BOOL)isPresentedOrDismissing;
- (BOOL)isVisible;
- (SBControlCenterCoordinator)init;
- (id)_firstControlCenterControllerPassingTest:(id *)test;
- (id)_mostPresentableControlCenterController;
- (id)_presentableControlCenterController;
- (id)presentedOrDismissingControlCenterController;
- (uint64_t)_dismissControlCenterEverywhereAnimated:(void *)animated except:;
- (void)_enumerateObservers:(uint64_t)observers;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)notifyObserversThatControlCenterController:(id)controller didDismissOnWindowScene:(id)scene;
- (void)notifyObserversThatControlCenterController:(id)controller didPresentOnWindowScene:(id)scene;
- (void)notifyObserversThatControlCenterController:(id)controller willDismissOnWindowScene:(id)scene;
- (void)notifyObserversThatControlCenterController:(id)controller willPresentOnWindowScene:(id)scene;
- (void)presentAnimated:(BOOL)animated;
- (void)presentAnimated:(BOOL)animated completion:(id)completion;
- (void)registerControlCenterController:(id)controller forWindowScene:(id)scene;
@end

@implementation SBControlCenterCoordinator

- (BOOL)isVisible
{
  visibleControlCenterController = [(SBControlCenterCoordinator *)self visibleControlCenterController];
  v3 = visibleControlCenterController != 0;

  return v3;
}

- (BOOL)isPresented
{
  presentedControlCenterController = [(SBControlCenterCoordinator *)self presentedControlCenterController];
  v3 = presentedControlCenterController != 0;

  return v3;
}

- (SBControlCenterCoordinator)init
{
  v12.receiver = self;
  v12.super_class = SBControlCenterCoordinator;
  v2 = [(SBControlCenterCoordinator *)&v12 init];
  if (v2)
  {
    v3 = +[SBDefaults localDefaults];
    controlCenterDefaults = [v3 controlCenterDefaults];
    controlCenterDefaults = v2->_controlCenterDefaults;
    v2->_controlCenterDefaults = controlCenterDefaults;

    v6 = objc_alloc_init(MEMORY[0x277CFC890]);
    viewControllerFactory = v2->_viewControllerFactory;
    v2->_viewControllerFactory = v6;

    v8 = objc_alloc_init(SBControlCenterSystemControlsHost);
    v9 = [objc_alloc(MEMORY[0x277CFC8A8]) initWithSystemHost:v8];
    systemControlsCoordinator = v2->_systemControlsCoordinator;
    v2->_systemControlsCoordinator = v9;

    [(CCUISystemControlsCoordinator *)v2->_systemControlsCoordinator beginObservingSystemState];
  }

  return v2;
}

- (void)dealloc
{
  [(CCUISystemControlsCoordinator *)self->_systemControlsCoordinator endObservingSystemState];
  v3.receiver = self;
  v3.super_class = SBControlCenterCoordinator;
  [(SBControlCenterCoordinator *)&v3 dealloc];
}

+ (id)_sharedInstanceCreatingIfNeeded:(uint64_t)needed
{
  objc_opt_self();
  v3 = _sharedInstanceCreatingIfNeeded____ControlCenterCoordinator;
  if (_sharedInstanceCreatingIfNeeded____ControlCenterCoordinator)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    if (_sharedInstanceCreatingIfNeeded__onceToken != -1)
    {
      +[SBControlCenterCoordinator _sharedInstanceCreatingIfNeeded:];
    }

    v3 = _sharedInstanceCreatingIfNeeded____ControlCenterCoordinator;
  }

  return v3;
}

uint64_t __62__SBControlCenterCoordinator__sharedInstanceCreatingIfNeeded___block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBControlCenterCoordinator);
  v1 = _sharedInstanceCreatingIfNeeded____ControlCenterCoordinator;
  _sharedInstanceCreatingIfNeeded____ControlCenterCoordinator = v0;

  return kdebug_trace();
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    observerCopy = v8;
  }
}

- (id)_firstControlCenterControllerPassingTest:(id *)test
{
  v3 = a2;
  if (test)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__0;
    v13 = __Block_byref_object_dispose__0;
    v14 = 0;
    dictionaryRepresentation = [test[6] dictionaryRepresentation];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__SBControlCenterCoordinator__firstControlCenterControllerPassingTest___block_invoke;
    v6[3] = &unk_2783A9B60;
    v7 = v3;
    v8 = &v9;
    [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v6];

    test = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return test;
}

- (BOOL)canBePresented
{
  _presentableControlCenterController = [(SBControlCenterCoordinator *)&self->super.isa _presentableControlCenterController];
  v3 = _presentableControlCenterController != 0;

  return v3;
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentedControlCenterController = [(SBControlCenterCoordinator *)self presentedControlCenterController];
  [presentedControlCenterController dismissAnimated:animatedCopy];
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedControlCenterController = [(SBControlCenterCoordinator *)self presentedControlCenterController];
  v7 = presentedControlCenterController;
  if (presentedControlCenterController)
  {
    [presentedControlCenterController dismissAnimated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (BOOL)handleIndirectStatusBarAction
{
  _mostPresentableControlCenterController = [(SBControlCenterCoordinator *)&self->super.isa _mostPresentableControlCenterController];
  handleIndirectStatusBarAction = [_mostPresentableControlCenterController handleIndirectStatusBarAction];

  return handleIndirectStatusBarAction;
}

- (void)registerControlCenterController:(id)controller forWindowScene:(id)scene
{
  v16[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  sceneCopy = scene;
  controllersByWindowSceneIdentifier = self->_controllersByWindowSceneIdentifier;
  if (!controllersByWindowSceneIdentifier)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    v11 = self->_controllersByWindowSceneIdentifier;
    self->_controllersByWindowSceneIdentifier = strongToWeakObjectsMapTable;

    controllersByWindowSceneIdentifier = self->_controllersByWindowSceneIdentifier;
  }

  _sceneIdentifier = [sceneCopy _sceneIdentifier];
  [(NSMapTable *)controllersByWindowSceneIdentifier setObject:controllerCopy forKey:_sceneIdentifier];

  if ([sceneCopy isMainDisplayWindowScene])
  {
    objc_storeStrong(&self->_embeddedDisplayControlCenterController, controller);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v15[0] = @"SBControlCenterNotificationControlCenterControllerKey";
  v15[1] = @"SBControlCenterNotificationWindowSceneKey";
  v16[0] = controllerCopy;
  v16[1] = sceneCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [defaultCenter postNotificationName:@"SBControlCenterControllerWindowSceneConnectedNotification" object:v14];
}

- (void)notifyObserversThatControlCenterController:(id)controller willPresentOnWindowScene:(id)scene
{
  v16[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  sceneCopy = scene;
  if ([(SBControlCenterDefaults *)self->_controlCenterDefaults dismissControlCenterElsewhereOnPresentation])
  {
    [(SBControlCenterCoordinator *)&self->super.isa _dismissControlCenterEverywhereAnimated:controllerCopy except:?];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__SBControlCenterCoordinator_notifyObserversThatControlCenterController_willPresentOnWindowScene___block_invoke;
  v12[3] = &unk_2783A9B10;
  v13 = controllerCopy;
  v14 = sceneCopy;
  v8 = sceneCopy;
  v9 = controllerCopy;
  [(SBControlCenterCoordinator *)self _enumerateObservers:v12];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v15[0] = @"SBControlCenterNotificationControlCenterControllerKey";
  v15[1] = @"SBControlCenterNotificationWindowSceneKey";
  v16[0] = v9;
  v16[1] = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [defaultCenter postNotificationName:@"SBControlCenterWillPresentNotification" object:v11];
}

- (uint64_t)_dismissControlCenterEverywhereAnimated:(void *)animated except:
{
  animatedCopy = animated;
  v6 = animatedCopy;
  if (self)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__SBControlCenterCoordinator__dismissControlCenterEverywhereAnimated_except___block_invoke;
    v9[3] = &unk_2783A9B38;
    v10 = animatedCopy;
    v11 = &v13;
    v12 = a2;
    v7 = [(SBControlCenterCoordinator *)self _firstControlCenterControllerPassingTest:v9];
    LOBYTE(self) = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  return self & 1;
}

- (void)notifyObserversThatControlCenterController:(id)controller didPresentOnWindowScene:(id)scene
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB98];
  sceneCopy = scene;
  controllerCopy = controller;
  defaultCenter = [v5 defaultCenter];
  v10[0] = @"SBControlCenterNotificationControlCenterControllerKey";
  v10[1] = @"SBControlCenterNotificationWindowSceneKey";
  v11[0] = controllerCopy;
  v11[1] = sceneCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [defaultCenter postNotificationName:@"SBControlCenterDidPresentNotification" object:v9];
}

- (void)notifyObserversThatControlCenterController:(id)controller willDismissOnWindowScene:(id)scene
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB98];
  sceneCopy = scene;
  controllerCopy = controller;
  defaultCenter = [v5 defaultCenter];
  v10[0] = @"SBControlCenterNotificationControlCenterControllerKey";
  v10[1] = @"SBControlCenterNotificationWindowSceneKey";
  v11[0] = controllerCopy;
  v11[1] = sceneCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [defaultCenter postNotificationName:@"SBControlCenterWillDismissNotification" object:v9];
}

void *__69__SBControlCenterCoordinator__mostPresentableControlCenterController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 canBePresented])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

uint64_t __77__SBControlCenterCoordinator__dismissControlCenterEverywhereAnimated_except___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3 && [v3 isPresented])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    [v4 dismissAnimated:*(a1 + 48)];
  }

  return 0;
}

void __71__SBControlCenterCoordinator__firstControlCenterControllerPassingTest___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)presentedOrDismissingControlCenterController
{
  if (self)
  {
    self = [(SBControlCenterCoordinator *)self _firstControlCenterControllerPassingTest:?];
    v1 = vars8;
  }

  return self;
}

- (BOOL)isPresentedOrDismissing
{
  presentedOrDismissingControlCenterController = [(SBControlCenterCoordinator *)&self->super.isa presentedOrDismissingControlCenterController];
  v3 = presentedOrDismissingControlCenterController != 0;

  return v3;
}

- (id)_presentableControlCenterController
{
  if (self)
  {
    self = [(SBControlCenterCoordinator *)self _firstControlCenterControllerPassingTest:?];
    v1 = vars8;
  }

  return self;
}

- (id)_mostPresentableControlCenterController
{
  if (self)
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    controlCenterController = [activeDisplayWindowScene controlCenterController];

    _presentableControlCenterController = __69__SBControlCenterCoordinator__mostPresentableControlCenterController__block_invoke(v5, controlCenterController);
    if (!_presentableControlCenterController)
    {
      _presentableControlCenterController = self[7];
      if (!_presentableControlCenterController)
      {
        _presentableControlCenterController = [(SBControlCenterCoordinator *)self _presentableControlCenterController];
      }
    }

    v7 = _presentableControlCenterController;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)handleMenuButtonTap
{
  _mostPresentableControlCenterController = [(SBControlCenterCoordinator *)&self->super.isa _mostPresentableControlCenterController];
  handleMenuButtonTap = [_mostPresentableControlCenterController handleMenuButtonTap];

  return handleMenuButtonTap;
}

- (void)presentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _mostPresentableControlCenterController = [(SBControlCenterCoordinator *)&self->super.isa _mostPresentableControlCenterController];
  [_mostPresentableControlCenterController presentAnimated:animatedCopy];
}

- (void)presentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  _mostPresentableControlCenterController = [(SBControlCenterCoordinator *)&self->super.isa _mostPresentableControlCenterController];
  v7 = _mostPresentableControlCenterController;
  if (_mostPresentableControlCenterController)
  {
    [_mostPresentableControlCenterController presentAnimated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)_enumerateObservers:(uint64_t)observers
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (observers)
  {
    v4 = [*(observers + 40) count];
    if (v3)
    {
      if (v4)
      {
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        allObjects = [*(observers + 40) allObjects];
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
                objc_enumerationMutation(allObjects);
              }

              v3[2](v3, *(*(&v10 + 1) + 8 * v9++));
            }

            while (v7 != v9);
            v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
          }

          while (v7);
        }
      }
    }
  }
}

- (void)notifyObserversThatControlCenterController:(id)controller didDismissOnWindowScene:(id)scene
{
  v16[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  sceneCopy = scene;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__SBControlCenterCoordinator_notifyObserversThatControlCenterController_didDismissOnWindowScene___block_invoke;
  v12[3] = &unk_2783A9B10;
  v13 = controllerCopy;
  v14 = sceneCopy;
  v8 = sceneCopy;
  v9 = controllerCopy;
  [(SBControlCenterCoordinator *)self _enumerateObservers:v12];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v15[0] = @"SBControlCenterNotificationControlCenterControllerKey";
  v15[1] = @"SBControlCenterNotificationWindowSceneKey";
  v16[0] = v9;
  v16[1] = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [defaultCenter postNotificationName:@"SBControlCenterDidDismissNotification" object:v11];
}

@end