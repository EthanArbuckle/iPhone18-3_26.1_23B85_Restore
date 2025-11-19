@interface SiriTTSTrainerSession
+ (id)getInstallingProgressBlockForAsset:(id)a3;
+ (void)setInstallingProgressBlock:(id)a3 forAsset:(id)a4;
- (SiriTTSTrainerSession)init;
- (id)getAllAvailableLocales;
- (id)getAllAvailableLocalesWithVer:(int64_t)a3;
- (id)getAllAvailableScriptNames:(id)a3;
- (id)installableTrainingAssetsForLanguage:(id)a3 name:(id)a4 type:(int64_t)a5;
- (id)installedTrainingAssetsForLanguage:(id)a3 name:(id)a4 type:(int64_t)a5;
- (void)cancelTask:(id)a3 reply:(id)a4;
- (void)cleanUpTaskQueue:(id)a3;
- (void)getAllTasks:(id)a3;
- (void)getCurrentAssetVersion:(id)a3 name:(id)a4 reply:(id)a5;
- (void)getRecordingMetadata:(id)a3 name:(id)a4 reply:(id)a5;
- (void)getTaskById:(id)a3 completion:(id)a4;
- (void)installTrainingAsset:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)installingTrainingAsset:(id)a3 progress:(float)a4;
- (void)startRequest:(id)a3 completion:(id)a4;
- (void)uninstallTrainingAsset:(id)a3 completion:(id)a4;
@end

@implementation SiriTTSTrainerSession

+ (id)getInstallingProgressBlockForAsset:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static SiriTTSTrainerSession.getInstallingProgressBlock(for:)(v4);
  v7 = v6;

  if (v5)
  {
    v9[4] = v5;
    v9[5] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_6F84;
    v9[3] = &block_descriptor;
    v5 = _Block_copy(v9);
  }

  return v5;
}

+ (void)setInstallingProgressBlock:(id)a3 forAsset:(id)a4
{
  v5 = _Block_copy(a3);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_7300;
  }

  else
  {
    v6 = 0;
  }

  swift_getObjCClassMetadata();
  v7 = a4;
  static SiriTTSTrainerSession.set(installingProgressBlock:for:)(v5, v6, v7);
  sub_63C4(v5);
}

- (SiriTTSTrainerSession)init
{
  v17.receiver = self;
  v17.super_class = SiriTTSTrainerSession;
  v2 = [(SiriTTSTrainerSession *)&v17 init];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  appId = v2->_appId;
  v2->_appId = v4;

  v6 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.SiriTTSTrainingAgent" options:0];
  connection = v2->_connection;
  v2->_connection = v6;

  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SiriTTSTrainerAgentProtocol];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v9 = [NSArray arrayWithObjects:v20 count:2];
  v10 = [NSSet setWithArray:v9];

  [v8 setClasses:v10 forSelector:"installableTrainingAssetsForLanguage:name:type:reply:" argumentIndex:0 ofReply:1];
  [v8 setClasses:v10 forSelector:"installedTrainingAssetsForLanguage:name:type:reply:" argumentIndex:0 ofReply:1];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v11 = [NSArray arrayWithObjects:v19 count:2];
  v12 = [NSSet setWithArray:v11];
  [v8 setClasses:v12 forSelector:"getAllTasksWithReply:" argumentIndex:0 ofReply:1];

  [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v8];
  [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_101];
  [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_104];
  v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SiriTTSTrainerAgentDelegate];
  v18 = objc_opt_class();
  v14 = [NSArray arrayWithObjects:&v18 count:1];
  v15 = [NSSet setWithArray:v14];

  [v13 setClasses:v15 forSelector:"installingTrainingAsset:progress:" argumentIndex:0 ofReply:0];
  [(NSXPCConnection *)v2->_connection setExportedInterface:v13];
  [(NSXPCConnection *)v2->_connection setExportedObject:v2];
  [(NSXPCConnection *)v2->_connection resume];

  return v2;
}

void __29__SiriTTSTrainerSession_init__block_invoke(id a1)
{
  v1 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "connection invalidated", v2, 2u);
  }
}

void __29__SiriTTSTrainerSession_init__block_invoke_102(id a1)
{
  v1 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "connection interrupted", v2, 2u);
  }
}

- (void)startRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Sending request %@", buf, 0xCu);
  }

  [v6 setAppId:self->_appId];
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __49__SiriTTSTrainerSession_startRequest_completion___block_invoke;
  v12[3] = &unk_26C530;
  v13 = v7;
  v10 = v7;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 startRequest:v6 reply:v10];
}

void __49__SiriTTSTrainerSession_startRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)cleanUpTaskQueue:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __42__SiriTTSTrainerSession_cleanUpTaskQueue___block_invoke;
  v8[3] = &unk_26C530;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
  [v7 cleanUpTaskQueue:v6];
}

void __42__SiriTTSTrainerSession_cleanUpTaskQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getTaskById:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "TaskId %@", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __48__SiriTTSTrainerSession_getTaskById_completion___block_invoke;
  v12[3] = &unk_26C530;
  v13 = v7;
  v10 = v7;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 getTaskById:v6 reply:v10];
}

void __48__SiriTTSTrainerSession_getTaskById_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getRecordingMetadata:(id)a3 name:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "getRecordingMetadata", buf, 2u);
  }

  connection = self->_connection;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __57__SiriTTSTrainerSession_getRecordingMetadata_name_reply___block_invoke;
  v15[3] = &unk_26C530;
  v16 = v8;
  v13 = v8;
  v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v15];
  [v14 getRecordingMetadata:v10 name:v9 reply:v13];
}

void __57__SiriTTSTrainerSession_getRecordingMetadata_name_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)cancelTask:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "cancel task %@", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __42__SiriTTSTrainerSession_cancelTask_reply___block_invoke;
  v12[3] = &unk_26C530;
  v13 = v7;
  v10 = v7;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 cancelTask:v6 reply:v10];
}

void __42__SiriTTSTrainerSession_cancelTask_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getAllTasks:(id)a3
{
  v4 = a3;
  v5 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Get all tasks", buf, 2u);
  }

  connection = self->_connection;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __37__SiriTTSTrainerSession_getAllTasks___block_invoke;
  v9[3] = &unk_26C530;
  v10 = v4;
  v7 = v4;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  [v8 getAllTasksWithReply:v7];
}

void __37__SiriTTSTrainerSession_getAllTasks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getCurrentAssetVersion:(id)a3 name:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "getCurrentAssetVersion", buf, 2u);
  }

  connection = self->_connection;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __59__SiriTTSTrainerSession_getCurrentAssetVersion_name_reply___block_invoke;
  v15[3] = &unk_26C530;
  v16 = v8;
  v13 = v8;
  v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v15];
  [v14 getCurrentAssetVersion:v10 name:v9 reply:v13];
}

void __59__SiriTTSTrainerSession_getCurrentAssetVersion_name_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getAllAvailableLocales
{
  v2 = [[NSArray alloc] initWithObjects:{@"en-US", @"cmn-CN", 0}];

  return v2;
}

- (id)getAllAvailableLocalesWithVer:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = &off_286450;
  }

  else if (a3 == 2)
  {
    v5 = &off_286468;
  }

  else
  {
    v5 = [(SiriTTSTrainerSession *)self getAllAvailableLocales];
  }

  return v5;
}

- (id)getAllAvailableScriptNames:(id)a3
{
  v4 = a3;
  v5 = [[NSArray alloc] initWithObjects:{@"en-US", @"cmn-CN", @"es-MX", 0}];
  v6 = objc_alloc_init(NSArray);
  if ([v5 containsObject:v4])
  {
    v7 = [[NSArray alloc] initWithObjects:{@"default", @"threewords", 0}];
  }

  else
  {
    v8 = [(SiriTTSTrainerSession *)self getAllAvailableLocales];
    v9 = [v8 containsObject:v4];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = [[NSArray alloc] initWithObjects:{@"default", 0, v12}];
  }

  v10 = v7;

  v6 = v10;
LABEL_6:

  return v6;
}

- (id)installableTrainingAssetsForLanguage:(id)a3 name:(id)a4 type:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "installableTrainingAssets for %@ %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v11 = dispatch_semaphore_create(0);
  connection = self->_connection;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __72__SiriTTSTrainerSession_installableTrainingAssetsForLanguage_name_type___block_invoke;
  v21[3] = &unk_26C558;
  v13 = v11;
  v22 = v13;
  v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v21];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __72__SiriTTSTrainerSession_installableTrainingAssetsForLanguage_name_type___block_invoke_131;
  v18[3] = &unk_26C580;
  v20 = buf;
  v15 = v13;
  v19 = v15;
  [v14 installableTrainingAssetsForLanguage:v8 name:v9 type:a5 reply:v18];

  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v16 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v16;
}

void __72__SiriTTSTrainerSession_installableTrainingAssetsForLanguage_name_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error %@", &v5, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __72__SiriTTSTrainerSession_installableTrainingAssetsForLanguage_name_type___block_invoke_131(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)installedTrainingAssetsForLanguage:(id)a3 name:(id)a4 type:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "installedTrainingAssets for %@ %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v11 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_134];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __70__SiriTTSTrainerSession_installedTrainingAssetsForLanguage_name_type___block_invoke_135;
  v14[3] = &unk_26C5A8;
  v14[4] = buf;
  [v11 installedTrainingAssetsForLanguage:v8 name:v9 type:a5 reply:v14];

  v12 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v12;
}

void __70__SiriTTSTrainerSession_installedTrainingAssetsForLanguage_name_type___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Error %@", &v4, 0xCu);
  }
}

- (void)installTrainingAsset:(id)a3 progress:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 factor];
    *buf = 138412290;
    v26 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "installTrainingAsset %@", buf, 0xCu);
  }

  if (v9)
  {
    [SiriTTSTrainerSession setInstallingProgressBlock:v9 forAsset:v8];
  }

  connection = self->_connection;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __66__SiriTTSTrainerSession_installTrainingAsset_progress_completion___block_invoke;
  v22[3] = &unk_26C5D0;
  v14 = v8;
  v23 = v14;
  v15 = v10;
  v24 = v15;
  v16 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v22];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __66__SiriTTSTrainerSession_installTrainingAsset_progress_completion___block_invoke_137;
  v19[3] = &unk_26C5F8;
  v20 = v14;
  v21 = v15;
  v17 = v15;
  v18 = v14;
  [v16 installTrainingAsset:v18 reply:v19];
}

void __66__SiriTTSTrainerSession_installTrainingAsset_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error %@", &v6, 0xCu);
  }

  [SiriTTSTrainerSession setInstallingProgressBlock:0 forAsset:*(a1 + 32)];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __66__SiriTTSTrainerSession_installTrainingAsset_progress_completion___block_invoke_137(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [SiriTTSTrainerSession setInstallingProgressBlock:0 forAsset:*(a1 + 32)];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)uninstallTrainingAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 factor];
    *buf = 138412290;
    v19 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "uninstallTrainingAsset %@", buf, 0xCu);
  }

  connection = self->_connection;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __59__SiriTTSTrainerSession_uninstallTrainingAsset_completion___block_invoke;
  v16[3] = &unk_26C530;
  v11 = v7;
  v17 = v11;
  v12 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __59__SiriTTSTrainerSession_uninstallTrainingAsset_completion___block_invoke_139;
  v14[3] = &unk_26C620;
  v15 = v11;
  v13 = v11;
  [v12 uninstallTrainingAsset:v6 reply:v14];
}

void __59__SiriTTSTrainerSession_uninstallTrainingAsset_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __59__SiriTTSTrainerSession_uninstallTrainingAsset_completion___block_invoke_139(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)installingTrainingAsset:(id)a3 progress:(float)a4
{
  v5 = [SiriTTSTrainerSession getInstallingProgressBlockForAsset:a3];
  if (v5)
  {
    v6 = v5;
    v5[2](a4);
    v5 = v6;
  }
}

@end