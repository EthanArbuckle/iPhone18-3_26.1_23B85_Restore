@interface PLPhotoAnalysisPhotoLibraryService
+ (void)notifyComputeCacheDidLoadForLibrary:(id)library reply:(id)reply;
- (PLPhotoAnalysisPhotoLibraryService)initWithServiceProvider:(id)provider;
- (id)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(id)ds candidateAssetUUIDs:(id)iDs operationID:(id)d error:(id *)error;
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)computeCacheDidLoad:(id)load;
- (void)curatedAssetsFromAssetUUIDs:(id)ds options:(id)options operationID:(id)d reply:(id)reply;
- (void)exportMomentContextDataWithReply:(id)reply;
- (void)extendedCuratedAssetsFromAssetUUIDs:(id)ds options:(id)options operationID:(id)d reply:(id)reply;
- (void)hastingsCurationFromAssetUUIDs:(id)ds options:(id)options operationID:(id)d reply:(id)reply;
- (void)keyAssetFromAssetUUIDs:(id)ds inAllAssets:(id)assets operationID:(id)d reply:(id)reply;
- (void)notifyAvailabilityForFeature:(unint64_t)feature reply:(id)reply;
- (void)requestPersonalizedSensingRefreshWithReply:(id)reply;
- (void)updateKeyAssetOfSocialGroupsWithUUIDs:(id)ds operationID:(id)d reply:(id)reply;
- (void)warmupPhotoLibraryWorkerForDuration:(double)duration operationID:(id)d reply:(id)reply;
@end

@implementation PLPhotoAnalysisPhotoLibraryService

- (void)warmupPhotoLibraryWorkerForDuration:(double)duration operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)serviceProvider photoLibraryService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__PLPhotoAnalysisPhotoLibraryService_warmupPhotoLibraryWorkerForDuration_operationID_reply___block_invoke;
  v17[3] = &unk_1E7577430;
  v12 = replyCopy;
  v18 = v12;
  v13 = [photoLibraryService remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__PLPhotoAnalysisPhotoLibraryService_warmupPhotoLibraryWorkerForDuration_operationID_reply___block_invoke_2;
  v15[3] = &unk_1E7577430;
  v16 = v12;
  v14 = v12;
  [v13 warmupPhotoLibraryWorkerForDuration:dCopy operationID:v15 reply:duration];
}

- (void)notifyAvailabilityForFeature:(unint64_t)feature reply:(id)reply
{
  replyCopy = reply;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider photoLibraryService];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PLPhotoAnalysisPhotoLibraryService_notifyAvailabilityForFeature_reply___block_invoke;
  v13[3] = &unk_1E7577430;
  v8 = replyCopy;
  v14 = v8;
  v9 = [photoLibraryService remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PLPhotoAnalysisPhotoLibraryService_notifyAvailabilityForFeature_reply___block_invoke_2;
  v11[3] = &unk_1E7577430;
  v12 = v8;
  v10 = v8;
  [v9 notifyAvailabilityForFeature:feature reply:v11];
}

- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider photoLibraryService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PLPhotoAnalysisPhotoLibraryService_cancelOperationsWithIdentifiers_reply___block_invoke;
  v15[3] = &unk_1E7576050;
  v16 = identifiersCopy;
  v9 = replyCopy;
  v17 = v9;
  v10 = identifiersCopy;
  v11 = [photoLibraryService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PLPhotoAnalysisPhotoLibraryService_cancelOperationsWithIdentifiers_reply___block_invoke_2;
  v13[3] = &unk_1E7572328;
  v14 = v9;
  v12 = v9;
  [v11 cancelOperationsWithIdentifiers:v10 reply:v13];
}

void __76__PLPhotoAnalysisPhotoLibraryService_cancelOperationsWithIdentifiers_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 setObject:v3 forKeyedSubscript:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)exportMomentContextDataWithReply:(id)reply
{
  replyCopy = reply;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider photoLibraryService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PLPhotoAnalysisPhotoLibraryService_exportMomentContextDataWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [photoLibraryService remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PLPhotoAnalysisPhotoLibraryService_exportMomentContextDataWithReply___block_invoke_2;
  v9[3] = &unk_1E75644B8;
  v10 = v6;
  v8 = v6;
  [v7 exportMomentContextDataWithReply:v9];
}

- (void)requestPersonalizedSensingRefreshWithReply:(id)reply
{
  replyCopy = reply;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider photoLibraryService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__PLPhotoAnalysisPhotoLibraryService_requestPersonalizedSensingRefreshWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [photoLibraryService remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PLPhotoAnalysisPhotoLibraryService_requestPersonalizedSensingRefreshWithReply___block_invoke_2;
  v9[3] = &unk_1E75774A8;
  v10 = v6;
  v8 = v6;
  [v7 requestPersonalizedSensingRefreshWithReply:v9];
}

- (void)computeCacheDidLoad:(id)load
{
  loadCopy = load;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider photoLibraryService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PLPhotoAnalysisPhotoLibraryService_computeCacheDidLoad___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = loadCopy;
  v12 = v6;
  v7 = [photoLibraryService remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PLPhotoAnalysisPhotoLibraryService_computeCacheDidLoad___block_invoke_2;
  v9[3] = &unk_1E7577430;
  v10 = v6;
  v8 = v6;
  [v7 computeCacheDidLoad:v9];
}

- (void)hastingsCurationFromAssetUUIDs:(id)ds options:(id)options operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  optionsCopy = options;
  dsCopy = ds;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)serviceProvider photoLibraryService];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __95__PLPhotoAnalysisPhotoLibraryService_hastingsCurationFromAssetUUIDs_options_operationID_reply___block_invoke;
  v21[3] = &unk_1E7577430;
  v16 = replyCopy;
  v22 = v16;
  v17 = [photoLibraryService remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __95__PLPhotoAnalysisPhotoLibraryService_hastingsCurationFromAssetUUIDs_options_operationID_reply___block_invoke_2;
  v19[3] = &unk_1E756B9C0;
  v20 = v16;
  v18 = v16;
  [v17 hastingsCurationFromAssetUUIDs:dsCopy options:optionsCopy operationID:dCopy reply:v19];
}

- (void)extendedCuratedAssetsFromAssetUUIDs:(id)ds options:(id)options operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  optionsCopy = options;
  dsCopy = ds;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)serviceProvider photoLibraryService];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __100__PLPhotoAnalysisPhotoLibraryService_extendedCuratedAssetsFromAssetUUIDs_options_operationID_reply___block_invoke;
  v21[3] = &unk_1E7577430;
  v16 = replyCopy;
  v22 = v16;
  v17 = [photoLibraryService remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__PLPhotoAnalysisPhotoLibraryService_extendedCuratedAssetsFromAssetUUIDs_options_operationID_reply___block_invoke_2;
  v19[3] = &unk_1E756B9C0;
  v20 = v16;
  v18 = v16;
  [v17 extendedCuratedAssetsFromAssetUUIDs:dsCopy options:optionsCopy operationID:dCopy reply:v19];
}

- (void)curatedAssetsFromAssetUUIDs:(id)ds options:(id)options operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  optionsCopy = options;
  dsCopy = ds;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)serviceProvider photoLibraryService];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__PLPhotoAnalysisPhotoLibraryService_curatedAssetsFromAssetUUIDs_options_operationID_reply___block_invoke;
  v21[3] = &unk_1E7577430;
  v16 = replyCopy;
  v22 = v16;
  v17 = [photoLibraryService remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__PLPhotoAnalysisPhotoLibraryService_curatedAssetsFromAssetUUIDs_options_operationID_reply___block_invoke_2;
  v19[3] = &unk_1E756B9C0;
  v20 = v16;
  v18 = v16;
  [v17 curatedAssetsFromAssetUUIDs:dsCopy options:optionsCopy operationID:dCopy reply:v19];
}

- (void)keyAssetFromAssetUUIDs:(id)ds inAllAssets:(id)assets operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  assetsCopy = assets;
  dsCopy = ds;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)serviceProvider photoLibraryService];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __91__PLPhotoAnalysisPhotoLibraryService_keyAssetFromAssetUUIDs_inAllAssets_operationID_reply___block_invoke;
  v21[3] = &unk_1E7577430;
  v16 = replyCopy;
  v22 = v16;
  v17 = [photoLibraryService remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__PLPhotoAnalysisPhotoLibraryService_keyAssetFromAssetUUIDs_inAllAssets_operationID_reply___block_invoke_2;
  v19[3] = &unk_1E75644B8;
  v20 = v16;
  v18 = v16;
  [v17 keyAssetFromAssetUUIDs:dsCopy inAllAssets:assetsCopy operationID:dCopy reply:v19];
}

- (id)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(id)ds candidateAssetUUIDs:(id)iDs operationID:(id)d error:(id *)error
{
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__179;
  v29 = __Block_byref_object_dispose__180;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__179;
  v23 = __Block_byref_object_dispose__180;
  v24 = 0;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider photoLibraryService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__PLPhotoAnalysisPhotoLibraryService_keyAssetUUIDOfSocialGroupWithPersonUUIDs_candidateAssetUUIDs_operationID_error___block_invoke;
  v18[3] = &unk_1E75773B8;
  v18[4] = &v19;
  v14 = [photoLibraryService synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __117__PLPhotoAnalysisPhotoLibraryService_keyAssetUUIDOfSocialGroupWithPersonUUIDs_candidateAssetUUIDs_operationID_error___block_invoke_2;
  v17[3] = &unk_1E75774D0;
  v17[4] = &v25;
  v17[5] = &v19;
  [v14 keyAssetUUIDOfSocialGroupWithPersonUUIDs:dsCopy candidateAssetUUIDs:iDsCopy operationID:dCopy reply:v17];

  if (error)
  {
    *error = v20[5];
  }

  v15 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v15;
}

void __117__PLPhotoAnalysisPhotoLibraryService_keyAssetUUIDOfSocialGroupWithPersonUUIDs_candidateAssetUUIDs_operationID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)updateKeyAssetOfSocialGroupsWithUUIDs:(id)ds operationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  dsCopy = ds;
  photoLibraryService = [(PLPhotoAnalysisServiceProvider *)serviceProvider photoLibraryService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__PLPhotoAnalysisPhotoLibraryService_updateKeyAssetOfSocialGroupsWithUUIDs_operationID_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [photoLibraryService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__PLPhotoAnalysisPhotoLibraryService_updateKeyAssetOfSocialGroupsWithUUIDs_operationID_reply___block_invoke_2;
  v16[3] = &unk_1E7577430;
  v17 = v13;
  v15 = v13;
  [v14 updateKeyAssetOfSocialGroupsWithUUIDs:dsCopy operationID:dCopy reply:v16];
}

- (PLPhotoAnalysisPhotoLibraryService)initWithServiceProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PLPhotoAnalysisPhotoLibraryService;
  v6 = [(PLPhotoAnalysisPhotoLibraryService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceProvider, provider);
  }

  return v7;
}

+ (void)notifyComputeCacheDidLoadForLibrary:(id)library reply:(id)reply
{
  replyCopy = reply;
  photoAnalysisClient = [library photoAnalysisClient];
  v7 = [[PLPhotoAnalysisPhotoLibraryService alloc] initWithServiceProvider:photoAnalysisClient];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PLPhotoAnalysisPhotoLibraryService_notifyComputeCacheDidLoadForLibrary_reply___block_invoke;
  v9[3] = &unk_1E7577430;
  v10 = replyCopy;
  v8 = replyCopy;
  [(PLPhotoAnalysisPhotoLibraryService *)v7 computeCacheDidLoad:v9];
}

uint64_t __80__PLPhotoAnalysisPhotoLibraryService_notifyComputeCacheDidLoadForLibrary_reply___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

@end