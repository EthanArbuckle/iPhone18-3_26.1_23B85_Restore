@interface PLAssetsdPhotoKitAddService
- (PLAssetsdPhotoKitAddService)initWithLibraryServicesManager:(id)a3 connectionAuthorization:(id)a4;
- (void)applyChangesRequest:(id)a3 reply:(id)a4;
- (void)commitRequest:(id)a3 reply:(id)a4;
- (void)dealloc;
@end

@implementation PLAssetsdPhotoKitAddService

- (void)commitRequest:(id)a3 reply:(id)a4
{
  v8 = a4;
  v6 = a3;
  if ([(PLAssetsdPhotoKitAddService *)self validatePhotosAccessScopeForChangesRequest:v6])
  {
    [v6 executeWithService:self reply:v8];
  }

  else
  {
    v7 = [v6 errorWithLocalizedDescription:@"Authorization failure for changes"];

    v8[2](v8, 0, v7);
    v6 = v7;
  }
}

- (void)applyChangesRequest:(id)a3 reply:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  +[PLFileDescriptorFuse checkFileDescriptorFuse];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: applyChangesRequest:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v21 + 1);
    *(&v21 + 1) = v9;

    os_activity_scope_enter(v9, (&v22 + 8));
  }

  connectionAuthorization = self->_connectionAuthorization;
  v20 = 0;
  v12 = [v6 decodeWithService:self clientAuthorization:connectionAuthorization error:&v20];
  v13 = v20;
  if (v12)
  {
    if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientInLimitedLibraryMode])
    {
      [v6 discardUnsupportedLimitedLibraryChangeRequests];
    }

    v14 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization photoKitEntitled];
      *buf = 136315650;
      v25 = "[PLAssetsdPhotoKitAddService applyChangesRequest:reply:]";
      v26 = 2112;
      v27 = v6;
      v28 = 1024;
      v29 = v15;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "##### %s %@ entitled:%d", buf, 0x1Cu);
    }

    [(PLAssetsdPhotoKitAddService *)self commitRequest:v6 reply:v7];
  }

  else
  {
    v7[2](v7, 0, v13);
  }

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "##### %s %@ entitled:%d", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)dealloc
{
  [(PLCameraCaptureTaskConstraintCoordinator *)self->_cameraTaskConstraintCoordinator invalidate];
  v3.receiver = self;
  v3.super_class = PLAssetsdPhotoKitAddService;
  [(PLAssetsdPhotoKitAddService *)&v3 dealloc];
}

- (PLAssetsdPhotoKitAddService)initWithLibraryServicesManager:(id)a3 connectionAuthorization:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PLAssetsdPhotoKitAddService;
  v8 = [(PLAbstractLibraryServicesManagerService *)&v16 initWithLibraryServicesManager:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connectionAuthorization, a4);
    v10 = [v6 persistentStoreCoordinator];
    persistentStoreCoordinator = v9->_persistentStoreCoordinator;
    v9->_persistentStoreCoordinator = v10;

    if (PLPlatformCameraCaptureSupported())
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PhotoKitAddService: %@", v7];
      v13 = [[PLCameraCaptureTaskConstraintCoordinator alloc] initWithTaskContstraintRole:2 name:v12];
      cameraTaskConstraintCoordinator = v9->_cameraTaskConstraintCoordinator;
      v9->_cameraTaskConstraintCoordinator = v13;
    }
  }

  return v9;
}

@end