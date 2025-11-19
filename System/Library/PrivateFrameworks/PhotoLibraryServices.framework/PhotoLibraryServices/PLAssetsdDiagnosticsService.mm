@interface PLAssetsdDiagnosticsService
- (void)incompleteRestoreProcessesWithReply:(id)a3;
- (void)setPhotosXPCEndpoint:(id)a3 withReply:(id)a4;
@end

@implementation PLAssetsdDiagnosticsService

- (void)setPhotosXPCEndpoint:(id)a3 withReply:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  v7 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = v7;
  if (v7)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setPhotosXPCEndpoint:withReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  v8 = [v5 _endpoint];
  [PLAssetsdNonBindingDebugService setPhotosXPCEndpoint:v8];

  v6[2](v6, 1, 0);
  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)incompleteRestoreProcessesWithReply:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = v5;
  if (v5)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: incompleteRestoreProcessesWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  v6 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdDiagnosticsService incompleteRestoreProcessesWithReply:]", v11];
  v7 = [v6 incompleteRestoreProcesses];
  v4[2](v4, v7);

  if (v12 == 1)
  {
    os_activity_scope_leave((&v13 + 8));
  }

  if (v13)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v16 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

@end