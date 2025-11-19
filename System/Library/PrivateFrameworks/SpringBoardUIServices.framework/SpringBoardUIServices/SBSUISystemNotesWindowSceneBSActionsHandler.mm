@interface SBSUISystemNotesWindowSceneBSActionsHandler
- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation SBSUISystemNotesWindowSceneBSActionsHandler

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v27 = [v7 mutableCopy];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v25 = v8;
    v11 = v8;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      v26 = *MEMORY[0x1E698E5A8];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = objc_opt_self();
          v19 = objc_opt_isKindOfClass();

          if (v19)
          {
            [v27 removeObject:v17];
            v20 = [v11 delegate];
            if ([v20 conformsToProtocol:&unk_1F1E25940] && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v20 notesSceneDidReceiveCreateNewNoteRequest:v11];
              v21 = [MEMORY[0x1E698E600] response];
              [v17 sendResponse:v21];
            }

            else
            {
              v22 = MEMORY[0x1E698E600];
              v21 = [MEMORY[0x1E696ABC0] errorWithDomain:v26 code:1 userInfo:0];
              v23 = [v22 responseForError:v21];
              [v17 sendResponse:v23];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    v8 = v25;
  }

  return v27;
}

- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6
{
  v29 = self;
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v15)
  {
    v18 = 0;
    v24 = v14;
    goto LABEL_14;
  }

  v30 = v12;
  v16 = v11;
  v17 = v10;
  v18 = 0;
  v19 = *v32;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v32 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v31 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;

        v18 = v22;
      }

      else
      {
        [v13 addObject:{v21, v29}];
      }
    }

    v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v15);

  if (v18)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v23 = MEMORY[0x1E695DFD8];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "connectionSource")}];
    v25 = [v23 setWithObject:v24];
    [v15 setValue:v25 forKey:@"_SBSUISystemNotesWindowSceneConnectionOptionsSceneConnectionSourceKey"];

    v10 = v17;
    v11 = v16;
    v12 = v30;
LABEL_14:

    goto LABEL_16;
  }

  v15 = 0;
  v10 = v17;
  v11 = v16;
  v12 = v30;
LABEL_16:
  v26 = SBLogSystemNotes();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [SBSUISystemNotesWindowSceneBSActionsHandler _launchOptionsFromActions:v29 forFBSScene:v15 uiSceneSession:v26 transitionContext:?];
  }

  v27 = objc_alloc_init(MEMORY[0x1E69DD680]);
  [v27 setLaunchOptionsDictionary:v15];
  [v27 setUnprocessedActions:v13];

  return v27;
}

- (void)_launchOptionsFromActions:(NSObject *)a3 forFBSScene:uiSceneSession:transitionContext:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  v5 = v7;
  _os_log_debug_impl(&dword_1A9A79000, a3, OS_LOG_TYPE_DEBUG, "[%@] passing launchOptions: %@", &v6, 0x16u);
}

@end