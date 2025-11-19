@interface AssetAccessSessionController
- (AssetAccessSessionController)init;
- (AssetAccessSessionControllerDelegate)delegate;
- (id)_onQueueActiveSessionWithAccessToken:(id)a3;
- (id)_onQueueActiveSessions;
- (id)_onQueueActiveSessionsWithWithCompositionAVURL:(id)a3;
- (id)_onQueueActiveSessionsWithXPCConnection:(id)a3;
- (id)_onQueueSessionsMatchingPredicate:(id)a3;
- (id)activeSessionWithAccessToken:(id)a3;
- (id)activeSessions;
- (id)activeSessionsWithWithCompositionAVURL:(id)a3;
- (id)activeSessionsWithXPCConnection:(id)a3;
- (id)openAccessSessionWithName:(id)a3 xpcConnection:(id)a4 compositionAVURL:(id)a5 accessIntent:(int64_t)a6 error:(id *)a7;
- (void)_onQueueEnumerateActiveSessionsWithBlock:(id)a3;
- (void)closeSession:(id)a3;
- (void)dumpState;
@end

@implementation AssetAccessSessionController

- (id)activeSessions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100001DEC;
  v11 = sub_10001F770;
  v12 = objc_opt_new();
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000020E8;
  v6[3] = &unk_100055A70;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (AssetAccessSessionController)init
{
  v8.receiver = self;
  v8.super_class = AssetAccessSessionController;
  v2 = [(AssetAccessSessionController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create(0, 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    clientSessionsByCompositionAVURL = v2->_clientSessionsByCompositionAVURL;
    v2->_clientSessionsByCompositionAVURL = v5;
  }

  return v2;
}

- (id)openAccessSessionWithName:(id)a3 xpcConnection:(id)a4 compositionAVURL:(id)a5 accessIntent:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100001DEC;
  v54 = sub_10001F770;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100001DEC;
  v48 = sub_10001F770;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100001DEC;
  v42 = sub_10001F770;
  v43 = +[NSSet set];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100001DEC;
  v36 = sub_10001F770;
  v37 = +[NSSet set];
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F778;
  block[3] = &unk_1000562D0;
  v16 = v12;
  v23 = v16;
  v31 = a6;
  v17 = v14;
  v24 = v17;
  v25 = self;
  v27 = &v44;
  v18 = v13;
  v26 = v18;
  v28 = &v38;
  v29 = &v50;
  v30 = &v32;
  dispatch_sync(serialQueue, block);
  if (([v39[5] isEqual:v33[5]] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assetAccessSessionController:self sessionDidChangedFromActiveSessions:v39[5] toActiveSessions:v33[5]];
  }

  if (a7)
  {
    *a7 = v45[5];
  }

  v20 = v51[5];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  return v20;
}

- (void)closeSession:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100001DEC;
  v26 = sub_10001F770;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100001DEC;
  v20 = sub_10001F770;
  v21 = 0;
  serialQueue = self->_serialQueue;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10001FC3C;
  v11 = &unk_1000562F8;
  v12 = self;
  v6 = v4;
  v13 = v6;
  v14 = &v22;
  v15 = &v16;
  dispatch_sync(serialQueue, &v8);
  if (([v23[5] isEqual:{v17[5], v8, v9, v10, v11, v12}] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assetAccessSessionController:self sessionDidChangedFromActiveSessions:v23[5] toActiveSessions:v17[5]];
  }

  [v6 setXpcTransaction:0];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

- (id)activeSessionWithAccessToken:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100001DEC;
  v16 = sub_10001F770;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FE08;
  block[3] = &unk_100055958;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)activeSessionsWithWithCompositionAVURL:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100001DEC;
  v16 = sub_10001F770;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FF68;
  block[3] = &unk_100055958;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)activeSessionsWithXPCConnection:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100001DEC;
  v16 = sub_10001F770;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000200C8;
  block[3] = &unk_100055958;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_onQueueActiveSessionWithAccessToken:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  clientSessionsByCompositionAVURL = self->_clientSessionsByCompositionAVURL;
  v6 = [v4 compositionAVURL];
  v7 = [(NSMutableDictionary *)clientSessionsByCompositionAVURL objectForKey:v6];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 accessToken];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)_onQueueActiveSessionsWithWithCompositionAVURL:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_clientSessionsByCompositionAVURL objectForKey:a3];
  v4 = [v3 allObjects];

  return v4;
}

- (id)_onQueueActiveSessionsWithXPCConnection:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002047C;
  v7[3] = &unk_100056348;
  v8 = a3;
  v4 = v8;
  v5 = [(AssetAccessSessionController *)self _onQueueSessionsMatchingPredicate:v7];

  return v5;
}

- (id)_onQueueActiveSessions
{
  v3 = objc_opt_new();
  clientSessionsByCompositionAVURL = self->_clientSessionsByCompositionAVURL;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020570;
  v7[3] = &unk_100056370;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)clientSessionsByCompositionAVURL enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)_onQueueEnumerateActiveSessionsWithBlock:(id)a3
{
  v4 = a3;
  clientSessionsByCompositionAVURL = self->_clientSessionsByCompositionAVURL;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020610;
  v7[3] = &unk_100056398;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)clientSessionsByCompositionAVURL enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)_onQueueSessionsMatchingPredicate:(id)a3
{
  v4 = a3;
  +[NSMutableArray array];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000207F4;
  v10[3] = &unk_1000563C0;
  v5 = v12 = v4;
  v11 = v5;
  v6 = v4;
  [(AssetAccessSessionController *)self _onQueueEnumerateActiveSessionsWithBlock:v10];
  v7 = v11;
  v8 = v5;

  return v5;
}

- (void)dumpState
{
  v3 = +[NSMutableDictionary dictionary];
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000209A4;
  block[3] = &unk_1000556C8;
  block[4] = self;
  v5 = v3;
  v11 = v5;
  dispatch_sync(serialQueue, block);
  v6 = [v5 count];
  v7 = __stderrp;
  v8 = [(AssetAccessSessionController *)self description];
  v9 = [v8 UTF8String];
  if (v6)
  {
    fprintf(v7, "[%s] *** Active Sessions (by compositionAVURL/URL) ***\n\n", v9);

    [v5 enumerateKeysAndObjectsUsingBlock:&stru_100056428];
    fwrite("*****************************************\n", 0x2AuLL, 1uLL, __stderrp);
  }

  else
  {
    fprintf(v7, "[%s] *** No Active Sessions ***\n", v9);
  }
}

- (AssetAccessSessionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end