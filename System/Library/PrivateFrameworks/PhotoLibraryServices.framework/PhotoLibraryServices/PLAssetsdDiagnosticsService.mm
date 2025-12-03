@interface PLAssetsdDiagnosticsService
- (void)incompleteRestoreProcessesWithReply:(id)reply;
- (void)setPhotosXPCEndpoint:(id)endpoint withReply:(id)reply;
@end

@implementation PLAssetsdDiagnosticsService

- (void)setPhotosXPCEndpoint:(id)endpoint withReply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  replyCopy = reply;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setPhotosXPCEndpoint:withReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  _endpoint = [endpointCopy _endpoint];
  [PLAssetsdNonBindingDebugService setPhotosXPCEndpoint:_endpoint];

  replyCopy[2](replyCopy, 1, 0);
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

- (void)incompleteRestoreProcessesWithReply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = enabled;
  if (enabled)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: incompleteRestoreProcessesWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  v6 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdDiagnosticsService incompleteRestoreProcessesWithReply:]", v11];
  incompleteRestoreProcesses = [v6 incompleteRestoreProcesses];
  replyCopy[2](replyCopy, incompleteRestoreProcesses);

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