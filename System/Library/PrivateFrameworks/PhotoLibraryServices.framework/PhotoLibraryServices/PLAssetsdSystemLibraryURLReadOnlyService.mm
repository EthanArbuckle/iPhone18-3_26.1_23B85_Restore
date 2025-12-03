@interface PLAssetsdSystemLibraryURLReadOnlyService
- (PLAssetsdSystemLibraryURLReadOnlyService)initWithConnectionAuthorization:(id)authorization;
- (void)systemPhotoLibraryURL:(id)l;
@end

@implementation PLAssetsdSystemLibraryURLReadOnlyService

- (void)systemPhotoLibraryURL:(id)l
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: systemPhotoLibraryURL:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  systemLibraryURL = [MEMORY[0x1E69BF2A8] systemLibraryURL];
  lCopy[2](lCopy, systemLibraryURL, 0);

  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (PLAssetsdSystemLibraryURLReadOnlyService)initWithConnectionAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v9.receiver = self;
  v9.super_class = PLAssetsdSystemLibraryURLReadOnlyService;
  v6 = [(PLAssetsdSystemLibraryURLReadOnlyService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionAuthorization, authorization);
  }

  return v7;
}

@end