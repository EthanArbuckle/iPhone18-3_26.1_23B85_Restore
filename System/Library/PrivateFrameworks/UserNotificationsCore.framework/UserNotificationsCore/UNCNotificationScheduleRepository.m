@interface UNCNotificationScheduleRepository
- (UNCNotificationScheduleRepository)initWithDirectory:(id)a3 librarian:(id)a4;
- (id)_dateFormatter;
- (id)_queue_scheduleForBundleIdentifier:(id)a3;
- (id)allBundleIdentifiers;
- (id)scheduleForBundleIdentifier:(id)a3;
- (void)_queue_setSchedule:(id)a3 forBundleIdentifier:(id)a4;
- (void)notificationSourcesDidUninstall:(id)a3;
- (void)removeScheduleForBundleIdentifier:(id)a3;
- (void)setSchedule:(id)a3 forBundleIdentifier:(id)a4;
@end

@implementation UNCNotificationScheduleRepository

- (id)_dateFormatter
{
  if (_dateFormatter___once_0 != -1)
  {
    [UNCNotificationScheduleRepository _dateFormatter];
  }

  v3 = _dateFormatter___dateFormatter_0;

  return v3;
}

uint64_t __51__UNCNotificationScheduleRepository__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _dateFormatter___dateFormatter_0;
  _dateFormatter___dateFormatter_0 = v0;

  v2 = _dateFormatter___dateFormatter_0;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss'.'SSS Z"];
}

- (UNCNotificationScheduleRepository)initWithDirectory:(id)a3 librarian:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[UNCKeyedDictionaryRepository alloc] initWithDirectory:v7 fileName:@"Schedule" pathExtension:@"plist" librarian:v6];

  v14.receiver = self;
  v14.super_class = UNCNotificationScheduleRepository;
  v9 = [(UNCNotificationScheduleRepository *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.usernotificationsserver.ScheduleRepository", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_repository, v8);
  }

  return v9;
}

- (id)allBundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__UNCNotificationScheduleRepository_allBundleIdentifiers__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __57__UNCNotificationScheduleRepository_allBundleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)scheduleForBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__UNCNotificationScheduleRepository_scheduleForBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F48;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __65__UNCNotificationScheduleRepository_scheduleForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_scheduleForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setSchedule:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UNCNotificationScheduleRepository_setSchedule_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeScheduleForBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__UNCNotificationScheduleRepository_removeScheduleForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)notificationSourcesDidUninstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__UNCNotificationScheduleRepository_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __69__UNCNotificationScheduleRepository_notificationSourcesDidUninstall___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) bundleIdentifier];
        [v7 _queue_removeScheduleForBundleIdentifier:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_queue_scheduleForBundleIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCKeyedDictionaryRepository *)self->_repository dictionaryForKey:v4];
  if (v5)
  {
    v6 = (*(UNSDictionaryToUNCNotificationSchedule + 2))(UNSDictionaryToUNCNotificationSchedule, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 previousTriggerDate];
  if (v7)
  {
    v8 = [(UNCNotificationScheduleRepository *)self _dateFormatter];
    v9 = [v8 stringFromDate:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v4;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1DA7A9000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Load last local notification fire date: %{public}@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_queue_setSchedule:(id)a3 forBundleIdentifier:(id)a4
{
  repository = self->_repository;
  v6 = UNCNotificationScheduleToDictionary;
  v7 = *(UNCNotificationScheduleToDictionary + 2);
  v8 = a4;
  v9 = v7(v6, a3);
  [(UNCKeyedDictionaryRepository *)repository setDictionary:v9 forKey:v8];
}

@end