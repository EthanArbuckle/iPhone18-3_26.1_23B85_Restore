@interface PRUISPosterWorkspace
+ (id)workspaceForRole:(id)a3;
+ (void)noteWorkspaceInstanceSetupForScene:(id)a3 poster:(id)a4 userInfo:(id)a5;
+ (void)noteWorkspaceInstanceTeardownForScene:(id)a3 poster:(id)a4 userInfo:(id)a5;
+ (void)noteWorkspaceUpdateForScene:(id)a3 poster:(id)a4 userInfo:(id)a5;
- (NSSet)posterWorkspaceInstances;
- (PRUISPosterWorkspace)initWithRole:(id)a3;
- (id)workspaceForPoster:(id)a3;
- (id)workspaceForPosterUUID:(id)a3;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 enumerator:(id)a4;
- (void)addWorkspaceObserver:(id)a3;
- (void)noteSetupScene:(id)a3 poster:(id)a4 userInfo:(id)a5;
- (void)noteTeardownScene:(id)a3 poster:(id)a4 userInfo:(id)a5;
- (void)noteUpdateForScene:(id)a3 poster:(id)a4 userInfo:(id)a5;
- (void)removeWorkspaceObserver:(id)a3;
@end

@implementation PRUISPosterWorkspace

+ (id)workspaceForRole:(id)a3
{
  v3 = a3;
  if (PFPosterRoleIsValid())
  {
    if (workspaceForRole__onceToken != -1)
    {
      +[PRUISPosterWorkspace workspaceForRole:];
    }

    v4 = workspaceForRole____workspaceForRole;
    objc_sync_enter(v4);
    v5 = [workspaceForRole____workspaceForRole objectForKey:v3];
    if (!v5)
    {
      v5 = [[PRUISPosterWorkspace alloc] initWithRole:v3];
      [workspaceForRole____workspaceForRole setObject:v5 forKey:v3];
    }

    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __41__PRUISPosterWorkspace_workspaceForRole___block_invoke()
{
  v0 = objc_opt_new();
  workspaceForRole____workspaceForRole = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (PRUISPosterWorkspace)initWithRole:(id)a3
{
  v9.receiver = self;
  v9.super_class = PRUISPosterWorkspace;
  v3 = [(PRUISPosterWorkspace *)&v9 init];
  if (v3)
  {
    v4 = objc_opt_new();
    posterWorkspaceInstancesForIdentity = v3->_posterWorkspaceInstancesForIdentity;
    v3->_posterWorkspaceInstancesForIdentity = v4;

    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v6;
  }

  return v3;
}

- (NSSet)posterWorkspaceInstances
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(NSMutableDictionary *)v2->_posterWorkspaceInstancesForIdentity allValues];
  v5 = [v3 setWithArray:v4];

  objc_sync_exit(v2);

  return v5;
}

+ (void)noteWorkspaceUpdateForScene:(id)a3 poster:(id)a4 userInfo:(id)a5
{
  if (a3 && a4)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v12 = [v9 role];
    v11 = [a1 workspaceForRole:v12];
    [v11 noteUpdateForScene:v10 poster:v9 userInfo:v8];
  }
}

+ (void)noteWorkspaceInstanceSetupForScene:(id)a3 poster:(id)a4 userInfo:(id)a5
{
  if (a3 && a4)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v12 = [v9 role];
    v11 = [a1 workspaceForRole:v12];
    [v11 noteSetupScene:v10 poster:v9 userInfo:v8];
  }
}

+ (void)noteWorkspaceInstanceTeardownForScene:(id)a3 poster:(id)a4 userInfo:(id)a5
{
  if (a3 && a4)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v12 = [v9 role];
    v11 = [a1 workspaceForRole:v12];
    [v11 noteTeardownScene:v10 poster:v9 userInfo:v8];
  }
}

- (void)noteSetupScene:(id)a3 poster:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identity];
  if (v8)
  {
    v12 = self;
    objc_sync_enter(v12);
    v13 = [(NSMutableDictionary *)v12->_posterWorkspaceInstancesForIdentity objectForKey:v11];
    if (v13)
    {
      objc_sync_exit(v12);
    }

    else
    {
      v14 = [[__PRUISPosterWorkspaceInstance alloc] initWithScene:v8 poster:v9 userInfo:v10];
      [(NSMutableDictionary *)v12->_posterWorkspaceInstancesForIdentity setObject:v14 forKey:v11];
      objc_sync_exit(v12);

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__PRUISPosterWorkspace_noteSetupScene_poster_userInfo___block_invoke;
      v15[3] = &unk_1E83A8B60;
      v15[4] = v12;
      v13 = v14;
      v16 = v13;
      [(PRUISPosterWorkspace *)v12 _enumerateObserversRespondingToSelector:sel_posterWorkspace_didAddInstance_ enumerator:v15];
    }
  }
}

- (void)noteTeardownScene:(id)a3 poster:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identity];
  if (v8)
  {
    v12 = self;
    objc_sync_enter(v12);
    v13 = [(NSMutableDictionary *)v12->_posterWorkspaceInstancesForIdentity objectForKey:v11];
    if (v13)
    {
      [(NSMutableDictionary *)v12->_posterWorkspaceInstancesForIdentity removeObjectForKey:v11];
      objc_sync_exit(v12);

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __58__PRUISPosterWorkspace_noteTeardownScene_poster_userInfo___block_invoke;
      v14[3] = &unk_1E83A8B60;
      v14[4] = v12;
      v15 = v13;
      [(PRUISPosterWorkspace *)v12 _enumerateObserversRespondingToSelector:sel_posterWorkspace_didRemoveInstance_ enumerator:v14];
    }

    else
    {
      objc_sync_exit(v12);
    }
  }
}

- (void)noteUpdateForScene:(id)a3 poster:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identity];
  if (v8)
  {
    v12 = self;
    objc_sync_enter(v12);
    v13 = [(NSMutableDictionary *)v12->_posterWorkspaceInstancesForIdentity objectForKey:v11];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 updatePoster:v9 userInfo:v10];
      objc_sync_exit(v12);

      if (v15)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __59__PRUISPosterWorkspace_noteUpdateForScene_poster_userInfo___block_invoke;
        v16[3] = &unk_1E83A8B60;
        v16[4] = v12;
        v17 = v14;
        [(PRUISPosterWorkspace *)v12 _enumerateObserversRespondingToSelector:sel_posterWorkspace_didUpdateInstance_ enumerator:v16];
      }
    }

    else
    {
      objc_sync_exit(v12);
    }
  }
}

- (id)workspaceForPosterUUID:(id)a3
{
  v4 = a3;
  v5 = [(PRUISPosterWorkspace *)self posterWorkspaceInstances];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PRUISPosterWorkspace_workspaceForPosterUUID___block_invoke;
  v9[3] = &unk_1E83A8B88;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __47__PRUISPosterWorkspace_workspaceForPosterUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 poster];
  v4 = [v3 _path];
  v5 = [v4 serverIdentity];
  v6 = [v5 posterUUID];
  v7 = [v6 isEqual:*(a1 + 32)];

  return v7;
}

- (id)workspaceForPoster:(id)a3
{
  v4 = [a3 _path];
  v5 = [v4 serverIdentity];

  v6 = [(PRUISPosterWorkspace *)self posterWorkspaceInstances];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__PRUISPosterWorkspace_workspaceForPoster___block_invoke;
  v10[3] = &unk_1E83A8B88;
  v11 = v5;
  v7 = v5;
  v8 = [v6 bs_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __43__PRUISPosterWorkspace_workspaceForPoster___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 poster];
  v4 = [v3 _path];
  v5 = [v4 serverIdentity];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

- (void)addWorkspaceObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeWorkspaceObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 enumerator:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_opt_new();
  v7 = self->_observers;
  objc_sync_enter(v7);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v6 addObject:v12];
        }
      }

      v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  v15 = v5;
  v13 = v5;
  v14 = v6;
  BSDispatchMain();
}

void __75__PRUISPosterWorkspace__enumerateObserversRespondingToSelector_enumerator___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end