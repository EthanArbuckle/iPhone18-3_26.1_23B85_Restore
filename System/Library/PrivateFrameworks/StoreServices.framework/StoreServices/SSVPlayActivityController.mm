@interface SSVPlayActivityController
+ (id)_requiredEndpointIdentifiers;
- (BOOL)_setEndpointRevisionInformation:(id)a3 forEndpointIdentifier:(id)a4;
- (SSVPlayActivityController)initWithWritingStyle:(unint64_t)a3;
- (id)_copyEndpointRevisionInformationForEndpointIdentifier:(id)a3;
- (id)_daemonPlayActivityControllerConnection;
- (id)_revisionsIndexSetForPlayActivityEventPersistentIDs:(id)a3;
- (id)_revisionsIndexSetForPlayActivityEvents:(id)a3;
- (id)_sessionInformationForSessionToken:(unint64_t)a3;
- (void)_acquirePendingPlayActivityEventsForEndpointIdentifier:(id)a3 withStoreAccountID:(unint64_t)a4 shouldFilterStoreAccountID:(BOOL)a5 completionHandler:(id)a6;
- (void)_completePendingPlayEventsWithRevisionIndexSet:(id)a3 forSessionToken:(unint64_t)a4 withResult:(unint64_t)a5 completionHandler:(id)a6;
- (void)_getFlushSessionInformationForEndpointIdentifier:(id)a3 shouldAcquire:(BOOL)a4 storeAccountID:(unint64_t)a5 shouldFilterStoreAccountID:(BOOL)a6 withCompletionHandler:(id)a7;
- (void)_loadEndpointIdentifierInformationIfNeeded;
- (void)_setupNotifyTokenIfNeeded;
- (void)completePendingPlayActivityEventPersistentIDs:(id)a3 forSessionToken:(unint64_t)a4 withResult:(unint64_t)a5 completionHandler:(id)a6;
- (void)completePendingPlayActivityEvents:(id)a3 forSessionToken:(unint64_t)a4 withResult:(unint64_t)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)flushPendingPlayActivityEventsForEndpointIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getHasPendingPlayEventsForEndpointIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getPlayActivityEventsFromRevision:(unint64_t)a3 toRevision:(unint64_t)a4 withCompletionHandler:(id)a5;
- (void)getRevisionInformationWithCompletionHandler:(id)a3;
- (void)recordPlayActivityEvents:(id)a3 withCompletionHandler:(id)a4;
- (void)removeFlushedPlayActivityEventsWithCompletionHandler:(id)a3;
- (void)removePlayActivityEventsUpToRevision:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)setCurrentRevision:(unint64_t)a3 revisionVersionToken:(id)a4 forEndpointIdentifier:(id)a5 withCompletionHandler:(id)a6;
@end

@implementation SSVPlayActivityController

- (SSVPlayActivityController)initWithWritingStyle:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = SSVPlayActivityController;
  v4 = [(SSVPlayActivityController *)&v12 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.StoreServices.SSVPlayActivityController.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v4->_accessQueue;
    v4->_accessQueue = v5;

    v7 = dispatch_queue_create("com.apple.StoreServices.SSVPlayActivityController.serialQueue", 0);
    serialQueue = v4->_serialQueue;
    v4->_serialQueue = v7;

    v4->_writingStyle = a3;
    v9 = objc_alloc_init(SSVPlayActivityTable);
    table = v4->_table;
    v4->_table = v9;
  }

  return v4;
}

- (void)dealloc
{
  if (self->_hasValidEndpointRevisionInformationDidChangeNotifyToken)
  {
    notify_cancel(self->_endpointRevisionInformationDidChangeNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = SSVPlayActivityController;
  [(SSVPlayActivityController *)&v3 dealloc];
}

- (void)completePendingPlayActivityEvents:(id)a3 forSessionToken:(unint64_t)a4 withResult:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (a4)
  {
    serialQueue = self->_serialQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke_2;
    v16[3] = &unk_1E84B23F0;
    v16[4] = self;
    v17 = v10;
    v19 = a4;
    v20 = a5;
    v18 = v12;
    dispatch_async(serialQueue, v16);

    v14 = v17;
LABEL_5:

    goto LABEL_6;
  }

  if (v11)
  {
    v15 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke;
    block[3] = &unk_1E84ADED0;
    v22 = v12;
    dispatch_async(v15, block);

    v14 = v22;
    goto LABEL_5;
  }

LABEL_6:
}

void __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9] == 1)
  {
    v3 = v2[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke_3;
    block[3] = &unk_1E84B23F0;
    block[4] = v2;
    v4 = &v21;
    v21 = *(a1 + 40);
    v23 = *(a1 + 56);
    v5 = &v22;
    v22 = *(a1 + 48);
    dispatch_barrier_async(v3, block);
  }

  else
  {
    v6 = [v2 _daemonPlayActivityControllerConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke_4;
    v16[3] = &unk_1E84B2418;
    v7 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v4 = &v17;
    v17 = v7;
    v19 = *(a1 + 56);
    v5 = &v18;
    v18 = *(a1 + 48);
    v8 = [v6 remoteObjectProxyWithErrorHandler:v16];
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke_2_49;
    v12[3] = &unk_1E84B2418;
    v11 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v11;
    v15 = *(a1 + 56);
    v14 = *(a1 + 48);
    [v8 completePendingPlayActivityEvents:v13 forSessionToken:v9 result:v10 withReplyBlock:v12];
  }
}

void __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = [v2 _revisionsIndexSetForPlayActivityEvents:a1[5]];
  [v2 _completePendingPlayEventsWithRevisionIndexSet:v3 forSessionToken:a1[7] withResult:a1[8] completionHandler:a1[6]];
}

void __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [*(a1 + 40) count];
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v26 = 138413314;
    v27 = v9;
    v28 = 2114;
    v29 = v3;
    v30 = 2048;
    v31 = v10;
    v32 = 2048;
    v33 = v11;
    v34 = 2048;
    v35 = v12;
    LODWORD(v22) = 52;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v26, v22}];
    free(v13);
    SSFileLog(v4, @"%@", v14, v15, v16, v17, v18, v19, v7);
  }

LABEL_12:
  v20 = *(a1 + 48);
  if (v20)
  {
    v21 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke_47;
    block[3] = &unk_1E84AC338;
    v25 = v20;
    v24 = v3;
    dispatch_async(v21, block);
  }
}

void __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke_2_49(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [*(a1 + 40) count];
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v26 = 138413314;
    v27 = v9;
    v28 = 2048;
    v29 = v10;
    v30 = 2048;
    v31 = v11;
    v32 = 2048;
    v33 = v12;
    v34 = 2114;
    v35 = v3;
    LODWORD(v22) = 52;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v26, v22}];
    free(v13);
    SSFileLog(v4, @"%@", v14, v15, v16, v17, v18, v19, v7);
  }

LABEL_12:
  v20 = *(a1 + 48);
  if (v20)
  {
    v21 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__SSVPlayActivityController_completePendingPlayActivityEvents_forSessionToken_withResult_completionHandler___block_invoke_50;
    block[3] = &unk_1E84AC338;
    v25 = v20;
    v24 = v3;
    dispatch_async(v21, block);
  }
}

- (void)completePendingPlayActivityEventPersistentIDs:(id)a3 forSessionToken:(unint64_t)a4 withResult:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__SSVPlayActivityController_completePendingPlayActivityEventPersistentIDs_forSessionToken_withResult_completionHandler___block_invoke;
  block[3] = &unk_1E84B23F0;
  block[4] = self;
  v16 = v10;
  v18 = a4;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(serialQueue, block);
}

void __120__SSVPlayActivityController_completePendingPlayActivityEventPersistentIDs_forSessionToken_withResult_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__SSVPlayActivityController_completePendingPlayActivityEventPersistentIDs_forSessionToken_withResult_completionHandler___block_invoke_2;
  block[3] = &unk_1E84B23F0;
  block[4] = v3;
  v6 = v2;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  dispatch_barrier_async(v4, block);
}

void __120__SSVPlayActivityController_completePendingPlayActivityEventPersistentIDs_forSessionToken_withResult_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = [v2 _revisionsIndexSetForPlayActivityEventPersistentIDs:a1[5]];
  [v2 _completePendingPlayEventsWithRevisionIndexSet:v3 forSessionToken:a1[7] withResult:a1[8] completionHandler:a1[6]];
}

- (void)flushPendingPlayActivityEventsForEndpointIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SSVPlayActivityController *)self _daemonPlayActivityControllerConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __103__SSVPlayActivityController_flushPendingPlayActivityEventsForEndpointIdentifier_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E84B2440;
  v17[4] = self;
  v9 = v6;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  v11 = [v8 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__SSVPlayActivityController_flushPendingPlayActivityEventsForEndpointIdentifier_withCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E84B2440;
  v14[4] = self;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 flushPlayActivityEventsForEndPointIdentifier:v13 withReplyBlock:v14];
}

void __103__SSVPlayActivityController_flushPendingPlayActivityEventsForEndpointIdentifier_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(a1 + 40);
    v24 = 138412802;
    v25 = v9;
    v26 = 2114;
    v27 = v3;
    v28 = 2114;
    v29 = v10;
    LODWORD(v20) = 32;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v24, v20}];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
  }

LABEL_12:
  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__SSVPlayActivityController_flushPendingPlayActivityEventsForEndpointIdentifier_withCompletionHandler___block_invoke_51;
    block[3] = &unk_1E84AC338;
    v23 = v18;
    v22 = v3;
    dispatch_async(v19, block);
  }
}

void __103__SSVPlayActivityController_flushPendingPlayActivityEventsForEndpointIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(a1 + 40);
    v24 = 138412802;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v3;
    LODWORD(v20) = 32;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v24, v20}];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
  }

LABEL_12:
  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__SSVPlayActivityController_flushPendingPlayActivityEventsForEndpointIdentifier_withCompletionHandler___block_invoke_52;
    block[3] = &unk_1E84AC338;
    v23 = v18;
    v22 = v3;
    dispatch_async(v19, block);
  }
}

- (void)getHasPendingPlayEventsForEndpointIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__SSVPlayActivityController_getHasPendingPlayEventsForEndpointIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_1E84AC000;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(serialQueue, block);
  }
}

void __96__SSVPlayActivityController_getHasPendingPlayEventsForEndpointIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96__SSVPlayActivityController_getHasPendingPlayEventsForEndpointIdentifier_withCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E84B2468;
  v4 = *(a1 + 48);
  [v1 _getFlushSessionInformationForEndpointIdentifier:v2 shouldAcquire:0 storeAccountID:0 shouldFilterStoreAccountID:0 withCompletionHandler:v3];
}

void __96__SSVPlayActivityController_getHasPendingPlayEventsForEndpointIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  v7 = [a2 revisionsIndexSet];
  (*(v5 + 16))(v5, [v7 count] != 0, v6);
}

- (void)getRevisionInformationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    serialQueue = self->_serialQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__SSVPlayActivityController_getRevisionInformationWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E84AC360;
    v7[4] = self;
    v8 = v4;
    dispatch_async(serialQueue, v7);
  }
}

void __73__SSVPlayActivityController_getRevisionInformationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__62;
  v25 = __Block_byref_object_dispose__62;
  v26 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__62;
  v18 = __Block_byref_object_dispose__62;
  v19 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__SSVPlayActivityController_getRevisionInformationWithCompletionHandler___block_invoke_54;
  v13[3] = &unk_1E84B2490;
  v13[4] = v2;
  v13[5] = v20;
  v13[6] = &v14;
  [v3 performTransactionWithBlock:v13];
  if (!v15[5] && !v22[5])
  {
    v4 = SSError(@"SSErrorDomain", 100, 0, 0);
    v5 = v22[5];
    v22[5] = v4;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__SSVPlayActivityController_getRevisionInformationWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E84B24B8;
    v9 = v6;
    v10 = v20;
    v11 = &v14;
    v12 = &v21;
    dispatch_async(v7, block);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);
}

uint64_t __73__SSVPlayActivityController_getRevisionInformationWithCompletionHandler___block_invoke_54(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(a1[4] + 56) currentEventsRevision];
  v2 = [*(a1[4] + 56) eventsRevisionVersionToken];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

- (void)getPlayActivityEventsFromRevision:(unint64_t)a3 toRevision:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      serialQueue = self->_serialQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __96__SSVPlayActivityController_getPlayActivityEventsFromRevision_toRevision_withCompletionHandler___block_invoke_2;
      block[3] = &unk_1E84B2530;
      block[4] = self;
      v15 = a3;
      v16 = a4;
      v14 = v8;
      dispatch_async(serialQueue, block);
      v11 = v14;
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __96__SSVPlayActivityController_getPlayActivityEventsFromRevision_toRevision_withCompletionHandler___block_invoke;
      v17[3] = &unk_1E84ADED0;
      v18 = v9;
      dispatch_async(v12, v17);

      v11 = v18;
    }
  }
}

void __96__SSVPlayActivityController_getPlayActivityEventsFromRevision_toRevision_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__62;
  v13[4] = __Block_byref_object_dispose__62;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__62;
  v11[4] = __Block_byref_object_dispose__62;
  v12 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__SSVPlayActivityController_getPlayActivityEventsFromRevision_toRevision_withCompletionHandler___block_invoke_3;
  v9[3] = &unk_1E84B24E0;
  v9[4] = v2;
  v9[5] = v11;
  v10 = *(a1 + 48);
  v9[6] = v13;
  [v3 performTransactionWithBlock:v9];
  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __96__SSVPlayActivityController_getPlayActivityEventsFromRevision_toRevision_withCompletionHandler___block_invoke_4;
  v5[3] = &unk_1E84B2508;
  v6 = *(a1 + 40);
  v7 = v11;
  v8 = v13;
  dispatch_async(v4, v5);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
}

uint64_t __96__SSVPlayActivityController_getPlayActivityEventsFromRevision_toRevision_withCompletionHandler___block_invoke_3(void *a1)
{
  v1 = *(a1[4] + 56);
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  v4 = a1[7];
  v5 = a1[8];
  v6 = *(a1[6] + 8);
  v8 = *(v6 + 40);
  obj = v3;
  [v1 getPlayActivityEvents:&obj relevantRevisionsIndexSet:0 withStartRevision:v4 endRevision:v5 additionalRevisionsIndexSet:0 ignoredRevisionsIndexSet:0 error:&v8];
  objc_storeStrong((v2 + 40), obj);
  objc_storeStrong((v6 + 40), v8);
  return 0;
}

- (void)recordPlayActivityEvents:(id)a3 withCompletionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v12 = objc_opt_class();
    NSStringFromClass(v12);
    v30 = v29 = 138412546;
    v31 = 2112;
    v32 = v6;
    LODWORD(v23) = 22;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_12;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v29, v23}];
    free(v13);
    SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, v11);
  }

LABEL_12:
  if ([v6 count])
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_2;
    block[3] = &unk_1E84AC000;
    block[4] = self;
    v25 = v6;
    v26 = v7;
    dispatch_async(serialQueue, block);

    v21 = v25;
LABEL_16:

    goto LABEL_17;
  }

  if (v7)
  {
    v22 = dispatch_get_global_queue(0, 0);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke;
    v27[3] = &unk_1E84ADED0;
    v28 = v7;
    dispatch_async(v22, v27);

    v21 = v28;
    goto LABEL_16;
  }

LABEL_17:
}

void __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9] == 1)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__62;
    v51 = __Block_byref_object_dispose__62;
    v52 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v42[3] = 0;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v41[3] = 0;
    v3 = v2[7];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_3;
    v35[3] = &unk_1E84B2558;
    v35[4] = v2;
    v37 = v42;
    v36 = *(a1 + 40);
    v38 = &v43;
    v39 = &v47;
    v40 = v41;
    [v3 performTransactionWithBlock:v35];
    if ((v44[3] & 1) == 0 && !v48[5])
    {
      v4 = SSError(@"SSErrorDomain", 100, 0, 0);
      v5 = v48[5];
      v48[5] = v4;
    }

    if (CFPreferencesGetAppBooleanValue(@"ShouldDebugLogRecordedEvents", @"com.apple.PlayActivityFeed", 0))
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__62;
      v33 = __Block_byref_object_dispose__62;
      v34 = 0;
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_4;
      block[3] = &unk_1E84ABFD8;
      block[4] = v6;
      block[5] = &v29;
      dispatch_barrier_sync(v7, block);
      v8 = objc_alloc_init(SSVPlayActivityDebugLogOperation);
      [(SSVPlayActivityDebugLogOperation *)v8 setPlayActivityEvents:*(a1 + 40)];
      [v30[5] addOperation:v8];

      _Block_object_dispose(&v29, 8);
    }

    v9 = dispatch_get_global_queue(0, 0);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_5;
    v22[3] = &unk_1E84B2580;
    v25 = &v43;
    v26 = v42;
    v27 = v41;
    v10 = *(a1 + 32);
    v24 = &v47;
    v22[4] = v10;
    v23 = *(a1 + 48);
    dispatch_async(v9, v22);

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v42, 8);
    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v47, 8);
    v11 = v52;
  }

  else
  {
    v12 = [v2 _daemonPlayActivityControllerConnection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_6;
    v19[3] = &unk_1E84B2440;
    v13 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v13;
    v21 = *(a1 + 48);
    v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_2_71;
    v16[3] = &unk_1E84B2440;
    v15 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v15;
    v18 = *(a1 + 48);
    [v14 insertPlayActivityEvents:v17 withReplyBlock:v16];

    v11 = v20;
  }
}

uint64_t __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 56) currentEventsRevision];
  *(*(*(a1 + 48) + 8) + 24) = v2;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
LABEL_3:
    v7 = 0;
    while (1)
    {
      v8 = v2;
      if (*v17 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v16 + 1) + 8 * v7);
      ++v2;
      v10 = *(*(a1 + 32) + 56);
      v11 = *(*(a1 + 64) + 8);
      obj = *(v11 + 40);
      v12 = [v10 insertPlayActivityEvent:v9 withRevision:v8 + 1 returningError:&obj];
      objc_storeStrong((v11 + 40), obj);
      *(*(*(a1 + 56) + 8) + 24) = v12;
      if (*(*(*(a1 + 56) + 8) + 24) != 1)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        v2 = v8 + 1;
        break;
      }
    }
  }

  *(*(*(a1 + 72) + 8) + 24) = v2;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if (*(*(*(a1 + 48) + 8) + 24) >= *(*(*(a1 + 72) + 8) + 24))
    {
      v13 = 1;
    }

    else
    {
      [*(*(a1 + 32) + 56) setCurrentEventsRevision:?];
      v13 = *(*(*(a1 + 56) + 8) + 24);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    [*(*(a1 + 32) + 16) setMaxConcurrentOperationCount:1];
    [*(*(a1 + 32) + 16) setName:@"com.apple.StoreServices.SSVPlayActivityController.debugLogOperationQueue"];
    [*(*(a1 + 32) + 16) setQualityOfService:17];
    v2 = *(*(a1 + 32) + 16);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

uint64_t __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_5(void *a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!*(*(a1[6] + 8) + 40) && *(*(a1[7] + 8) + 24) == 1 && *(*(a1[8] + 8) + 24) < *(*(a1[9] + 8) + 24))
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v3 = a1[4];
    v8[0] = @"SSVPlayActivityControllerUserInfoKeyStartRevision";
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(a1[8] + 8) + 24) + 1];
    v8[1] = @"SSVPlayActivityControllerUserInfoKeyEndRevision";
    v9[0] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(a1[9] + 8) + 24)];
    v9[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [v2 postNotificationName:@"SSVPlayActivityControllerDidRecordPlayActivityEventsNotification" object:v3 userInfo:v6];
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[6] + 8) + 40));
  }

  return result;
}

void __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [*(a1 + 40) count];
    v24 = 138412802;
    v25 = v9;
    v26 = 2114;
    v27 = v3;
    v28 = 2048;
    v29 = v10;
    LODWORD(v20) = 32;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v24, v20}];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
  }

LABEL_12:
  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_70;
    block[3] = &unk_1E84AC338;
    v23 = v18;
    v22 = v3;
    dispatch_async(v19, block);
  }
}

void __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_2_71(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [*(a1 + 40) count];
    v24 = 138412802;
    v25 = v9;
    v26 = 2048;
    v27 = v10;
    v28 = 2114;
    v29 = v3;
    LODWORD(v20) = 32;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v24, v20}];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
  }

LABEL_12:
  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__SSVPlayActivityController_recordPlayActivityEvents_withCompletionHandler___block_invoke_72;
    block[3] = &unk_1E84AC338;
    v23 = v18;
    v22 = v3;
    dispatch_async(v19, block);
  }
}

- (void)removeFlushedPlayActivityEventsWithCompletionHandler:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__SSVPlayActivityController_removeFlushedPlayActivityEventsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

void __82__SSVPlayActivityController_removeFlushedPlayActivityEventsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _loadEndpointIdentifierInformationIfNeeded];
  v2 = [objc_opt_class() _requiredEndpointIdentifiers];
  v3 = [v2 mutableCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(*(a1 + 32) + 24);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = -1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        [v3 removeObject:v10];
        v11 = [*(*(a1 + 32) + 24) objectForKey:v10];
        v12 = [v11 currentRevision];
        v13 = [v11 additionalPendingRevisionsIndexSet];
        if ([v13 count])
        {
          v14 = [v13 firstIndex];
          v15 = v14 - 1;
          if (v12 < v14 - 1)
          {
            v15 = v12;
          }

          if (v14 > 0)
          {
            v12 = v15;
          }
        }

        if (v8 >= v12)
        {
          v8 = v12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);

    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && ![v3 count])
    {
      [*(a1 + 32) removePlayActivityEventsUpToRevision:v8 withCompletionHandler:*(a1 + 40)];
      goto LABEL_21;
    }
  }

  else
  {
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SSVPlayActivityController_removeFlushedPlayActivityEventsWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E84ADED0;
    v19 = v16;
    dispatch_async(v17, block);
  }

LABEL_21:
}

- (void)removePlayActivityEventsUpToRevision:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v25 = 134217984;
  v26 = a3;
  LODWORD(v21) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v25, v21}];
    free(v12);
    SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v10);
LABEL_12:
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke;
  block[3] = &unk_1E84B2620;
  v23 = v6;
  v24 = a3;
  block[4] = self;
  v20 = v6;
  dispatch_async(serialQueue, block);
}

void __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[9] == 1)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__62;
    v34 = __Block_byref_object_dispose__62;
    v35 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v3 = v2[7];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke_2;
    v25[3] = &unk_1E84B25A8;
    v25[4] = v2;
    v25[5] = &v26;
    v4 = a1[6];
    v25[6] = &v30;
    v25[7] = v4;
    [v3 performTransactionWithBlock:v25];
    if ((v27[3] & 1) == 0 && !v31[5])
    {
      v5 = SSError(@"SSErrorDomain", 100, 0, 0);
      v6 = v31[5];
      v31[5] = v5;
    }

    v7 = a1[5];
    if (v7)
    {
      v8 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke_3;
      block[3] = &unk_1E84B25D0;
      v23 = v7;
      v24 = &v30;
      dispatch_async(v8, block);
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    v9 = v35;
  }

  else
  {
    v10 = [v2 _daemonPlayActivityControllerConnection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke_4;
    v19[3] = &unk_1E84B25F8;
    v12 = a1[5];
    v11 = a1[6];
    v19[4] = a1[4];
    v21 = v11;
    v20 = v12;
    v13 = [v10 remoteObjectProxyWithErrorHandler:v19];
    v14 = a1[5];
    v15 = a1[6];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke_2_74;
    v16[3] = &unk_1E84B25F8;
    v16[4] = a1[4];
    v18 = v15;
    v17 = v14;
    [v13 removePlayActivityEventsUptoRevision:v15 withReplyBlock:v16];

    v9 = v20;
  }
}

uint64_t __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 56);
  v3 = a1[7];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 removePlayActivityEventsUpToRevision:v3 returningError:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
  return 1;
}

void __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(a1 + 48);
    v24 = 138412802;
    v25 = v9;
    v26 = 2114;
    v27 = v3;
    v28 = 2048;
    v29 = v10;
    LODWORD(v20) = 32;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v24, v20}];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
  }

LABEL_12:
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke_73;
    block[3] = &unk_1E84AC338;
    v23 = v18;
    v22 = v3;
    dispatch_async(v19, block);
  }
}

void __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke_2_74(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(a1 + 48);
    v24 = 138412802;
    v25 = v9;
    v26 = 2048;
    v27 = v10;
    v28 = 2114;
    v29 = v3;
    LODWORD(v20) = 32;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v24, v20}];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
  }

LABEL_12:
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__SSVPlayActivityController_removePlayActivityEventsUpToRevision_withCompletionHandler___block_invoke_75;
    block[3] = &unk_1E84AC338;
    v23 = v18;
    v22 = v3;
    dispatch_async(v19, block);
  }
}

- (void)setCurrentRevision:(unint64_t)a3 revisionVersionToken:(id)a4 forEndpointIdentifier:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v11)
  {
    serialQueue = self->_serialQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_2;
    v17[3] = &unk_1E84B2648;
    v17[4] = self;
    v21 = a3;
    v18 = v10;
    v19 = v11;
    v20 = v13;
    dispatch_async(serialQueue, v17);

    v15 = v18;
LABEL_5:

    goto LABEL_6;
  }

  if (v12)
  {
    v16 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_1E84ADED0;
    v23 = v13;
    dispatch_async(v16, block);

    v15 = v23;
    goto LABEL_5;
  }

LABEL_6:
}

void __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9] == 1)
  {
    v3 = v2[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_3;
    block[3] = &unk_1E84B2648;
    v35 = *(a1 + 64);
    *&v4 = *(a1 + 40);
    *(&v4 + 1) = *(a1 + 32);
    v21 = v4;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v33 = v21;
    v34 = v7;
    dispatch_barrier_async(v3, block);

    v8 = v33;
  }

  else
  {
    v9 = [v2 _daemonPlayActivityControllerConnection];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_5;
    v28[3] = &unk_1E84B2670;
    v31 = *(a1 + 64);
    v22 = *(a1 + 32);
    v10 = *(&v22 + 1);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v29 = v22;
    v30 = v13;
    v14 = [v9 remoteObjectProxyWithErrorHandler:v28];
    v15 = *(a1 + 64);
    v16 = *(a1 + 48);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_2_78;
    v24[3] = &unk_1E84B2670;
    v27 = v15;
    v23 = *(a1 + 32);
    v17 = *(&v23 + 1);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    v25 = v23;
    v26 = v20;
    [v14 setRevision:v15 revisionVersionToken:v17 forEndpointIdentifier:v16 withReplyBlock:v24];

    v8 = *(&v29 + 1);
  }
}

void __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(_SSVPlayActivityEndpointRevisionInformation);
  [(_SSVPlayActivityEndpointRevisionInformation *)v2 setCurrentRevision:*(a1 + 64)];
  [(_SSVPlayActivityEndpointRevisionInformation *)v2 setRevisionVersionToken:*(a1 + 32)];
  [*(a1 + 40) _setEndpointRevisionInformation:v2 forEndpointIdentifier:*(a1 + 48)];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_4;
    block[3] = &unk_1E84ADED0;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

void __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_5(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = a1[8];
    v11 = a1[5];
    v12 = a1[6];
    v26 = 138413314;
    v27 = v9;
    v28 = 2114;
    v29 = v3;
    v30 = 2048;
    v31 = v10;
    v32 = 2114;
    v33 = v11;
    v34 = 2114;
    v35 = v12;
    LODWORD(v22) = 52;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v26, v22}];
    free(v13);
    SSFileLog(v4, @"%@", v14, v15, v16, v17, v18, v19, v7);
  }

LABEL_12:
  v20 = a1[7];
  if (v20)
  {
    v21 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_77;
    block[3] = &unk_1E84AC338;
    v25 = v20;
    v24 = v3;
    dispatch_async(v21, block);
  }
}

void __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_2_78(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = a1[8];
    v11 = a1[5];
    v12 = a1[6];
    v26 = 138413314;
    v27 = v9;
    v28 = 2048;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    v34 = 2114;
    v35 = v3;
    LODWORD(v22) = 52;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v26, v22}];
    free(v13);
    SSFileLog(v4, @"%@", v14, v15, v16, v17, v18, v19, v7);
  }

LABEL_12:
  v20 = a1[7];
  if (v20)
  {
    v21 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__SSVPlayActivityController_setCurrentRevision_revisionVersionToken_forEndpointIdentifier_withCompletionHandler___block_invoke_79;
    block[3] = &unk_1E84AC338;
    v25 = v20;
    v24 = v3;
    dispatch_async(v21, block);
  }
}

+ (id)_requiredEndpointIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"SSVPlayActivityControllerEndpointIdentifierJingle";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_acquirePendingPlayActivityEventsForEndpointIdentifier:(id)a3 withStoreAccountID:(unint64_t)a4 shouldFilterStoreAccountID:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (v11)
  {
    if (v10)
    {
      serialQueue = self->_serialQueue;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke_2;
      v15[3] = &unk_1E84B26E8;
      v15[4] = self;
      v16 = v10;
      v18 = a4;
      v19 = a5;
      v17 = v11;
      dispatch_async(serialQueue, v15);

      v13 = v16;
    }

    else
    {
      v14 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke;
      block[3] = &unk_1E84ADED0;
      v21 = v11;
      dispatch_async(v14, block);

      v13 = v21;
    }
  }
}

void __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9] == 1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke_3;
    v19[3] = &unk_1E84B2468;
    v5 = *(a1 + 40);
    v20 = *(a1 + 48);
    [v2 _getFlushSessionInformationForEndpointIdentifier:v5 shouldAcquire:1 storeAccountID:v3 shouldFilterStoreAccountID:v4 withCompletionHandler:v19];
    v6 = v20;
  }

  else
  {
    v7 = [*(a1 + 32) _daemonPlayActivityControllerConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke_4;
    v16[3] = &unk_1E84B2440;
    v8 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v8;
    v18 = *(a1 + 48);
    v9 = [v7 remoteObjectProxyWithErrorHandler:v16];
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke_2_82;
    v13[3] = &unk_1E84B26C0;
    v12 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v12;
    v15 = *(a1 + 48);
    [v9 acquirePendingPlayActivityEventsForEndpointIdentifier:v14 storeAccountID:v10 shouldFilterStoreAccountID:v11 withReplyBlock:v13];

    v6 = v17;
  }
}

void __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    [v9 sessionToken];
  }

  (*(*(a1 + 32) + 16))();
}

void __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(a1 + 40);
    v24 = 138412802;
    v25 = v9;
    v26 = 2114;
    v27 = v3;
    v28 = 2114;
    v29 = v10;
    LODWORD(v20) = 32;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v24, v20}];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
  }

LABEL_12:
  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke_81;
    block[3] = &unk_1E84AC338;
    v23 = v18;
    v22 = v3;
    dispatch_async(v19, block);
  }
}

void __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke_2_82(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v7 count];
    v16 = *(a1 + 40);
    v32 = 138412802;
    v33 = v14;
    v34 = 2048;
    v35 = v15;
    v36 = 2114;
    v37 = v16;
    LODWORD(v26) = 32;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_12;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v32, v26}];
    free(v17);
    SSFileLog(v9, @"%@", v18, v19, v20, v21, v22, v23, v12);
  }

LABEL_12:
  v24 = *(a1 + 48);
  if (v24)
  {
    v25 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __148__SSVPlayActivityController__acquirePendingPlayActivityEventsForEndpointIdentifier_withStoreAccountID_shouldFilterStoreAccountID_completionHandler___block_invoke_83;
    block[3] = &unk_1E84B2698;
    v30 = v24;
    v28 = v7;
    v31 = a3;
    v29 = v8;
    dispatch_async(v25, block);
  }
}

- (void)_completePendingPlayEventsWithRevisionIndexSet:(id)a3 forSessionToken:(unint64_t)a4 withResult:(unint64_t)a5 completionHandler:(id)a6
{
  v142 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v12 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 & 2;
  }

  if (v16)
  {
    v136 = 138412802;
    v137 = v10;
    v138 = 2048;
    v139 = a4;
    v140 = 2048;
    v141 = a5;
    LODWORD(v122) = 32;
    v118 = &v136;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_13;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v136, v122}];
    free(v17);
    SSFileLog(v12, @"%@", v18, v19, v20, v21, v22, v23, v15);
  }

LABEL_13:
  if (a4)
  {
    v24 = [(SSVPlayActivityController *)self _sessionInformationForSessionToken:a4];
    v25 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    v26 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    v28 = [v25 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 & 2;
    }

    if (v29)
    {
      v136 = 138412290;
      v137 = v24;
      LODWORD(v122) = 12;
      v119 = &v136;
      v30 = _os_log_send_and_compose_impl();

      if (!v30)
      {
        goto LABEL_26;
      }

      v28 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v136, v122}];
      free(v30);
      SSFileLog(v25, @"%@", v31, v32, v33, v34, v35, v36, v28);
    }

LABEL_26:
    v37 = [v24 endpointIdentifier];
    if (!v24)
    {
      v83 = 0;
LABEL_124:
      v116 = dispatch_get_global_queue(0, 0);
      v128[0] = MEMORY[0x1E69E9820];
      v128[1] = 3221225472;
      v128[2] = __121__SSVPlayActivityController__completePendingPlayEventsWithRevisionIndexSet_forSessionToken_withResult_completionHandler___block_invoke_86;
      v128[3] = &unk_1E84B2710;
      v133 = v83;
      v129 = v37;
      v130 = self;
      v131 = 0;
      v132 = v11;
      v117 = v37;
      dispatch_async(v116, v128);

      goto LABEL_125;
    }

    v38 = [v24 revisionsIndexSet];
    v39 = [v38 mutableCopy];

    if (![v10 count])
    {
      v83 = 0;
LABEL_119:
      if ([v39 count])
      {
        [v24 setRevisionsIndexSet:v39];
      }

      else
      {
        [(NSMutableArray *)self->_pendingFlushingSessions removeObject:v24];
        if (![(NSMutableArray *)self->_pendingFlushingSessions count])
        {
          pendingFlushingSessions = self->_pendingFlushingSessions;
          self->_pendingFlushingSessions = 0;
        }
      }

      goto LABEL_124;
    }

    v127 = self;
    v40 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    v41 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      v42 = v41 | 2;
    }

    else
    {
      v42 = v41;
    }

    v43 = [v40 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 2;
    }

    if (v44)
    {
      v136 = 138412546;
      v137 = v10;
      v138 = 2112;
      v139 = v39;
      LODWORD(v122) = 22;
      v120 = &v136;
      v45 = _os_log_send_and_compose_impl();

      if (!v45)
      {
        goto LABEL_40;
      }

      v43 = [MEMORY[0x1E696AEC0] stringWithCString:v45 encoding:{4, &v136, v122}];
      free(v45);
      SSFileLog(v40, @"%@", v46, v47, v48, v49, v50, v51, v43);
    }

LABEL_40:
    [v39 removeIndexes:v10];
    v52 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v52)
    {
      v52 = +[SSLogConfig sharedConfig];
    }

    v53 = [v52 shouldLog];
    if ([v52 shouldLogToDisk])
    {
      v54 = v53 | 2;
    }

    else
    {
      v54 = v53;
    }

    v55 = [v52 OSLogObject];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = v54;
    }

    else
    {
      v56 = v54 & 2;
    }

    if (v56)
    {
      v136 = 138412290;
      v137 = v39;
      LODWORD(v122) = 12;
      v121 = &v136;
      v57 = _os_log_send_and_compose_impl();

      if (!v57)
      {
        goto LABEL_52;
      }

      v55 = [MEMORY[0x1E696AEC0] stringWithCString:v57 encoding:{4, &v136, v122}];
      free(v57);
      SSFileLog(v52, @"%@", v58, v59, v60, v61, v62, v63, v55);
    }

LABEL_52:
    v124 = v39;

    v64 = v37;
    v65 = [(SSVPlayActivityController *)v127 _copyEndpointRevisionInformationForEndpointIdentifier:v37];
    v66 = [v65 revisionVersionToken];
    v67 = [v24 revisionVersionToken];
    v68 = [v66 isEqualToString:v67];

    if (v68)
    {
      v123 = v65;
      v69 = [v65 additionalPendingRevisionsIndexSet];
      v125 = [v69 mutableCopy];

      v70 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v70)
      {
        v70 = +[SSLogConfig sharedConfig];
      }

      v71 = [v70 shouldLog];
      if ([v70 shouldLogToDisk])
      {
        v72 = v71 | 2;
      }

      else
      {
        v72 = v71;
      }

      v73 = [v70 OSLogObject];
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v74 = v72;
      }

      else
      {
        v74 = v72 & 2;
      }

      v37 = v64;
      if (v74)
      {
        v136 = 138412290;
        v137 = v125;
        LODWORD(v122) = 12;
        v119 = &v136;
        v75 = _os_log_send_and_compose_impl();

        v39 = v124;
        if (!v75)
        {
LABEL_81:

          if (a5 == 1)
          {
            v104 = v125;
            self = v127;
            if (!v125)
            {
              v104 = objc_alloc_init(MEMORY[0x1E696AD50]);
            }

            [v104 addIndexes:{v10, v119}];
            v126 = v104;
            [v123 setAdditionalPendingRevisionsIndexSet:v104];
            v99 = +[SSLogConfig sharedStoreServicesConfig];
            if (!v99)
            {
              v99 = +[SSLogConfig sharedConfig];
            }

            v105 = [v99 shouldLog];
            if ([v99 shouldLogToDisk])
            {
              v106 = v105 | 2;
            }

            else
            {
              v106 = v105;
            }

            v102 = [v99 OSLogObject];
            if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
            {
              v107 = v106;
            }

            else
            {
              v107 = v106 & 2;
            }

            if (v107)
            {
              v136 = 138412290;
              v137 = v126;
              LODWORD(v122) = 12;
              v119 = &v136;
              goto LABEL_112;
            }

LABEL_114:
            v90 = v123;
            goto LABEL_115;
          }

          v98 = v125;
          self = v127;
          if (!a5 && v125)
          {
            [v125 removeIndexes:v10];
            if (![v125 count])
            {

              v98 = 0;
            }

            v126 = v98;
            [v123 setAdditionalPendingRevisionsIndexSet:{v98, v119}];
            v99 = +[SSLogConfig sharedStoreServicesConfig];
            if (!v99)
            {
              v99 = +[SSLogConfig sharedConfig];
            }

            v100 = [v99 shouldLog];
            if ([v99 shouldLogToDisk])
            {
              v101 = v100 | 2;
            }

            else
            {
              v101 = v100;
            }

            v102 = [v99 OSLogObject];
            if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
            {
              v103 = v101;
            }

            else
            {
              v103 = v101 & 2;
            }

            if (v103)
            {
              v136 = 138412290;
              v137 = v126;
              LODWORD(v122) = 12;
              v119 = &v136;
LABEL_112:
              v108 = _os_log_send_and_compose_impl();

              v90 = v123;
              if (!v108)
              {
                v98 = v126;
                goto LABEL_117;
              }

              v102 = [MEMORY[0x1E696AEC0] stringWithCString:v108 encoding:{4, &v136, v122}];
              free(v108);
              SSFileLog(v99, @"%@", v109, v110, v111, v112, v113, v114, v102);
LABEL_115:
              v98 = v126;

LABEL_117:
              v83 = [(SSVPlayActivityController *)self _setEndpointRevisionInformation:v90 forEndpointIdentifier:v37];
              goto LABEL_118;
            }

            goto LABEL_114;
          }

          v83 = 0;
          v90 = v123;
LABEL_118:

          goto LABEL_119;
        }

        v73 = [MEMORY[0x1E696AEC0] stringWithCString:v75 encoding:{4, &v136, v122}];
        free(v75);
        SSFileLog(v70, @"%@", v76, v77, v78, v79, v80, v81, v73);
      }

      else
      {
        v39 = v124;
      }

      goto LABEL_81;
    }

    v84 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v84)
    {
      v84 = +[SSLogConfig sharedConfig];
    }

    v85 = [v84 shouldLog];
    if ([v84 shouldLogToDisk])
    {
      v86 = v85 | 2;
    }

    else
    {
      v86 = v85;
    }

    v87 = [v84 OSLogObject];
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = v86;
    }

    else
    {
      v88 = v86 & 2;
    }

    if (v88)
    {
      LOWORD(v136) = 0;
      LODWORD(v122) = 2;
      v119 = &v136;
      v89 = _os_log_send_and_compose_impl();

      v90 = v65;
      v37 = v64;
      v91 = v124;
      if (!v89)
      {
LABEL_99:

        v83 = 0;
        v98 = v91;
        v39 = 0;
        self = v127;
        goto LABEL_118;
      }

      v87 = [MEMORY[0x1E696AEC0] stringWithCString:v89 encoding:{4, &v136, v122}];
      free(v89);
      SSFileLog(v84, @"%@", v92, v93, v94, v95, v96, v97, v87);
    }

    else
    {
      v90 = v65;
      v37 = v64;
      v91 = v124;
    }

    goto LABEL_99;
  }

  if (v11)
  {
    v82 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__SSVPlayActivityController__completePendingPlayEventsWithRevisionIndexSet_forSessionToken_withResult_completionHandler___block_invoke;
    block[3] = &unk_1E84ADED0;
    v135 = v11;
    dispatch_async(v82, block);

    v24 = v135;
LABEL_125:
  }
}

uint64_t __121__SSVPlayActivityController__completePendingPlayEventsWithRevisionIndexSet_forSessionToken_withResult_completionHandler___block_invoke_86(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1 && *(a1 + 32))
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = @"SSVPlayActivityControllerUserInfoKeyEndpointIdentifier";
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v2 postNotificationName:@"SSVPlayActivityControllerEndpointRevisionInformationDidChangeNotification" object:v4 userInfo:v5];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (id)_daemonPlayActivityControllerConnection
{
  if (!self->_writingStyle && !self->_daemonPlayActivityControllerConnection)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.itunescloudd.playactivity" options:0];
    daemonPlayActivityControllerConnection = self->_daemonPlayActivityControllerConnection;
    self->_daemonPlayActivityControllerConnection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F50AD038];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    [v5 setClasses:v8 forSelector:sel_insertPlayActivityEvents_withReplyBlock_ argumentIndex:0 ofReply:0];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    [v5 setClasses:v11 forSelector:sel_insertPlayActivityEvents_withReplyBlock_ argumentIndex:0 ofReply:0];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    [v5 setClasses:v14 forSelector:sel_completePendingPlayActivityEvents_forSessionToken_result_withReplyBlock_ argumentIndex:0 ofReply:0];

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    [v5 setClasses:v17 forSelector:sel_acquirePendingPlayActivityEventsForEndpointIdentifier_storeAccountID_shouldFilterStoreAccountID_withReplyBlock_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)self->_daemonPlayActivityControllerConnection setRemoteObjectInterface:v5];
    [(NSXPCConnection *)self->_daemonPlayActivityControllerConnection setInterruptionHandler:&__block_literal_global_28];
    [(NSXPCConnection *)self->_daemonPlayActivityControllerConnection setInvalidationHandler:&__block_literal_global_154];
    [(NSXPCConnection *)self->_daemonPlayActivityControllerConnection resume];
  }

  v18 = self->_daemonPlayActivityControllerConnection;

  return v18;
}

void __68__SSVPlayActivityController__daemonPlayActivityControllerConnection__block_invoke()
{
  v0 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v0)
  {
    v0 = +[SSLogConfig sharedConfig];
  }

  v1 = [v0 shouldLog];
  if ([v0 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v0 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 2;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v13[0] = 0;
  LODWORD(v12) = 2;
  v5 = _os_log_send_and_compose_impl();

  if (v5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, v13, v12}];
    free(v5);
    SSFileLog(v0, @"%@", v6, v7, v8, v9, v10, v11, v3);
LABEL_12:
  }
}

void __68__SSVPlayActivityController__daemonPlayActivityControllerConnection__block_invoke_152()
{
  v0 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v0)
  {
    v0 = +[SSLogConfig sharedConfig];
  }

  v1 = [v0 shouldLog];
  if ([v0 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v0 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 2;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v13[0] = 0;
  LODWORD(v12) = 2;
  v5 = _os_log_send_and_compose_impl();

  if (v5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, v13, v12}];
    free(v5);
    SSFileLog(v0, @"%@", v6, v7, v8, v9, v10, v11, v3);
LABEL_12:
  }
}

- (id)_copyEndpointRevisionInformationForEndpointIdentifier:(id)a3
{
  v4 = a3;
  [(SSVPlayActivityController *)self _loadEndpointIdentifierInformationIfNeeded];
  v5 = [(NSMutableDictionary *)self->_endpointIdentifierToEndpointRevisionInformation objectForKey:v4];

  v6 = [v5 copy];
  return v6;
}

- (void)_getFlushSessionInformationForEndpointIdentifier:(id)a3 shouldAcquire:(BOOL)a4 storeAccountID:(unint64_t)a5 shouldFilterStoreAccountID:(BOOL)a6 withCompletionHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __156__SSVPlayActivityController__getFlushSessionInformationForEndpointIdentifier_shouldAcquire_storeAccountID_shouldFilterStoreAccountID_withCompletionHandler___block_invoke;
  v16[3] = &unk_1E84B27B0;
  v16[4] = self;
  v17 = v12;
  v20 = a6;
  v21 = a4;
  v18 = v13;
  v19 = a5;
  v14 = v13;
  v15 = v12;
  [(SSVPlayActivityController *)self getRevisionInformationWithCompletionHandler:v16];
}

void __156__SSVPlayActivityController__getFlushSessionInformationForEndpointIdentifier_shouldAcquire_storeAccountID_shouldFilterStoreAccountID_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 8);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __156__SSVPlayActivityController__getFlushSessionInformationForEndpointIdentifier_shouldAcquire_storeAccountID_shouldFilterStoreAccountID_withCompletionHandler___block_invoke_2;
  v16[3] = &unk_1E84B2788;
  v17 = v8;
  v18 = v10;
  v19 = v9;
  v20 = v7;
  v24 = *(a1 + 64);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v22 = a2;
  v23 = v12;
  v21 = v13;
  v14 = v7;
  v15 = v8;
  dispatch_barrier_async(v11, v16);
}

void __156__SSVPlayActivityController__getFlushSessionInformationForEndpointIdentifier_shouldAcquire_storeAccountID_shouldFilterStoreAccountID_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__62;
  v68[4] = __Block_byref_object_dispose__62;
  v69 = *(a1 + 32);
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__62;
  v66[4] = __Block_byref_object_dispose__62;
  v67 = 0;
  v2 = [*(a1 + 40) _copyEndpointRevisionInformationForEndpointIdentifier:*(a1 + 48)];
  v3 = v2;
  if (!v2)
  {
    if (!*(a1 + 72))
    {
      goto LABEL_37;
    }

LABEL_10:
    v3 = objc_alloc_init(_SSVPlayActivityEndpointRevisionInformation);
    [(_SSVPlayActivityEndpointRevisionInformation *)v3 setRevisionVersionToken:*(a1 + 56)];
    goto LABEL_11;
  }

  v4 = *(a1 + 56);
  v5 = [(_SSVPlayActivityEndpointRevisionInformation *)v2 revisionVersionToken];
  if (([v4 isEqualToString:v5] & 1) == 0)
  {

LABEL_9:
    if (!*(a1 + 72))
    {
      v3 = 0;
LABEL_37:

      v24 = 0;
      if ((*(a1 + 89) & 1) == 0)
      {
        v32 = 0;
        v18 = 0;
        goto LABEL_41;
      }

      v18 = 0;
      goto LABEL_39;
    }

    goto LABEL_10;
  }

  v6 = [(_SSVPlayActivityEndpointRevisionInformation *)v3 currentRevision]> *(a1 + 72);

  if (v6)
  {
    goto LABEL_9;
  }

  if (!*(a1 + 72))
  {
    goto LABEL_37;
  }

LABEL_11:
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = *(*(a1 + 40) + 40);
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v9)
  {
    v10 = *v63;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v62 + 1) + 8 * i);
        v13 = [v12 endpointIdentifier];
        v14 = [v13 isEqualToString:*(a1 + 48)];

        if (v14)
        {
          v15 = [v12 revisionsIndexSet];
          if ([v15 count])
          {
            if (v8)
            {
              [v8 addIndexes:v15];
            }

            else
            {
              v8 = [v15 mutableCopy];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v9);
  }

  v16 = [(_SSVPlayActivityEndpointRevisionInformation *)v3 additionalPendingRevisionsIndexSet];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__62;
  v60 = __Block_byref_object_dispose__62;
  v61 = 0;
  v17 = *(*(a1 + 40) + 56);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __156__SSVPlayActivityController__getFlushSessionInformationForEndpointIdentifier_shouldAcquire_storeAccountID_shouldFilterStoreAccountID_withCompletionHandler___block_invoke_3;
  v45[3] = &unk_1E84B2738;
  v18 = v3;
  v55 = *(a1 + 88);
  v19 = *(a1 + 40);
  v46 = v18;
  v47 = v19;
  v50 = v66;
  v51 = &v56;
  v20 = *(a1 + 80);
  v53 = *(a1 + 72);
  v54 = v20;
  v21 = v16;
  v48 = v21;
  v22 = v8;
  v49 = v22;
  v52 = v68;
  [v17 performTransactionWithBlock:v45];
  v23 = [v57[5] lastIndex];
  if ([v57[5] count])
  {
    v24 = objc_alloc_init(_SSVPlayActivityFlushSessionInformation);
    v25 = [v57[5] mutableCopy];
    [(_SSVPlayActivityFlushSessionInformation *)v24 setRevisionsIndexSet:v25];

    [(_SSVPlayActivityFlushSessionInformation *)v24 setRevisionVersionToken:*(a1 + 56)];
    [(_SSVPlayActivityFlushSessionInformation *)v24 setEndpointIdentifier:*(a1 + 48)];
    v26 = CFUUIDCreate(0);
    v27 = *&CFUUIDGetUUIDBytes(v26);
    CFRelease(v26);
    [(_SSVPlayActivityFlushSessionInformation *)v24 setSessionToken:v27];
    if (*(a1 + 89) == 1)
    {
      [(_SSVPlayActivityEndpointRevisionInformation *)v18 setAdditionalPendingRevisionsIndexSet:v57[5]];
      if ([(_SSVPlayActivityEndpointRevisionInformation *)v18 currentRevision]> v23)
      {
        v23 = [(_SSVPlayActivityEndpointRevisionInformation *)v18 currentRevision];
      }

      [(_SSVPlayActivityEndpointRevisionInformation *)v18 setCurrentRevision:v23];
    }
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(&v56, 8);
  if (*(a1 + 89))
  {
    if (v24)
    {
      v28 = *(*(a1 + 40) + 40);
      if (!v28)
      {
        v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
        v30 = *(a1 + 40);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;

        v28 = *(*(a1 + 40) + 40);
      }

      [v28 addObject:v24];
    }

LABEL_39:
    [*(a1 + 40) _setEndpointRevisionInformation:v18 forEndpointIdentifier:*(a1 + 48)];
    v32 = 1;
    goto LABEL_41;
  }

  v32 = 0;
LABEL_41:
  v33 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __156__SSVPlayActivityController__getFlushSessionInformationForEndpointIdentifier_shouldAcquire_storeAccountID_shouldFilterStoreAccountID_withCompletionHandler___block_invoke_4;
  block[3] = &unk_1E84B2760;
  v41 = *(a1 + 64);
  v42 = v66;
  v43 = v68;
  v44 = v32;
  v34 = *(a1 + 40);
  v35 = *(a1 + 48);
  v38 = v24;
  v39 = v34;
  v40 = v35;
  v36 = v24;
  dispatch_async(v33, block);

  _Block_object_dispose(v66, 8);
  _Block_object_dispose(v68, 8);
}

uint64_t __156__SSVPlayActivityController__getFlushSessionInformationForEndpointIdentifier_shouldAcquire_storeAccountID_shouldFilterStoreAccountID_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) currentRevision];
  v3 = *(a1 + 88);
  if (v2 + 1 <= v3)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v2 + 1 <= v3)
  {
    v5 = *(a1 + 88);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(a1 + 40) + 56);
  v7 = *(a1 + 105);
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 105))
    {
      v8 = *(*(a1 + 64) + 8);
      v10 = *(v8 + 40);
      v9 = (v8 + 40);
      v43 = v10;
      v11 = &v43;
    }

    else
    {
      v11 = 0;
      v9 = 0;
    }

    v16 = *(*(a1 + 72) + 8);
    v19 = *(v16 + 40);
    v18 = (v16 + 40);
    v17 = v19;
    v20 = *(a1 + 96);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = *(*(a1 + 80) + 8);
    v25 = *(v23 + 40);
    v24 = (v23 + 40);
    v41 = v25;
    obj = v17;
    [v6 getPlayActivityEvents:v11 relevantRevisionsIndexSet:&obj withStartRevision:v4 endRevision:v5 storeAccountID:v20 additionalRevisionsIndexSet:v21 ignoredRevisionsIndexSet:v22 error:&v41];
    if (v7)
    {
      objc_storeStrong(v9, v43);
    }

    objc_storeStrong(v18, obj);
    v26 = v41;
  }

  else
  {
    if (*(a1 + 105))
    {
      v12 = *(*(a1 + 64) + 8);
      v14 = *(v12 + 40);
      v13 = (v12 + 40);
      v40 = v14;
      v15 = &v40;
    }

    else
    {
      v15 = 0;
      v13 = 0;
    }

    v27 = *(*(a1 + 72) + 8);
    v30 = *(v27 + 40);
    v29 = (v27 + 40);
    v28 = v30;
    v31 = *(a1 + 48);
    v32 = *(a1 + 56);
    v33 = *(*(a1 + 80) + 8);
    v34 = *(v33 + 40);
    v24 = (v33 + 40);
    v38 = v34;
    v39 = v28;
    [v6 getPlayActivityEvents:v15 relevantRevisionsIndexSet:&v39 withStartRevision:v4 endRevision:v5 additionalRevisionsIndexSet:v31 ignoredRevisionsIndexSet:v32 error:&v38];
    if (v7)
    {
      objc_storeStrong(v13, v40);
    }

    objc_storeStrong(v29, v39);
    v26 = v38;
  }

  v35 = v26;
  v36 = *v24;
  *v24 = v35;

  return 0;
}

void __156__SSVPlayActivityController__getFlushSessionInformationForEndpointIdentifier_shouldAcquire_storeAccountID_shouldFilterStoreAccountID_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 40));
  }

  if (*(a1 + 80) == 1)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v7 = @"SSVPlayActivityControllerUserInfoKeyEndpointIdentifier";
    v8[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v3 postNotificationName:@"SSVPlayActivityControllerEndpointRevisionInformationDidChangeNotification" object:v5 userInfo:v6];
  }
}

- (void)_loadEndpointIdentifierInformationIfNeeded
{
  v48 = *MEMORY[0x1E69E9840];
  if (self->_hasLoadedEndpointRevisionInformation)
  {
    return;
  }

  v2 = self;
  self->_hasLoadedEndpointRevisionInformation = 1;
  [(SSVPlayActivityController *)self _setupNotifyTokenIfNeeded];
  v3 = CFPreferencesCopyAppValue(@"SSVPlayActivityEndpointRevisionInformation", @"com.apple.itunesstored");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_33;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v3;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = v5;
  v7 = *v40;
  v36 = v4;
  v37 = v2;
  v35 = *v40;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v40 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v39 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v4 objectForKey:v9];
        if ([v10 length])
        {
          v11 = MEMORY[0x1E696ACD0];
          v12 = objc_opt_class();
          v38 = 0;
          v13 = [v11 unarchivedObjectOfClass:v12 fromData:v10 error:&v38];
          v14 = v38;
          if (v14)
          {
            v15 = +[SSLogConfig sharedStoreServicesConfig];
            if (!v15)
            {
              v15 = +[SSLogConfig sharedConfig];
            }

            v16 = [v15 shouldLog];
            if ([v15 shouldLogToDisk])
            {
              v17 = v16 | 2;
            }

            else
            {
              v17 = v16;
            }

            v18 = [v15 OSLogObject];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = v17;
            }

            else
            {
              v19 = v17 & 2;
            }

            if (v19)
            {
              v20 = objc_opt_class();
              v43 = 138543618;
              v44 = v20;
              v45 = 2114;
              v46 = v14;
              v21 = v20;
              LODWORD(v33) = 22;
              v32 = &v43;
              v22 = _os_log_send_and_compose_impl();

              if (v22)
              {
                v18 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v43, v33}];
                free(v22);
                SSFileLog(v15, @"%@", v23, v24, v25, v26, v27, v28, v18);
                goto LABEL_22;
              }
            }

            else
            {
LABEL_22:
            }

            v4 = v36;
            v2 = v37;
            v7 = v35;
          }

          if (v13)
          {
            endpointIdentifierToEndpointRevisionInformation = v2->_endpointIdentifierToEndpointRevisionInformation;
            if (!endpointIdentifierToEndpointRevisionInformation)
            {
              v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
              v31 = v2->_endpointIdentifierToEndpointRevisionInformation;
              v2->_endpointIdentifierToEndpointRevisionInformation = v30;

              endpointIdentifierToEndpointRevisionInformation = v2->_endpointIdentifierToEndpointRevisionInformation;
            }

            [(NSMutableDictionary *)endpointIdentifierToEndpointRevisionInformation setObject:v13 forKey:v9, v32];
          }
        }

        continue;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v39 objects:v47 count:16];
  }

  while (v6);
LABEL_32:

  v3 = v34;
LABEL_33:
}

- (id)_revisionsIndexSetForPlayActivityEvents:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__62;
  v16 = __Block_byref_object_dispose__62;
  v17 = 0;
  table = self->_table;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__SSVPlayActivityController__revisionsIndexSetForPlayActivityEvents___block_invoke;
  v9[3] = &unk_1E84B27D8;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [(SSVPlayActivityTable *)table performTransactionWithBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __69__SSVPlayActivityController__revisionsIndexSetForPlayActivityEvents___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) revisionsIndexSetForPlayActivityEvents:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

- (id)_revisionsIndexSetForPlayActivityEventPersistentIDs:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__62;
  v16 = __Block_byref_object_dispose__62;
  v17 = 0;
  table = self->_table;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__SSVPlayActivityController__revisionsIndexSetForPlayActivityEventPersistentIDs___block_invoke;
  v9[3] = &unk_1E84B27D8;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [(SSVPlayActivityTable *)table performTransactionWithBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __81__SSVPlayActivityController__revisionsIndexSetForPlayActivityEventPersistentIDs___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) revisionsIndexSetForPlayActivityEventPersistentIDs:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

- (id)_sessionInformationForSessionToken:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_pendingFlushingSessions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 sessionToken] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)_setEndpointRevisionInformation:(id)a3 forEndpointIdentifier:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(SSVPlayActivityController *)self _loadEndpointIdentifierInformationIfNeeded];
  v8 = [(NSMutableDictionary *)self->_endpointIdentifierToEndpointRevisionInformation objectForKey:v7];
  v9 = v8;
  if (v8 == v6 || ([v8 isEqual:v6] & 1) != 0)
  {
    v10 = 0;
    goto LABEL_38;
  }

  v11 = CFPreferencesCopyAppValue(@"SSVPlayActivityEndpointRevisionInformation", @"com.apple.itunesstored");
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = 0;
    }
  }

  endpointIdentifierToEndpointRevisionInformation = self->_endpointIdentifierToEndpointRevisionInformation;
  if (!v6)
  {
    [(NSMutableDictionary *)endpointIdentifierToEndpointRevisionInformation removeObjectForKey:v7];
    if (![(NSMutableDictionary *)self->_endpointIdentifierToEndpointRevisionInformation count])
    {
      v29 = self->_endpointIdentifierToEndpointRevisionInformation;
      self->_endpointIdentifierToEndpointRevisionInformation = 0;
    }

    v15 = [v11 mutableCopy];
    v16 = 0;
    goto LABEL_26;
  }

  if (!endpointIdentifierToEndpointRevisionInformation)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v14 = self->_endpointIdentifierToEndpointRevisionInformation;
    self->_endpointIdentifierToEndpointRevisionInformation = v13;

    endpointIdentifierToEndpointRevisionInformation = self->_endpointIdentifierToEndpointRevisionInformation;
  }

  [(NSMutableDictionary *)endpointIdentifierToEndpointRevisionInformation setObject:v6 forKey:v7];
  v15 = [v11 mutableCopy];
  v37 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:0 requiringSecureCoding:1 error:&v37];
  v17 = v37;
  if (v17)
  {
    v36 = v16;
    v18 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v19 |= 2u;
    }

    v20 = [v18 OSLogObject];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v21 = objc_opt_class();
      v38 = 138543618;
      v39 = v21;
      v40 = 2114;
      v41 = v17;
      v35 = v21;
      LODWORD(v34) = 22;
      v33 = &v38;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_21:

        v16 = v36;
        goto LABEL_22;
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v38, v34}];
      free(v22);
      SSFileLog(v18, @"%@", v23, v24, v25, v26, v27, v28, v20);
    }

    goto LABEL_21;
  }

LABEL_22:

LABEL_26:
  if ([v16 length])
  {
    if (!v15)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    [v15 setObject:v16 forKey:v7];
  }

  else
  {
    [v15 removeObjectForKey:v7];
  }

  if (![v15 count])
  {

    v15 = 0;
  }

  if (v11 != v15 && ([v11 isEqualToDictionary:v15] & 1) == 0)
  {
    CFPreferencesSetAppValue(@"SSVPlayActivityEndpointRevisionInformation", v15, @"com.apple.itunesstored");
    CFPreferencesAppSynchronize(@"com.apple.itunesstored");
    [(SSVPlayActivityController *)self _setupNotifyTokenIfNeeded];
    if (self->_hasValidEndpointRevisionInformationDidChangeNotifyToken)
    {
      endpointRevisionInformationDidChangeNotifyToken = self->_endpointRevisionInformationDidChangeNotifyToken;
      v31 = getpid();
      notify_set_state(endpointRevisionInformationDidChangeNotifyToken, v31);
      notify_post("com.apple.StoreServices.SSVPlayActivityControllerEndpointRevisionInformationDidChange");
    }
  }

  v10 = 1;
LABEL_38:

  return v10;
}

- (void)_setupNotifyTokenIfNeeded
{
  if (!self->_hasSetupEndpointRevisionInformationDidChangeNotifyToken)
  {
    self->_hasSetupEndpointRevisionInformationDidChangeNotifyToken = 1;
    objc_initWeak(&location, self);
    v3 = dispatch_get_global_queue(0, 0);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__SSVPlayActivityController__setupNotifyTokenIfNeeded__block_invoke;
    v5[3] = &unk_1E84ACFA8;
    objc_copyWeak(&v6, &location);
    v4 = notify_register_dispatch("com.apple.StoreServices.SSVPlayActivityControllerEndpointRevisionInformationDidChange", &self->_endpointRevisionInformationDidChangeNotifyToken, v3, v5);

    self->_hasValidEndpointRevisionInformationDidChangeNotifyToken = v4 == 0;
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __54__SSVPlayActivityController__setupNotifyTokenIfNeeded__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    if (!notify_get_state(a2, &state64))
    {
      v4 = state64;
      if (v4 != getpid())
      {
        CFPreferencesAppSynchronize(@"com.apple.itunesstored");
        v5 = WeakRetained[1];
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __54__SSVPlayActivityController__setupNotifyTokenIfNeeded__block_invoke_2;
        v6[3] = &unk_1E84AC050;
        v7 = WeakRetained;
        dispatch_barrier_async(v5, v6);
      }
    }
  }
}

void __54__SSVPlayActivityController__setupNotifyTokenIfNeeded__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 36) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

@end