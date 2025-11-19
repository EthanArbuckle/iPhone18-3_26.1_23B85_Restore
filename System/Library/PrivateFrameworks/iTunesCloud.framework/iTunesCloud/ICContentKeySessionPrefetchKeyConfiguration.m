@interface ICContentKeySessionPrefetchKeyConfiguration
- (ICContentKeySessionPrefetchKeyConfiguration)initWithRequestContext:(id)a3;
- (NSSet)keyIdentifiers;
- (NSURL)keyCertificateURL;
- (NSURL)keyServerURL;
- (void)_fetchWithRequestContext:(id)a3;
@end

@implementation ICContentKeySessionPrefetchKeyConfiguration

- (void)_fetchWithRequestContext:(id)a3
{
  v4 = a3;
  dispatch_group_enter(self->_group);
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ICContentKeySessionPrefetchKeyConfiguration__fetchWithRequestContext___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __72__ICContentKeySessionPrefetchKeyConfiguration__fetchWithRequestContext___block_invoke(uint64_t a1)
{
  v2 = +[ICURLBagProvider sharedBagProvider];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__ICContentKeySessionPrefetchKeyConfiguration__fetchWithRequestContext___block_invoke_2;
  v4[3] = &unk_1E7BFA500;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [v2 getBagForRequestContext:v3 withCompletionHandler:v4];
}

void __72__ICContentKeySessionPrefetchKeyConfiguration__fetchWithRequestContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 enhancedAudioConfiguration];
  v8 = v7;
  if (v7)
  {
    v11 = v7;
    v12 = v5;
    msv_dispatch_sync_on_queue();

    v9 = v11;
  }

  else
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Failed to load enhanced audio configuration from the bag. err=%{public}@", buf, 0x16u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 48));
}

void __72__ICContentKeySessionPrefetchKeyConfiguration__fetchWithRequestContext___block_invoke_13(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) prefetchSKDs];
  if (_NSIsNSArray())
  {
    v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
    if (([*(*(a1 + 40) + 16) isEqualToSet:v3] & 1) == 0)
    {
      objc_storeStrong((*(a1 + 40) + 16), v3);
      v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = *(v5 + 16);
        v14 = 138543618;
        v15 = v5;
        v16 = 2114;
        v17 = v6;
        _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Updated prefetch identifiers %{public}@", &v14, 0x16u);
      }

      v7 = +[ICDefaults standardDefaults];
      [v7 setPrefetchKeyIdentifiers:v2];
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(v8 + 16);
    if (!v9)
    {
      goto LABEL_9;
    }

    *(v8 + 16) = 0;

    v3 = +[ICDefaults standardDefaults];
    [v3 setPrefetchKeyIdentifiers:0];
  }

LABEL_9:
  v10 = [*(a1 + 32) keyServerURL];
  v11 = v10;
  if (!v10)
  {
    v11 = [*(a1 + 48) urlForBagKey:@"fps-request"];
  }

  objc_storeStrong((*(a1 + 40) + 24), v11);
  if (!v10)
  {
  }

  v12 = [*(a1 + 32) certificateURL];
  v13 = v12;
  if (!v12)
  {
    v13 = [*(a1 + 48) urlForBagKey:@"fps-cert"];
  }

  objc_storeStrong((*(a1 + 40) + 32), v13);
  if (!v12)
  {
  }
}

- (NSURL)keyCertificateURL
{
  v8 = *MEMORY[0x1E69E9840];
  if (dispatch_group_wait(self->_group, self->_timeout))
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = self;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Timed out waiting for the enhanced audio configuration (prefetchKeyCertificateURL) to load.", &v6, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v4 = self->_keyCertificateURL;
  }

  return v4;
}

- (NSURL)keyServerURL
{
  v8 = *MEMORY[0x1E69E9840];
  if (dispatch_group_wait(self->_group, self->_timeout))
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = self;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Timed out waiting for the enhanced audio configuration (prefetchKeyServerURL) to load.", &v6, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v4 = self->_keyServerURL;
  }

  return v4;
}

- (NSSet)keyIdentifiers
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_initWithDefaultKeyIdentifiers)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__31121;
    v11 = __Block_byref_object_dispose__31122;
    v12 = 0;
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__ICContentKeySessionPrefetchKeyConfiguration_keyIdentifiers__block_invoke;
    v7[3] = &unk_1E7BFA430;
    v7[4] = self;
    v7[5] = &buf;
    dispatch_sync(queue, v7);
    v4 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  else if (dispatch_group_wait(self->_group, self->_timeout))
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Timed out waiting for the enhanced audio configuration (prefetchKeyIdentifiers) to load.", &buf, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v4 = self->_keyIdentifiers;
  }

  return v4;
}

- (ICContentKeySessionPrefetchKeyConfiguration)initWithRequestContext:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICContentKeySessionPrefetchKeyConfiguration;
  v5 = [(ICContentKeySessionPrefetchKeyConfiguration *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.iTunesCloud.ICContentKeySession.prefetchKeyConfig", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = dispatch_group_create();
    group = v5->_group;
    v5->_group = v8;

    v5->_timeout = dispatch_time(0, 10000000000);
    v10 = +[ICDefaults standardDefaults];
    v11 = [v10 prefetchKeyIdentifiers];

    if (_NSIsNSArray() && [v11 count])
    {
      v5->_initWithDefaultKeyIdentifiers = 1;
      v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
      keyIdentifiers = v5->_keyIdentifiers;
      v5->_keyIdentifiers = v12;
    }

    [(ICContentKeySessionPrefetchKeyConfiguration *)v5 _fetchWithRequestContext:v4];
  }

  return v5;
}

@end