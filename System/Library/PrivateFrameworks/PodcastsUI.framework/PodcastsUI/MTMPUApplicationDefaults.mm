@interface MTMPUApplicationDefaults
- (BOOL)BOOLForKey:(id)a3;
- (MTMPUApplicationDefaults)initWithApplicationIdentifier:(id)a3;
- (id)_objectForKey:(id)a3 expectedTypeID:(unint64_t)a4;
- (id)arrayForKey:(id)a3;
- (id)dateForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)numberForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (void)_applyUpdates;
- (void)_defaultsDidChange;
- (void)_setObject:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)performBatchUpdates:(id)a3;
- (void)registerDefaults:(id)a3;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
@end

@implementation MTMPUApplicationDefaults

- (MTMPUApplicationDefaults)initWithApplicationIdentifier:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MTMPUApplicationDefaults;
  v6 = [(MTMPUApplicationDefaults *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.MediaPlayerUI.MPUApplicationDefaults.accessQueue", MEMORY[0x277D85CD8]);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v7;

    objc_storeStrong(&v6->_applicationIdentifier, a3);
    v9 = [(MTMPUApplicationDefaults *)v6 _defaultsDidChangeNotificationName];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _MPUApplicationDefaultsDidChangeNotification, v9, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(MTMPUApplicationDefaults *)self _defaultsDidChangeNotificationName];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v3, 0);

  v5.receiver = self;
  v5.super_class = MTMPUApplicationDefaults;
  [(MTMPUApplicationDefaults *)&v5 dealloc];
}

- (void)registerDefaults:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__MTMPUApplicationDefaults_registerDefaults___block_invoke;
  v7[3] = &unk_2782BDD68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(accessQueue, v7);
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTMPUApplicationDefaults *)self _objectForKey:v4 expectedTypeID:CFBooleanGetTypeID()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__5;
    v19 = __Block_byref_object_dispose__5;
    v20 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__MTMPUApplicationDefaults_BOOLForKey___block_invoke;
    block[3] = &unk_2782BE6A8;
    v14 = &v15;
    block[4] = self;
    v9 = v4;
    v13 = v9;
    dispatch_sync(accessQueue, block);
    v10 = [(MTMPUApplicationDefaults *)self _defaultsDomain];
    CFPreferencesSetAppValue(v9, v16[5], v10);
    v7 = [v16[5] BOOLValue];

    _Block_object_dispose(&v15, 8);
  }

  return v7;
}

uint64_t __39__MTMPUApplicationDefaults_BOOLForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v4 = MEMORY[0x277CBED10];
  }

  [(MTMPUApplicationDefaults *)self _setObject:*v4 forKey:a4];
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTMPUApplicationDefaults *)self _objectForKey:v4 expectedTypeID:CFStringGetTypeID()];

  return v5;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTMPUApplicationDefaults *)self _objectForKey:v4 expectedTypeID:CFArrayGetTypeID()];

  return v5;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTMPUApplicationDefaults *)self _objectForKey:v4 expectedTypeID:CFDictionaryGetTypeID()];

  return v5;
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTMPUApplicationDefaults *)self _objectForKey:v4 expectedTypeID:CFNumberGetTypeID()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__5;
    v19 = __Block_byref_object_dispose__5;
    v20 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__MTMPUApplicationDefaults_integerForKey___block_invoke;
    block[3] = &unk_2782BE6A8;
    v14 = &v15;
    block[4] = self;
    v9 = v4;
    v13 = v9;
    dispatch_sync(accessQueue, block);
    v10 = [(MTMPUApplicationDefaults *)self _defaultsDomain];
    CFPreferencesSetAppValue(v9, v16[5], v10);
    v7 = [v16[5] integerValue];

    _Block_object_dispose(&v15, 8);
  }

  return v7;
}

uint64_t __42__MTMPUApplicationDefaults_integerForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)numberForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTMPUApplicationDefaults *)self _objectForKey:v4 expectedTypeID:CFNumberGetTypeID()];

  return v5;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(MTMPUApplicationDefaults *)self _setObject:v8 forKey:v7];
}

- (id)dateForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTMPUApplicationDefaults *)self _objectForKey:v4 expectedTypeID:CFDateGetTypeID()];

  return v5;
}

- (void)performBatchUpdates:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MTMPUApplicationDefaults_performBatchUpdates___block_invoke;
  block[3] = &unk_2782BDD90;
  block[4] = self;
  dispatch_barrier_sync(accessQueue, block);
  v4[2](v4);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MTMPUApplicationDefaults_performBatchUpdates___block_invoke_2;
  v7[3] = &unk_2782BE948;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_barrier_sync(v6, v7);
  if (*(v9 + 24) == 1)
  {
    [(MTMPUApplicationDefaults *)self _applyUpdates];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)_applyUpdates
{
  v3 = [(MTMPUApplicationDefaults *)self _defaultsDomain];
  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__MTMPUApplicationDefaults__applyUpdates__block_invoke;
  v5[3] = &unk_2782BE150;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(v4, v5);
}

void __41__MTMPUApplicationDefaults__applyUpdates__block_invoke(uint64_t a1)
{
  CFPreferencesAppSynchronize(*(a1 + 40));
  name = [*(a1 + 32) _defaultsDidChangeNotificationName];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (void)_defaultsDidChange
{
  CFPreferencesAppSynchronize([(MTMPUApplicationDefaults *)self _defaultsDomain]);
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"MPUApplicationDefaultsDidChangeNotification" object:self];
}

- (id)_objectForKey:(id)a3 expectedTypeID:(unint64_t)a4
{
  v6 = a3;
  v7 = CFPreferencesCopyAppValue(v6, [(MTMPUApplicationDefaults *)self _defaultsDomain]);

  if (v7 && CFGetTypeID(v7) != a4)
  {
    CFRelease(v7);
    v7 = 0;
  }

  return v7;
}

- (void)_setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  CFPreferencesSetAppValue(v7, v6, [(MTMPUApplicationDefaults *)self _defaultsDomain]);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__MTMPUApplicationDefaults__setObject_forKey___block_invoke;
  v9[3] = &unk_2782BDD18;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_barrier_sync(accessQueue, v9);
  if (*(v11 + 24) == 1)
  {
    [(MTMPUApplicationDefaults *)self _applyUpdates];
  }

  _Block_object_dispose(&v10, 8);
}

@end