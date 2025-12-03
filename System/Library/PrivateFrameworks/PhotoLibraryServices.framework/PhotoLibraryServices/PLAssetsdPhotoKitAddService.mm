@interface PLAssetsdPhotoKitAddService
- (PLAssetsdPhotoKitAddService)initWithLibraryServicesManager:(id)manager connectionAuthorization:(id)authorization;
- (void)applyChangesRequest:(id)request reply:(id)reply;
- (void)commitRequest:(id)request reply:(id)reply;
- (void)dealloc;
@end

@implementation PLAssetsdPhotoKitAddService

- (void)commitRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  if ([(PLAssetsdPhotoKitAddService *)self validatePhotosAccessScopeForChangesRequest:requestCopy])
  {
    [requestCopy executeWithService:self reply:replyCopy];
  }

  else
  {
    v7 = [requestCopy errorWithLocalizedDescription:@"Authorization failure for changes"];

    replyCopy[2](replyCopy, 0, v7);
    requestCopy = v7;
  }
}

- (void)applyChangesRequest:(id)request reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  replyCopy = reply;
  +[PLFileDescriptorFuse checkFileDescriptorFuse];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: applyChangesRequest:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v21 + 1);
    *(&v21 + 1) = v9;

    os_activity_scope_enter(v9, (&v22 + 8));
  }

  connectionAuthorization = self->_connectionAuthorization;
  v20 = 0;
  v12 = [requestCopy decodeWithService:self clientAuthorization:connectionAuthorization error:&v20];
  v13 = v20;
  if (v12)
  {
    if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientInLimitedLibraryMode])
    {
      [requestCopy discardUnsupportedLimitedLibraryChangeRequests];
    }

    v14 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      photoKitEntitled = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization photoKitEntitled];
      *buf = 136315650;
      v25 = "[PLAssetsdPhotoKitAddService applyChangesRequest:reply:]";
      v26 = 2112;
      v27 = requestCopy;
      v28 = 1024;
      v29 = photoKitEntitled;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "##### %s %@ entitled:%d", buf, 0x1Cu);
    }

    [(PLAssetsdPhotoKitAddService *)self commitRequest:requestCopy reply:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, 0, v13);
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

- (PLAssetsdPhotoKitAddService)initWithLibraryServicesManager:(id)manager connectionAuthorization:(id)authorization
{
  managerCopy = manager;
  authorizationCopy = authorization;
  v16.receiver = self;
  v16.super_class = PLAssetsdPhotoKitAddService;
  v8 = [(PLAbstractLibraryServicesManagerService *)&v16 initWithLibraryServicesManager:managerCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connectionAuthorization, authorization);
    persistentStoreCoordinator = [managerCopy persistentStoreCoordinator];
    persistentStoreCoordinator = v9->_persistentStoreCoordinator;
    v9->_persistentStoreCoordinator = persistentStoreCoordinator;

    if (PLPlatformCameraCaptureSupported())
    {
      authorizationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"PhotoKitAddService: %@", authorizationCopy];
      v13 = [[PLCameraCaptureTaskConstraintCoordinator alloc] initWithTaskContstraintRole:2 name:authorizationCopy];
      cameraTaskConstraintCoordinator = v9->_cameraTaskConstraintCoordinator;
      v9->_cameraTaskConstraintCoordinator = v13;
    }
  }

  return v9;
}

@end