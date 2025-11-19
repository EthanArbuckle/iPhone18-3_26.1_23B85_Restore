@interface UIWorkspaceSceneRequestOptionsFactory
@end

@implementation UIWorkspaceSceneRequestOptionsFactory

void __55___UIWorkspaceSceneRequestOptionsFactory_sharedFactory__block_invoke()
{
  v0 = [[_UIWorkspaceSceneRequestOptionsFactory alloc] _init];
  v1 = qword_1ED49FE80;
  qword_1ED49FE80 = v0;
}

void __98___UIWorkspaceSceneRequestOptionsFactory_buildWorkspaceRequestOptionsForRequest_withContinuation___block_invoke(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("SceneRequestFactory", &qword_1ED49FEB0);
    if (*CategoryCachedImpl)
    {
      v21 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = a1[4];
        v29 = 138412290;
        v30 = v22;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Neither a result nor an error was produced by builder: %@", &v29, 0xCu);
      }
    }

    v6 = _UISceneErrorWithCode(1);
  }

  if (!v6)
  {
    v9 = [v5 specification];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 uiSceneSessionRole];
      if (([a1[5] isEqualToString:v11] & 1) == 0)
      {
        v16 = __UILogGetCategoryCachedImpl("SceneRequestFactory", &qword_1ED49FEC8);
        if (*v16)
        {
          v26 = *(v16 + 8);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = a1[4];
            v28 = a1[5];
            v29 = 138412802;
            v30 = v27;
            v31 = 2112;
            v32 = v28;
            v33 = 2112;
            v34 = v11;
            _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Builder produced a workspace request options object with a specification whose role does not match the requested one. builder=%@; expectedRole=%@; builtRole=%@", &v29, 0x20u);
          }
        }

        v17 = a1[6];
        v18 = _UISceneErrorWithCode(1);
        (*(v17 + 16))(v17, 0, v18);

        goto LABEL_16;
      }

      v12 = __UILogGetCategoryCachedImpl("SceneRequestFactory", &qword_1ED49FED0);
      if (*v12)
      {
        v25 = *(v12 + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v29 = 138412290;
          v30 = v5;
          _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Successfully built workspace request options: %@", &v29, 0xCu);
        }
      }

      v13 = *(a1[6] + 16);
    }

    else
    {
      v14 = __UILogGetCategoryCachedImpl("SceneRequestFactory", &qword_1ED49FEC0);
      if (*v14)
      {
        v23 = *(v14 + 8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = a1[4];
          v29 = 138412546;
          v30 = v24;
          v31 = 2112;
          v32 = v5;
          _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Builder produced a workspace request options object with no specification. builder=%@; workspaceOptions=%@", &v29, 0x16u);
        }
      }

      v15 = a1[6];
      v11 = _UISceneErrorWithCode(1);
      v13 = *(v15 + 16);
    }

    v13();
LABEL_16:

    goto LABEL_17;
  }

  v8 = __UILogGetCategoryCachedImpl("SceneRequestFactory", &qword_1ED49FEB8);
  if (*v8)
  {
    v19 = *(v8 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[4];
      v29 = 138412546;
      v30 = v6;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Failed to build workspace request options: %@; builder=%@", &v29, 0x16u);
    }
  }

  (*(a1[6] + 16))();
LABEL_17:
}

@end