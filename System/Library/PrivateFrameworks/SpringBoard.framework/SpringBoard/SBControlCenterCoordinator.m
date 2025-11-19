@interface SBControlCenterCoordinator
+ (id)_sharedInstanceCreatingIfNeeded:(uint64_t)a1;
- (BOOL)canBePresented;
- (BOOL)handleIndirectStatusBarAction;
- (BOOL)handleMenuButtonTap;
- (BOOL)isPresented;
- (BOOL)isPresentedOrDismissing;
- (BOOL)isVisible;
- (SBControlCenterCoordinator)init;
- (id)_firstControlCenterControllerPassingTest:(id *)a1;
- (id)_mostPresentableControlCenterController;
- (id)_presentableControlCenterController;
- (id)presentedOrDismissingControlCenterController;
- (uint64_t)_dismissControlCenterEverywhereAnimated:(void *)a3 except:;
- (void)_enumerateObservers:(uint64_t)a1;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)notifyObserversThatControlCenterController:(id)a3 didDismissOnWindowScene:(id)a4;
- (void)notifyObserversThatControlCenterController:(id)a3 didPresentOnWindowScene:(id)a4;
- (void)notifyObserversThatControlCenterController:(id)a3 willDismissOnWindowScene:(id)a4;
- (void)notifyObserversThatControlCenterController:(id)a3 willPresentOnWindowScene:(id)a4;
- (void)presentAnimated:(BOOL)a3;
- (void)presentAnimated:(BOOL)a3 completion:(id)a4;
- (void)registerControlCenterController:(id)a3 forWindowScene:(id)a4;
@end

@implementation SBControlCenterCoordinator

- (BOOL)isVisible
{
  v2 = [(SBControlCenterCoordinator *)self visibleControlCenterController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isPresented
{
  v2 = [(SBControlCenterCoordinator *)self presentedControlCenterController];
  v3 = v2 != 0;

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
    v4 = [v3 controlCenterDefaults];
    controlCenterDefaults = v2->_controlCenterDefaults;
    v2->_controlCenterDefaults = v4;

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

+ (id)_sharedInstanceCreatingIfNeeded:(uint64_t)a1
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    v4 = v8;
  }
}

- (id)_firstControlCenterControllerPassingTest:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__0;
    v13 = __Block_byref_object_dispose__0;
    v14 = 0;
    v4 = [a1[6] dictionaryRepresentation];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__SBControlCenterCoordinator__firstControlCenterControllerPassingTest___block_invoke;
    v6[3] = &unk_2783A9B60;
    v7 = v3;
    v8 = &v9;
    [v4 enumerateKeysAndObjectsUsingBlock:v6];

    a1 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

- (BOOL)canBePresented
{
  v2 = [(SBControlCenterCoordinator *)&self->super.isa _presentableControlCenterController];
  v3 = v2 != 0;

  return v3;
}

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBControlCenterCoordinator *)self presentedControlCenterController];
  [v4 dismissAnimated:v3];
}

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [(SBControlCenterCoordinator *)self presentedControlCenterController];
  v7 = v6;
  if (v6)
  {
    [v6 dismissAnimated:v4 completion:v8];
  }

  else if (v8)
  {
    v8[2]();
  }
}

- (BOOL)handleIndirectStatusBarAction
{
  v2 = [(SBControlCenterCoordinator *)&self->super.isa _mostPresentableControlCenterController];
  v3 = [v2 handleIndirectStatusBarAction];

  return v3;
}

- (void)registerControlCenterController:(id)a3 forWindowScene:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  controllersByWindowSceneIdentifier = self->_controllersByWindowSceneIdentifier;
  if (!controllersByWindowSceneIdentifier)
  {
    v10 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    v11 = self->_controllersByWindowSceneIdentifier;
    self->_controllersByWindowSceneIdentifier = v10;

    controllersByWindowSceneIdentifier = self->_controllersByWindowSceneIdentifier;
  }

  v12 = [v8 _sceneIdentifier];
  [(NSMapTable *)controllersByWindowSceneIdentifier setObject:v7 forKey:v12];

  if ([v8 isMainDisplayWindowScene])
  {
    objc_storeStrong(&self->_embeddedDisplayControlCenterController, a3);
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v15[0] = @"SBControlCenterNotificationControlCenterControllerKey";
  v15[1] = @"SBControlCenterNotificationWindowSceneKey";
  v16[0] = v7;
  v16[1] = v8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v13 postNotificationName:@"SBControlCenterControllerWindowSceneConnectedNotification" object:v14];
}

- (void)notifyObserversThatControlCenterController:(id)a3 willPresentOnWindowScene:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(SBControlCenterDefaults *)self->_controlCenterDefaults dismissControlCenterElsewhereOnPresentation])
  {
    [(SBControlCenterCoordinator *)&self->super.isa _dismissControlCenterEverywhereAnimated:v6 except:?];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__SBControlCenterCoordinator_notifyObserversThatControlCenterController_willPresentOnWindowScene___block_invoke;
  v12[3] = &unk_2783A9B10;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  [(SBControlCenterCoordinator *)self _enumerateObservers:v12];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v15[0] = @"SBControlCenterNotificationControlCenterControllerKey";
  v15[1] = @"SBControlCenterNotificationWindowSceneKey";
  v16[0] = v9;
  v16[1] = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v10 postNotificationName:@"SBControlCenterWillPresentNotification" object:v11];
}

- (uint64_t)_dismissControlCenterEverywhereAnimated:(void *)a3 except:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__SBControlCenterCoordinator__dismissControlCenterEverywhereAnimated_except___block_invoke;
    v9[3] = &unk_2783A9B38;
    v10 = v5;
    v11 = &v13;
    v12 = a2;
    v7 = [(SBControlCenterCoordinator *)a1 _firstControlCenterControllerPassingTest:v9];
    LOBYTE(a1) = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  return a1 & 1;
}

- (void)notifyObserversThatControlCenterController:(id)a3 didPresentOnWindowScene:(id)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB98];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultCenter];
  v10[0] = @"SBControlCenterNotificationControlCenterControllerKey";
  v10[1] = @"SBControlCenterNotificationWindowSceneKey";
  v11[0] = v7;
  v11[1] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [v8 postNotificationName:@"SBControlCenterDidPresentNotification" object:v9];
}

- (void)notifyObserversThatControlCenterController:(id)a3 willDismissOnWindowScene:(id)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB98];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultCenter];
  v10[0] = @"SBControlCenterNotificationControlCenterControllerKey";
  v10[1] = @"SBControlCenterNotificationWindowSceneKey";
  v11[0] = v7;
  v11[1] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [v8 postNotificationName:@"SBControlCenterWillDismissNotification" object:v9];
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
  if (a1)
  {
    a1 = [(SBControlCenterCoordinator *)a1 _firstControlCenterControllerPassingTest:?];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)isPresentedOrDismissing
{
  v2 = [(SBControlCenterCoordinator *)&self->super.isa presentedOrDismissingControlCenterController];
  v3 = v2 != 0;

  return v3;
}

- (id)_presentableControlCenterController
{
  if (a1)
  {
    a1 = [(SBControlCenterCoordinator *)a1 _firstControlCenterControllerPassingTest:?];
    v1 = vars8;
  }

  return a1;
}

- (id)_mostPresentableControlCenterController
{
  if (a1)
  {
    v2 = [SBApp windowSceneManager];
    v3 = [v2 activeDisplayWindowScene];
    v4 = [v3 controlCenterController];

    v6 = __69__SBControlCenterCoordinator__mostPresentableControlCenterController__block_invoke(v5, v4);
    if (!v6)
    {
      v6 = a1[7];
      if (!v6)
      {
        v6 = [(SBControlCenterCoordinator *)a1 _presentableControlCenterController];
      }
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)handleMenuButtonTap
{
  v2 = [(SBControlCenterCoordinator *)&self->super.isa _mostPresentableControlCenterController];
  v3 = [v2 handleMenuButtonTap];

  return v3;
}

- (void)presentAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBControlCenterCoordinator *)&self->super.isa _mostPresentableControlCenterController];
  [v4 presentAnimated:v3];
}

- (void)presentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [(SBControlCenterCoordinator *)&self->super.isa _mostPresentableControlCenterController];
  v7 = v6;
  if (v6)
  {
    [v6 presentAnimated:v4 completion:v8];
  }

  else if (v8)
  {
    v8[2]();
  }
}

- (void)_enumerateObservers:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 40) count];
    if (v3)
    {
      if (v4)
      {
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        v5 = [*(a1 + 40) allObjects];
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

              v3[2](v3, *(*(&v10 + 1) + 8 * v9++));
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
          }

          while (v7);
        }
      }
    }
  }
}

- (void)notifyObserversThatControlCenterController:(id)a3 didDismissOnWindowScene:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__SBControlCenterCoordinator_notifyObserversThatControlCenterController_didDismissOnWindowScene___block_invoke;
  v12[3] = &unk_2783A9B10;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  [(SBControlCenterCoordinator *)self _enumerateObservers:v12];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v15[0] = @"SBControlCenterNotificationControlCenterControllerKey";
  v15[1] = @"SBControlCenterNotificationWindowSceneKey";
  v16[0] = v9;
  v16[1] = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v10 postNotificationName:@"SBControlCenterDidDismissNotification" object:v11];
}

@end