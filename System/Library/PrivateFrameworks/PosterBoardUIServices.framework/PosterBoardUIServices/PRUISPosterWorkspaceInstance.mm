@interface PRUISPosterWorkspaceInstance
@end

@implementation PRUISPosterWorkspaceInstance

void __65____PRUISPosterWorkspaceInstance_snapshotWithTimeout_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v6 = a4;
  if ([*(a1 + 32) signal])
  {
    (*(*(a1 + 40) + 16))();
  }
}

BOOL __65____PRUISPosterWorkspaceInstance_snapshotWithTimeout_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = [*(a1 + 32) prepareSnapshot];
  v4 = v3 != 0;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) settings];
    (*(v5 + 16))(v5, v3, [v6 pui_deviceOrientation], 0);
  }

  return v4;
}

void __65____PRUISPosterWorkspaceInstance_snapshotWithTimeout_completion___block_invoke_3(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A588];
  v7[0] = @"Exceeded snapshot timeout";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v3 pui_errorWithCode:8 userInfo:v4];
  (*(v2 + 16))(v2, 0, 0, v5);
}

@end