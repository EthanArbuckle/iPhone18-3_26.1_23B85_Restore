@interface ICHomeManager
+ (ICHomeManager)sharedManager;
- (NSString)homeOwnerAltDSID;
- (NSString)preferredMediaUserAltDSID;
- (id)_currentHomeOwnerAltDSID;
- (id)_currentPreferredMediaUserAltDSID;
- (id)_init;
- (void)_loadPropertiesFromCache;
- (void)_postPropertiesChangedNotification;
- (void)_savePropertiesToCache;
- (void)_updateProperties;
- (void)accessory:(id)a3 didUpdateSettings:(id)a4;
- (void)homeManager:(id)a3 didUpdateStatus:(unint64_t)a4;
- (void)homeManagerDidRemoveCurrentAccessory:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation ICHomeManager

- (void)_postPropertiesChangedNotification
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Properties changed - posting notification", buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ICHomeManager__postPropertiesChangedNotification__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(v4, block);
}

void __51__ICHomeManager__postPropertiesChangedNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"com.apple.iTunesCloud.ICHomeManager.ICHomeManagerPropertiesDidChangeNotification" object:*(a1 + 32)];
}

- (id)_currentHomeOwnerAltDSID
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(HMHomeManager *)self->_homeManager currentHome];
  v4 = [v3 owner];
  if (v4)
  {
    v5 = +[ICMonitoredAccountStore sharedAccountStore];
    v12 = 0;
    v6 = [v5 primaryAppleAccountWithError:&v12];
    v7 = v12;

    if (v7)
    {
      v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v7 msv_description];
        *buf = 138543618;
        v14 = self;
        v15 = 2114;
        v16 = v9;
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find primary apple account error=%{public}@", buf, 0x16u);
      }
    }

    v10 = [v6 ic_altDSID];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_currentPreferredMediaUserAltDSID
{
  v2 = [(HMHomeManager *)self->_homeManager currentAccessory];
  v3 = [v2 preferredMediaUser];
  v4 = [v3 iCloudAltDSID];

  return v4;
}

- (void)_updateProperties
{
  v7 = [(ICHomeManager *)self _currentPreferredMediaUserAltDSID];
  v3 = [(ICHomeManager *)self _currentHomeOwnerAltDSID];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_cachedProperties copy];
  [(NSMutableDictionary *)self->_cachedProperties setObject:v7 forKeyedSubscript:@"preferredMediaUserAltDSID"];
  [(NSMutableDictionary *)self->_cachedProperties setObject:v3 forKeyedSubscript:@"homeOwnerAltDSID"];
  cachedProperties = self->_cachedProperties;
  if (cachedProperties == v4)
  {
    os_unfair_lock_unlock(&self->_lock);
    [(ICHomeManager *)self _savePropertiesToCache];
  }

  else
  {
    v6 = [(NSMutableDictionary *)cachedProperties isEqual:v4];
    os_unfair_lock_unlock(&self->_lock);
    [(ICHomeManager *)self _savePropertiesToCache];
    if ((v6 & 1) == 0)
    {
      [(ICHomeManager *)self _postPropertiesChangedNotification];
    }
  }
}

- (void)_savePropertiesToCache
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ICHomeManager__savePropertiesToCache__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(queue, block);
}

void __39__ICHomeManager__savePropertiesToCache__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 28));
  v2 = [*(*(a1 + 32) + 40) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 28));
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Caching updated properties %{public}@", &v6, 0x16u);
  }

  v5 = +[ICDefaults standardDefaults];
  [v5 setCachedHomeProperties:v2];
}

- (void)_loadPropertiesFromCache
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = +[ICDefaults standardDefaults];
  v4 = [v3 cachedHomeProperties];
  v5 = [v4 mutableCopy];
  cachedProperties = self->_cachedProperties;
  self->_cachedProperties = v5;

  if (!self->_cachedProperties)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = self->_cachedProperties;
    self->_cachedProperties = v7;
  }

  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_cachedProperties;
    v11 = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ loaded cached properties %{public}@", &v11, 0x16u);
  }
}

- (void)accessory:(id)a3 didUpdateSettings:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ current accessory updated settings - updating properties", &v6, 0xCu);
  }

  [(ICHomeManager *)self _updateProperties];
}

- (void)homeManagerDidRemoveCurrentAccessory:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ current accessory removed - updating properties", &v6, 0xCu);
  }

  currentAccessoryIdentifier = self->_currentAccessoryIdentifier;
  self->_currentAccessoryIdentifier = 0;

  [(ICHomeManager *)self _updateProperties];
}

- (void)homeManager:(id)a3 didUpdateStatus:(unint64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v8 = getHMHomeManagerStatusToStringSymbolLoc_ptr;
    v23 = getHMHomeManagerStatusToStringSymbolLoc_ptr;
    if (!getHMHomeManagerStatusToStringSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getHMHomeManagerStatusToStringSymbolLoc_block_invoke;
      v25 = &unk_1E7BFA0A0;
      v26 = &v20;
      v9 = HomeKitLibrary();
      v10 = dlsym(v9, "HMHomeManagerStatusToString");
      *(v26[1] + 24) = v10;
      getHMHomeManagerStatusToStringSymbolLoc_ptr = *(v26[1] + 24);
      v8 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v8)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *soft_HMHomeManagerStatusToString(HMHomeManagerStatus)"];
      [v18 handleFailureInFunction:v19 file:@"ICHomeManager.m" lineNumber:23 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v11 = v8(a4);
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ received updated status: %{public}@", buf, 0x16u);
  }

  if ((a4 & 1) == 0)
  {
    v12 = [(HMHomeManager *)self->_homeManager currentAccessory];
    v13 = [v12 uniqueIdentifier];
    v14 = v13;
    if (v13 == self->_currentAccessoryIdentifier)
    {
    }

    else
    {
      v15 = [(NSUUID *)v13 isEqual:?];

      if ((v15 & 1) == 0)
      {
        v16 = [v12 uniqueIdentifier];
        currentAccessoryIdentifier = self->_currentAccessoryIdentifier;
        self->_currentAccessoryIdentifier = v16;

        [v12 setDelegate:self];
      }
    }

    [(ICHomeManager *)self _updateProperties];
  }
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ updated homes - setting as ready", &v11, 0xCu);
  }

  self->_homeManagerIsReady = 1;
  v5 = [(HMHomeManager *)self->_homeManager currentAccessory];
  v6 = [v5 uniqueIdentifier];
  v7 = v6;
  if (v6 == self->_currentAccessoryIdentifier)
  {
  }

  else
  {
    v8 = [(NSUUID *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      v9 = [v5 uniqueIdentifier];
      currentAccessoryIdentifier = self->_currentAccessoryIdentifier;
      self->_currentAccessoryIdentifier = v9;

      [v5 setDelegate:self];
    }
  }

  [(ICHomeManager *)self _updateProperties];
}

- (NSString)homeOwnerAltDSID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_cachedProperties objectForKeyedSubscript:@"homeOwnerAltDSID"];
  os_unfair_lock_unlock(&self->_lock);
  v4 = v3;
  v5 = v4;
  if (self->_homeManagerIsReady)
  {
    v5 = [(ICHomeManager *)self _currentHomeOwnerAltDSID];

    if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
    {
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_cachedProperties setObject:v5 forKeyedSubscript:@"homeOwnerAltDSID"];
      os_unfair_lock_unlock(&self->_lock);
      [(ICHomeManager *)self _savePropertiesToCache];
      [(ICHomeManager *)self _postPropertiesChangedNotification];
    }
  }

  return v5;
}

- (NSString)preferredMediaUserAltDSID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_cachedProperties objectForKeyedSubscript:@"preferredMediaUserAltDSID"];
  os_unfair_lock_unlock(&self->_lock);
  v4 = v3;
  v5 = v4;
  if (self->_homeManagerIsReady)
  {
    v5 = [(ICHomeManager *)self _currentPreferredMediaUserAltDSID];

    if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
    {
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_cachedProperties setObject:v5 forKeyedSubscript:@"preferredMediaUserAltDSID"];
      os_unfair_lock_unlock(&self->_lock);
      [(ICHomeManager *)self _savePropertiesToCache];
      [(ICHomeManager *)self _postPropertiesChangedNotification];
    }
  }

  return v5;
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = ICHomeManager;
  v2 = [(ICHomeManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_create("com.apple.iTunesCloud.ICHomeManager.serialQueue", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    [(ICHomeManager *)v3 _loadPropertiesFromCache];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getHMHomeManagerClass_softClass;
    v16 = getHMHomeManagerClass_softClass;
    if (!getHMHomeManagerClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getHMHomeManagerClass_block_invoke;
      v12[3] = &unk_1E7BFA0A0;
      v12[4] = &v13;
      __getHMHomeManagerClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    v8 = [[v6 alloc] initWithOptions:24];
    homeManager = v3->_homeManager;
    v3->_homeManager = v8;

    [(HMHomeManager *)v3->_homeManager setDelegate:v3];
  }

  return v3;
}

+ (ICHomeManager)sharedManager
{
  if (sharedManager_sOnceToken_2889 != -1)
  {
    dispatch_once(&sharedManager_sOnceToken_2889, &__block_literal_global_2890);
  }

  v3 = sharedManager_sSharedManager_2891;

  return v3;
}

uint64_t __30__ICHomeManager_sharedManager__block_invoke()
{
  v0 = [[ICHomeManager alloc] _init];
  v1 = sharedManager_sSharedManager_2891;
  sharedManager_sSharedManager_2891 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end