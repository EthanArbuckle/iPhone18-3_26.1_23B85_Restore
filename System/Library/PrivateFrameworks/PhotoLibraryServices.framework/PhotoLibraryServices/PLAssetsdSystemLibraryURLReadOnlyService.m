@interface PLAssetsdSystemLibraryURLReadOnlyService
- (PLAssetsdSystemLibraryURLReadOnlyService)initWithConnectionAuthorization:(id)a3;
- (void)systemPhotoLibraryURL:(id)a3;
@end

@implementation PLAssetsdSystemLibraryURLReadOnlyService

- (void)systemPhotoLibraryURL:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  v4 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = v4;
  if (v4)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: systemPhotoLibraryURL:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  v5 = [MEMORY[0x1E69BF2A8] systemLibraryURL];
  v3[2](v3, v5, 0);

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

- (PLAssetsdSystemLibraryURLReadOnlyService)initWithConnectionAuthorization:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLAssetsdSystemLibraryURLReadOnlyService;
  v6 = [(PLAssetsdSystemLibraryURLReadOnlyService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionAuthorization, a3);
  }

  return v7;
}

@end