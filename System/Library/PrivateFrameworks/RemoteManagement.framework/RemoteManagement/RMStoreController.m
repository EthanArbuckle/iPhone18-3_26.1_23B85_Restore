@interface RMStoreController
+ (RMStoreController)sharedController;
+ (void)start;
- (RMStoreController)initWithPersistentContainer:(id)a3 context:(id)a4;
- (id)_activeConfigurationsForConfigurationTypes:(id)a3 storeIdentifier:(id)a4 includeAssets:(BOOL)a5 error:(id *)a6;
- (id)_activeConfigurationsForStoreIdentifier:(id)a3 error:(id *)a4;
- (id)_allManagementSourcesReturningError:(id *)a3;
- (id)_buildFlattenedConfigurations:(id)a3 includeAssets:(BOOL)a4 error:(id *)a5;
- (id)_clientForIdentifier:(id)a3;
- (id)_configurationsWithVisibleUIForConfigurationTypes:(id)a3 managementSource:(id)a4 error:(id *)a5;
- (id)_declarationsForStoreIdentifier:(id)a3 declarationTypes:(id)a4 identifier:(id)a5 error:(id *)a6;
- (id)_declarationsOfClass:(Class)a3 managementSource:(id)a4 declarationTypes:(id)a5 identifier:(id)a6 error:(id *)a7;
- (id)_makeClientWithManagementSourceObjectID:(id)a3 storeIdentifier:(id)a4 persistentContainer:(id)a5;
- (id)_managementSourceWithIdentifier:(id)a3 error:(id *)a4;
- (id)_newPayloadWithDeclaration:(id)a3 managementSource:(id)a4 error:(id *)a5;
- (id)_observerStoreWithIdentifier:(id)a3 error:(id *)a4;
- (id)_payloadsForDeclarationIdentifier:(id)a3 managementSource:(id)a4 error:(id *)a5;
- (id)_payloadsForPayloadClass:(Class)a3 identifier:(id)a4 managementSource:(id)a5 error:(id *)a6;
- (id)_providerStoreWithIdentifier:(id)a3 error:(id *)a4;
- (id)_startClientForSourceIdentifier:(id)a3 objectID:(id)a4;
- (id)_subscriberStoreWithIdentifier:(id)a3 error:(id *)a4;
- (unint64_t)_checkActiveDeclarations:(id)a3 mustBeValid:(BOOL)a4 storeIdentifier:(id)a5 error:(id *)a6;
- (void)_addOptionsToManagementSource:(id)a3 options:(id)a4;
- (void)_observerStoresDidChange;
- (void)_start;
- (void)_stopClientForIdentifier:(id)a3;
- (void)_waitForDeclarations:(id)a3 mustBeValid:(BOOL)a4 timeout:(double)a5 storeIdentifier:(id)a6 completionHandler:(id)a7;
- (void)applyChangesForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)certificatePersistentRefForAssetKey:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)certificateStatusWithStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)configurationUIsForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)createStoreWithType:(int64_t)a3 defaultToInteractive:(BOOL)a4 dataSeparated:(BOOL)a5 options:(id)a6 completionHandler:(id)a7;
- (void)declarationManifestForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)declarationStatusDidChange;
- (void)declarationWithIdentifier:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)declarationsForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)declarationsWithTypes:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)deleteDeclarationWithIdentifier:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)displayableProfileConfigurationsForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)fetchDataAtURL:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)linkStoreIdentifier:(id)a3 profileIdentifier:(id)a4 accountIdentifier:(id)a5 completionHandler:(id)a6;
- (void)metadataForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)metadataValueForKey:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)observerStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)observerStoresDidChange;
- (void)observerStoresWithCompletionHandler:(id)a3;
- (void)providerStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)providerStoresWithCompletionHandler:(id)a3;
- (void)removeStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)resolveAsset:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)saveDeclaration:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setConfigurationUIWithStoreIdentifier:(id)a3 declarationIdentifier:(id)a4 declarationServerToken:(id)a5 visible:(BOOL)a6 ui:(id)a7 completionHandler:(id)a8;
- (void)setMetadataValue:(id)a3 forKey:(id)a4 storeIdentifier:(id)a5 completionHandler:(id)a6;
- (void)setShouldInstallConfiguration:(id)a3 shouldInstall:(BOOL)a4 storeIdentifier:(id)a5 completionHandler:(id)a6;
- (void)subscribedDeclarationsWithTypes:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)subscribedStoreConfigurationsVisibleUIWithTypes:(id)a3 completionHandler:(id)a4;
- (void)subscribedStoreDeclarationsWithTypes:(id)a3 completionHandler:(id)a4;
- (void)subscriberStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)subscriberStoresWithCompletionHandler:(id)a3;
- (void)unassignAssets:(id)a3 completionHandler:(id)a4;
- (void)waitForActiveAndValidDeclarations:(id)a3 timeout:(double)a4 storeIdentifier:(id)a5 completionHandler:(id)a6;
- (void)waitForProcessingOfDeclarations:(id)a3 timeout:(double)a4 storeIdentifier:(id)a5 completionHandler:(id)a6;
@end

@implementation RMStoreController

+ (RMStoreController)sharedController
{
  if (qword_1000E6B48 != -1)
  {
    sub_100080708();
  }

  v3 = qword_1000E6B40;

  return v3;
}

- (RMStoreController)initWithPersistentContainer:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = RMStoreController;
  v9 = [(RMStoreController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistentContainer, a3);
    objc_storeStrong(&v10->_context, a4);
    v11 = objc_opt_new();
    clientByIdentifier = v10->_clientByIdentifier;
    v10->_clientByIdentifier = v11;

    v13 = [RMDebounceTimer debounceTimerWithMinimumInterval:v10 maximumInterval:@"RMStoreController" delegate:1.0 identifier:10.0];
    debouncer = v10->_debouncer;
    v10->_debouncer = v13;

    v15 = objc_opt_new();
    waitLock = v10->_waitLock;
    v10->_waitLock = v15;

    v10->_waitingForDeclarationStatusChanges = 0;
  }

  return v10;
}

+ (void)start
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007425C;
  block[3] = &unk_1000D12D0;
  block[4] = a1;
  if (qword_1000E6B50 != -1)
  {
    dispatch_once(&qword_1000E6B50, block);
  }
}

- (void)_start
{
  v3 = [(RMStoreController *)self context];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000744D0;
  v20 = sub_1000744E0;
  v21 = 0;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  [v5 setObject:v6 forKeyedSubscript:&stru_1000D3680];

  v7 = +[DMCPersonaHelper enterprisePersonaIdentifier];
  if (v7)
  {
    v8 = objc_opt_new();
    [v5 setObject:v8 forKeyedSubscript:v7];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000744E8;
  v12[3] = &unk_1000D2D48;
  v12[4] = self;
  v15 = &v16;
  v9 = v4;
  v13 = v9;
  v10 = v5;
  v14 = v10;
  [v3 performBlockAndWait:v12];
  if (!v17[5])
  {
    [(RMStoreController *)self _cleanManagedKeychain:v10];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100074768;
    v11[3] = &unk_1000D2D70;
    v11[4] = self;
    [v9 enumerateKeysAndObjectsUsingBlock:v11];
  }

  _Block_object_dispose(&v16, 8);
}

- (id)_startClientForSourceIdentifier:(id)a3 objectID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RMStoreController *)self persistentContainer];
  v9 = [(RMStoreController *)self _makeClientWithManagementSourceObjectID:v6 storeIdentifier:v7 persistentContainer:v8];

  v10 = [(RMStoreController *)self clientByIdentifier];
  [v10 setObject:v9 forKeyedSubscript:v7];

  [v9 start];

  return v9;
}

- (id)_makeClientWithManagementSourceObjectID:(id)a3 storeIdentifier:(id)a4 persistentContainer:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [RMStoreClient alloc];
  v10 = objc_opt_new();
  v11 = [(RMStoreController *)self persistentContainer];
  v12 = [(RMStoreClient *)v9 initWithManagementSourceObjectID:v8 storeIdentifier:v7 statusQuerier:v10 persistentContainer:v11];

  return v12;
}

- (void)_stopClientForIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(RMStoreController *)self clientByIdentifier];
  v5 = [v4 objectForKeyedSubscript:v7];

  if (v5)
  {
    [v5 remove];
    v6 = [(RMStoreController *)self clientByIdentifier];
    [v6 removeObjectForKey:v7];
  }
}

- (id)_clientForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RMStoreController *)self clientByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)observerStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ObserverStoreWithIdentifier with %{public}@...", &buf, 0xCu);
  }

  v9 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000744D0;
  v19 = sub_1000744E0;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100074D68;
  v11[3] = &unk_1000D2DD8;
  v13 = &v15;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  p_buf = &buf;
  [v9 performBlockAndWait:v11];
  if (*(*(&buf + 1) + 40))
  {
    v7[2](v7, 0);
  }

  else
  {
    v7[2](v7, v16[5]);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)observerStoresWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[RMLog storeController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ObserverStoresWithCompletionHandler...", buf, 2u);
  }

  v6 = [(RMStoreController *)self context];
  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = sub_1000744D0;
  v18 = sub_1000744E0;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000744D0;
  v12 = sub_1000744E0;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074FE0;
  v7[3] = &unk_1000D18B8;
  v7[4] = self;
  v7[5] = buf;
  v7[6] = &v8;
  [v6 performBlockAndWait:v7];
  if (*(v15 + 5))
  {
    v4[2](v4, 0);
  }

  else
  {
    v4[2](v4, v9[5]);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(buf, 8);
}

- (void)declarationWithIdentifier:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[RMLog storeController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DeclarationWithIdentifier with %{public}@...", &buf, 0xCu);
  }

  v12 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = sub_1000744D0;
  v30 = sub_1000744E0;
  v31 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000744D0;
  v25 = sub_1000744E0;
  v26 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000754A0;
  v16[3] = &unk_1000D2E00;
  v19 = &v21;
  v16[4] = self;
  v13 = v9;
  v17 = v13;
  v14 = v8;
  v18 = v14;
  p_buf = &buf;
  [v12 performBlockAndWait:v16];
  if (*(*(&buf + 1) + 40))
  {
    v10[2](v10, 0);
  }

  else
  {
    if ([v22[5] count])
    {
      v15 = [v22[5] objectAtIndexedSubscript:0];
      (v10[2])(v10, v15, 0);
    }

    else
    {
      v15 = [RMErrorUtilities createDeclarationNotFoundErrorWithIdentifier:v14];
      (v10[2])(v10, 0, v15);
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)declarationsForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DeclarationsForStoreIdentifier with %{public}@...", &buf, 0xCu);
  }

  v9 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000744D0;
  v19 = sub_1000744E0;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100075790;
  v11[3] = &unk_1000D2DD8;
  v13 = &v15;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  p_buf = &buf;
  [v9 performBlockAndWait:v11];
  if (*(*(&buf + 1) + 40))
  {
    v7[2](v7, 0);
  }

  else
  {
    v7[2](v7, v16[5]);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)declarationsWithTypes:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[RMLog storeController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DeclarationsWithTypes with %{public}@...", &buf, 0xCu);
  }

  v12 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = sub_1000744D0;
  v29 = sub_1000744E0;
  v30 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100075AB0;
  v15[3] = &unk_1000D2E00;
  v18 = &v20;
  v15[4] = self;
  v13 = v9;
  v16 = v13;
  v14 = v8;
  v17 = v14;
  p_buf = &buf;
  [v12 performBlockAndWait:v15];
  if (*(*(&buf + 1) + 40))
  {
    v10[2](v10, 0);
  }

  else
  {
    v10[2](v10, v21[5]);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)declarationManifestForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DeclarationManifestForStoreIdentifier with %{public}@...", &buf, 0xCu);
  }

  v9 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = sub_1000744D0;
  v29 = sub_1000744E0;
  v30 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100075DC4;
  v15 = &unk_1000D2DD8;
  v18 = &v20;
  v16 = self;
  v10 = v6;
  v17 = v10;
  p_buf = &buf;
  [v9 performBlockAndWait:&v12];
  if (*(*(&buf + 1) + 40))
  {
    v7[2](v7, 0);
  }

  else
  {
    v11 = [RMDeclarationManifest declarationManifestWithDeclarations:v21[5], v12, v13, v14, v15, v16];
    (v7[2])(v7, v11, 0);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)configurationUIsForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ConfigurationUIsForStoreIdentifier with %{public}@...", &buf, 0xCu);
  }

  +[RMConfigurationPublisher fetchVisibleConfigurationUIs];
  v9 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000744D0;
  v19 = sub_1000744E0;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000760BC;
  v11[3] = &unk_1000D18B8;
  v10 = v6;
  v12 = v10;
  p_buf = &buf;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  if (*(*(&buf + 1) + 40))
  {
    v7[2](v7, 0);
  }

  else
  {
    v7[2](v7, v16[5]);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)displayableProfileConfigurationsForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v20 = a4;
  v7 = +[RMLog storeController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DisplayableProfileConfigurations", buf, 2u);
  }

  v45[0] = RMConfigurationTypeLegacyProfiles;
  v45[1] = RMConfigurationTypeLegacyInteractiveProfiles;
  v8 = [NSArray arrayWithObjects:v45 count:2];
  v9 = [NSSet setWithArray:v8];

  v21 = [(RMStoreController *)self context];
  *buf = 0;
  v39 = buf;
  v40 = 0x3032000000;
  v41 = sub_1000744D0;
  v42 = sub_1000744E0;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000744D0;
  v36 = sub_1000744E0;
  v37 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100076830;
  v27[3] = &unk_1000D2E00;
  v30 = &v32;
  v27[4] = self;
  v19 = v9;
  v28 = v19;
  v10 = v6;
  v29 = v10;
  v31 = buf;
  [v21 performBlockAndWait:v27];
  v22 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v33[5];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v44 count:16];
  if (v12)
  {
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 declarationIdentifier];
        v17 = [v15 declarationServerToken];
        v18 = [RMConfigurationStatusArchiver validStatusForStoreIdentifier:v10 declarationIdentifier:v16 serverToken:v17];

        if (v18)
        {
          [v22 addObject:v15];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v44 count:16];
    }

    while (v12);
  }

  v20[2]();
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(buf, 8);
}

- (void)setShouldInstallConfiguration:(id)a3 shouldInstall:(BOOL)a4 storeIdentifier:(id)a5 completionHandler:(id)a6
{
  v7 = a3;
  v8 = a6;
  v9 = +[RMLog storeController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 declarationIdentifier];
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SetShouldInstallConfiguration with %{public}@...", &v12, 0xCu);
  }

  v11 = [RMErrorUtilities createNotImplementedErrorForFeature:@"SetShouldInstallConfiguration"];
  v8[2](v8, v11);
}

- (void)fetchDataAtURL:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[RMLog storeController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fetchDataAtURL with %{public}@...", &buf, 0xCu);
  }

  v12 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = sub_1000744D0;
  v30 = sub_1000744E0;
  v31 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100076CAC;
  v19[3] = &unk_1000D15B0;
  v19[4] = self;
  v13 = v9;
  v20 = v13;
  p_buf = &buf;
  v22 = &v23;
  [v12 performBlockAndWait:v19];
  if (*(*(&buf + 1) + 40))
  {
    v10[2](v10, 0);
  }

  else
  {
    v14 = objc_opt_new();
    v15 = *(v24 + 24);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100076D64;
    v16[3] = &unk_1000D2E28;
    v17 = v8;
    v18 = v10;
    [v14 fetchDataAtURL:v17 useDDM:v15 completionHandler:v16];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)observerStoresDidChange
{
  v2 = [(RMStoreController *)self debouncer];
  [v2 trigger];
}

- (void)_observerStoresDidChange
{
  v2 = +[RMLog storeController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000808E0();
  }

  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 postNotificationName:RMObserverStoreStoreDidChangeNotification object:0 userInfo:0 options:3];
}

- (void)createStoreWithType:(int64_t)a3 defaultToInteractive:(BOOL)a4 dataSeparated:(BOOL)a5 options:(id)a6 completionHandler:(id)a7
{
  v10 = a6;
  v11 = a7;
  v12 = +[RMLog storeController];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CreateStoreWithType...", buf, 2u);
  }

  *buf = 0;
  v48 = buf;
  v49 = 0x3032000000;
  v50 = sub_1000744D0;
  v51 = sub_1000744E0;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1000744D0;
  v45 = sub_1000744E0;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000744D0;
  v39 = sub_1000744E0;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1000744D0;
  v33 = sub_1000744E0;
  v34 = 0;
  [(RMStoreController *)self context];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10007721C;
  v20 = &unk_1000D2E50;
  v13 = v28 = a3;
  v21 = v13;
  v24 = &v29;
  v14 = v10;
  v22 = v14;
  v23 = self;
  v25 = buf;
  v26 = &v41;
  v27 = &v35;
  [v13 performBlockAndWait:&v17];
  if (*(v48 + 5))
  {
    v15 = [(RMStoreController *)self _startClientForSourceIdentifier:v42[5] objectID:v36[5], v17, v18, v19, v20, v21];
    [v15 create];
  }

  v16 = [RMClientController sharedController:v17];
  [v16 managementChannelsChanged];

  v11[2](v11, *(v48 + 5), v30[5]);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(buf, 8);
}

- (void)removeStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "RemoveStoreWithIdentifier with %{public}@...", &buf, 0xCu);
  }

  [(RMStoreController *)self _stopClientForIdentifier:v6];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = sub_1000744D0;
  v25 = sub_1000744E0;
  v26 = 0;
  v9 = [(RMStoreController *)self context];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10007778C;
  v17 = &unk_1000D2E78;
  v18 = self;
  v10 = v6;
  v19 = v10;
  p_buf = &buf;
  v11 = v9;
  v20 = v11;
  [v11 performBlockAndWait:&v14];
  [RMConfigurationStatusArchiver removeAllStatusForStoreIdentifier:v10 error:0, v14, v15, v16, v17, v18];
  v12 = +[RMExternalStatusPublisher sharedPublisher];
  [v12 listenToNotificationsForAllKeyPaths];

  [RMStoreAssetCache removeAllCachedAssetsForStoreIdentifier:v10 error:0];
  v13 = +[RMClientController sharedController];
  [v13 managementChannelsChanged];

  v7[2](v7, *(*(&buf + 1) + 40));
  _Block_object_dispose(&buf, 8);
}

- (void)providerStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ProviderStoreWithIdentifier with %{public}@...", &buf, 0xCu);
  }

  v9 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000744D0;
  v19 = sub_1000744E0;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100077AFC;
  v11[3] = &unk_1000D2DD8;
  v13 = &v15;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  p_buf = &buf;
  [v9 performBlockAndWait:v11];
  if (*(*(&buf + 1) + 40))
  {
    v7[2](v7, 0);
  }

  else
  {
    v7[2](v7, v16[5]);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)providerStoresWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[RMLog storeController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ProviderStoresWithCompletionHandler...", buf, 2u);
  }

  v6 = [(RMStoreController *)self context];
  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = sub_1000744D0;
  v18 = sub_1000744E0;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000744D0;
  v12 = sub_1000744E0;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077D74;
  v7[3] = &unk_1000D18B8;
  v7[4] = self;
  v7[5] = buf;
  v7[6] = &v8;
  [v6 performBlockAndWait:v7];
  if (*(v15 + 5))
  {
    v4[2](v4, 0);
  }

  else
  {
    v4[2](v4, v9[5]);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(buf, 8);
}

- (void)saveDeclaration:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[RMLog storeController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 declarationIdentifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SaveDeclaration with %{public}@...", &buf, 0xCu);
  }

  v13 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = sub_1000744D0;
  v25 = sub_1000744E0;
  v26 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100078174;
  v17[3] = &unk_1000D2EA0;
  v17[4] = self;
  v14 = v9;
  v18 = v14;
  p_buf = &buf;
  v15 = v8;
  v19 = v15;
  v16 = v13;
  v20 = v16;
  [v16 performBlockAndWait:v17];
  v10[2](v10, *(*(&buf + 1) + 40));

  _Block_object_dispose(&buf, 8);
}

- (void)deleteDeclarationWithIdentifier:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[RMLog storeController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DeleteDeclarationWithIdentifier with %{public}@...", &buf, 0xCu);
  }

  v12 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100078844;
  v16[3] = &unk_1000D2EA0;
  v16[4] = self;
  v13 = v9;
  v17 = v13;
  p_buf = &buf;
  v14 = v8;
  v18 = v14;
  v15 = v12;
  v19 = v15;
  [v15 performBlockAndWait:v16];
  v10[2](v10, *(*(&buf + 1) + 40));

  _Block_object_dispose(&buf, 8);
}

- (void)applyChangesForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ApplyChangesForStoreIdentifier with %{public}@...", &v12, 0xCu);
  }

  v9 = [(RMStoreController *)self _clientForIdentifier:v6];
  v10 = v9;
  if (v9)
  {
    [v9 syncWithCompletionHandler:v7];
  }

  else
  {
    v11 = +[RMClientController sharedController];
    [v11 applyNowWithIdentifier:v6 completionHandler:v7];
  }
}

- (void)linkStoreIdentifier:(id)a3 profileIdentifier:(id)a4 accountIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[RMLog storeController];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "LinkStoreIdentifier with %{public}@...", &buf, 0xCu);
  }

  v15 = [(RMStoreController *)self clientByIdentifier];
  v16 = [v15 objectForKeyedSubscript:v10];
  v17 = v16 == 0;

  if (!v17)
  {
    v18 = [(RMStoreController *)self clientByIdentifier];
    [v18 removeObjectForKey:v10];
  }

  v19 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = sub_1000744D0;
  v38 = sub_1000744E0;
  v39 = 0;
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100078F68;
  v28 = &unk_1000D2EC8;
  v29 = self;
  v20 = v10;
  v30 = v20;
  p_buf = &buf;
  v21 = v11;
  v31 = v21;
  v22 = v12;
  v32 = v22;
  v23 = v19;
  v33 = v23;
  [v23 performBlockAndWait:&v25];
  if (*(*(&buf + 1) + 40))
  {
    v13[2](v13);
  }

  else
  {
    [RMMDMHelper setActive:1 scope:[RMStoreHelper storeScope:v25]];
    v24 = +[RMClientController sharedController];
    [v24 takeOwnershipOfMDMStoreWithIdentifier:v20 completionHandler:v13];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)waitForActiveAndValidDeclarations:(id)a3 timeout:(double)a4 storeIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = +[RMLog storeController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WaitForActiveAndValidDeclarations with %{public}@...", &v14, 0xCu);
  }

  [(RMStoreController *)self _waitForDeclarations:v12 mustBeValid:1 timeout:v10 storeIdentifier:v11 completionHandler:a4];
}

- (void)waitForProcessingOfDeclarations:(id)a3 timeout:(double)a4 storeIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = +[RMLog storeController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WaitForProcessingOfDeclarations with %{public}@...", &v14, 0xCu);
  }

  [(RMStoreController *)self _waitForDeclarations:v12 mustBeValid:0 timeout:v10 storeIdentifier:v11 completionHandler:a4];
}

- (void)_waitForDeclarations:(id)a3 mustBeValid:(BOOL)a4 timeout:(double)a5 storeIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = self->_waitLock;
  objc_sync_enter(v15);
  if ([(RMStoreController *)self waitingForDeclarationStatusChanges])
  {
    v16 = +[RMLog storeController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100080C38();
    }

    v17 = +[RMErrorUtilities createInternalError];
    v14[2](v14, v17);

    objc_sync_exit(v15);
  }

  else
  {
    [(RMStoreController *)self setWaitingForDeclarationStatusChanges:1];
    objc_sync_exit(v15);

    v15 = dispatch_queue_create([@"waitDeclarationsQueue" cStringUsingEncoding:4], 0);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000794B8;
    v18[3] = &unk_1000D2F18;
    v18[4] = self;
    v19 = v12;
    v23 = a4;
    v20 = v13;
    v21 = v14;
    v22 = a5;
    dispatch_async(v15, v18);
  }
}

- (void)declarationStatusDidChange
{
  if ([(RMStoreController *)self waitingForDeclarationStatusChanges])
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"RMDeclarationStatusDidChangeNotification" object:0];
  }
}

- (unint64_t)_checkActiveDeclarations:(id)a3 mustBeValid:(BOOL)a4 storeIdentifier:(id)a5 error:(id *)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a5;
  v11 = +[RMInternalStatusPublisher sharedPublisher];
  v75 = 0;
  v12 = [v11 queryForDeclarationStatusWithManagementSourceIdentifier:v10 error:&v75];
  v13 = v75;
  if (v12)
  {
    v74 = v13;
    v14 = [RMModelStatusManagementDeclarations load:v12 serializationType:1 error:&v74];
    v15 = v74;

    if (v14)
    {
      v50 = v8;
      v51 = v15;
      v53 = a6;
      v54 = v12;
      v55 = v11;
      v56 = v10;
      v57 = v9;
      v16 = [v9 mutableCopy];
      v65 = objc_opt_new();
      v64 = objc_opt_new();
      v63 = objc_opt_new();
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v17 = [v14 statusActivations];
      v77[0] = v17;
      v18 = [v14 statusConfigurations];
      v77[1] = v18;
      v52 = v14;
      v19 = [v14 statusAssets];
      v77[2] = v19;
      v20 = [NSArray arrayWithObjects:v77 count:3];

      obj = v20;
      v60 = [v20 countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v60)
      {
        v59 = *v71;
        v21 = RMModelStatusManagementDeclarations_Declaration_Valid_invalid;
        v62 = RMModelStatusManagementDeclarations_Declaration_Valid_unknown;
        do
        {
          v22 = 0;
          do
          {
            if (*v71 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v61 = v22;
            v23 = *(*(&v70 + 1) + 8 * v22);
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v24 = v23;
            v25 = [v24 countByEnumeratingWithState:&v66 objects:v76 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v67;
              do
              {
                for (i = 0; i != v26; i = i + 1)
                {
                  if (*v67 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v66 + 1) + 8 * i);
                  v30 = [v29 statusIdentifier];
                  if ([v16 containsObject:v30])
                  {
                    v31 = [v29 statusIdentifier];
                    [v16 removeObject:v31];

                    v32 = [v29 statusActive];
                    v33 = [v32 BOOLValue];

                    v34 = v65;
                    if (!v33)
                    {
                      goto LABEL_17;
                    }

                    v35 = [v29 statusValid];
                    v36 = [v35 isEqualToString:v21];

                    v34 = v64;
                    if ((v36 & 1) != 0 || ([v29 statusValid], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "isEqualToString:", v62), v37, v34 = v63, v38))
                    {
LABEL_17:
                      [v34 addObject:v30];
                    }
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v66 objects:v76 count:16];
              }

              while (v26);
            }

            v22 = v61 + 1;
          }

          while ((v61 + 1) != v60);
          v60 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v60);
      }

      if ([v16 count])
      {
        v15 = +[RMErrorUtilities createInternalError];

        v39 = +[RMLog storeController];
        v11 = v55;
        v10 = v56;
        v12 = v54;
        v14 = v52;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_100080E40();
        }

        v40 = 0;
        if (v53 && v15)
        {
          v41 = v15;
          v40 = 0;
          *v53 = v15;
        }
      }

      else
      {
        v11 = v55;
        v10 = v56;
        v12 = v54;
        v15 = v51;
        v14 = v52;
        if (v50 && [v64 count])
        {
          v46 = +[RMErrorUtilities createInternalError];

          v47 = +[RMLog storeController];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            sub_100080EA8();
          }

          v40 = 0;
          if (v53 && v46)
          {
            v48 = v46;
            v40 = 0;
            *v53 = v46;
          }

          v15 = v46;
        }

        else if ([v65 count])
        {
          v40 = 1;
        }

        else if ([v63 count])
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }
      }

      v9 = v57;
    }

    else
    {
      v44 = +[RMLog storeController];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_100080F10();
      }

      v40 = 0;
      if (a6 && v15)
      {
        v45 = v15;
        v40 = 0;
        *a6 = v15;
      }
    }

    v13 = v15;
  }

  else
  {
    v42 = +[RMLog storeController];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_100080F78();
    }

    v40 = 0;
    if (a6 && v13)
    {
      v43 = v13;
      v40 = 0;
      *a6 = v13;
    }
  }

  return v40;
}

- (void)subscriberStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SubscriberStoreWithIdentifier with %{public}@...", &buf, 0xCu);
  }

  v9 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000744D0;
  v19 = sub_1000744E0;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007A17C;
  v11[3] = &unk_1000D2DD8;
  v13 = &v15;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  p_buf = &buf;
  [v9 performBlockAndWait:v11];
  if (*(*(&buf + 1) + 40))
  {
    v7[2](v7, 0);
  }

  else
  {
    v7[2](v7, v16[5]);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)subscriberStoresWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[RMLog storeController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SubscriberStoresWithCompletionHandler...", buf, 2u);
  }

  v6 = [(RMStoreController *)self context];
  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = sub_1000744D0;
  v18 = sub_1000744E0;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000744D0;
  v12 = sub_1000744E0;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007A3F4;
  v7[3] = &unk_1000D18B8;
  v7[4] = self;
  v7[5] = buf;
  v7[6] = &v8;
  [v6 performBlockAndWait:v7];
  if (*(v15 + 5))
  {
    v4[2](v4, 0);
  }

  else
  {
    v4[2](v4, v9[5]);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(buf, 8);
}

- (void)subscribedStoreDeclarationsWithTypes:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SubscribedStoreDeclarationsWithTypes...", buf, 2u);
  }

  v9 = [(RMStoreController *)self context];
  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = sub_1000744D0;
  v32 = sub_1000744E0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000744D0;
  v26 = sub_1000744E0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000744D0;
  v20 = sub_1000744E0;
  v21 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007A844;
  v11[3] = &unk_1000D2F40;
  v11[4] = self;
  v13 = buf;
  v14 = &v22;
  v15 = &v16;
  v10 = v6;
  v12 = v10;
  [v9 performBlockAndWait:v11];
  if (*(v29 + 5))
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    (*(v7 + 2))(v7, v23[5], v17[5]);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(buf, 8);
}

- (void)subscribedDeclarationsWithTypes:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[RMLog storeController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SubscribedDeclarationsWithTypes with %{public}@...", &buf, 0xCu);
  }

  v12 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = sub_1000744D0;
  v29 = sub_1000744E0;
  v30 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007AD7C;
  v15[3] = &unk_1000D2E00;
  v18 = &v20;
  v15[4] = self;
  v13 = v8;
  v16 = v13;
  v14 = v9;
  v17 = v14;
  p_buf = &buf;
  [v12 performBlockAndWait:v15];
  if (*(*(&buf + 1) + 40))
  {
    v10[2](v10, 0);
  }

  else
  {
    v10[2](v10, v21[5]);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)subscribedStoreConfigurationsVisibleUIWithTypes:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SubscribedStoreConfigurationsVisibleUIWithTypes...", buf, 2u);
  }

  v9 = [(RMStoreController *)self context];
  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = sub_1000744D0;
  v32 = sub_1000744E0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000744D0;
  v26 = sub_1000744E0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000744D0;
  v20 = sub_1000744E0;
  v21 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007B088;
  v11[3] = &unk_1000D2F40;
  v11[4] = self;
  v13 = buf;
  v14 = &v22;
  v15 = &v16;
  v10 = v6;
  v12 = v10;
  [v9 performBlockAndWait:v11];
  if (*(v29 + 5))
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    (*(v7 + 2))(v7, v23[5], v17[5]);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(buf, 8);
}

- (void)resolveAsset:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[RMLog storeController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ResolveAsset with %{public}@...", &buf, 0xCu);
  }

  v12 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x3032000000;
  v52 = sub_1000744D0;
  v53 = sub_1000744E0;
  v54 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_1000744D0;
  v48 = sub_1000744E0;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1000744D0;
  v42 = sub_1000744E0;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007B6FC;
  v22[3] = &unk_1000D2F68;
  v22[4] = self;
  v13 = v9;
  v23 = v13;
  v14 = v8;
  v24 = v14;
  p_buf = &buf;
  v26 = &v44;
  v27 = &v38;
  v28 = &v34;
  v29 = &v30;
  [v12 performBlockAndWait:v22];
  if (*(*(&buf + 1) + 40))
  {
    v10[2](v10, 0);
  }

  else
  {
    v15 = v45[5];
    v16 = v39[5];
    v17 = *(v35 + 24);
    v18 = v31[3];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10007B9D4;
    v19[3] = &unk_1000D2B88;
    v20 = v14;
    v21 = v10;
    [RMStoreAssetResolver resolveAsset:v15 storeIdentifier:v13 unresolvedAsset:v20 personaID:v16 isDDM:v17 enrollmentType:v18 completionHandler:v19];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)unassignAssets:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RMStoreController *)self context];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000744D0;
  v23 = sub_1000744E0;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007BC6C;
  v16[3] = &unk_1000D0E38;
  v16[4] = self;
  v9 = v6;
  v17 = v9;
  v18 = &v19;
  [v8 performBlockAndWait:v16];
  v10 = v20[5];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007BD0C;
  v13[3] = &unk_1000D10B0;
  v11 = v9;
  v14 = v11;
  v12 = v7;
  v15 = v12;
  [RMStoreAssetResolver unassignAssets:v11 personaID:v10 completionHandler:v13];

  _Block_object_dispose(&v19, 8);
}

- (void)setConfigurationUIWithStoreIdentifier:(id)a3 declarationIdentifier:(id)a4 declarationServerToken:(id)a5 visible:(BOOL)a6 ui:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = +[RMLog storeController];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v14;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SetConfigurationUIWithStoreIdentifier with %{public}@...", &buf, 0xCu);
  }

  v20 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = sub_1000744D0;
  v43 = sub_1000744E0;
  v44 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10007C078;
  v27[3] = &unk_1000D2F90;
  v27[4] = self;
  v21 = v14;
  v28 = v21;
  p_buf = &buf;
  v22 = v15;
  v29 = v22;
  v23 = v16;
  v30 = v23;
  v35 = a6;
  v24 = v17;
  v31 = v24;
  v34 = &v36;
  v25 = v20;
  v32 = v25;
  [v25 performBlockAndWait:v27];
  v26 = *(&buf + 1);
  if (*(v37 + 24) == 1 && !*(*(&buf + 1) + 40))
  {
    [(RMStoreController *)self observerStoresDidChange];
    v26 = *(&buf + 1);
  }

  v18[2](v18, *(v26 + 40));

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)certificatePersistentRefForAssetKey:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RMStoreController *)self context];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000744D0;
  v32 = sub_1000744E0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000744D0;
  v26 = sub_1000744E0;
  v27 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007CC58;
  v18[3] = &unk_1000D15B0;
  v18[4] = self;
  v12 = v9;
  v19 = v12;
  v20 = &v28;
  v21 = &v22;
  [v11 performBlockAndWait:v18];
  if (v29[5])
  {
    v10[2](v10, 0);
  }

  else
  {
    v13 = +[RMStoreHelper storeScope];
    v14 = [RMManagedKeychainController newManagedKeychainControllerForScope:v13 personaID:v23[5]];
    v17 = 0;
    v15 = [v14 certificatePersistentRefForAssetKey:v8 error:&v17];
    v16 = v17;
    (v10[2])(v10, v15, v16);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

- (void)certificateStatusWithStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v33 = a4;
  v34 = [(RMStoreController *)self context];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_1000744D0;
  v62 = sub_1000744E0;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_1000744D0;
  v56 = sub_1000744E0;
  v57 = 0;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10007D2B0;
  v48[3] = &unk_1000D15B0;
  v48[4] = self;
  v7 = v6;
  v49 = v7;
  v50 = &v58;
  v51 = &v52;
  [v34 performBlockAndWait:v48];
  if (v59[5])
  {
    v33[2](v33, 0);
  }

  else
  {
    v8 = +[RMStoreHelper storeScope];
    v9 = [RMManagedKeychainController newManagedKeychainControllerForScope:v8 personaID:v53[5]];
    v47 = 0;
    v32 = v9;
    v31 = [v9 assetKeysForCertificatesAndReturnError:&v47];
    v10 = v47;
    if (v10)
    {
      v11 = v10;
      (v33[2])(v33, 0, v10);
    }

    else
    {
      v46 = 0;
      v30 = [v32 assetKeysForIdentitiesAndReturnError:&v46];
      v12 = v46;
      if (v12)
      {
        v11 = v12;
        (v33[2])(v33, 0, v12);
      }

      else
      {
        v35 = [NSSet setWithArray:v30];
        v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v31 count]);
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v13 = v31;
        v14 = [v13 countByEnumeratingWithState:&v42 objects:v65 count:16];
        if (v14)
        {
          v15 = *v43;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v43 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v42 + 1) + 8 * i);
              v18 = [RMStoreDeclarationKey newDeclarationKey:v17];
              v19 = [v18 storeIdentifier];
              v20 = [v19 isEqualToString:v7];

              if (v20)
              {
                [v36 addObject:v17];
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v42 objects:v65 count:16];
          }

          while (v14);
        }

        if ([v36 count])
        {
          v41 = 0;
          v29 = [v32 certificatePersistentRefsForAssetKeys:v36 error:&v41];
          v11 = v41;
          if (v11)
          {
            (v33[2])(v33, 0, v11);
          }

          else
          {
            v21 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v29 count]);
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v22 = v29;
            v23 = [v22 countByEnumeratingWithState:&v37 objects:v64 count:16];
            if (v23)
            {
              v24 = *v38;
              do
              {
                for (j = 0; j != v23; j = j + 1)
                {
                  if (*v38 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v26 = *(*(&v37 + 1) + 8 * j);
                  v27 = [v22 objectForKeyedSubscript:{v26, v29}];
                  v28 = +[RMCertificateStatusItem certificateStatusItemWithPersistentRef:isIdentity:](RMCertificateStatusItem, "certificateStatusItemWithPersistentRef:isIdentity:", v27, [v35 containsObject:v26]);
                  [v21 setObject:v28 forKeyedSubscript:v26];
                }

                v23 = [v22 countByEnumeratingWithState:&v37 objects:v64 count:16];
              }

              while (v23);
            }

            (v33[2])(v33, v21, 0);
          }
        }

        else
        {
          (v33[2])(v33, &__NSDictionary0__struct, 0);
          v11 = 0;
        }
      }
    }
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);
}

- (void)metadataForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MetadataForStoreIdentifier in store %{public}@...", &buf, 0xCu);
  }

  v9 = [(RMStoreController *)self context];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000744D0;
  v19 = sub_1000744E0;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007D588;
  v11[3] = &unk_1000D15B0;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  p_buf = &buf;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  v7[2](v7, v16[5], *(*(&buf + 1) + 40));

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)metadataValueForKey:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[RMLog storeController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MetadataValueForKey with key %{public}@ in store %{public}@...", buf, 0x16u);
  }

  v12 = [(RMStoreController *)self context];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = sub_1000744D0;
  v28 = sub_1000744E0;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000744D0;
  v24 = sub_1000744E0;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007DAB4;
  v15[3] = &unk_1000D2FB8;
  v15[4] = self;
  v13 = v9;
  v16 = v13;
  v18 = buf;
  v14 = v8;
  v17 = v14;
  v19 = &v20;
  [v12 performBlockAndWait:v15];
  v10[2](v10, v21[5], *(*&buf[8] + 40));

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(buf, 8);
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4 storeIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[RMLog storeController];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SetMetadataValue with key %{public}@ in store %{public}@...", buf, 0x16u);
  }

  v15 = [(RMStoreController *)self context];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = sub_1000744D0;
  v28 = sub_1000744E0;
  v29 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007DF3C;
  v20[3] = &unk_1000D2EC8;
  v20[4] = self;
  v16 = v12;
  v21 = v16;
  v25 = buf;
  v17 = v11;
  v22 = v17;
  v18 = v10;
  v23 = v18;
  v19 = v15;
  v24 = v19;
  [v19 performBlockAndWait:v20];
  v13[2](v13, *(*&buf[8] + 40));

  _Block_object_dispose(buf, 8);
}

- (id)_observerStoreWithIdentifier:(id)a3 error:(id *)a4
{
  v11 = 0;
  v5 = [(RMStoreController *)self _managementSourceWithIdentifier:a3 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = [RMObserverStore storeFromManagementSource:v5];
  }

  else
  {
    v8 = 0;
    if (a4 && v6)
    {
      v9 = v6;
      v8 = 0;
      *a4 = v7;
    }
  }

  return v8;
}

- (id)_providerStoreWithIdentifier:(id)a3 error:(id *)a4
{
  v11 = 0;
  v5 = [(RMStoreController *)self _managementSourceWithIdentifier:a3 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = [RMProviderStore storeFromManagementSource:v5];
  }

  else
  {
    v8 = 0;
    if (a4 && v6)
    {
      v9 = v6;
      v8 = 0;
      *a4 = v7;
    }
  }

  return v8;
}

- (id)_subscriberStoreWithIdentifier:(id)a3 error:(id *)a4
{
  v11 = 0;
  v5 = [(RMStoreController *)self _managementSourceWithIdentifier:a3 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = [RMSubscriberStore storeFromManagementSource:v5];
  }

  else
  {
    v8 = 0;
    if (a4 && v6)
    {
      v9 = v6;
      v8 = 0;
      *a4 = v7;
    }
  }

  return v8;
}

- (id)_managementSourceWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [RMManagementSource fetchRequestWithIdentifier:v5];
  v15 = 0;
  v7 = [v6 execute:&v15];
  v8 = v15;
  if (v7)
  {
    if ([v7 count])
    {
      v9 = [v7 objectAtIndexedSubscript:0];
    }

    else
    {
      v12 = +[RMLog storeController];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100081650();
      }

      if (a4)
      {
        v13 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v5];
        if (v13)
        {
          v13 = v13;
          *a4 = v13;
        }
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = +[RMLog storeController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1000816B8();
    }

    v9 = 0;
    if (a4 && v8)
    {
      v11 = v8;
      v9 = 0;
      *a4 = v8;
    }
  }

  return v9;
}

- (id)_allManagementSourcesReturningError:(id *)a3
{
  v4 = +[RMManagementSource fetchRequest];
  v20 = 0;
  v5 = [v4 execute:&v20];
  v6 = v20;
  if (v5)
  {
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObject:{*(*(&v16 + 1) + 8 * i), v16}];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v13 = +[RMLog storeController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_100019970();
    }

    v7 = 0;
    if (a3 && v6)
    {
      v14 = v6;
      v7 = 0;
      *a3 = v6;
    }
  }

  return v7;
}

- (void)_addOptionsToManagementSource:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:RMStoreOptionName];
  [v5 setName:v7];

  v8 = [v6 objectForKeyedSubscript:RMStoreOptionDescription];
  [v5 setStoreDescription:v8];

  v9 = RMStoreOptionEnrollmentURL;
  v10 = [v6 objectForKeyedSubscript:RMStoreOptionEnrollmentURL];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:v9];
    v12 = [NSURL URLWithString:v11];
    [v5 setBootstrapURI:v12];
  }

  v13 = RMStoreOptionMetaData;
  v14 = [v6 objectForKeyedSubscript:RMStoreOptionMetaData];

  if (v14)
  {
    v15 = [v6 objectForKeyedSubscript:v13];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v5 managedObjectContext];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v27 = v15;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          v21 = 0;
          do
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v28 + 1) + 8 * v21);
            v23 = [[RMManagementSourceMetadata alloc] initWithContext:v16];
            [(RMManagementSourceMetadata *)v23 setKey:v22];
            v24 = [v17 objectForKeyedSubscript:v22];
            [(RMManagementSourceMetadata *)v23 setValue:v24];

            [(RMManagementSourceMetadata *)v23 setManagementSource:v5];
            v21 = v21 + 1;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v19);
      }

      v15 = v27;
    }

    else
    {
      v16 = +[RMLog storeController];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100081720();
      }
    }
  }

  v25 = [v6 objectForKeyedSubscript:RMStoreOptionAccountIdentifier];
  [v5 setAccountIdentifier:v25];

  v26 = [v6 objectForKeyedSubscript:RMStoreOptionPersonaIdentifier];
  [v5 setPersonaIdentifier:v26];
}

- (id)_declarationsForStoreIdentifier:(id)a3 declarationTypes:(id)a4 identifier:(id)a5 error:(id *)a6
{
  v28 = a4;
  v27 = a5;
  v34 = 0;
  v10 = [(RMStoreController *)self _managementSourceWithIdentifier:a3 error:&v34];
  v11 = v34;
  v12 = v11;
  if (v10)
  {
    v13 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v35[2] = objc_opt_class();
    v35[3] = objc_opt_class();
    v14 = [NSArray arrayWithObjects:v35 count:4];
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v26 = a6;
      v17 = *v31;
      while (2)
      {
        v18 = 0;
        v19 = v12;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v30 + 1) + 8 * v18);
          v29 = v19;
          v21 = [(RMStoreController *)self _declarationsOfClass:v20 managementSource:v10 declarationTypes:v28 identifier:v27 error:&v29, v26];
          v12 = v29;

          if (!v21)
          {
            if (v26 && v12)
            {
              v23 = v12;
              *v26 = v12;
            }

            v22 = 0;
            goto LABEL_15;
          }

          [v13 addObjectsFromArray:v21];

          v18 = v18 + 1;
          v19 = v12;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v22 = v13;
LABEL_15:
  }

  else
  {
    v22 = 0;
    if (a6 && v11)
    {
      v24 = v11;
      v22 = 0;
      *a6 = v12;
    }
  }

  return v22;
}

- (id)_declarationsOfClass:(Class)a3 managementSource:(id)a4 declarationTypes:(id)a5 identifier:(id)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    v14 = [(objc_class *)a3 fetchRequest];
    if (v12)
    {
      v37 = @"declarationType";
      v39 = v12;
      v15 = @"(%K == %@) && ((%K == %d) || (%K == %d)) && (%K in %@)";
    }

    else
    {
      if (!v13)
      {
        [NSPredicate predicateWithFormat:@"(%K == %@) && ((%K == %d) || (%K == %d))", @"managementSource", v11, @"loadState", 1, @"loadState", 4, v36, v38];
        goto LABEL_10;
      }

      v37 = @"identifier";
      v39 = v13;
      v15 = @"(%K == %@) && ((%K == %d) || (%K == %d)) && (%K == %@)";
    }

    [NSPredicate predicateWithFormat:v15, @"managementSource", v11, @"loadState", 1, @"loadState", 4, v37, v39];
    v16 = LABEL_10:;
    [v14 setPredicate:v16];

    v50 = 0;
    v17 = [v14 execute:&v50];
    v18 = v50;
    if (v17)
    {
      v42 = v13;
      v43 = v12;
      v19 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v41 = v17;
      obj = v17;
      v20 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v20)
      {
        v21 = v20;
        v40 = a7;
        v22 = *v47;
        while (2)
        {
          v23 = 0;
          v24 = v18;
          do
          {
            if (*v47 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v25 = [*(*(&v46 + 1) + 8 * v23) payload];
            v45 = v24;
            v26 = [RMModelDeclarationBase loadData:v25 serializationType:0 error:&v45];
            v18 = v45;

            if (!v26)
            {
              v28 = +[RMLog storeController];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_100081814();
              }

              v13 = v42;
              v12 = v43;
              v17 = v41;
              if (v40 && v18)
              {
                v29 = v18;
                *v40 = v18;
              }

              v27 = 0;
              goto LABEL_26;
            }

            [v19 addObject:v26];

            v23 = v23 + 1;
            v24 = v18;
          }

          while (v21 != v23);
          v21 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v27 = v19;
      v12 = v43;
      v13 = v42;
      v17 = v41;
LABEL_26:
    }

    else
    {
      v30 = +[RMLog storeController];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000818A8();
      }

      v27 = 0;
      if (a7 && v18)
      {
        v31 = v18;
        v27 = 0;
        *a7 = v18;
      }
    }

    goto LABEL_33;
  }

  v33 = +[RMLog storeController];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_100081788(a3);
  }

  if (a7)
  {
    v34 = +[RMErrorUtilities createInternalError];
    v14 = v34;
    if (v34)
    {
      v35 = v34;
      v27 = 0;
      *a7 = v14;
    }

    else
    {
      v27 = 0;
    }

LABEL_33:

    goto LABEL_34;
  }

  v27 = 0;
LABEL_34:

  return v27;
}

- (id)_activeConfigurationsForConfigurationTypes:(id)a3 storeIdentifier:(id)a4 includeAssets:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v36 = 0;
  v11 = [(RMStoreController *)self _managementSourceWithIdentifier:a4 error:&v36];
  v12 = v36;
  v13 = v12;
  if (v11)
  {
    v30 = v7;
    v14 = [RMConfigurationQuerier alloc];
    v15 = [(RMStoreController *)self persistentContainer];
    v16 = [(RMConfigurationQuerier *)v14 initWithPersistentContainer:v15];

    v31 = v10;
    v17 = [v10 allObjects];
    v18 = [v11 identifier];
    v29 = v16;
    v19 = [(RMConfigurationQuerier *)v16 activeConfigurationsByTypeForTypes:v17 managementSourceIdentifier:v18 error:a6];

    v20 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = [v19 allValues];
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v20 addObjectsFromArray:*(*(&v32 + 1) + 8 * i)];
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v23);
    }

    v26 = [(RMStoreController *)self _buildFlattenedConfigurations:v20 includeAssets:v30 error:a6];

    v10 = v31;
  }

  else
  {
    v26 = 0;
    if (a6 && v12)
    {
      v27 = v12;
      v26 = 0;
      *a6 = v13;
    }
  }

  return v26;
}

- (id)_activeConfigurationsForStoreIdentifier:(id)a3 error:(id *)a4
{
  v17 = 0;
  v6 = [(RMStoreController *)self _managementSourceWithIdentifier:a3 error:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = [RMConfigurationQuerier alloc];
    v10 = [(RMStoreController *)self persistentContainer];
    v11 = [(RMConfigurationQuerier *)v9 initWithPersistentContainer:v10];

    v12 = [v6 identifier];
    v13 = [(RMConfigurationQuerier *)v11 activeConfigurationsForManagementSourceIdentifier:v12 error:a4];

    v14 = [(RMStoreController *)self _buildFlattenedConfigurations:v13 includeAssets:0 error:a4];
  }

  else
  {
    v14 = 0;
    if (a4 && v7)
    {
      v15 = v7;
      v14 = 0;
      *a4 = v8;
    }
  }

  return v14;
}

- (id)_configurationsWithVisibleUIForConfigurationTypes:(id)a3 managementSource:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [RMConfigurationQuerier alloc];
  v33 = self;
  v11 = [(RMStoreController *)self persistentContainer];
  v12 = [(RMConfigurationQuerier *)v10 initWithPersistentContainer:v11];

  v36 = v8;
  v13 = [v8 allObjects];
  v35 = v9;
  v14 = [v9 identifier];
  v32 = v12;
  v34 = a5;
  v15 = [(RMConfigurationQuerier *)v12 configurationUIsByTypeForTypes:v13 managementSourceIdentifier:v14 error:a5];

  v41 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = v15;
  obj = [v15 allValues];
  v39 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v39)
  {
    v38 = *v47;
    do
    {
      v16 = 0;
      do
      {
        if (*v47 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v16;
        v17 = *(*(&v46 + 1) + 8 * v16);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v43;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v43 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v42 + 1) + 8 * i);
              v24 = [v23 channel];
              v25 = [v24 identifier];
              v26 = [v23 identifier];
              v27 = [v23 serverToken];
              v28 = [RMConfigurationStatusArchiver validStatusForStoreIdentifier:v25 declarationIdentifier:v26 serverToken:v27];

              if (v28)
              {
                [v41 addObject:v23];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v20);
        }

        v16 = v40 + 1;
      }

      while ((v40 + 1) != v39);
      v39 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v39);
  }

  v29 = [(RMStoreController *)v33 _buildFlattenedConfigurations:v41 includeAssets:1 error:v34];

  return v29;
}

- (id)_buildFlattenedConfigurations:(id)a3 includeAssets:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  if (v5)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v54;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v53 + 1) + 8 * i) assetByIdentifier];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 allValues];
            [v7 addObjectsFromArray:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v10);
    }
  }

  v42 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count] + objc_msgSend(v7, "count"));
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v49 objects:v58 count:16];
  obj = v16;
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v50;
    while (2)
    {
      v21 = 0;
      v22 = v19;
      do
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = [*(*(&v49 + 1) + 8 * v21) content];
        v48 = v22;
        v24 = [RMModelDeclarationBase loadData:v23 serializationType:0 error:&v48];
        v19 = v48;

        if (!v24)
        {
          v25 = +[RMLog storeController];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100081910();
          }

          v26 = obj;
          if (a5 && v19)
          {
            v27 = v19;
            *a5 = v19;
          }

LABEL_43:
          v35 = 0;
          goto LABEL_44;
        }

        [v42 addObject:v24];

        v21 = v21 + 1;
        v22 = v19;
      }

      while (v18 != v21);
      v16 = obj;
      v18 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v40 = v7;
  v28 = [v40 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v45;
    while (2)
    {
      v31 = 0;
      v32 = v19;
      do
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(v40);
        }

        v33 = [*(*(&v44 + 1) + 8 * v31) content];
        v43 = v32;
        v34 = [RMModelDeclarationBase loadData:v33 serializationType:0 error:&v43];
        v19 = v43;

        if (!v34)
        {
          v36 = +[RMLog storeController];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_1000819A4();
          }

          v26 = obj;
          if (a5 && v19)
          {
            v37 = v19;
            *a5 = v19;
          }

          goto LABEL_43;
        }

        [v42 addObject:v34];

        v31 = v31 + 1;
        v32 = v19;
      }

      while (v29 != v31);
      v29 = [v40 countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  v35 = v42;
  v26 = obj;
LABEL_44:

  return v35;
}

- (id)_payloadsForDeclarationIdentifier:(id)a3 managementSource:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v29[3] = objc_opt_class();
  obj = [NSArray arrayWithObjects:v29 count:4];
  v11 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = a5;
    v13 = 0;
    v14 = *v26;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v25 + 1) + 8 * v15);
        v24 = v16;
        v18 = [(RMStoreController *)self _payloadsForPayloadClass:v17 identifier:v8 managementSource:v9 error:&v24];
        v13 = v24;

        if (!v18)
        {
          if (v22 && v13)
          {
            v19 = v13;
            *v22 = v13;
          }

          v20 = 0;
          goto LABEL_16;
        }

        [v10 addObjectsFromArray:v18];

        v15 = v15 + 1;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

  v20 = v10;
LABEL_16:

  return v20;
}

- (id)_payloadsForPayloadClass:(Class)a3 identifier:(id)a4 managementSource:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    v11 = [(objc_class *)a3 fetchRequest];
    v12 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)", @"managementSource", v10, @"identifier", v9];
    [v11 setPredicate:v12];

    v24 = @"declarationType";
    v13 = [NSArray arrayWithObjects:&v24 count:1];
    [v11 setPropertiesToFetch:v13];

    v23 = 0;
    v14 = [v11 execute:&v23];
    v15 = v23;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v17 = +[RMLog storeController];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100081540();
      }

      if (a6 && v15)
      {
        v18 = v15;
        *a6 = v15;
      }
    }

    goto LABEL_13;
  }

  v20 = +[RMLog storeController];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100081788(a3);
  }

  if (a6)
  {
    v21 = +[RMErrorUtilities createInternalError];
    v11 = v21;
    if (v21)
    {
      v22 = v21;
      v14 = 0;
      *a6 = v11;
    }

    else
    {
      v14 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)_newPayloadWithDeclaration:(id)a3 managementSource:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_4:
    v12 = [v8 managedObjectContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = off_1000D0430;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = off_1000D0440;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = off_1000D0438;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = +[RMLog storeController];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_100081A38();
            }

            if (a5)
            {
              v23 = +[RMErrorUtilities createInternalError];
              if (v23)
              {
                v23 = v23;
                *a5 = v23;
              }
            }

            v16 = 0;
            v9 = 0;
            v14 = 0;
            goto LABEL_30;
          }

          v13 = &off_1000D0478;
        }
      }
    }

    v16 = [objc_alloc(*v13) initWithContext:v12];
    [v16 setManagementSource:v8];
    v17 = [v7 declarationIdentifier];
    [v16 setIdentifier:v17];

    v18 = [v7 declarationServerToken];
    [v16 setServerToken:v18];

    v25 = 0;
    v19 = [v16 loadPayload:v7 error:&v25];
    v9 = v25;
    if (v19)
    {
      v16 = v16;
      v14 = v16;
    }

    else
    {
      v20 = +[RMLog storeController];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100081AC8();
      }

      v14 = 0;
      if (a5 && v9)
      {
        v21 = v9;
        v14 = 0;
        *a5 = v9;
      }
    }

LABEL_30:

    goto LABEL_31;
  }

  v9 = [v7 serializeWithType:0];
  v26 = 0;
  v10 = [RMModelDeclarationBase load:v9 serializationType:0 error:&v26];
  v11 = v26;

  if (v10)
  {

    v7 = v10;
    goto LABEL_4;
  }

  v14 = 0;
  if (a5 && v11)
  {
    v15 = v11;
    v14 = 0;
    *a5 = v11;
  }

  v7 = v11;
LABEL_31:

  return v14;
}

@end