@interface UISceneConfigurationActionHandler
@end

@implementation UISceneConfigurationActionHandler

void __100___UISceneConfigurationActionHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 UIActionType] == 65)
  {
    [*(*(*(a1 + 40) + 8) + 40) removeObject:v3];
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    if (v5)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
    }

    else
    {
      v9 = @"(nil)";
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v11 stringWithFormat:@"<%@: %p>", v14, v12];
    }

    else
    {
      v15 = @"(nil)";
    }

    v16 = [v4 stringWithFormat:@"Unable to handle _UISceneSessionActivationConfigurationAction %@. UIScene %@ already connected, so UISceneConfiguration cannot be applied. Discarding.", v9, v15];

    v17 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v19 = [v17 errorWithDomain:@"UISceneSessionActivationConfigurationErrorDomain" code:-1 userInfo:v18];

    if ([v5 canSendResponse])
    {
      v20 = [MEMORY[0x1E698E600] responseForError:v19];
      [v5 sendResponse:v20];
    }

    v21 = *(__UILogGetCategoryCachedImpl("SceneSessionActivationConfiguration", &UISceneSessionActivationConfigurationErrorDomain_block_invoke___s_category) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

void __109___UISceneConfigurationActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 UIActionType] == 65)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

@end