@interface PSSystemConfigurationDynamicStoreNETRBWatcher
+ (id)sharedManager;
- (BOOL)isDataEnabled;
- (BOOL)isTetheringEnabled;
- (BOOL)shouldShowTethering;
- (PSSystemConfigurationDynamicStoreNETRBWatcher)init;
- (void)dealloc;
- (void)getNETRBState:(int *)a3 andReason:(int *)a4;
- (void)readNETRBState:(int *)a3 andReason:(int *)a4;
- (void)sendStateUpdate;
@end

@implementation PSSystemConfigurationDynamicStoreNETRBWatcher

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PSSystemConfigurationDynamicStoreNETRBWatcher_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_cacheOnce != -1)
  {
    dispatch_once(&sharedManager_cacheOnce, block);
  }

  v2 = sharedManager_gSharedNETRBWatcherInstance;

  return v2;
}

void __62__PSSystemConfigurationDynamicStoreNETRBWatcher_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_gSharedNETRBWatcherInstance;
  sharedManager_gSharedNETRBWatcherInstance = v1;
}

- (PSSystemConfigurationDynamicStoreNETRBWatcher)init
{
  v8.receiver = self;
  v8.super_class = PSSystemConfigurationDynamicStoreNETRBWatcher;
  v2 = [(PSSystemConfigurationDynamicStoreNETRBWatcher *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_netrbState = 1020;
    v7.version = 0;
    memset(&v7.retain, 0, 24);
    v7.info = v2;
    v4 = SCDynamicStoreCreate(0, @"com.apple.preferences.NETRBManager", __SCDynamicStoreCallback, &v7);
    v3->_scDynamicStore = v4;
    if (v4)
    {
      SCDynamicStoreAddWatchedKey();
      v3->_scRunLoopSource = SCDynamicStoreCreateRunLoopSource(0, v3->_scDynamicStore, 0);
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v3->_scRunLoopSource, *MEMORY[0x1E695E8D0]);
    }
  }

  return v3;
}

- (void)dealloc
{
  if (self->_scRunLoopSource)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, self->_scRunLoopSource, *MEMORY[0x1E695E8D0]);
    CFRelease(self->_scRunLoopSource);
  }

  scDynamicStore = self->_scDynamicStore;
  if (scDynamicStore)
  {
    CFRelease(scDynamicStore);
  }

  v5.receiver = self;
  v5.super_class = PSSystemConfigurationDynamicStoreNETRBWatcher;
  [(PSSystemConfigurationDynamicStoreNETRBWatcher *)&v5 dealloc];
}

- (void)getNETRBState:(int *)a3 andReason:(int *)a4
{
  [(PSSystemConfigurationDynamicStoreNETRBWatcher *)self readNETRBState:&self->_netrbState andReason:&self->_netrbReason];
  if (a3)
  {
    *a3 = self->_netrbState;
  }

  if (a4)
  {
    *a4 = self->_netrbReason;
  }
}

- (void)readNETRBState:(int *)a3 andReason:(int *)a4
{
  netrbState = self->_netrbState;
  netrbReason = self->_netrbReason;
  v8 = SCDynamicStoreCopyValue(self->_scDynamicStore, @"com.apple.MobileInternetSharing");
  v11 = v8;
  if (v8)
  {
    v9 = [v8 objectForKey:@"State"];
    netrbState = [v9 intValue];

    v10 = [v11 objectForKey:@"Reason"];
    netrbReason = [v10 intValue];
  }

  if (a3)
  {
    *a3 = netrbState;
  }

  if (a4)
  {
    *a4 = netrbReason;
  }
}

- (void)sendStateUpdate
{
  v14 = 0;
  [(PSSystemConfigurationDynamicStoreNETRBWatcher *)self readNETRBState:&v14 + 4 andReason:&v14];
  netrbState = self->_netrbState;
  if (HIDWORD(v14) != netrbState)
  {
    netrbReason = self->_netrbReason;
    v4 = v14;
    goto LABEL_5;
  }

  v4 = v14;
  netrbReason = self->_netrbReason;
  if (v14 != netrbReason)
  {
LABEL_5:
    NSLog(&cfstr_SNetrbStateCha.isa, "[PSSystemConfigurationDynamicStoreNETRBWatcher sendStateUpdate]", netrbState, HIDWORD(v14), netrbReason, v4);
    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v14)];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_netrbState];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_netrbReason];
    v11 = [v6 dictionaryWithObjectsAndKeys:{v7, @"State", v8, @"Reason", v9, @"PreviousState", v10, @"PreviousReason", 0}];

    v12 = v14;
    self->_netrbState = HIDWORD(v14);
    self->_netrbReason = v12;
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"com.apple.Preferences.NETRB" object:0 userInfo:v11];
  }
}

- (BOOL)shouldShowTethering
{
  v4 = 0;
  v3 = 0;
  [(PSSystemConfigurationDynamicStoreNETRBWatcher *)self readNETRBState:&v4 andReason:&v3];
  return v4 > 0x3FD;
}

- (BOOL)isTetheringEnabled
{
  v4 = 0;
  v3 = 0;
  [(PSSystemConfigurationDynamicStoreNETRBWatcher *)self readNETRBState:&v4 andReason:&v3];
  return v4 == 1023;
}

- (BOOL)isDataEnabled
{
  v4 = 0;
  v3 = 0;
  [(PSSystemConfigurationDynamicStoreNETRBWatcher *)self readNETRBState:&v4 andReason:&v3];
  return v3 != 4;
}

@end