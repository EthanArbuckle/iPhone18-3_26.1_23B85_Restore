@interface DownloadHandlerManager
+ (id)handlerManager;
- (BOOL)canOpenSessionWithProperties:(id)a3;
- (DownloadHandlerManager)init;
- (id)_clientForProperties:(id)a3;
- (id)_clientForSession:(id)a3;
- (id)_disconnectSessionsForHandlerID:(int64_t)a3;
- (id)_popDownloadSessionForSessionID:(int64_t)a3;
- (id)beginBackgroundTaskForSessionWithID:(int64_t)a3 reason:(unsigned int)a4 expirationBlock:(id)a5;
- (id)openSessionWithProperties:(id)a3;
- (id)sessionForSessionID:(int64_t)a3;
- (int64_t)_globalHandlerIDForClientID:(id)a3;
- (void)_clientDisconnectNotification:(id)a3;
- (void)_endDisconnectedSessionsForClientID:(id)a3;
- (void)_endSessionWithID:(int64_t)a3 state:(int64_t)a4;
- (void)_notifyObserversOfHandlersChange;
- (void)_notifyObserversOfSessionChange:(id)a3;
- (void)_notifyObserversOfSessionChanges:(id)a3;
- (void)_sendMessage:(int64_t)a3 forSessionID:(int64_t)a4 replyBlock:(id)a5;
- (void)addDownloadHandler:(id)a3;
- (void)addHandlerObserver:(id)a3;
- (void)beginSessionWithID:(int64_t)a3;
- (void)cancelAuthenticationSessionWithID:(int64_t)a3;
- (void)cancelSessionWithID:(int64_t)a3;
- (void)closeUnstartedSessionWithID:(int64_t)a3;
- (void)continueAuthenticationSessionWithID:(int64_t)a3;
- (void)dealloc;
- (void)disavowDownloadSessionWithID:(int64_t)a3 error:(id)a4;
- (void)disconnectDownloadSessionWithID:(int64_t)a3;
- (void)endBackgroundTaskForSessionWithID:(int64_t)a3 identifier:(id)a4;
- (void)failDownloadSessionWithID:(int64_t)a3 error:(id)a4;
- (void)finishDownloadSessionWithID:(int64_t)a3;
- (void)modifyDownloadHandlerWithID:(int64_t)a3 usingBlock:(id)a4;
- (void)pauseSessionWithID:(int64_t)a3;
- (void)performDefaultForAuthenticationSessionWithID:(int64_t)a3;
- (void)rejectSpaceForAuthenticationSessionWithID:(int64_t)a3;
- (void)releaseDownloadSessionWithID:(int64_t)a3;
- (void)removeHandlerObserver:(id)a3;
- (void)resetDisavowedSessionsForHandlerWithID:(int64_t)a3;
- (void)retrySessionWithID:(int64_t)a3;
- (void)setGlobalDownloadHandlerID:(int64_t)a3 forClientID:(id)a4;
- (void)setSessionProperties:(id)a3 forSessionWithID:(int64_t)a4;
- (void)useCredential:(id)a3 forAuthenticationSessionWithID:(int64_t)a4;
@end

@implementation DownloadHandlerManager

- (DownloadHandlerManager)init
{
  v4.receiver = self;
  v4.super_class = DownloadHandlerManager;
  v2 = [(DownloadHandlerManager *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.DownloadHandlerManager", 0);
    v2->_observersQueue = dispatch_queue_create("com.apple.itunesstored.DownloadHandlerManager.observers", 0);
    v2->_clientsByHandlerID = objc_alloc_init(NSMutableDictionary);
    v2->_disconnectedSessionsByClientID = objc_alloc_init(NSMutableDictionary);
    v2->_globalHandlersByClientID = objc_alloc_init(NSMutableDictionary);
    v2->_observers = +[NSHashTable weakObjectsHashTable];
    v2->_sessionsByID = objc_alloc_init(NSMutableDictionary);
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"_clientDisconnectNotification:" object:@"XPCClientDisconnectNotification", 0];
  }

  return v2;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"XPCClientDisconnectNotification", 0];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  observersQueue = self->_observersQueue;
  if (observersQueue)
  {
    dispatch_release(observersQueue);
  }

  v5.receiver = self;
  v5.super_class = DownloadHandlerManager;
  [(DownloadHandlerManager *)&v5 dealloc];
}

+ (id)handlerManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E91E4;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_1003840F8 != -1)
  {
    dispatch_once(&qword_1003840F8, block);
  }

  return qword_1003840F0;
}

- (void)addDownloadHandler:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9280;
  v4[3] = &unk_100327350;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)addHandlerObserver:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9560;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (id)beginBackgroundTaskForSessionWithID:(int64_t)a3 reason:(unsigned int)a4 expirationBlock:(id)a5
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_1001E9664;
  v14 = sub_1001E9674;
  v15 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E9680;
  block[3] = &unk_10032BF18;
  block[6] = &v10;
  block[7] = a3;
  v9 = a4;
  block[4] = self;
  block[5] = a5;
  dispatch_sync(dispatchQueue, block);
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (void)beginSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9790;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)cancelAuthenticationSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9C60;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)cancelSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9E40;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (BOOL)canOpenSessionWithProperties:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EA06C;
  block[3] = &unk_10032AF40;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)closeUnstartedSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EA120;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)continueAuthenticationSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EA1F8;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)disavowDownloadSessionWithID:(int64_t)a3 error:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EA3DC;
  block[3] = &unk_10032A398;
  block[5] = a4;
  block[6] = a3;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)disconnectDownloadSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EA620;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)endBackgroundTaskForSessionWithID:(int64_t)a3 identifier:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EA804;
  block[3] = &unk_10032A398;
  block[5] = a4;
  block[6] = a3;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)failDownloadSessionWithID:(int64_t)a3 error:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EA95C;
  block[3] = &unk_10032A398;
  block[5] = a4;
  block[6] = a3;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)finishDownloadSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EAB7C;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)modifyDownloadHandlerWithID:(int64_t)a3 usingBlock:(id)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_1001E9664;
  v15 = sub_1001E9674;
  v16 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EAE50;
  block[3] = &unk_10032BF90;
  block[5] = &v11;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  (*(a4 + 2))(a4, v12[5]);
  v7 = v12[5];
  if (v7)
  {
    v8 = self->_dispatchQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001EAEC4;
    v9[3] = &unk_100327378;
    v9[4] = self;
    dispatch_sync(v8, v9);
    v7 = v12[5];
  }

  _Block_object_dispose(&v11, 8);
}

- (id)openSessionWithProperties:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1001E9664;
  v11 = sub_1001E9674;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EAFC0;
  block[3] = &unk_10032AF40;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)pauseSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB13C;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)performDefaultForAuthenticationSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB320;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)rejectSpaceForAuthenticationSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB500;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)releaseDownloadSessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB6E0;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)removeHandlerObserver:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB8C0;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)resetDisavowedSessionsForHandlerWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB940;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)retrySessionWithID:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EBB84;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (id)sessionForSessionID:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1001E9664;
  v11 = sub_1001E9674;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EBDF4;
  block[3] = &unk_10032BF90;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setGlobalDownloadHandlerID:(int64_t)a3 forClientID:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EBEE0;
  block[3] = &unk_10032A398;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(dispatchQueue, block);
}

- (void)setSessionProperties:(id)a3 forSessionWithID:(int64_t)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EC250;
  block[3] = &unk_10032A398;
  block[5] = a3;
  block[6] = a4;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)useCredential:(id)a3 forAuthenticationSessionWithID:(int64_t)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EC348;
  block[3] = &unk_10032A398;
  block[5] = a3;
  block[6] = a4;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_clientDisconnectNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EC568;
  v4[3] = &unk_100327350;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(dispatchQueue, v4);
}

- (id)_clientForProperties:(id)a3
{
  v5 = [a3 clientIdentifier];
  v6 = [a3 handlerIdentifier];
  if (v6)
  {
    v7 = [[NSNumber alloc] initWithLongLong:v6];
    v8 = [(NSMutableDictionary *)self->_clientsByHandlerID objectForKey:v7];
  }

  else if (v5 && (v9 = [(NSMutableDictionary *)self->_globalHandlersByClientID objectForKey:v5]) != 0)
  {
    v8 = [(NSMutableDictionary *)self->_clientsByHandlerID objectForKey:v9];
  }

  else
  {
    v8 = 0;
  }

  v10 = [a3 downloadPhase];
  if (v10 && [objc_msgSend(v8 "downloadPhasesToIgnore")])
  {
    return 0;
  }

  return v8;
}

- (id)_clientForSession:(id)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(a3, "activeHandlerIdentifier")}];
  v5 = [(NSMutableDictionary *)self->_clientsByHandlerID objectForKey:v4];

  return v5;
}

- (id)_disconnectSessionsForHandlerID:(int64_t)a3
{
  v5 = +[NSMutableArray array];
  v6 = objc_alloc_init(NSMutableDictionary);
  sessionsByID = self->_sessionsByID;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001ECBB0;
  v9[3] = &unk_10032BFB8;
  v9[5] = v5;
  v9[6] = a3;
  v9[4] = v6;
  [(NSMutableDictionary *)sessionsByID enumerateKeysAndObjectsUsingBlock:v9];

  self->_sessionsByID = v6;
  return v5;
}

- (void)_endDisconnectedSessionsForClientID:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_disconnectedSessionsByClientID objectForKey:?];
  if (v5)
  {
    v6 = v5;
    if ([v5 count])
    {
      [(DownloadHandlerManager *)self _notifyObserversOfSessionChanges:v6];
    }

    [(NSMutableDictionary *)self->_disconnectedSessionsByClientID removeObjectForKey:a3];
  }
}

- (void)_endSessionWithID:(int64_t)a3 state:(int64_t)a4
{
  v6 = [(DownloadHandlerManager *)self _popDownloadSessionForSessionID:a3];
  if (v6)
  {
    v7 = v6;
    [v6 setSessionState:a4];

    [(DownloadHandlerManager *)self _notifyObserversOfSessionChange:v7];
  }
}

- (int64_t)_globalHandlerIDForClientID:(id)a3
{
  result = [(NSMutableDictionary *)self->_globalHandlersByClientID objectForKey:a3];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (void)_notifyObserversOfHandlersChange
{
  v3 = [(NSHashTable *)self->_observers copy];
  observersQueue = self->_observersQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001ECDF0;
  v5[3] = &unk_100327350;
  v5[4] = v3;
  v5[5] = self;
  dispatch_async(observersQueue, v5);
}

- (void)_notifyObserversOfSessionChange:(id)a3
{
  v4 = [[NSArray alloc] initWithObjects:{a3, 0}];
  [(DownloadHandlerManager *)self _notifyObserversOfSessionChanges:v4];
}

- (void)_notifyObserversOfSessionChanges:(id)a3
{
  v5 = [(NSHashTable *)self->_observers allObjects];
  observersQueue = self->_observersQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ED00C;
  block[3] = &unk_1003273E0;
  block[4] = v5;
  block[5] = self;
  block[6] = a3;
  dispatch_async(observersQueue, block);
}

- (id)_popDownloadSessionForSessionID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  v5 = [(NSMutableDictionary *)self->_sessionsByID objectForKey:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_sessionsByID removeObjectForKey:v4];
  }

  return v5;
}

- (void)_sendMessage:(int64_t)a3 forSessionID:(int64_t)a4 replyBlock:(id)a5
{
  v9 = [[NSNumber alloc] initWithLongLong:a4];
  v10 = [(NSMutableDictionary *)self->_sessionsByID objectForKey:v9];
  if (v10 && (v11 = v10, (v12 = [(DownloadHandlerManager *)self _clientForSession:v10]) != 0))
  {
    v13 = v12;
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v23 = 138412802;
      v24 = objc_opt_class();
      v25 = 2048;
      v26 = a3;
      v27 = 2112;
      v28 = v13;
      LODWORD(v21) = 32;
      v17 = _os_log_send_and_compose_impl();
      if (v17)
      {
        v18 = v17;
        [NSString stringWithCString:v17 encoding:4, &v23, v21];
        free(v18);
        SSFileLog();
      }
    }

    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v19, "0", a3);
    xpc_dictionary_set_int64(v19, "1", a4);
    v20 = [v11 sessionProperties];
    xpc_dictionary_set_int64(v19, "2", [v20 downloadIdentifier]);
    xpc_dictionary_set_int64(v19, "3", [v20 assetIdentifier]);
    [v20 downloadPhase];
    SSXPCDictionarySetCFObject();
    [v20 duetBudget];
    SSXPCDictionarySetCFObject();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001ED4AC;
    v22[3] = &unk_100328240;
    v22[4] = a5;
    [objc_msgSend(v13 "outputConnection")];
    xpc_release(v19);
  }

  else if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

@end