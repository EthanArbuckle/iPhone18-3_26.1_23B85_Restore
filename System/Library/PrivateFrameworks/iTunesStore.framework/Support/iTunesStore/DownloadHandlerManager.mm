@interface DownloadHandlerManager
+ (id)handlerManager;
- (BOOL)canOpenSessionWithProperties:(id)properties;
- (DownloadHandlerManager)init;
- (id)_clientForProperties:(id)properties;
- (id)_clientForSession:(id)session;
- (id)_disconnectSessionsForHandlerID:(int64_t)d;
- (id)_popDownloadSessionForSessionID:(int64_t)d;
- (id)beginBackgroundTaskForSessionWithID:(int64_t)d reason:(unsigned int)reason expirationBlock:(id)block;
- (id)openSessionWithProperties:(id)properties;
- (id)sessionForSessionID:(int64_t)d;
- (int64_t)_globalHandlerIDForClientID:(id)d;
- (void)_clientDisconnectNotification:(id)notification;
- (void)_endDisconnectedSessionsForClientID:(id)d;
- (void)_endSessionWithID:(int64_t)d state:(int64_t)state;
- (void)_notifyObserversOfHandlersChange;
- (void)_notifyObserversOfSessionChange:(id)change;
- (void)_notifyObserversOfSessionChanges:(id)changes;
- (void)_sendMessage:(int64_t)message forSessionID:(int64_t)d replyBlock:(id)block;
- (void)addDownloadHandler:(id)handler;
- (void)addHandlerObserver:(id)observer;
- (void)beginSessionWithID:(int64_t)d;
- (void)cancelAuthenticationSessionWithID:(int64_t)d;
- (void)cancelSessionWithID:(int64_t)d;
- (void)closeUnstartedSessionWithID:(int64_t)d;
- (void)continueAuthenticationSessionWithID:(int64_t)d;
- (void)dealloc;
- (void)disavowDownloadSessionWithID:(int64_t)d error:(id)error;
- (void)disconnectDownloadSessionWithID:(int64_t)d;
- (void)endBackgroundTaskForSessionWithID:(int64_t)d identifier:(id)identifier;
- (void)failDownloadSessionWithID:(int64_t)d error:(id)error;
- (void)finishDownloadSessionWithID:(int64_t)d;
- (void)modifyDownloadHandlerWithID:(int64_t)d usingBlock:(id)block;
- (void)pauseSessionWithID:(int64_t)d;
- (void)performDefaultForAuthenticationSessionWithID:(int64_t)d;
- (void)rejectSpaceForAuthenticationSessionWithID:(int64_t)d;
- (void)releaseDownloadSessionWithID:(int64_t)d;
- (void)removeHandlerObserver:(id)observer;
- (void)resetDisavowedSessionsForHandlerWithID:(int64_t)d;
- (void)retrySessionWithID:(int64_t)d;
- (void)setGlobalDownloadHandlerID:(int64_t)d forClientID:(id)iD;
- (void)setSessionProperties:(id)properties forSessionWithID:(int64_t)d;
- (void)useCredential:(id)credential forAuthenticationSessionWithID:(int64_t)d;
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
  block[4] = self;
  if (qword_1003840F8 != -1)
  {
    dispatch_once(&qword_1003840F8, block);
  }

  return qword_1003840F0;
}

- (void)addDownloadHandler:(id)handler
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9280;
  v4[3] = &unk_100327350;
  v4[4] = handler;
  v4[5] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)addHandlerObserver:(id)observer
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9560;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = observer;
  dispatch_async(dispatchQueue, v4);
}

- (id)beginBackgroundTaskForSessionWithID:(int64_t)d reason:(unsigned int)reason expirationBlock:(id)block
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
  block[7] = d;
  reasonCopy = reason;
  block[4] = self;
  block[5] = block;
  dispatch_sync(dispatchQueue, block);
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (void)beginSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9790;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)cancelAuthenticationSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9C60;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)cancelSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E9E40;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (BOOL)canOpenSessionWithProperties:(id)properties
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
  block[5] = properties;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)closeUnstartedSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EA120;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)continueAuthenticationSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EA1F8;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)disavowDownloadSessionWithID:(int64_t)d error:(id)error
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EA3DC;
  block[3] = &unk_10032A398;
  block[5] = error;
  block[6] = d;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)disconnectDownloadSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EA620;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)endBackgroundTaskForSessionWithID:(int64_t)d identifier:(id)identifier
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EA804;
  block[3] = &unk_10032A398;
  block[5] = identifier;
  block[6] = d;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)failDownloadSessionWithID:(int64_t)d error:(id)error
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EA95C;
  block[3] = &unk_10032A398;
  block[5] = error;
  block[6] = d;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)finishDownloadSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EAB7C;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)modifyDownloadHandlerWithID:(int64_t)d usingBlock:(id)block
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
  block[6] = d;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  (*(block + 2))(block, v12[5]);
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

- (id)openSessionWithProperties:(id)properties
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
  block[5] = properties;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)pauseSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB13C;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)performDefaultForAuthenticationSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB320;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)rejectSpaceForAuthenticationSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB500;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)releaseDownloadSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB6E0;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)removeHandlerObserver:(id)observer
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB8C0;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = observer;
  dispatch_async(dispatchQueue, v4);
}

- (void)resetDisavowedSessionsForHandlerWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EB940;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (void)retrySessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EBB84;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(dispatchQueue, v4);
}

- (id)sessionForSessionID:(int64_t)d
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
  block[6] = d;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setGlobalDownloadHandlerID:(int64_t)d forClientID:(id)iD
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EBEE0;
  block[3] = &unk_10032A398;
  block[4] = self;
  block[5] = iD;
  block[6] = d;
  dispatch_async(dispatchQueue, block);
}

- (void)setSessionProperties:(id)properties forSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EC250;
  block[3] = &unk_10032A398;
  block[5] = properties;
  block[6] = d;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)useCredential:(id)credential forAuthenticationSessionWithID:(int64_t)d
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EC348;
  block[3] = &unk_10032A398;
  block[5] = credential;
  block[6] = d;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_clientDisconnectNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EC568;
  v4[3] = &unk_100327350;
  v4[4] = notification;
  v4[5] = self;
  dispatch_async(dispatchQueue, v4);
}

- (id)_clientForProperties:(id)properties
{
  clientIdentifier = [properties clientIdentifier];
  handlerIdentifier = [properties handlerIdentifier];
  if (handlerIdentifier)
  {
    v7 = [[NSNumber alloc] initWithLongLong:handlerIdentifier];
    v8 = [(NSMutableDictionary *)self->_clientsByHandlerID objectForKey:v7];
  }

  else if (clientIdentifier && (v9 = [(NSMutableDictionary *)self->_globalHandlersByClientID objectForKey:clientIdentifier]) != 0)
  {
    v8 = [(NSMutableDictionary *)self->_clientsByHandlerID objectForKey:v9];
  }

  else
  {
    v8 = 0;
  }

  downloadPhase = [properties downloadPhase];
  if (downloadPhase && [objc_msgSend(v8 "downloadPhasesToIgnore")])
  {
    return 0;
  }

  return v8;
}

- (id)_clientForSession:(id)session
{
  v4 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(session, "activeHandlerIdentifier")}];
  v5 = [(NSMutableDictionary *)self->_clientsByHandlerID objectForKey:v4];

  return v5;
}

- (id)_disconnectSessionsForHandlerID:(int64_t)d
{
  v5 = +[NSMutableArray array];
  v6 = objc_alloc_init(NSMutableDictionary);
  sessionsByID = self->_sessionsByID;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001ECBB0;
  v9[3] = &unk_10032BFB8;
  v9[5] = v5;
  v9[6] = d;
  v9[4] = v6;
  [(NSMutableDictionary *)sessionsByID enumerateKeysAndObjectsUsingBlock:v9];

  self->_sessionsByID = v6;
  return v5;
}

- (void)_endDisconnectedSessionsForClientID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_disconnectedSessionsByClientID objectForKey:?];
  if (v5)
  {
    v6 = v5;
    if ([v5 count])
    {
      [(DownloadHandlerManager *)self _notifyObserversOfSessionChanges:v6];
    }

    [(NSMutableDictionary *)self->_disconnectedSessionsByClientID removeObjectForKey:d];
  }
}

- (void)_endSessionWithID:(int64_t)d state:(int64_t)state
{
  v6 = [(DownloadHandlerManager *)self _popDownloadSessionForSessionID:d];
  if (v6)
  {
    v7 = v6;
    [v6 setSessionState:state];

    [(DownloadHandlerManager *)self _notifyObserversOfSessionChange:v7];
  }
}

- (int64_t)_globalHandlerIDForClientID:(id)d
{
  result = [(NSMutableDictionary *)self->_globalHandlersByClientID objectForKey:d];
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

- (void)_notifyObserversOfSessionChange:(id)change
{
  v4 = [[NSArray alloc] initWithObjects:{change, 0}];
  [(DownloadHandlerManager *)self _notifyObserversOfSessionChanges:v4];
}

- (void)_notifyObserversOfSessionChanges:(id)changes
{
  allObjects = [(NSHashTable *)self->_observers allObjects];
  observersQueue = self->_observersQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ED00C;
  block[3] = &unk_1003273E0;
  block[4] = allObjects;
  block[5] = self;
  block[6] = changes;
  dispatch_async(observersQueue, block);
}

- (id)_popDownloadSessionForSessionID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  v5 = [(NSMutableDictionary *)self->_sessionsByID objectForKey:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_sessionsByID removeObjectForKey:v4];
  }

  return v5;
}

- (void)_sendMessage:(int64_t)message forSessionID:(int64_t)d replyBlock:(id)block
{
  v9 = [[NSNumber alloc] initWithLongLong:d];
  v10 = [(NSMutableDictionary *)self->_sessionsByID objectForKey:v9];
  if (v10 && (v11 = v10, (v12 = [(DownloadHandlerManager *)self _clientForSession:v10]) != 0))
  {
    v13 = v12;
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
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
      messageCopy = message;
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
    xpc_dictionary_set_int64(v19, "0", message);
    xpc_dictionary_set_int64(v19, "1", d);
    sessionProperties = [v11 sessionProperties];
    xpc_dictionary_set_int64(v19, "2", [sessionProperties downloadIdentifier]);
    xpc_dictionary_set_int64(v19, "3", [sessionProperties assetIdentifier]);
    [sessionProperties downloadPhase];
    SSXPCDictionarySetCFObject();
    [sessionProperties duetBudget];
    SSXPCDictionarySetCFObject();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001ED4AC;
    v22[3] = &unk_100328240;
    v22[4] = block;
    [objc_msgSend(v13 "outputConnection")];
    xpc_release(v19);
  }

  else if (block)
  {
    (*(block + 2))(block, 0);
  }
}

@end