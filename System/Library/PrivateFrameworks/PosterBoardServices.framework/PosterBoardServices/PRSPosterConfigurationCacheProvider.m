@interface PRSPosterConfigurationCacheProvider
- (NSData)lastActiveHomePoster;
- (NSData)lastActiveLockPoster;
- (PRSPosterConfigurationCacheProvider)initWithCachingReason:(id)a3;
- (id)_lock_readAtURL:(id)a3;
- (void)_lock_removeAtURL:(id)a3;
- (void)_lock_setupSharedWorkspaceIfNeeded;
- (void)_lock_writeData:(id)a3 atURL:(id)a4;
- (void)removeCaches;
- (void)setLastActiveHomePoster:(id)a3;
- (void)setLastActiveLockPoster:(id)a3;
@end

@implementation PRSPosterConfigurationCacheProvider

- (PRSPosterConfigurationCacheProvider)initWithCachingReason:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PRSPosterConfigurationCacheProvider;
  v5 = [(PRSPosterConfigurationCacheProvider *)&v11 init];
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v6 = getPBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURLSymbolLoc_ptr;
    v16 = getPBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURLSymbolLoc_ptr;
    if (!getPBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURLSymbolLoc_ptr)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getPBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURLSymbolLoc_block_invoke;
      v12[3] = &unk_1E818CC28;
      v12[4] = &v13;
      __getPBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURLSymbolLoc_block_invoke(v12);
      v6 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v6)
    {
      [PRSPosterConfigurationCacheProvider initWithCachingReason:];
    }

    v7 = v6();
    v8 = [v7 URLByAppendingPathComponent:v4];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (NSData)lastActiveLockPoster
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(PRSPosterConfigurationCacheProvider *)self _lockURL];
  v4 = [(PRSPosterConfigurationCacheProvider *)self _lock_readAtURL:v3];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSData)lastActiveHomePoster
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(PRSPosterConfigurationCacheProvider *)self _homeURL];
  v4 = [(PRSPosterConfigurationCacheProvider *)self _lock_readAtURL:v3];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setLastActiveLockPoster:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PRSPosterConfigurationCacheProvider *)self _lockURL];
  [(PRSPosterConfigurationCacheProvider *)self _lock_writeData:v4 atURL:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLastActiveHomePoster:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PRSPosterConfigurationCacheProvider *)self _homeURL];
  [(PRSPosterConfigurationCacheProvider *)self _lock_writeData:v4 atURL:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeCaches
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(PRSPosterConfigurationCacheProvider *)self _lockURL];
  [(PRSPosterConfigurationCacheProvider *)self _lock_removeAtURL:v3];

  v4 = [(PRSPosterConfigurationCacheProvider *)self _homeURL];
  [(PRSPosterConfigurationCacheProvider *)self _lock_removeAtURL:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_readAtURL:(id)a3
{
  v3 = a3;
  v14 = 0;
  v4 = [v3 checkResourceIsReachableAndReturnError:&v14];
  v5 = v14;
  v6 = v5;
  if (v4)
  {
    v13 = 0;
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:1 error:&v13];
    v8 = v13;
    v9 = v8;
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10)
    {
      goto LABEL_15;
    }

    v11 = PRSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PRSPosterConfigurationCacheProvider _lock_readAtURL:];
    }
  }

  else
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_14;
    }

    v11 = PRSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PRSPosterConfigurationCacheProvider _lock_readAtURL:];
    }

    v9 = 0;
  }

LABEL_14:
  v7 = 0;
LABEL_15:

  return v7;
}

- (void)_lock_writeData:(id)a3 atURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PRSPosterConfigurationCacheProvider *)self _lock_setupSharedWorkspaceIfNeeded];
  v10 = 0;
  LOBYTE(self) = [v7 writeToURL:v6 options:268435457 error:&v10];

  v8 = v10;
  if ((self & 1) == 0)
  {
    v9 = PRSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PRSPosterConfigurationCacheProvider _lock_writeData:atURL:];
    }
  }
}

- (void)_lock_removeAtURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v9];
  v6 = v9;
  v7 = v6;
  if ((v5 & 1) == 0 && v6)
  {
    v8 = PRSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PRSPosterConfigurationCacheProvider _lock_removeAtURL:];
    }
  }
}

- (void)_lock_setupSharedWorkspaceIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCachingReason:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSURL *soft_PBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURL(void)"];
  [v0 handleFailureInFunction:v1 file:@"PRSPosterConfigurationCacheProvider.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_lock_readAtURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_lock_readAtURL:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_lock_writeData:atURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_lock_removeAtURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end