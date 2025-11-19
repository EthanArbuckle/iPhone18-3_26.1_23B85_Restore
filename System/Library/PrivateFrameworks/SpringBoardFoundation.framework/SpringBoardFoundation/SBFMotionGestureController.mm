@interface SBFMotionGestureController
+ (id)sharedInstance;
- (BOOL)_hasObservers;
- (SBFMotionGestureController)init;
- (id)_highestPriorityObservers;
- (id)_observersForPriority:(unint64_t)a3;
- (void)_addGestureManager;
- (void)_addGestureObserver:(id)a3 withPriority:(unint64_t)a4;
- (void)_enumerateObserversByPriority:(id)a3;
- (void)_notifyObserversOfGesture:(int)a3;
- (void)_removeGestureManager;
- (void)_removeGestureObserver:(id)a3;
- (void)_updateGestureManager;
- (void)addGestureObserver:(id)a3 withPriority:(unint64_t)a4;
- (void)dealloc;
- (void)removeGestureObserver:(id)a3;
@end

@implementation SBFMotionGestureController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SBFMotionGestureController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_sbf_once_token_0 != -1)
  {
    dispatch_once(&sharedInstance_sbf_once_token_0, block);
  }

  v2 = sharedInstance_sbf_once_object_0;

  return v2;
}

- (void)_updateGestureManager
{
  if ([(SBFMotionGestureController *)self _hasObservers]&& !self->_motionGestureManager)
  {

    [(SBFMotionGestureController *)self _addGestureManager];
  }

  else if (![(SBFMotionGestureController *)self _hasObservers]&& self->_motionGestureManager)
  {

    [(SBFMotionGestureController *)self _removeGestureManager];
  }
}

- (BOOL)_hasObservers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__SBFMotionGestureController__hasObservers__block_invoke;
  v4[3] = &unk_1E807FD00;
  v4[4] = &v5;
  [(SBFMotionGestureController *)self _enumerateObserversByPriority:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __44__SBFMotionGestureController_sharedInstance__block_invoke()
{
  sharedInstance_sbf_once_object_0 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (SBFMotionGestureController)init
{
  v6.receiver = self;
  v6.super_class = SBFMotionGestureController;
  v2 = [(SBFMotionGestureController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersByPriority = v2->_observersByPriority;
    v2->_observersByPriority = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(SBFMotionGestureController *)self _removeGestureManager];
  v3.receiver = self;
  v3.super_class = SBFMotionGestureController;
  [(SBFMotionGestureController *)&v3 dealloc];
}

- (void)addGestureObserver:(id)a3 withPriority:(unint64_t)a4
{
  [(SBFMotionGestureController *)self _addGestureObserver:a3 withPriority:a4];

  [(SBFMotionGestureController *)self _updateGestureManager];
}

- (void)removeGestureObserver:(id)a3
{
  [(SBFMotionGestureController *)self _removeGestureObserver:a3];

  [(SBFMotionGestureController *)self _updateGestureManager];
}

- (void)_addGestureObserver:(id)a3 withPriority:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    [(SBFMotionGestureController *)self _removeGestureObserver:v6];
    v7 = [(SBFMotionGestureController *)self _observersForPriority:a4];
    if (([v7 containsObject:v6] & 1) == 0)
    {
      v8 = SBLogMotionGesture();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(SBFMotionGestureController *)v6 _addGestureObserver:v8 withPriority:v9, v10, v11, v12, v13, v14];
      }

      [v7 addObject:v6];
    }
  }
}

- (void)_removeGestureObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__SBFMotionGestureController__removeGestureObserver___block_invoke;
    v6[3] = &unk_1E807FCD8;
    v7 = v4;
    [(SBFMotionGestureController *)self _enumerateObserversByPriority:v6];
  }
}

void __53__SBFMotionGestureController__removeGestureObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  if ([v3 containsObject:v5])
  {
    v6 = SBLogMotionGesture();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __53__SBFMotionGestureController__removeGestureObserver___block_invoke_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
    }

    [v3 removeObject:*v4];
  }
}

- (void)_notifyObserversOfGesture:(int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(SBFMotionGestureController *)self _highestPriorityObservers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (!a3)
        {
          v9 = *(*(&v11 + 1) + 8 * v8);
          v10 = SBLogMotionGesture();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v16 = v9;
            _os_log_debug_impl(&dword_1BEA11000, v10, OS_LOG_TYPE_DEBUG, "Notifying observer: %@ of raise gesture", buf, 0xCu);
          }

          [v9 didReceiveRaiseGesture];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v6);
  }
}

uint64_t __43__SBFMotionGestureController__hasObservers__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_enumerateObserversByPriority:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_observersByPriority copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SBFMotionGestureController__enumerateObserversByPriority___block_invoke;
  v7[3] = &unk_1E807FD28;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __60__SBFMotionGestureController__enumerateObserversByPriority___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  (*(v6 + 16))(v6, v7, [a2 integerValue], a4);
}

- (id)_highestPriorityObservers
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SBFMotionGestureController__highestPriorityObservers__block_invoke;
  v4[3] = &unk_1E807FD50;
  v4[4] = v11;
  v4[5] = &v5;
  [(SBFMotionGestureController *)self _enumerateObserversByPriority:v4];
  v2 = [v6[5] copy];
  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(v11, 8);

  return v2;
}

void __55__SBFMotionGestureController__highestPriorityObservers__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2;
  if ([v6 count] && *(*(*(a1 + 32) + 8) + 24) <= a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (id)_observersForPriority:(unint64_t)a3
{
  observersByPriority = self->_observersByPriority;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)observersByPriority objectForKey:v6];

  if (!v7)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v8 = self->_observersByPriority;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v8 setObject:v7 forKey:v9];
  }

  return v7;
}

- (void)_addGestureManager
{
  v3 = SBLogMotionGesture();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBFMotionGestureController *)v3 _addGestureManager:v4];
  }

  v11 = [objc_alloc(MEMORY[0x1E69634A8]) initWithPriority:3];
  motionGestureManager = self->_motionGestureManager;
  self->_motionGestureManager = v11;

  objc_initWeak(&location, self);
  v13 = self->_motionGestureManager;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__SBFMotionGestureController__addGestureManager__block_invoke;
  v14[3] = &unk_1E807FDA0;
  objc_copyWeak(&v15, &location);
  [(CMGestureManager *)v13 setGestureHandler:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __48__SBFMotionGestureController__addGestureManager__block_invoke(uint64_t a1, int a2)
{
  v3 = a2;
  objc_copyWeak(&v2, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v2);
}

void __48__SBFMotionGestureController__addGestureManager__block_invoke_2(uint64_t a1)
{
  v2 = SBLogMotionGesture();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __48__SBFMotionGestureController__addGestureManager__block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversOfGesture:*(a1 + 40)];
}

- (void)_removeGestureManager
{
  v3 = SBLogMotionGesture();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBFMotionGestureController *)v3 _removeGestureManager];
  }

  [(CMGestureManager *)self->_motionGestureManager setGestureHandler:0];
  motionGestureManager = self->_motionGestureManager;
  self->_motionGestureManager = 0;
}

@end