@interface VKResourceManager
- (BOOL)isDevResourceWithName:(id)a3;
- (VKResourceManager)init;
- (id)_localNameForResourceName:(id)a3;
- (id)dataForResourceWithName:(id)a3;
- (id)dataForResourceWithName:(id)a3 fallbackNameHandler:(id)a4;
- (id)pathForResourceWithName:(id)a3;
@end

@implementation VKResourceManager

- (VKResourceManager)init
{
  v7.receiver = self;
  v7.super_class = VKResourceManager;
  v2 = [(VKResourceManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.VectorKit"];
    vkBundle = v2->_vkBundle;
    v2->_vkBundle = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)isDevResourceWithName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A2468] sharedManager];
  vkBundle = self->_vkBundle;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__VKResourceManager_isDevResourceWithName___block_invoke;
  v8[3] = &unk_1E7B38E60;
  v8[4] = self;
  LOBYTE(self) = [v5 isDevResourceWithName:v4 fallbackBundle:vkBundle fallbackNameHandler:v8];

  return self;
}

id __43__VKResourceManager_isDevResourceWithName___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _localNameForResourceName:a2];

  return v2;
}

- (id)pathForResourceWithName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A2468] sharedManager];
  vkBundle = self->_vkBundle;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__VKResourceManager_pathForResourceWithName___block_invoke;
  v9[3] = &unk_1E7B38E60;
  v9[4] = self;
  v7 = [v5 pathForResourceWithName:v4 fallbackBundle:vkBundle fallbackNameHandler:v9];

  return v7;
}

id __45__VKResourceManager_pathForResourceWithName___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _localNameForResourceName:a2];

  return v2;
}

- (id)dataForResourceWithName:(id)a3 fallbackNameHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A2468] sharedManager];
  v9 = [v8 dataForResourceWithName:v6 fallbackBundle:self->_vkBundle fallbackNameHandler:v7];

  return v9;
}

- (id)dataForResourceWithName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A2468] sharedManager];
  vkBundle = self->_vkBundle;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__VKResourceManager_dataForResourceWithName___block_invoke;
  v9[3] = &unk_1E7B38E60;
  v9[4] = self;
  v7 = [v5 dataForResourceWithName:v4 fallbackBundle:vkBundle fallbackNameHandler:v9];

  return v7;
}

id __45__VKResourceManager_dataForResourceWithName___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _localNameForResourceName:a2];

  return v2;
}

- (id)_localNameForResourceName:(id)a3
{
  v3 = a3;
  v4 = [v3 stringByDeletingPathExtension];
  v5 = [v3 pathExtension];
  v6 = 0;
  v7 = 2;
  do
  {
    v8 = v6;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%lux", v7];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%lux", v7];
    v11 = [v4 stringByReplacingOccurrencesOfString:v9 withString:v10];

    v6 = 1;
    v4 = v11;
    v7 = 3;
  }

  while ((v8 & 1) == 0);
  v12 = [v11 stringByAppendingPathExtension:v5];

  return v12;
}

@end