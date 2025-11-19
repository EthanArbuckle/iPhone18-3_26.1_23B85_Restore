@interface PLAssetsdPrivacySupportService
- (PLAssetsdPrivacySupportService)initWithConnectionAuthorization:(id)a3;
- (void)presentLimitedLibraryPickerReprompt:(id)a3;
- (void)setClientPrivacyOptions:(id)a3 reply:(id)a4;
@end

@implementation PLAssetsdPrivacySupportService

- (void)setClientPrivacyOptions:(id)a3 reply:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  *sel = 0u;
  v15 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v15) = v8;
  if (v8)
  {
    *(&v15 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setClientPrivacyOptions:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v15 + 1), (&v17 + 8));
  }

  v9 = *MEMORY[0x1E69BFEF0];
  v10 = [v6 objectForKeyedSubscript:{*MEMORY[0x1E69BFEF0], v15}];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:v9];
    -[PLAssetsdConnectionAuthorization setClientLimitedLibraryCapable:](self->_connectionAuthorization, "setClientLimitedLibraryCapable:", [v11 BOOLValue]);
  }

  v7[2](v7, 0);
  if (v16 == 1)
  {
    os_activity_scope_leave((&v17 + 8));
  }

  if (v17)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v20 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)presentLimitedLibraryPickerReprompt:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = v5;
  if (v5)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: presentLimitedLibraryPickerReprompt:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  v6 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerDisplayName];
  v7 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerPhotoLibraryUsageDescription];
  v8 = PLPresentLimitedLibraryPickerRepromptForApplication();
  v4[2](v4, v8);

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

- (PLAssetsdPrivacySupportService)initWithConnectionAuthorization:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLAssetsdPrivacySupportService;
  v6 = [(PLAssetsdPrivacySupportService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionAuthorization, a3);
  }

  return v7;
}

@end