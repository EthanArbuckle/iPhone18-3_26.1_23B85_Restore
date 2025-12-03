@interface ErrorHandlerClient
- (NSSet)failureTypes;
- (id)popAllSessions;
- (id)popSessionWithIdentifier:(int64_t)identifier;
- (void)addSession:(id)session;
- (void)dealloc;
- (void)setFailureTypes:(id)types;
@end

@implementation ErrorHandlerClient

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ErrorHandlerClient;
  [(XPCClient *)&v3 dealloc];
}

- (void)addSession:(id)session
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10020EBCC;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = session;
  dispatch_async(dispatchQueue, v4);
}

- (NSSet)failureTypes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10020ED6C;
  v10 = sub_10020ED7C;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10020ED88;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)popAllSessions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10020ED6C;
  v10 = sub_10020ED7C;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10020EEC4;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)popSessionWithIdentifier:(int64_t)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_10020ED6C;
  dispatchQueue = self->super._dispatchQueue;
  v11 = sub_10020ED7C;
  v12 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020F020;
  block[3] = &unk_10032BF90;
  block[5] = &v7;
  block[6] = identifier;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setFailureTypes:(id)types
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10020F12C;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = types;
  dispatch_async(dispatchQueue, v4);
}

@end