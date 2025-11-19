@interface SBSUISystemNotesWindowScene
- (void)takeScreenshotOfDisplays:(id)a3 handler:(id)a4;
@end

@implementation SBSUISystemNotesWindowScene

- (void)takeScreenshotOfDisplays:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E698E5F8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__SBSUISystemNotesWindowScene_takeScreenshotOfDisplays_handler___block_invoke;
    v14[3] = &unk_1E789E448;
    v15 = v6;
    v9 = a3;
    v10 = [v8 responderWithHandler:v14];
    v11 = [objc_alloc(MEMORY[0x1E69D4308]) initWithDisplaysToScreenshot:v9 responder:v10];

    v12 = [(SBSUISystemNotesWindowScene *)self _FBSScene];
    v13 = [MEMORY[0x1E695DFD8] setWithObject:v11];
    [v12 sendActions:v13];
  }
}

void __64__SBSUISystemNotesWindowScene_takeScreenshotOfDisplays_handler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v14 = [v2 error];
  v15 = v2;
  v3 = [v2 info];
  v4 = [v3 objectForSetting:0];

  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 machPortSendRight];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __64__SBSUISystemNotesWindowScene_takeScreenshotOfDisplays_handler___block_invoke_2;
        v16[3] = &unk_1E789E420;
        v16[4] = v11;
        v17 = v5;
        [v12 accessPort:v16];
        [v12 invalidate];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 32) + 16))();
}

void __64__SBSUISystemNotesWindowScene_takeScreenshotOfDisplays_handler___block_invoke_2(uint64_t a1, mach_port_t port)
{
  v7 = IOSurfaceLookupFromMachPort(port);
  [*(a1 + 32) scale];
  v4 = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithIOSurface:v7 scale:0 orientation:v3];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) displayIdentity];
  [v5 setObject:v4 forKey:v6];
}

@end