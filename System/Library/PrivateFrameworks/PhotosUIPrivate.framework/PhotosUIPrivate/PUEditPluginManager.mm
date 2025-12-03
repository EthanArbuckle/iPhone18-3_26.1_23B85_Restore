@interface PUEditPluginManager
+ (id)sharedManagerForMediaType:(unint64_t)type;
- (BOOL)hasMarkupPlugin;
- (BOOL)hasNonMarkupPlugins;
- (BOOL)hasPlugins;
- (id)_allowedPluginTypes;
- (id)_initWithMediaType:(unint64_t)type;
- (id)pluginActivities;
- (id)pluginActivitiesExceptMarkup;
- (void)_discoveredAvailableExtensions:(id)extensions;
- (void)rediscoverAvailablePlugins;
- (void)setPlugins:(id)plugins;
@end

@implementation PUEditPluginManager

- (void)setPlugins:(id)plugins
{
  pluginsCopy = plugins;
  v5 = pluginsCopy;
  if (self->_plugins != pluginsCopy)
  {
    v9 = pluginsCopy;
    pluginsCopy = [(NSArray *)pluginsCopy isEqualToArray:?];
    v5 = v9;
    if ((pluginsCopy & 1) == 0)
    {
      v6 = [(NSArray *)v9 copy];
      plugins = self->_plugins;
      self->_plugins = v6;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"PUEditPluginManagerPluginsDidChangeNotification" object:self userInfo:0];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](pluginsCopy, v5);
}

- (id)pluginActivitiesExceptMarkup
{
  v18 = *MEMORY[0x1E69E9840];
  plugins = [(PUEditPluginManager *)self plugins];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(plugins, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = plugins;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 pu_isMarkupExtension] & 1) == 0)
        {
          v10 = [[PUEditPluginActivity alloc] initWithPlugin:v9];
          if (v10)
          {
            v11 = v10;
            [v3 addObject:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)pluginActivities
{
  v18 = *MEMORY[0x1E69E9840];
  plugins = [(PUEditPluginManager *)self plugins];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(plugins, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = plugins;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 pu_isMarkupExtension])
        {
          v10 = [[PUEditPluginActionActivity alloc] initWithPlugin:v9 systemImageName:@"pencil.tip.crop.circle"];
        }

        else
        {
          v10 = [[PUEditPluginActivity alloc] initWithPlugin:v9];
        }

        v11 = v10;
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_discoveredAvailableExtensions:(id)extensions
{
  v47 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = extensionsCopy;
  v5 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        _plugIn = [v9 _plugIn];
        containingUrl = [_plugIn containingUrl];

        if (!containingUrl)
        {
          v12 = MEMORY[0x1E695DFF8];
          v13 = MEMORY[0x1E696AEC0];
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          v16 = [v13 stringWithFormat:@"appLessExtension://%@", uUIDString];
          containingUrl = [v12 URLWithString:v16];
        }

        v17 = [v4 objectForKey:containingUrl];
        if (!v17 || ([v9 identifier], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "identifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "compare:", v19), v19, v18, v20 == -1))
        {
          [v4 setObject:v9 forKey:containingUrl];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v6);
  }

  allValues = [v4 allValues];
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allValues, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = allValues;
  v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v38;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v37 + 1) + 8 * j);
        identifier = [v28 identifier];
        v30 = [PUEditPlugin pu_isMarkupExtensionIdentifier:identifier]^ 1;

        v31 = [[PUEditPlugin alloc] initWithExtension:v28 pluginCategoryType:v30];
        [v22 addObject:v31];
      }

      v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v25);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PUEditPluginManager__discoveredAvailableExtensions___block_invoke;
  block[3] = &unk_1E7B80C38;
  block[4] = self;
  v36 = v22;
  v32 = v22;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)rediscoverAvailablePlugins
{
  _allowedPluginTypes = [(PUEditPluginManager *)self _allowedPluginTypes];
  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PUEditPluginManager_rediscoverAvailablePlugins__block_invoke;
  v6[3] = &unk_1E7B80C38;
  v6[4] = self;
  v7 = _allowedPluginTypes;
  v5 = _allowedPluginTypes;
  dispatch_async(v4, v6);
}

void __49__PUEditPluginManager_rediscoverAvailablePlugins__block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  v4 = [v3 allowAnyPlugin];

  v5 = MEMORY[0x1E696ABD0];
  if (v4)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__PUEditPluginManager_rediscoverAvailablePlugins__block_invoke_2;
    v15[3] = &unk_1E7B76BC8;
    v6 = v16;
    v7 = *(a1 + 32);
    v16[0] = v2;
    v16[1] = v7;
    v8 = v2;
    [v5 extensionsWithMatchingAttributes:0 completion:v15];
  }

  else
  {
    v17 = *MEMORY[0x1E696A2F8];
    v18[0] = @"com.apple.photo-editing";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__PUEditPluginManager_rediscoverAvailablePlugins__block_invoke_3;
    v11[3] = &unk_1E7B76BF0;
    v6 = &v12;
    v12 = *(a1 + 40);
    v13 = v2;
    v14 = *(a1 + 32);
    v10 = v2;
    [v5 extensionsWithMatchingAttributes:v9 completion:v11];
  }
}

uint64_t __49__PUEditPluginManager_rediscoverAvailablePlugins__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setArray:a2];
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 _discoveredAvailableExtensions:v4];
}

void __49__PUEditPluginManager_rediscoverAvailablePlugins__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __49__PUEditPluginManager_rediscoverAvailablePlugins__block_invoke_4;
        v10[3] = &unk_1E7B7DEA8;
        v10[4] = v8;
        v9 = *(a1 + 32);
        v11 = *(a1 + 40);
        [v9 enumerateIndexesUsingBlock:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [*(a1 + 48) _discoveredAvailableExtensions:*(a1 + 40)];
}

uint64_t __49__PUEditPluginManager_rediscoverAvailablePlugins__block_invoke_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) pu_supportsMediaType:a2];
  if (result)
  {
    result = [*(a1 + 40) addObject:*(a1 + 32)];
    *a3 = 1;
  }

  return result;
}

- (id)_allowedPluginTypes
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  mediaType = [(PUEditPluginManager *)self mediaType];
  v5 = mediaType;
  if (mediaType - 2 >= 2 && mediaType != 0)
  {
    if (mediaType != 1)
    {
      goto LABEL_8;
    }

    [indexSet addIndex:0];
  }

  [indexSet addIndex:v5];
LABEL_8:
  v7 = [indexSet copy];

  return v7;
}

- (BOOL)hasMarkupPlugin
{
  v20 = *MEMORY[0x1E69E9840];
  plugins = [(PUEditPluginManager *)self plugins];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [plugins countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(plugins);
        }

        v5 |= [*(*(&v11 + 1) + 8 * i) pu_isMarkupExtension];
      }

      v4 = [plugins countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v5)
    {
      v9 = @"YES";
    }

    *buf = 138543618;
    v16 = plugins;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "PUEditPluginManager hasMarkupPlugin: plugins %{public}@ - result: %@", buf, 0x16u);
  }

  return v5 & 1;
}

- (BOOL)hasNonMarkupPlugins
{
  v20 = *MEMORY[0x1E69E9840];
  plugins = [(PUEditPluginManager *)self plugins];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [plugins countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(plugins);
        }

        v5 |= [*(*(&v11 + 1) + 8 * i) pu_isMarkupExtension] ^ 1;
      }

      v4 = [plugins countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v5)
    {
      v9 = @"YES";
    }

    *buf = 138543618;
    v16 = plugins;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "PUEditPluginManager hasNonMarkupPlugins: plugins %{public}@ - result: %@", buf, 0x16u);
  }

  return v5 & 1;
}

- (BOOL)hasPlugins
{
  plugins = [(PUEditPluginManager *)self plugins];
  v3 = [plugins count] != 0;

  return v3;
}

- (id)_initWithMediaType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PUEditPluginManager;
  result = [(PUEditPluginManager *)&v5 init];
  if (result)
  {
    *(result + 1) = type;
  }

  return result;
}

+ (id)sharedManagerForMediaType:(unint64_t)type
{
  v3 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __49__PUEditPluginManager_sharedManagerForMediaType___block_invoke_3;
      v7[3] = &__block_descriptor_48_e5_v8__0l;
      v7[4] = self;
      v7[5] = 2;
      if (sharedManagerForMediaType__onceToken_197 != -1)
      {
        dispatch_once(&sharedManagerForMediaType__onceToken_197, v7);
      }

      v4 = &sharedManagerForMediaType__sharedManager_196;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_19;
      }

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __49__PUEditPluginManager_sharedManagerForMediaType___block_invoke_4;
      v6[3] = &__block_descriptor_48_e5_v8__0l;
      v6[4] = self;
      v6[5] = 3;
      if (sharedManagerForMediaType__onceToken_199 != -1)
      {
        dispatch_once(&sharedManagerForMediaType__onceToken_199, v6);
      }

      v4 = &sharedManagerForMediaType__sharedManager_198;
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_19;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PUEditPluginManager_sharedManagerForMediaType___block_invoke_2;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = self;
    block[5] = 1;
    if (sharedManagerForMediaType__onceToken_195 != -1)
    {
      dispatch_once(&sharedManagerForMediaType__onceToken_195, block);
    }

    v4 = &sharedManagerForMediaType__sharedManager_194;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__PUEditPluginManager_sharedManagerForMediaType___block_invoke;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = self;
    v9[5] = 0;
    if (sharedManagerForMediaType__onceToken != -1)
    {
      dispatch_once(&sharedManagerForMediaType__onceToken, v9);
    }

    v4 = &sharedManagerForMediaType__sharedManager;
  }

  v3 = *v4;
LABEL_19:

  return v3;
}

uint64_t __49__PUEditPluginManager_sharedManagerForMediaType___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initWithMediaType:*(a1 + 40)];
  v2 = sharedManagerForMediaType__sharedManager;
  sharedManagerForMediaType__sharedManager = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

uint64_t __49__PUEditPluginManager_sharedManagerForMediaType___block_invoke_2(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initWithMediaType:*(a1 + 40)];
  v2 = sharedManagerForMediaType__sharedManager_194;
  sharedManagerForMediaType__sharedManager_194 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

uint64_t __49__PUEditPluginManager_sharedManagerForMediaType___block_invoke_3(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initWithMediaType:*(a1 + 40)];
  v2 = sharedManagerForMediaType__sharedManager_196;
  sharedManagerForMediaType__sharedManager_196 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

uint64_t __49__PUEditPluginManager_sharedManagerForMediaType___block_invoke_4(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initWithMediaType:*(a1 + 40)];
  v2 = sharedManagerForMediaType__sharedManager_198;
  sharedManagerForMediaType__sharedManager_198 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end