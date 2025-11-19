@interface SiriTTSService_TTSAXResourceManager
+ (SiriTTSService_TTSAXResourceManager)sharedInstance;
- (NSArray)allCompactResources;
- (SiriTTSService_TTSAXResourceManager)init;
@end

@implementation SiriTTSService_TTSAXResourceManager

- (NSArray)allCompactResources
{
  v26 = *MEMORY[0x1E69E9840];
  allCompactResources = self->_allCompactResources;
  if (allCompactResources)
  {
    v3 = allCompactResources;
  }

  else
  {
    v5 = [(TTSAXResourceManager *)self->_axManager resourcesWithType:4 subType:2];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          if ([v12 isInstalled])
          {
            v13 = objc_alloc_init(SiriTTSService_TTSAXResource);
            v14 = [v12 primaryLanguage];
            [(SiriTTSService_TTSAXResource *)v13 setLanguage:v14];

            v15 = [v12 name];
            [(SiriTTSService_TTSAXResource *)v13 setName:v15];

            v16 = [v12 contentPath];
            [(SiriTTSService_TTSAXResource *)v13 setPath:v16];

            [(NSArray *)v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v17 = self->_allCompactResources;
    self->_allCompactResources = v6;
    v18 = v6;

    v3 = self->_allCompactResources;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (SiriTTSService_TTSAXResourceManager)init
{
  v8.receiver = self;
  v8.super_class = SiriTTSService_TTSAXResourceManager;
  v2 = [(SiriTTSService_TTSAXResourceManager *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getTTSAXResourceManagerClass_softClass;
    v13 = getTTSAXResourceManagerClass_softClass;
    if (!getTTSAXResourceManagerClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getTTSAXResourceManagerClass_block_invoke;
      v9[3] = &unk_1E7AF3988;
      v9[4] = &v10;
      __getTTSAXResourceManagerClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    axManager = v2->_axManager;
    v2->_axManager = v5;
  }

  return v2;
}

+ (SiriTTSService_TTSAXResourceManager)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_738);
  }

  v3 = sharedInstance_instance;

  return v3;
}

@end