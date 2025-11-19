@interface PRSWallpaperPublisher
- (PRSWallpaperPublisher)init;
- (PRSWallpaperPublisherDelegate)delegate;
- (id)_lock_buildActivePosterObserverUpdatesForClient:(id)a3 updatedRoles:(id)a4 clientSpecificSuggestionsToPosterUUID:(id)a5;
- (id)_lock_buildPosterCollectionUpdatesForClient:(id)a3 role:(id)a4 updatedPosterCollection:(id)a5;
- (id)_lock_descriptionIfInvalidPaths:(const void *)a3;
- (void)_initializeClient:(id)a3;
- (void)_initializeClient:(id)a3 withKnownIdentities:(id)a4 knownRoles:(id)a5 knownCollection:(id)a6;
- (void)_lock_activateClientsIfNeeded;
- (void)_lock_issuePosterCollectionUpdate:(id)a3;
- (void)_lock_issueUpdateForRoles:(id)a3 suggestionsToPosterUUID:(id)a4;
- (void)_lock_noteChanged:(unint64_t)a3;
- (void)_lock_noteSnapshotUpdateForPath:(id)a3 snapshotType:(id)a4;
- (void)_lock_sendStateToClient:(id)a3;
- (void)initializePosterCollectionForRoles:(id)a3;
- (void)initializeRoles:(id)a3 suggestions:(id)a4;
- (void)initializeWithPaths:(const void *)a3 recentlyChanged:(unint64_t)a4;
- (void)issuePosterCollectionUpdate:(id)a3;
- (void)issueUpdateForRoles:(id)a3 suggestions:(id)a4;
- (void)issueUpdateForSuggestions:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)noteSnapshotUpdateForPath:(id)a3 snapshotType:(id)a4;
- (void)setDelegate:(id)a3;
- (void)updatePaths:(const void *)a3;
@end

@implementation PRSWallpaperPublisher

- (PRSWallpaperPublisher)init
{
  v19.receiver = self;
  v19.super_class = PRSWallpaperPublisher;
  v2 = [(PRSWallpaperPublisher *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E698F4B8];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __29__PRSWallpaperPublisher_init__block_invoke;
    v17[3] = &unk_1E818CF10;
    v5 = v2;
    v18 = v5;
    v6 = [v4 listenerWithConfigurator:v17];
    listener = v5->_listener;
    v5->_listener = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    lock_clients = v5->_lock_clients;
    v5->_lock_clients = v8;

    memset_pattern16(v5->_lock_changeVersionTimestamps, &unk_1C274F410, 0x20uLL);
    v10 = vdupq_n_s64(1uLL);
    *v5->_lock_changeVersions = v10;
    *&v5->_lock_changeVersions[2] = v10;
    v11 = objc_opt_new();
    lock_roleToPath = v5->_lock_roleToPath;
    v5->_lock_roleToPath = v11;

    v13 = objc_opt_new();
    lock_roleToPosterCollections = v5->_lock_roleToPosterCollections;
    v5->_lock_roleToPosterCollections = v13;

    lock_posterUUIDToSuggestionDescriptorPaths = v5->_lock_posterUUIDToSuggestionDescriptorPaths;
    v5->_lock_posterUUIDToSuggestionDescriptorPaths = MEMORY[0x1E695E0F8];

    [(BSServiceConnectionListener *)v5->_listener activate];
  }

  return v3;
}

void __29__PRSWallpaperPublisher_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setDomain:@"com.apple.posterboardservices"];
  v3 = PRSWallpaperObserverInterface();
  v4 = [v3 identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

- (PRSWallpaperPublisherDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_delegate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_delegate = self->_lock_delegate;
  self->_lock_delegate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_descriptionIfInvalidPaths:(const void *)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = a3[v6];
    if (!v8)
    {
      break;
    }

    v9 = [v8 identity];
    v10 = [v9 posterUUID];

    v11 = [v5 objectForKey:v10];
    v12 = v11;
    v13 = a3[v6];
    if (v11)
    {
      if (v11 != v13)
      {

        break;
      }
    }

    else
    {
      [v5 setObject:v13 forKey:v10];
    }

    v7 = v6++ > 2;
  }

  while (v6 != 4);
  v14 = 0;
  lock_paths = self->_lock_paths;
  do
  {
    v16 = lock_paths[v14];
    if (v16)
    {
      v17 = [(PFServerPosterPath *)v16 identity];
      v18 = [v17 posterUUID];

      v19 = [v5 objectForKey:v18];
      v20 = v19;
      if (v19)
      {
        if (v19 != lock_paths[v14])
        {
          v21 = [(PFServerPosterPath *)v19 identity];
          [(PFServerPosterPath *)lock_paths[v14] identity];
          v23 = v22 = v5;
          v24 = [v21 isNewerVersionOfIdentity:v23];

          v5 = v22;
          if (!v24)
          {

            goto LABEL_18;
          }
        }
      }
    }

    ++v14;
  }

  while (v14 != 4);
  if (v7)
  {
    v25 = 0;
    goto LABEL_29;
  }

LABEL_18:
  v47 = v5;
  v25 = [MEMORY[0x1E696AD60] stringWithString:@"received invalid paths: {"];
  for (i = 0; i != 4; ++i)
  {
    v27 = a3[i];
    v28 = PRSWallpaperObserverLocationsFromIndex(i);
    v29 = PRSWallpaperObserverLocationsDescription(v28);
    if (v27)
    {
      v30 = a3[i];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = a3[i];
      v34 = [v33 identity];
      [v25 appendFormat:@"\n %i-%@: <%@:%p %@>", i, v29, v32, v33, v34];
    }

    else
    {
      v35 = objc_opt_class();
      v32 = NSStringFromClass(v35);
      [v25 appendFormat:@"\n %i-%@: <%@:nil ->", i, v29, v32];
    }
  }

  [v25 appendString:@"\n}\ncompared to previous: {"];
  for (j = 0; j != 4; ++j)
  {
    v37 = lock_paths[j];
    v38 = PRSWallpaperObserverLocationsFromIndex(j);
    v39 = PRSWallpaperObserverLocationsDescription(v38);
    if (v37)
    {
      v40 = lock_paths[j];
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = lock_paths[j];
      v44 = [(PFServerPosterPath *)v43 identity];
      [v25 appendFormat:@"\n %i-%@: <%@:%p %@>", j, v39, v42, v43, v44];
    }

    else
    {
      v45 = objc_opt_class();
      v42 = NSStringFromClass(v45);
      [v25 appendFormat:@"\n %i-%@: <%@:nil ->", j, v39, v42];
    }
  }

  [v25 appendString:@"\n}"];
  v5 = v47;
LABEL_29:

  return v25;
}

- (void)initializeWithPaths:(const void *)a3 recentlyChanged:(unint64_t)a4
{
  if (!a3)
  {
    [PRSWallpaperPublisher initializeWithPaths:a2 recentlyChanged:?];
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(PRSWallpaperPublisher *)self _lock_descriptionIfInvalidPaths:a3];
  if (v7)
  {
    v9 = v7;
    os_unfair_lock_unlock(&self->_lock);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v9];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperPublisher initializeWithPaths:recentlyChanged:];
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
  }

  else
  {
    [(PRSWallpaperPublisher *)self _lock_activateClientsIfNeeded];
    for (i = 0; i != 4; ++i)
    {
      objc_storeStrong(&self->_lock_paths[i], a3[i]);
    }

    [(PRSWallpaperPublisher *)self _lock_noteChanged:a4];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)initializeRoles:(id)a3 suggestions:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (!v9)
  {
    [PRSWallpaperPublisher initializeRoles:a2 suggestions:?];
  }

  if (!v7)
  {
    [PRSWallpaperPublisher initializeRoles:a2 suggestions:?];
  }

  os_unfair_lock_lock(&self->_lock);
  [(PRSWallpaperPublisher *)self _lock_activateClientsIfNeeded];
  [(NSMutableDictionary *)self->_lock_roleToPath removeAllObjects];
  lock_posterUUIDToSuggestionDescriptorPaths = self->_lock_posterUUIDToSuggestionDescriptorPaths;
  self->_lock_posterUUIDToSuggestionDescriptorPaths = MEMORY[0x1E695E0F8];

  [(PRSWallpaperPublisher *)self _lock_issueUpdateForRoles:v9 suggestionsToPosterUUID:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)updatePaths:(const void *)a3
{
  if (!a3)
  {
    [PRSWallpaperPublisher updatePaths:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(PRSWallpaperPublisher *)self _lock_descriptionIfInvalidPaths:a3];
  if (v5)
  {
    v9 = v5;
    os_unfair_lock_unlock(&self->_lock);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v9];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperPublisher updatePaths:];
    }

LABEL_19:
    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C271D738);
  }

  if (!self->_lock_activated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v10 = [v11 stringWithFormat:@"<%@:%p> received multi-update before activation", v13, self];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperPublisher updatePaths:];
    }

    goto LABEL_19;
  }

  v6 = 0;
  v7 = 0;
  lock_paths = self->_lock_paths;
  do
  {
    if (*lock_paths != a3[v6])
    {
      v7 |= PRSWallpaperObserverLocationsFromIndex(v6);
      objc_storeStrong(lock_paths, a3[v6]);
    }

    ++v6;
    ++lock_paths;
  }

  while (v6 != 4);
  if (v7)
  {
    [(PRSWallpaperPublisher *)self _lock_noteChanged:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)issueUpdateForRoles:(id)a3 suggestions:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(PRSWallpaperPublisher *)self _lock_activateClientsIfNeeded];
  [(PRSWallpaperPublisher *)self _lock_issueUpdateForRoles:v7 suggestionsToPosterUUID:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)issueUpdateForSuggestions:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(PRSWallpaperPublisher *)self _lock_activateClientsIfNeeded];
  [(PRSWallpaperPublisher *)self _lock_issueUpdateForRoles:self->_lock_roleToPath suggestionsToPosterUUID:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)noteSnapshotUpdateForPath:(id)a3 snapshotType:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (!v8)
  {
    [PRSWallpaperPublisher noteSnapshotUpdateForPath:a2 snapshotType:?];
  }

  os_unfair_lock_lock(&self->_lock);
  [(PRSWallpaperPublisher *)self _lock_activateClientsIfNeeded];
  [(PRSWallpaperPublisher *)self _lock_noteSnapshotUpdateForPath:v8 snapshotType:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)initializePosterCollectionForRoles:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSWallpaperPublisher initializePosterCollectionForRoles:a2];
  }

  v6 = v5;
  os_unfair_lock_lock(&self->_lock);
  [(PRSWallpaperPublisher *)self _lock_activateClientsIfNeeded];
  [(NSMutableDictionary *)self->_lock_roleToPosterCollections removeAllObjects];
  [(PRSWallpaperPublisher *)self _lock_issuePosterCollectionUpdate:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)issuePosterCollectionUpdate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(PRSWallpaperPublisher *)self _lock_activateClientsIfNeeded];
  [(PRSWallpaperPublisher *)self _lock_issuePosterCollectionUpdate:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 remoteProcess];
  if ([v10 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"])
  {
    objc_initWeak(&location, self);
    v11 = objc_opt_class();
    v39 = NSStringFromClass(v11);
    v12 = objc_opt_new();
    objc_storeWeak((v12 + 8), self);
    objc_storeStrong((v12 + 16), a4);
    *(v12 + 113) = [v9 decodeBoolForKey:@"needsSandboxExtensions"];
    *(v12 + 104) = [v9 decodeUInt64ForKey:@"observedLocations"] & 0xF;
    *(v12 + 114) = [v9 decodeBoolForKey:@"snapshotObservation"];
    *(v12 + 115) = *(v12 + 104) != 0;
    v13 = [v9 decodeBoolForKey:@"collectionObserving"];
    *(v12 + 153) = v13;
    if (v13)
    {
      *(v12 + 152) = [v9 decodeBoolForKey:@"collectionObservingNeedsSandboxExtensions"];
      v14 = objc_opt_self();
      v15 = [v9 decodeObjectOfClass:v14 forKey:@"collectionObservingRole"];
      v16 = *(v12 + 144);
      *(v12 + 144) = v15;
    }

    v17 = [v9 decodeBoolForKey:@"roleObservation"];
    *(v12 + 129) = v17;
    if (v17)
    {
      *(v12 + 128) = [v9 decodeBoolForKey:@"observedRolesNeedSandboxExtensions"];
      v18 = objc_opt_self();
      v19 = objc_opt_self();
      v20 = [v9 decodeCollectionOfClass:v18 containingClass:v19 forKey:@"observedRoles"];
      v21 = *(v12 + 120);
      *(v12 + 120) = v20;
    }

    v22 = [v9 decodeStringForKey:@"explanation"];
    v23 = __clientDescription(v10, v22, v8, *(v12 + 104));
    v24 = *(v12 + 32);
    *(v12 + 32) = v23;

    v38 = v23;
    if ((*(v12 + 115) & 1) != 0 || (*(v12 + 114) & 1) != 0 || (*(v12 + 129) & 1) != 0 || *(v12 + 153) == 1)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __67__PRSWallpaperPublisher_listener_didReceiveConnection_withContext___block_invoke;
      v41[3] = &unk_1E818D348;
      v25 = v12;
      v42 = v25;
      objc_copyWeak(&v46, &location);
      v26 = v39;
      v43 = v26;
      v44 = self;
      v27 = v38;
      v45 = v27;
      [v8 configureConnection:v41];
      v28 = PRSLogObserver();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v49 = v26;
        v50 = 2048;
        v51 = self;
        v52 = 2114;
        v53 = v27;
        _os_log_impl(&dword_1C26FF000, v28, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> client %{public}@ connected", buf, 0x20u);
      }

      os_unfair_lock_lock(&self->_lock);
      [(NSMutableSet *)self->_lock_clients addObject:v25];
      if (self->_lock_activated)
      {
        [v8 activate];
        v29 = [v8 remoteTarget];
        v30 = v25[3];
        v25[3] = v29;
      }

      v31 = self->_lock_delegate;
      os_unfair_lock_unlock(&self->_lock);
      [(PRSWallpaperPublisherDelegate *)v31 wallpaperPublisherDidReceiveObserverConnection];

      objc_destroyWeak(&v46);
    }

    else
    {
      v37 = PRSLogObserver();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v49 = v39;
        v50 = 2048;
        v51 = self;
        v52 = 2114;
        v53 = v38;
        _os_log_impl(&dword_1C26FF000, v37, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> rejecting client %{public}@ that doesn't want to observe anything", buf, 0x20u);
      }

      [v8 invalidate];
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v32 = PRSLogObserver();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = __clientDescription(v10, @"?", v8, 0);
      *buf = 138543874;
      v49 = v34;
      v50 = 2048;
      v51 = self;
      v52 = 2114;
      v53 = v35;
      _os_log_impl(&dword_1C26FF000, v32, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> rejecting client %{public}@ that isn't entitled", buf, 0x20u);
    }

    [v8 invalidate];
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __67__PRSWallpaperPublisher_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSDefaultServiceQuality();
  [v3 setServiceQuality:v4];

  v5 = PRSWallpaperObserverInterface();
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__PRSWallpaperPublisher_listener_didReceiveConnection_withContext___block_invoke_2;
  v10[3] = &unk_1E818D320;
  objc_copyWeak(&v13, (a1 + 64));
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v7 = v9.i64[1];
  v8.i64[0] = *(a1 + 32);
  v8.i64[1] = v6;
  v12 = vextq_s8(v9, v8, 8uLL);
  v11 = vextq_s8(v8, v9, 8uLL);
  [v3 setInvalidationHandler:v10];

  objc_destroyWeak(&v13);
}

void __67__PRSWallpaperPublisher_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = PRSLogObserver();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 138543874;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1C26FF000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> client %{public}@ invalidated remotely", &v8, 0x20u);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 38);
    [*(WeakRetained + 14) removeObject:*(a1 + 56)];
    os_unfair_lock_unlock(WeakRetained + 38);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_initializeClient:(id)a3 withKnownIdentities:(id)a4 knownRoles:(id)a5 knownCollection:(id)a6
{
  v130 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSMutableSet *)self->_lock_clients containsObject:v10])
  {
    goto LABEL_90;
  }

  v99 = v10;
  v100 = self;
  v94 = v11;
  v95 = v13;
  v93 = v12;
  if (*(v10 + 115) == 1)
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    obj = v11;
    v14 = [obj countByEnumeratingWithState:&v115 objects:v129 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v116;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v116 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v115 + 1) + 8 * i);
          v19 = [v18 identity];
          if (v19)
          {
            v20 = v99[13] & [v18 locations];
            if (v20)
            {
              v109[0] = MEMORY[0x1E69E9820];
              v109[1] = 3221225472;
              v110 = __90__PRSWallpaperPublisher__initializeClient_withKnownIdentities_knownRoles_knownCollection___block_invoke;
              v111 = &unk_1E818D370;
              v112 = v19;
              v113 = self;
              v114 = v99;
              v21 = v109;
              v22 = 0;
              buf[0] = 0;
              v23 = vcnt_s8(v20);
              v23.i16[0] = vaddlv_u8(v23);
              v24 = v23.i32[0];
              do
              {
                if (((1 << v22) & v20) != 0)
                {
                  v110(v21);
                  if (buf[0])
                  {
                    break;
                  }

                  --v24;
                }

                if (v22 > 0x3E)
                {
                  break;
                }

                ++v22;
              }

              while (v24 > 0);

              self = v100;
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v115 objects:v129 count:16];
      }

      while (v15);
    }

    BSAbsoluteMachTimeNow();
    lock_changeVersions = self->_lock_changeVersions;
    v10 = v99;
    v27 = v99 + 9;
    v28 = 4;
    v11 = v94;
    do
    {
      v29 = *(lock_changeVersions - 8) + 1.0;
      v30 = *lock_changeVersions++;
      *v27++ = v30 - (v25 <= v29);
      --v28;
    }

    while (v28);
  }

  if (*(v10 + 129) == 1 && [v12 count])
  {
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v31 = v12;
    v32 = [v31 countByEnumeratingWithState:&v105 objects:v128 count:16];
    if (v32)
    {
      v33 = v32;
      v96 = 0;
      v34 = *v106;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v106 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v105 + 1) + 8 * j);
          v37 = [v36 role];
          v38 = [(NSMutableDictionary *)self->_lock_roleToPath objectForKey:v37];
          v39 = [v38 serverIdentity];
          v40 = [v39 posterUUID];

          if (v40)
          {
            v41 = [v36 suggestionDescriptors];
            v42 = [(NSDictionary *)self->_lock_posterUUIDToSuggestionDescriptorPaths objectForKey:v40];
            if ((BSEqualArrays() & 1) == 0)
            {
              if (!v96)
              {
                v96 = objc_opt_new();
              }

              if ([v42 count])
              {
                v43 = [v42 copy];
                [v96 setObject:v43 forKeyedSubscript:v40];

                self = v100;
              }

              else
              {
                [v96 removeObjectForKey:v40];
              }
            }
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v105 objects:v128 count:16];
      }

      while (v33);
    }

    else
    {
      v96 = 0;
    }

    v12 = v93;
    v11 = v94;
    v13 = v95;
    v10 = v99;
  }

  else
  {
    v96 = 0;
  }

  if (*(v10 + 129) == 1)
  {
    if ([v12 count])
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v44 = v12;
      v45 = [v44 countByEnumeratingWithState:&v101 objects:v127 count:16];
      if (v45)
      {
        v46 = v45;
        obja = 0;
        v47 = *v102;
        do
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v102 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v101 + 1) + 8 * k);
            v50 = [v49 role];
            v51 = [v49 activePath];
            v52 = [(NSMutableDictionary *)self->_lock_roleToPath objectForKey:v50];
            v53 = [v51 identity];
            v54 = [v52 identity];
            v55 = [v53 isEqual:v54];

            if (v55)
            {
              self = v100;
            }

            else
            {
              v56 = obja;
              if (!obja)
              {
                v56 = objc_opt_new();
              }

              self = v100;
              v57 = [(NSMutableDictionary *)v100->_lock_roleToPath objectForKey:v50];
              obja = v56;
              [v56 setObject:v57 forKeyedSubscript:v50];
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v101 objects:v127 count:16];
        }

        while (v46);
      }

      else
      {
        obja = 0;
      }

      v10 = v99;
      v12 = v93;
      v11 = v94;
      v13 = v95;
    }

    else
    {
      obja = [(NSMutableDictionary *)self->_lock_roleToPath mutableCopy];
    }
  }

  else
  {
    obja = 0;
  }

  if (*(v10 + 153) != 1)
  {
    goto LABEL_71;
  }

  if (!v13)
  {
    v61 = [(NSMutableDictionary *)self->_lock_roleToPosterCollections objectForKeyedSubscript:*(v10 + 18)];
    goto LABEL_66;
  }

  v58 = [v13 posterCollection];
  v59 = [v58 count];
  v60 = [*(v10 + 17) count];

  if (v59 != v60)
  {
    if ([*(v10 + 17) count])
    {
      v63 = 0;
      do
      {
        v64 = [*(v10 + 17) objectAtIndexedSubscript:v63];
        v65 = [v13 posterCollection];
        v66 = [v65 objectAtIndex:v63];

        v67 = [v64 serverIdentity];
        v68 = [v66 serverIdentity];
        v69 = [v67 isEqual:v68];

        self = v100;
        if ((v69 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      while (++v63 < [*(v10 + 17) count]);
    }

LABEL_71:
    v62 = 0;
    goto LABEL_72;
  }

LABEL_64:
  v61 = *(v10 + 17);
LABEL_66:
  v62 = v61;
LABEL_72:
  *(v10 + 112) = 1;
  if (*(v10 + 115) == 1)
  {
    [(PRSWallpaperPublisher *)self _lock_sendStateToClient:v10];
  }

  if (*(v10 + 129) == 1)
  {
    if ([obja count] || objc_msgSend(v96, "count"))
    {
      v70 = PRSLogObserver();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = objc_opt_class();
        v72 = NSStringFromClass(v71);
        v73 = v10;
        v74 = *(v10 + 4);
        v75 = [obja allKeys];
        *buf = 138544130;
        v120 = v72;
        v121 = 2048;
        v122 = v100;
        v123 = 2114;
        v124 = v74;
        v10 = v73;
        self = v100;
        v125 = 2114;
        v126 = v75;
        _os_log_impl(&dword_1C26FF000, v70, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> issuing initial update to client %{public}@; data was stale for roles %{public}@", buf, 0x2Au);
      }

      v76 = *(v10 + 3);
      v77 = [(PRSWallpaperPublisher *)self _lock_buildActivePosterObserverUpdatesForClient:v10 updatedRoles:obja clientSpecificSuggestionsToPosterUUID:v96];
      [v76 notifyRoleActivePosterUpdates:v77];
    }

    else
    {
      v77 = PRSLogObserver();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v90 = objc_opt_class();
        v91 = NSStringFromClass(v90);
        v92 = *(v10 + 4);
        *buf = 138543874;
        v120 = v91;
        v121 = 2048;
        v122 = self;
        v123 = 2114;
        v124 = v92;
        _os_log_impl(&dword_1C26FF000, v77, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> bailing on initial update to client %{public}@; data was up-to-date", buf, 0x20u);
      }
    }
  }

  if (*(v10 + 153) == 1)
  {
    v78 = [v62 count];
    v79 = PRSLogObserver();
    v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
    if (v78)
    {
      if (v80)
      {
        v81 = objc_opt_class();
        v82 = NSStringFromClass(v81);
        v83 = *(v10 + 4);
        v84 = *(v10 + 18);
        *buf = 138544130;
        v120 = v82;
        v121 = 2048;
        v122 = self;
        v123 = 2114;
        v124 = v83;
        v125 = 2114;
        v126 = v84;
        _os_log_impl(&dword_1C26FF000, v79, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> issuing initial update to client %{public}@; data was stale for poster collection role %{public}@", buf, 0x2Au);
      }

      v85 = *(v10 + 3);
      v79 = [(PRSWallpaperPublisher *)self _lock_buildPosterCollectionUpdatesForClient:v10 role:*(v10 + 18) updatedPosterCollection:v62];
      [v85 notifyRolePosterCollectionUpdates:v79];
    }

    else if (v80)
    {
      v86 = objc_opt_class();
      v87 = NSStringFromClass(v86);
      v88 = *(v10 + 4);
      *buf = 138543874;
      v120 = v87;
      v121 = 2048;
      v122 = self;
      v123 = 2114;
      v124 = v88;
      _os_log_impl(&dword_1C26FF000, v79, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> bailing on initial update to client %{public}@ for known poster collection; data was up-to-date", buf, 0x20u);
    }

    v13 = v95;
  }

  [*(v10 + 3) notifyInitialUpdatesComplete];

LABEL_90:
  os_unfair_lock_unlock(&self->_lock);

  v89 = *MEMORY[0x1E69E9840];
}

void __90__PRSWallpaperPublisher__initializeClient_withKnownIdentities_knownRoles_knownCollection___block_invoke(void *a1, uint64_t a2)
{
  v3 = PRSWallpaperObserverLocationsToIndex(a2);
  v4 = a1[4];
  v5 = [*(a1[5] + 8 * v3 + 40) identity];
  LODWORD(v4) = [v4 isEqual:v5];

  if (v4)
  {
    v6 = *(a1[5] + 8 * v3 + 40);
    v7 = (a1[6] + 8 * v3 + 40);

    objc_storeStrong(v7, v6);
  }
}

- (void)_initializeClient:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableSet *)self->_lock_clients containsObject:v4])
  {
    v4[112] = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_sendStateToClient:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v5[115] != 1)
  {
    [PRSWallpaperPublisher _lock_sendStateToClient:a2];
  }

  v6 = 0;
  v45 = 0;
  v7 = 0;
  v8 = 4;
  do
  {
    v9 = PRSWallpaperObserverLocationsFromIndex(v6);
    if ((v9 & ~*(v5 + 13)) != 0)
    {
      goto LABEL_8;
    }

    v10 = &self->super.isa + v6;
    v11 = v10[9];
    v12 = &v5[8 * v6];
    if (v11 == v12[9])
    {
      if (v12[5] == v10[5])
      {
        goto LABEL_8;
      }

      if (!v7)
      {
LABEL_11:
        v7 = [MEMORY[0x1E695DFA8] setWithCapacity:v8];
      }
    }

    else
    {
      v12[9] = v11;
      v45 |= v9;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    [v7 addObject:v10[5]];
LABEL_8:
    ++v6;
    --v8;
  }

  while (v6 != 4);
  if ([v7 count])
  {
    v13 = 0;
    v51 = 0;
    memset(v68, 0, 32);
    do
    {
      v14 = *&v5[v13 + 40];
      if (v14)
      {
        objc_storeStrong(&v68[v51++], v14);
      }

      v13 += 8;
    }

    while (v13 != 32);
    v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v42 = v7;
    obj = v7;
    v15 = v45;
    v16 = (v5 + 40);
    v50 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
    if (v50)
    {
      v48 = *v54;
      do
      {
        v17 = 0;
        do
        {
          if (*v54 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v18 = 0;
          v19 = 0;
          v20 = *(*(&v53 + 1) + 8 * v17);
          v21 = v16;
          do
          {
            v22 = PRSWallpaperObserverLocationsFromIndex(v18);
            if ((v22 & ~*(v5 + 13)) == 0 && self->_lock_paths[v18] == v20)
            {
              v19 |= v22;
              objc_storeStrong(v21, v20);
            }

            ++v18;
            ++v21;
          }

          while (v18 != 4);
          if (v51 < 1)
          {
LABEL_31:
            v25 = objc_opt_new();
            if (v5[113] == 1)
            {
              v26 = [*(v5 + 2) remoteProcess];
              v27 = [v26 auditToken];
              v28 = v27;
              if (v27 && ([v27 isInvalid] & 1) == 0)
              {
                v52 = 0;
                v30 = [(PFServerPosterPath *)v20 extendContentsReadAccessToAuditToken:v28 error:&v52];
                v46 = v52;
                if (v30)
                {
                  [v25 setPath:v30];
                }

                else
                {
                  v31 = PRSLogObserver();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    v34 = objc_opt_class();
                    v44 = NSStringFromClass(v34);
                    v43 = [(PFServerPosterPath *)v20 identity];
                    v35 = *(v5 + 4);
                    *buf = 138544386;
                    v58 = v44;
                    v59 = 2048;
                    v60 = self;
                    v61 = 2114;
                    v62 = v43;
                    v63 = 2114;
                    v64 = v35;
                    v65 = 2114;
                    v66 = v28;
                    _os_log_error_impl(&dword_1C26FF000, v31, OS_LOG_TYPE_ERROR, "<%{public}@:%p> failed to prepare update of %{public}@ for client %{public}@ due to bad auditToken %{public}@", buf, 0x34u);
                  }
                }

                v32 = [v25 path];

                if (!v32)
                {
                  [v25 setPath:v20];
                }

                v15 = v45;
              }

              else
              {
                [v25 setPath:v20];
              }

              v16 = (v5 + 40);
            }

            [v25 setChanged:v19 & v15];
            v33 = [v25 path];

            if (!v33)
            {
              [v25 setPath:v20];
            }
          }

          else
          {
            v23 = v68;
            v24 = v51;
            while (v20 != *v23)
            {
              ++v23;
              if (!--v24)
              {
                goto LABEL_31;
              }
            }

            v25 = objc_opt_new();
            v29 = [(PFServerPosterPath *)v20 identity];
            [v25 setIdentity:v29];
          }

          [v25 setLocations:v19];
          [v49 addObject:v25];

          ++v17;
        }

        while (v17 != v50);
        v50 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
      }

      while (v50);
    }

    v36 = PRSLogObserver();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = *(v5 + 4);
      *buf = 138544130;
      v58 = v38;
      v59 = 2048;
      v60 = self;
      v61 = 2114;
      v62 = v39;
      v63 = 2114;
      v64 = v49;
      _os_log_impl(&dword_1C26FF000, v36, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> notifying client %{public}@ of updates=%{public}@", buf, 0x2Au);
    }

    [*(v5 + 3) notifyWallpaperUpdates:v49];
    v40 = 3;
    v7 = v42;
    do
    {
    }

    while (v40 != -1);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)_lock_noteChanged:(unint64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (a3)
  {
    BSAbsoluteMachTimeNow();
    v6 = v5;
    lock_changeVersions = self->_lock_changeVersions;
    v8 = -4;
    do
    {
      if ((PRSWallpaperObserverLocationsFromIndex((v8 + 4)) & ~a3) == 0)
      {
        ++*lock_changeVersions;
        *(lock_changeVersions - 8) = v6;
      }

      ++lock_changeVersions;
    }

    while (!__CFADD__(v8++, 1));
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_lock_clients;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (*(v15 + 112) == 1 && *(v15 + 115) == 1)
        {
          [(PRSWallpaperPublisher *)self _lock_sendStateToClient:v17];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_lock_noteSnapshotUpdateForPath:(id)a3 snapshotType:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v20 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_lock_clients;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v22 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (*(v12 + 112) == 1 && *(v12 + 114) == 1)
        {
          if (!v9)
          {
            v9 = [[PRSWallpaperObserverSnapshotUpdate alloc] initWithPath:v21 snapshotType:v20];
          }

          v13 = PRSLogObserver();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = *(v12 + 32);
            *buf = 138544130;
            v28 = v15;
            v29 = 2048;
            v30 = self;
            v31 = 2114;
            v32 = v16;
            v33 = 2114;
            v34 = v9;
            _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> notifying client %{public}@ of snapshot updates=%{public}@", buf, 0x2Au);
          }

          v17 = *(v12 + 24);
          v26 = v9;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
          [v17 notifySnapshotUpdates:v18];
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v22 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_lock_issueUpdateForRoles:(id)a3 suggestionsToPosterUUID:(id)a4
{
  v113 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v68 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v75 = self;
  if (!self->_lock_activated)
  {
    v64 = MEMORY[0x1E696AEC0];
    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    v67 = [v64 stringWithFormat:@"<%@:%p> received multi-update before role activation", v66, v75];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperPublisher _lock_issueUpdateForRoles:suggestionsToPosterUUID:];
    }

    [v67 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C271FF20);
  }

  v76 = objc_opt_new();
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v7 = [v6 keyEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v96 objects:v112 count:16];
  v74 = v6;
  if (v8)
  {
    v9 = v8;
    v10 = *v97;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v97 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v96 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];
        v14 = [(NSMutableDictionary *)v75->_lock_roleToPath objectForKeyedSubscript:v12];
        v15 = [v14 serverIdentity];
        v16 = [v13 serverIdentity];
        v17 = [v15 isEqual:v16];

        if ((v17 & 1) == 0)
        {
          [(NSMutableDictionary *)v75->_lock_roleToPath setObject:v13 forKeyedSubscript:v12];
          [v76 setObject:v13 forKey:v12];
        }

        v6 = v74;
      }

      v9 = [v7 countByEnumeratingWithState:&v96 objects:v112 count:16];
    }

    while (v9);
  }

  v78 = objc_opt_new();
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v18 = [(NSMutableDictionary *)v75->_lock_roleToPath objectEnumerator];
  v19 = [v18 countByEnumeratingWithState:&v92 objects:v111 count:16];
  v20 = v68;
  if (v19)
  {
    v21 = v19;
    v22 = *v93;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v93 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v92 + 1) + 8 * j);
        v25 = [v24 serverIdentity];
        v26 = [v25 posterUUID];

        [v78 setObject:v24 forKeyedSubscript:v26];
      }

      v21 = [v18 countByEnumeratingWithState:&v92 objects:v111 count:16];
    }

    while (v21);
  }

  v73 = [(NSDictionary *)v75->_lock_posterUUIDToSuggestionDescriptorPaths isEqual:v68];
  if ((v73 & 1) == 0)
  {
    v27 = [v68 copy];
    lock_posterUUIDToSuggestionDescriptorPaths = v75->_lock_posterUUIDToSuggestionDescriptorPaths;
    v75->_lock_posterUUIDToSuggestionDescriptorPaths = v27;
  }

  v77 = objc_opt_new();
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v29 = v78;
  v30 = [v78 keyEnumerator];
  v31 = [v30 countByEnumeratingWithState:&v88 objects:v110 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v89;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v89 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v88 + 1) + 8 * k);
        v36 = [v78 objectForKeyedSubscript:v35];
        v37 = [v68 objectForKeyedSubscript:v35];
        if (v37)
        {
          [v77 setObject:v37 forKeyedSubscript:v35];
        }

        v38 = [v36 role];
        v39 = [v76 objectForKey:v38];

        if (!v39)
        {
          [v76 setObject:v36 forKey:v38];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v88 objects:v110 count:16];
    }

    while (v32);
  }

  if ([v76 count])
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v75->_lock_clients;
    v40 = [(NSMutableSet *)obj countByEnumeratingWithState:&v84 objects:v109 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v85;
      v71 = *v85;
      do
      {
        v43 = 0;
        v69 = v41;
        do
        {
          if (*v85 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v84 + 1) + 8 * v43);
          if (v73)
          {
            v45 = 0;
          }

          else
          {
            v72 = v43;
            v45 = objc_opt_new();
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v79 = [v77 keyEnumerator];
            v46 = [v79 countByEnumeratingWithState:&v80 objects:v108 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v81;
              do
              {
                for (m = 0; m != v47; ++m)
                {
                  if (*v81 != v48)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v50 = *(*(&v80 + 1) + 8 * m);
                  v51 = [v29 objectForKey:v50];
                  v52 = [v51 role];
                  if ([*(v44 + 120) containsObject:v52])
                  {
                    v53 = [v77 objectForKey:v50];
                    v54 = v45;
                    v55 = v53;
                    v56 = MEMORY[0x1E695E0F0];
                    if (v53)
                    {
                      v56 = v53;
                    }

                    v57 = v56;

                    v45 = v54;
                    [v54 setObject:v57 forKeyedSubscript:v50];

                    v29 = v78;
                  }
                }

                v47 = [v79 countByEnumeratingWithState:&v80 objects:v108 count:16];
              }

              while (v47);
            }

            v20 = v68;
            v41 = v69;
            v42 = v71;
            v43 = v72;
          }

          v58 = [(PRSWallpaperPublisher *)v75 _lock_buildActivePosterObserverUpdatesForClient:v44 updatedRoles:v76 clientSpecificSuggestionsToPosterUUID:v45];
          if ([v58 count])
          {
            v59 = PRSLogObserver();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = objc_opt_class();
              v61 = NSStringFromClass(v60);
              v62 = *(v44 + 32);
              *buf = 138544130;
              v101 = v61;
              v102 = 2048;
              v103 = v75;
              v104 = 2114;
              v105 = v62;
              v106 = 2114;
              v107 = v58;
              _os_log_impl(&dword_1C26FF000, v59, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> notifying client %{public}@ of role observer updates=%{public}@", buf, 0x2Au);

              v42 = v71;
            }

            [*(v44 + 24) notifyRoleActivePosterUpdates:v58];
          }

          ++v43;
        }

        while (v43 != v41);
        v41 = [(NSMutableSet *)obj countByEnumeratingWithState:&v84 objects:v109 count:16];
      }

      while (v41);
    }
  }

  v63 = *MEMORY[0x1E69E9840];
}

- (id)_lock_buildActivePosterObserverUpdatesForClient:(id)a3 updatedRoles:(id)a4 clientSpecificSuggestionsToPosterUUID:(id)a5
{
  v72 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v42 = self;
  os_unfair_lock_assert_owner(&self->_lock);
  if (*(v8 + 112) != 1 || *(v8 + 129) != 1)
  {
    v14 = 0;
    goto LABEL_30;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [v9 keyEnumerator];
  v11 = [obj countByEnumeratingWithState:&v55 objects:v71 count:16];
  if (!v11)
  {
    v14 = 0;
    goto LABEL_29;
  }

  v13 = v11;
  v14 = 0;
  v15 = *v56;
  *&v12 = 138544642;
  v38 = v12;
  v41 = v9;
  v45 = v10;
  v46 = *v56;
  do
  {
    v16 = 0;
    v47 = v13;
    do
    {
      if (*v56 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v55 + 1) + 8 * v16);
      if ([*(v8 + 15) containsObject:{v17, v38}])
      {
        v18 = v14;
        v19 = [v9 objectForKeyedSubscript:v17];
        v20 = [v19 serverIdentity];
        v21 = [v20 posterUUID];
        v22 = [v10 objectForKey:v21];

        if (*(v8 + 128) == 1)
        {
          v23 = [*(v8 + 2) remoteProcess];
          v24 = [v23 auditToken];
          v25 = v24;
          if (v24 && ([v24 isInvalid] & 1) == 0)
          {
            v54 = 0;
            v29 = [v19 extendContentsReadAccessToAuditToken:v25 error:&v54];
            v26 = v54;
            v44 = v29;
            if (v29)
            {
              v30 = v29;
              v31 = v19;
              v19 = v30;
            }

            else
            {
              v31 = PRSLogObserver();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v34 = objc_opt_class();
                v40 = NSStringFromClass(v34);
                v39 = [v19 identity];
                v35 = *(v8 + 4);
                *buf = v38;
                v60 = v40;
                v61 = 2048;
                v62 = v42;
                v63 = 2114;
                v64 = v39;
                v65 = 2114;
                v66 = v17;
                v67 = 2114;
                v68 = v35;
                v69 = 2114;
                v70 = v25;
                _os_log_error_impl(&dword_1C26FF000, v31, OS_LOG_TYPE_ERROR, "<%{public}@:%p> failed to prepare role update of %{public}@/%{public}@ for client %{public}@ due to bad auditToken %{public}@", buf, 0x3Eu);
              }
            }

            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v49[2] = __124__PRSWallpaperPublisher__lock_buildActivePosterObserverUpdatesForClient_updatedRoles_clientSpecificSuggestionsToPosterUUID___block_invoke;
            v49[3] = &unk_1E818D398;
            v50 = v25;
            v51 = v42;
            v52 = v17;
            v53 = v8;
            v32 = [v22 bs_mapNoNulls:v49];

            v22 = v32;
LABEL_19:
            v9 = v41;
          }

          else
          {
            v26 = PRSLogObserver();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = objc_opt_class();
              v43 = NSStringFromClass(v27);
              v28 = *(v8 + 4);
              *buf = 138544386;
              v60 = v43;
              v61 = 2048;
              v62 = v42;
              v63 = 2114;
              v64 = v17;
              v65 = 2114;
              v66 = v28;
              v67 = 2114;
              v68 = v25;
              _os_log_error_impl(&dword_1C26FF000, v26, OS_LOG_TYPE_ERROR, "<%{public}@:%p> failed to prepare suggestion descriptor sandbox extension for update of %{public}@ for client %{public}@ due to bad auditToken %{public}@", buf, 0x34u);

              goto LABEL_19;
            }
          }

          v10 = v45;
        }

        v14 = v18;
        v33 = [[PRSRoleActivePosterObserverUpdate alloc] initWithRole:v17 activePath:v19 suggestionDescriptors:v22];
        v13 = v47;
        if (!v14)
        {
          v14 = objc_opt_new();
        }

        [v14 addObject:v33];

        v15 = v46;
      }

      ++v16;
    }

    while (v13 != v16);
    v13 = [obj countByEnumeratingWithState:&v55 objects:v71 count:16];
  }

  while (v13);
LABEL_29:

LABEL_30:
  v36 = *MEMORY[0x1E69E9840];

  return v14;
}

void *__124__PRSWallpaperPublisher__lock_buildActivePosterObserverUpdatesForClient_updatedRoles_clientSpecificSuggestionsToPosterUUID___block_invoke(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v20 = 0;
  v5 = [v3 extendContentsReadAccessToAuditToken:v4 error:&v20];
  v6 = v20;
  v7 = v5;
  if (v6)
  {
    v8 = PRSLogObserver();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = a1[5];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = a1[5];
      v16 = [v3 identity];
      v17 = a1[6];
      v18 = *(a1[7] + 32);
      v19 = a1[4];
      *buf = 138544642;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      v31 = 2114;
      v32 = v19;
      _os_log_error_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_ERROR, "<%{public}@:%p> failed to prepare suggestion descriptor sandbox extension for update of %{public}@/%{public}@ for client %{public}@ due to bad auditToken %{public}@", buf, 0x3Eu);
    }

    v7 = v3;
  }

  v9 = v7;

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_lock_issuePosterCollectionUpdate:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v43 = self;
  if (!self->_lock_activated)
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = [v34 stringWithFormat:@"<%@:%p> received multi-update before role activation", v36, self];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperPublisher _lock_issuePosterCollectionUpdate:];
    }

    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C2720A64);
  }

  v39 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v4 keyEnumerator];
  v41 = v4;
  v42 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v42)
  {
    v40 = *v50;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v50 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v49 + 1) + 8 * i);
        v7 = [(NSMutableDictionary *)v43->_lock_roleToPosterCollections objectForKeyedSubscript:v6];
        v8 = [v4 objectForKeyedSubscript:v6];
        v9 = [v7 count];
        if (v9 == [v8 count])
        {
          if (![v7 count])
          {
            goto LABEL_14;
          }

          v10 = 0;
          while (1)
          {
            v11 = [v7 objectAtIndexedSubscript:v10];
            v12 = [v8 objectAtIndexedSubscript:v10];
            v13 = [v11 serverIdentity];
            v14 = [v12 serverIdentity];
            v15 = [v13 isEqual:v14];

            if ((v15 & 1) == 0)
            {
              break;
            }

            if (++v10 >= [v7 count])
            {
              goto LABEL_14;
            }
          }
        }

        v16 = [v8 copy];
        [v39 setObject:v16 forKeyedSubscript:v6];

LABEL_14:
        v4 = v41;
      }

      v42 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v42);
  }

  v17 = v39;
  if ([v39 count])
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __59__PRSWallpaperPublisher__lock_issuePosterCollectionUpdate___block_invoke;
    v48[3] = &unk_1E818D3C0;
    v48[4] = v43;
    [v39 enumerateKeysAndObjectsUsingBlock:v48];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v18 = v43->_lock_clients;
    v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v44 objects:v61 count:16];
    v20 = v39;
    if (v19)
    {
      v21 = v19;
      v22 = *v45;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v44 + 1) + 8 * j);
          v25 = *(v24 + 144);
          v26 = [v20 objectForKeyedSubscript:v25];

          if (v26)
          {
            v27 = [v20 objectForKeyedSubscript:v25];
            v28 = [(PRSWallpaperPublisher *)v43 _lock_buildPosterCollectionUpdatesForClient:v24 role:v25 updatedPosterCollection:v27];

            if ([v28 count])
            {
              v29 = PRSLogObserver();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = objc_opt_class();
                v31 = NSStringFromClass(v30);
                v32 = *(v24 + 32);
                *buf = 138544130;
                v54 = v31;
                v55 = 2048;
                v56 = v43;
                v20 = v39;
                v57 = 2114;
                v58 = v32;
                v59 = 2114;
                v60 = v28;
                _os_log_impl(&dword_1C26FF000, v29, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> notifying client %{public}@ of poster collection role observer updates=%{public}@", buf, 0x2Au);
              }

              [*(v24 + 24) notifyRolePosterCollectionUpdates:v28];
            }
          }
        }

        v21 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v44 objects:v61 count:16];
      }

      while (v21);
    }

    v17 = v20;
    v4 = v41;
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)_lock_buildPosterCollectionUpdatesForClient:(id)a3 role:(id)a4 updatedPosterCollection:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v36 = self;
  os_unfair_lock_assert_owner(&self->_lock);
  v11 = [v8[2] remoteProcess];
  v12 = [v11 auditToken];
  if (*(v8 + 112) == 1 && *(v8 + 153) == 1)
  {
    v31 = v11;
    v33 = v9;
    v13 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v10;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v55 count:16];
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = v15;
    v17 = *v39;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * v18);
        v20 = *(v8 + 152) != 1 || v12 == 0;
        if (!v20 && ([v12 isInvalid] & 1) == 0)
        {
          v37 = 0;
          v21 = [v19 extendContentsReadAccessToAuditToken:v12 error:&v37];
          v22 = v37;
          v23 = v22;
          if (v21)
          {

            goto LABEL_19;
          }

          v24 = PRSLogObserver();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            v35 = NSStringFromClass(v25);
            v34 = [v19 identity];
            v26 = v8[4];
            *buf = 138544642;
            v44 = v35;
            v45 = 2048;
            v46 = v36;
            v47 = 2114;
            v48 = v34;
            v49 = 2114;
            v50 = v33;
            v51 = 2114;
            v52 = v26;
            v53 = 2114;
            v54 = v12;
            _os_log_error_impl(&dword_1C26FF000, v24, OS_LOG_TYPE_ERROR, "<%{public}@:%p> failed to prepare role update of %{public}@/%{public}@ for client %{public}@ due to bad auditToken %{public}@", buf, 0x3Eu);
          }
        }

        v21 = v19;
LABEL_19:
        [v13 addObject:{v21, v31}];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v38 objects:v55 count:16];
      if (!v16)
      {
LABEL_21:

        v9 = v33;
        v27 = [[PRSPosterRoleCollectionObserverUpdate alloc] initWithRole:v33 posterCollection:v13];
        v42 = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];

        v11 = v31;
        v10 = v32;
        goto LABEL_23;
      }
    }
  }

  v28 = 0;
LABEL_23:

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (void)_lock_activateClientsIfNeeded
{
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_activated)
  {
    v3 = PRSLogObserver();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = [(NSMutableSet *)self->_lock_clients count];
      *buf = 138543874;
      v26 = v5;
      v27 = 2048;
      v28 = self;
      v29 = 2048;
      v30 = v6;
      _os_log_impl(&dword_1C26FF000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Activating %lu clients", buf, 0x20u);
    }

    self->_lock_activated = 1;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_lock_clients;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if (!*(v12 + 24))
          {
            v13 = PRSLogObserver();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = objc_opt_class();
              v15 = NSStringFromClass(v14);
              v16 = *(v12 + 32);
              *buf = 138543874;
              v26 = v15;
              v27 = 2048;
              v28 = self;
              v29 = 2112;
              v30 = v16;
              _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Activating client that connected earlier: %@", buf, 0x20u);
            }

            [*(v12 + 16) activate];
            v17 = [*(v12 + 16) remoteTarget];
            v18 = *(v12 + 24);
            *(v12 + 24) = v17;
          }
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)initializeWithPaths:recentlyChanged:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initializeWithPaths:(char *)a1 recentlyChanged:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"paths", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initializeRoles:(char *)a1 suggestions:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"suggestionsToPosterUUID", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initializeRoles:(char *)a1 suggestions:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"roles", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePaths:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updatePaths:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updatePaths:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"paths", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteSnapshotUpdateForPath:(char *)a1 snapshotType:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"snapshotUpdatedForPath", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initializePosterCollectionForRoles:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"posterCollectionToRole", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_sendStateToClient:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client is not observing changes for this abort"];;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v9 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_issueUpdateForRoles:suggestionsToPosterUUID:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_lock_issuePosterCollectionUpdate:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

@end