@interface UIApplication(SBSUIInCallAdditions)
- (void)SBSUI_requestInCallSceneSessionDestruction:()SBSUIInCallAdditions withReason:analyticsSource:completion:;
@end

@implementation UIApplication(SBSUIInCallAdditions)

- (void)SBSUI_requestInCallSceneSessionDestruction:()SBSUIInCallAdditions withReason:analyticsSource:completion:
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 scene];
  v13 = [v12 _FBSScene];

  v14 = SBLogInCallPresentation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&dword_1A9A79000, v14, OS_LOG_TYPE_DEFAULT, "Client requested destruction of %{public}@", buf, 0xCu);
  }

  if (v13)
  {
    v15 = [SBSUIInCallDestroySceneAction alloc];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __120__UIApplication_SBSUIInCallAdditions__SBSUI_requestInCallSceneSessionDestruction_withReason_analyticsSource_completion___block_invoke;
    v21 = &unk_1E78A0238;
    v22 = 0;
    v23 = v11;
    v16 = [(SBSUIInCallDestroySceneAction *)v15 initWithDestructionReason:a4 analyticsSource:v10 timeout:&v18 withResponseHandler:5.0];
    v17 = [MEMORY[0x1E695DFD8] setWithObject:{v16, v18, v19, v20, v21}];
    [v13 sendActions:v17];

LABEL_7:
    goto LABEL_8;
  }

  if (v11)
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBSUIInCallErrorDomain" code:-1002 userInfo:0];
    (*(v11 + 2))(v11, v16);
    goto LABEL_7;
  }

LABEL_8:
}

@end