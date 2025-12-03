@interface VKResourceManager
- (BOOL)isDevResourceWithName:(id)name;
- (VKResourceManager)init;
- (id)_localNameForResourceName:(id)name;
- (id)dataForResourceWithName:(id)name;
- (id)dataForResourceWithName:(id)name fallbackNameHandler:(id)handler;
- (id)pathForResourceWithName:(id)name;
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

- (BOOL)isDevResourceWithName:(id)name
{
  nameCopy = name;
  mEMORY[0x1E69A2468] = [MEMORY[0x1E69A2468] sharedManager];
  vkBundle = self->_vkBundle;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__VKResourceManager_isDevResourceWithName___block_invoke;
  v8[3] = &unk_1E7B38E60;
  v8[4] = self;
  LOBYTE(self) = [mEMORY[0x1E69A2468] isDevResourceWithName:nameCopy fallbackBundle:vkBundle fallbackNameHandler:v8];

  return self;
}

id __43__VKResourceManager_isDevResourceWithName___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _localNameForResourceName:a2];

  return v2;
}

- (id)pathForResourceWithName:(id)name
{
  nameCopy = name;
  mEMORY[0x1E69A2468] = [MEMORY[0x1E69A2468] sharedManager];
  vkBundle = self->_vkBundle;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__VKResourceManager_pathForResourceWithName___block_invoke;
  v9[3] = &unk_1E7B38E60;
  v9[4] = self;
  v7 = [mEMORY[0x1E69A2468] pathForResourceWithName:nameCopy fallbackBundle:vkBundle fallbackNameHandler:v9];

  return v7;
}

id __45__VKResourceManager_pathForResourceWithName___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _localNameForResourceName:a2];

  return v2;
}

- (id)dataForResourceWithName:(id)name fallbackNameHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  mEMORY[0x1E69A2468] = [MEMORY[0x1E69A2468] sharedManager];
  v9 = [mEMORY[0x1E69A2468] dataForResourceWithName:nameCopy fallbackBundle:self->_vkBundle fallbackNameHandler:handlerCopy];

  return v9;
}

- (id)dataForResourceWithName:(id)name
{
  nameCopy = name;
  mEMORY[0x1E69A2468] = [MEMORY[0x1E69A2468] sharedManager];
  vkBundle = self->_vkBundle;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__VKResourceManager_dataForResourceWithName___block_invoke;
  v9[3] = &unk_1E7B38E60;
  v9[4] = self;
  v7 = [mEMORY[0x1E69A2468] dataForResourceWithName:nameCopy fallbackBundle:vkBundle fallbackNameHandler:v9];

  return v7;
}

id __45__VKResourceManager_dataForResourceWithName___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _localNameForResourceName:a2];

  return v2;
}

- (id)_localNameForResourceName:(id)name
{
  nameCopy = name;
  stringByDeletingPathExtension = [nameCopy stringByDeletingPathExtension];
  pathExtension = [nameCopy pathExtension];
  v6 = 0;
  v7 = 2;
  do
  {
    v8 = v6;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%lux", v7];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%lux", v7];
    v11 = [stringByDeletingPathExtension stringByReplacingOccurrencesOfString:v9 withString:v10];

    v6 = 1;
    stringByDeletingPathExtension = v11;
    v7 = 3;
  }

  while ((v8 & 1) == 0);
  v12 = [v11 stringByAppendingPathExtension:pathExtension];

  return v12;
}

@end