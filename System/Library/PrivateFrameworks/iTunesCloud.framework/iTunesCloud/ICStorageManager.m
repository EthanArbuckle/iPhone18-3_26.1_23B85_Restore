@interface ICStorageManager
+ (id)sharedManager;
- (ICStorageManager)init;
- (unint64_t)storageSpaceAvailable;
- (void)ensureStorageIsAvailable:(unint64_t)a3 withCompletionHandler:(id)a4;
@end

@implementation ICStorageManager

- (void)ensureStorageIsAvailable:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__ICStorageManager_ensureStorageIsAvailable_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF7288;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(accessQueue, block);
}

void __67__ICStorageManager_ensureStorageIsAvailable_withCompletionHandler___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) storageSpaceAvailable];
  v3 = *(a1 + 48);
  if (v3 <= v2)
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }

  else
  {
    v9[0] = @"/private/var";
    v8[0] = @"CACHE_DELETE_VOLUME";
    v8[1] = @"CACHE_DELETE_AMOUNT";
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3 - v2];
    v8[2] = @"CACHE_DELETE_PURGE_TIMEOUT";
    v9[1] = v4;
    v9[2] = &unk_1F2C92080;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

    v7 = *(a1 + 40);
    CacheDeletePurgeSpaceWithInfo();
  }
}

void __67__ICStorageManager_ensureStorageIsAvailable_withCompletionHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:@"CACHE_DELETE_AMOUNT"];
  v5 = [v4 unsignedLongLongValue];

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [*(a1 + 32) storageSpaceAvailable];
    v8 = *(v6 + 16);

    v8(v6, v5, v7, 0);
  }
}

- (unint64_t)storageSpaceAvailable
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = NSHomeDirectory();
  v11 = 0;
  v4 = [v2 attributesOfFileSystemForPath:v3 error:&v11];
  v5 = v11;

  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "Failed to obtain system free space. err=%{public}@", buf, 0xCu);
    }
  }

  v7 = [v4 objectForKey:*MEMORY[0x1E696A3C0]];
  v8 = [v7 unsignedLongLongValue];

  if (v8 >= 0x1F400000)
  {
    v9 = v8 - 524288000;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ICStorageManager)init
{
  v6.receiver = self;
  v6.super_class = ICStorageManager;
  v2 = [(ICStorageManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunescloud.ICStorageManager.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_7071);
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

uint64_t __33__ICStorageManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(ICStorageManager);
  v1 = sharedManager___sharedManager;
  sharedManager___sharedManager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end