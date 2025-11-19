@interface SAInternalAPI
+ (void)addAppSizerHandler:(id)a3 reply:(id)a4;
+ (void)adjustDenomAgeBy:(unint64_t)a3 reply:(id)a4;
+ (void)clearLastTelemetryData:(id)a3;
+ (void)disableAppSizerResultsFilteringWithReply:(id)a3;
+ (void)getAppPathsWithReplyBlock:(id)a3;
+ (void)getLastTelemetryData:(id)a3;
+ (void)getPurgeableInfo:(id)a3 options:(unint64_t)a4 reply:(id)a5;
+ (void)importFromPlist:(id)a3 reply:(id)a4;
+ (void)removeAppSizerHandler:(id)a3 reply:(id)a4;
+ (void)runAppSizerWithReplyBlock:(id)a3;
+ (void)setAppPathListPathOnDisk:(id)a3 reply:(id)a4;
+ (void)setAppPathListPathOnDisktoDefaultWithReply:(id)a3;
+ (void)setAppSizerFilteringOptionsToDefaultWithReply:(id)a3;
+ (void)setForceSDAAbort:(id)a3;
+ (void)setForceTelemetry:(id)a3;
@end

@implementation SAInternalAPI

uint64_t __43__SAInternalAPI_getAppPaths_options_reply___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __43__SAInternalAPI_getAppPaths_options_reply___block_invoke_2(uint64_t result)
{
  v2 = *(*(result + 40) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    (*(*(result + 32) + 16))();
    v4 = *(*(*(v3 + 48) + 8) + 40);

    return [v4 invalidate];
  }

  return result;
}

uint64_t __43__SAInternalAPI_getAppPaths_options_reply___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)getAppPathsWithReplyBlock:(id)a3
{
  v3 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__SAInternalAPI_getAppPathsWithReplyBlock___block_invoke;
  v17[3] = &unk_279CD6EA8;
  v4 = v3;
  v18 = v4;
  v19 = &v20;
  v5 = [SADaemonXPC newWithInvalidationHandler:v17];
  v6 = v21[5];
  v21[5] = v5;

  v7 = v21[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__SAInternalAPI_getAppPathsWithReplyBlock___block_invoke_2;
  v14[3] = &unk_279CD6EA8;
  v8 = v4;
  v15 = v8;
  v16 = &v20;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__SAInternalAPI_getAppPathsWithReplyBlock___block_invoke_3;
  v11[3] = &unk_279CD6F98;
  v10 = v8;
  v12 = v10;
  v13 = &v20;
  [v9 getAppPaths:0 options:1 reply:v11];

  _Block_object_dispose(&v20, 8);
}

uint64_t __43__SAInternalAPI_getAppPathsWithReplyBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __43__SAInternalAPI_getAppPathsWithReplyBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

void __43__SAInternalAPI_getAppPathsWithReplyBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:@"bundles"];
          v14 = [v12 objectForKeyedSubscript:@"path"];
          [v6 setObject:v13 forKeyedSubscript:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
    v5 = v16;
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)runAppSizerWithReplyBlock:(id)a3
{
  v3 = a3;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__SAInternalAPI_runAppSizerWithReplyBlock___block_invoke;
  v16[3] = &unk_279CD6F48;
  v18 = v25;
  v4 = v3;
  v17 = v4;
  v24 = [SADaemonXPC newWithInvalidationHandler:v16];
  v5 = v20[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__SAInternalAPI_runAppSizerWithReplyBlock___block_invoke_2;
  v12[3] = &unk_279CD6F70;
  v14 = v25;
  v6 = v4;
  v13 = v6;
  v15 = &v19;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SAInternalAPI_runAppSizerWithReplyBlock___block_invoke_3;
  v9[3] = &unk_279CD6EA8;
  v8 = v6;
  v10 = v8;
  v11 = &v19;
  [v7 runAppSizer:v9];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v25, 8);
}

uint64_t __43__SAInternalAPI_runAppSizerWithReplyBlock___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __43__SAInternalAPI_runAppSizerWithReplyBlock___block_invoke_2(uint64_t result)
{
  v2 = *(*(result + 40) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    (*(*(result + 32) + 16))();
    v4 = *(*(*(v3 + 48) + 8) + 40);

    return [v4 invalidate];
  }

  return result;
}

uint64_t __43__SAInternalAPI_runAppSizerWithReplyBlock___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)getPurgeableInfo:(id)a3 options:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__SAInternalAPI_getPurgeableInfo_options_reply___block_invoke;
  v21[3] = &unk_279CD6F48;
  v23 = v30;
  v9 = v8;
  v22 = v9;
  v29 = [SADaemonXPC newWithInvalidationHandler:v21];
  v10 = v25[5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__SAInternalAPI_getPurgeableInfo_options_reply___block_invoke_2;
  v17[3] = &unk_279CD6F70;
  v19 = v30;
  v11 = v9;
  v18 = v11;
  v20 = &v24;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__SAInternalAPI_getPurgeableInfo_options_reply___block_invoke_3;
  v14[3] = &unk_279CD6FC0;
  v13 = v11;
  v15 = v13;
  v16 = &v24;
  [v12 getPurgeableInfo:v7 options:a4 reply:v14];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v30, 8);
}

uint64_t __48__SAInternalAPI_getPurgeableInfo_options_reply___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __48__SAInternalAPI_getPurgeableInfo_options_reply___block_invoke_2(uint64_t result)
{
  v2 = *(*(result + 40) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    (*(*(result + 32) + 16))();
    v4 = *(*(*(v3 + 48) + 8) + 40);

    return [v4 invalidate];
  }

  return result;
}

uint64_t __48__SAInternalAPI_getPurgeableInfo_options_reply___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)addAppSizerHandler:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [v8 setAppSizerUpdateHandler:v5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__SAInternalAPI_addAppSizerHandler_reply___block_invoke;
  v17[3] = &unk_279CD6FE8;
  v20 = v21;
  v9 = v6;
  v19 = v9;
  v10 = v7;
  v18 = v10;
  v11 = [v10 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__SAInternalAPI_addAppSizerHandler_reply___block_invoke_2;
  v14[3] = &unk_279CD7010;
  v12 = v8;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  [v11 addAppSizerHandler:v12 reply:v14];

  _Block_object_dispose(v21, 8);
}

uint64_t __42__SAInternalAPI_addAppSizerHandler_reply___block_invoke(uint64_t result)
{
  v2 = *(*(result + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    (*(*(result + 40) + 16))();
    v4 = *(v3 + 32);

    return [v4 invalidate];
  }

  return result;
}

void __42__SAInternalAPI_addAppSizerHandler_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setControllerID:v4];
  (*(*(a1 + 40) + 16))();
}

+ (void)removeAppSizerHandler:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v7 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__SAInternalAPI_removeAppSizerHandler_reply___block_invoke;
  v11[3] = &unk_279CD6FE8;
  v14 = v15;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v12 = v9;
  v10 = [v9 remoteObjectProxyWithErrorHandler:v11];
  [v10 removeAppSizerHandler:v5];
  (*(v8 + 2))(v8, 0);

  _Block_object_dispose(v15, 8);
}

uint64_t __45__SAInternalAPI_removeAppSizerHandler_reply___block_invoke(uint64_t result)
{
  v2 = *(*(result + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    (*(*(result + 40) + 16))();
    v4 = *(v3 + 32);

    return [v4 invalidate];
  }

  return result;
}

+ (void)disableAppSizerResultsFilteringWithReply:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = [SADaemonXPC newWithInvalidationHandler:v3];
  v4 = v15[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SAInternalAPI_disableAppSizerResultsFilteringWithReply___block_invoke;
  v11[3] = &unk_279CD6EA8;
  v5 = v3;
  v12 = v5;
  v13 = &v14;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SAInternalAPI_disableAppSizerResultsFilteringWithReply___block_invoke_2;
  v8[3] = &unk_279CD6EA8;
  v7 = v5;
  v9 = v7;
  v10 = &v14;
  [v6 disableAppSizerResultsFilteringWithReply:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __58__SAInternalAPI_disableAppSizerResultsFilteringWithReply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __58__SAInternalAPI_disableAppSizerResultsFilteringWithReply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)setAppSizerFilteringOptionsToDefaultWithReply:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__SAInternalAPI_setAppSizerFilteringOptionsToDefaultWithReply___block_invoke;
  v15[3] = &unk_279CD6E10;
  v4 = v3;
  v16 = v4;
  v22 = [SADaemonXPC newWithInvalidationHandler:v15];
  v5 = v18[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SAInternalAPI_setAppSizerFilteringOptionsToDefaultWithReply___block_invoke_2;
  v12[3] = &unk_279CD6EA8;
  v6 = v4;
  v13 = v6;
  v14 = &v17;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SAInternalAPI_setAppSizerFilteringOptionsToDefaultWithReply___block_invoke_3;
  v9[3] = &unk_279CD6EA8;
  v8 = v6;
  v10 = v8;
  v11 = &v17;
  [v7 setAppSizerResultsFilteringOptionsToDefaultWithReply:v9];

  _Block_object_dispose(&v17, 8);
}

uint64_t __63__SAInternalAPI_setAppSizerFilteringOptionsToDefaultWithReply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __63__SAInternalAPI_setAppSizerFilteringOptionsToDefaultWithReply___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)setForceTelemetry:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __35__SAInternalAPI_setForceTelemetry___block_invoke;
  v15[3] = &unk_279CD6E10;
  v4 = v3;
  v16 = v4;
  v22 = [SADaemonXPC newWithInvalidationHandler:v15];
  v5 = v18[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__SAInternalAPI_setForceTelemetry___block_invoke_2;
  v12[3] = &unk_279CD6EA8;
  v6 = v4;
  v13 = v6;
  v14 = &v17;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__SAInternalAPI_setForceTelemetry___block_invoke_3;
  v9[3] = &unk_279CD6EA8;
  v8 = v6;
  v10 = v8;
  v11 = &v17;
  [v7 setForceTelemetry:v9];

  _Block_object_dispose(&v17, 8);
}

uint64_t __35__SAInternalAPI_setForceTelemetry___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __35__SAInternalAPI_setForceTelemetry___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)setForceSDAAbort:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __34__SAInternalAPI_setForceSDAAbort___block_invoke;
  v15[3] = &unk_279CD6E10;
  v4 = v3;
  v16 = v4;
  v22 = [SADaemonXPC newWithInvalidationHandler:v15];
  v5 = v18[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__SAInternalAPI_setForceSDAAbort___block_invoke_2;
  v12[3] = &unk_279CD6EA8;
  v6 = v4;
  v13 = v6;
  v14 = &v17;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__SAInternalAPI_setForceSDAAbort___block_invoke_3;
  v9[3] = &unk_279CD6EA8;
  v8 = v6;
  v10 = v8;
  v11 = &v17;
  [v7 setForceSDAAbort:v9];

  _Block_object_dispose(&v17, 8);
}

uint64_t __34__SAInternalAPI_setForceSDAAbort___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __34__SAInternalAPI_setForceSDAAbort___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)adjustDenomAgeBy:(unint64_t)a3 reply:(id)a4
{
  v5 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__SAInternalAPI_adjustDenomAgeBy_reply___block_invoke;
  v17[3] = &unk_279CD6E10;
  v6 = v5;
  v18 = v6;
  v24 = [SADaemonXPC newWithInvalidationHandler:v17];
  v7 = v20[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__SAInternalAPI_adjustDenomAgeBy_reply___block_invoke_2;
  v14[3] = &unk_279CD6EA8;
  v8 = v6;
  v15 = v8;
  v16 = &v19;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__SAInternalAPI_adjustDenomAgeBy_reply___block_invoke_3;
  v11[3] = &unk_279CD6EA8;
  v10 = v8;
  v12 = v10;
  v13 = &v19;
  [v9 adjustDenomAgeBy:a3 reply:v11];

  _Block_object_dispose(&v19, 8);
}

uint64_t __40__SAInternalAPI_adjustDenomAgeBy_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __40__SAInternalAPI_adjustDenomAgeBy_reply___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __35__SAInternalAPI_setForceTTR_reply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __35__SAInternalAPI_setForceTTR_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __36__SAInternalAPI_setEnableTTR_reply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __36__SAInternalAPI_setEnableTTR_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __50__SAInternalAPI_setAppSizerMaxRerunTimeout_reply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __50__SAInternalAPI_setAppSizerMaxRerunTimeout_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)getLastTelemetryData:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__SAInternalAPI_getLastTelemetryData___block_invoke;
  v15[3] = &unk_279CD6E10;
  v4 = v3;
  v16 = v4;
  v22 = [SADaemonXPC newWithInvalidationHandler:v15];
  v5 = v18[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__SAInternalAPI_getLastTelemetryData___block_invoke_2;
  v12[3] = &unk_279CD6EA8;
  v6 = v4;
  v13 = v6;
  v14 = &v17;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SAInternalAPI_getLastTelemetryData___block_invoke_3;
  v9[3] = &unk_279CD6FC0;
  v8 = v6;
  v10 = v8;
  v11 = &v17;
  [v7 getLastTelemetryData:v9];

  _Block_object_dispose(&v17, 8);
}

uint64_t __38__SAInternalAPI_getLastTelemetryData___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __38__SAInternalAPI_getLastTelemetryData___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)importFromPlist:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__SAInternalAPI_importFromPlist_reply___block_invoke;
  v18[3] = &unk_279CD6E10;
  v7 = v6;
  v19 = v7;
  v25 = [SADaemonXPC newWithInvalidationHandler:v18];
  v8 = v21[5];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__SAInternalAPI_importFromPlist_reply___block_invoke_2;
  v15[3] = &unk_279CD6EA8;
  v9 = v7;
  v16 = v9;
  v17 = &v20;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__SAInternalAPI_importFromPlist_reply___block_invoke_3;
  v12[3] = &unk_279CD6EA8;
  v11 = v9;
  v13 = v11;
  v14 = &v20;
  [v10 importFromPlist:v5 reply:v12];

  _Block_object_dispose(&v20, 8);
}

uint64_t __39__SAInternalAPI_importFromPlist_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __39__SAInternalAPI_importFromPlist_reply___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)clearLastTelemetryData:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = [SADaemonXPC newWithInvalidationHandler:v3];
  v4 = v15[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__SAInternalAPI_clearLastTelemetryData___block_invoke;
  v11[3] = &unk_279CD6EA8;
  v5 = v3;
  v12 = v5;
  v13 = &v14;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SAInternalAPI_clearLastTelemetryData___block_invoke_2;
  v8[3] = &unk_279CD6EA8;
  v7 = v5;
  v9 = v7;
  v10 = &v14;
  [v6 clearLastTelemetryData:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __40__SAInternalAPI_clearLastTelemetryData___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __40__SAInternalAPI_clearLastTelemetryData___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)setAppPathListPathOnDisk:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = [SADaemonXPC newWithInvalidationHandler:v6];
  v7 = v18[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__SAInternalAPI_setAppPathListPathOnDisk_reply___block_invoke;
  v14[3] = &unk_279CD6EA8;
  v8 = v6;
  v15 = v8;
  v16 = &v17;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__SAInternalAPI_setAppPathListPathOnDisk_reply___block_invoke_2;
  v11[3] = &unk_279CD6EA8;
  v10 = v8;
  v12 = v10;
  v13 = &v17;
  [v9 setAppPathListPathOnDisk:v5 reply:v11];

  _Block_object_dispose(&v17, 8);
}

uint64_t __48__SAInternalAPI_setAppPathListPathOnDisk_reply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __48__SAInternalAPI_setAppPathListPathOnDisk_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

+ (void)setAppPathListPathOnDisktoDefaultWithReply:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = [SADaemonXPC newWithInvalidationHandler:v3];
  v4 = v15[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__SAInternalAPI_setAppPathListPathOnDisktoDefaultWithReply___block_invoke;
  v11[3] = &unk_279CD6EA8;
  v5 = v3;
  v12 = v5;
  v13 = &v14;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SAInternalAPI_setAppPathListPathOnDisktoDefaultWithReply___block_invoke_2;
  v8[3] = &unk_279CD6EA8;
  v7 = v5;
  v9 = v7;
  v10 = &v14;
  [v6 setAppPathListPathOnDisktoDefaultWithReply:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __60__SAInternalAPI_setAppPathListPathOnDisktoDefaultWithReply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

uint64_t __60__SAInternalAPI_setAppPathListPathOnDisktoDefaultWithReply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

@end