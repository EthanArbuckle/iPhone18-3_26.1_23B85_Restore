@interface PLAssetsdPrivacySupportService
- (PLAssetsdPrivacySupportService)initWithConnectionAuthorization:(id)authorization;
- (void)presentLimitedLibraryPickerReprompt:(id)reprompt;
- (void)setClientPrivacyOptions:(id)options reply:(id)reply;
@end

@implementation PLAssetsdPrivacySupportService

- (void)setClientPrivacyOptions:(id)options reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v17 = 0u;
  *sel = 0u;
  v15 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v15) = enabled;
  if (enabled)
  {
    *(&v15 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setClientPrivacyOptions:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v15 + 1), (&v17 + 8));
  }

  v9 = *MEMORY[0x1E69BFEF0];
  v10 = [optionsCopy objectForKeyedSubscript:{*MEMORY[0x1E69BFEF0], v15}];

  if (v10)
  {
    v11 = [optionsCopy objectForKeyedSubscript:v9];
    -[PLAssetsdConnectionAuthorization setClientLimitedLibraryCapable:](self->_connectionAuthorization, "setClientLimitedLibraryCapable:", [v11 BOOLValue]);
  }

  replyCopy[2](replyCopy, 0);
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

- (void)presentLimitedLibraryPickerReprompt:(id)reprompt
{
  v18 = *MEMORY[0x1E69E9840];
  repromptCopy = reprompt;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: presentLimitedLibraryPickerReprompt:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  trustedCallerDisplayName = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerDisplayName];
  trustedCallerPhotoLibraryUsageDescription = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerPhotoLibraryUsageDescription];
  v8 = PLPresentLimitedLibraryPickerRepromptForApplication();
  repromptCopy[2](repromptCopy, v8);

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

- (PLAssetsdPrivacySupportService)initWithConnectionAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v9.receiver = self;
  v9.super_class = PLAssetsdPrivacySupportService;
  v6 = [(PLAssetsdPrivacySupportService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionAuthorization, authorization);
  }

  return v7;
}

@end