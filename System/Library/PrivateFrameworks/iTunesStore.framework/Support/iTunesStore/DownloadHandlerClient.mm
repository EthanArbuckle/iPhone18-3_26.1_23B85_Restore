@interface DownloadHandlerClient
- (BOOL)sessionsNeedPowerAssertion;
- (BOOL)sessionsShouldBlockOtherDownloads;
- (DownloadHandlerClient)initWithInputConnection:(id)connection;
- (NSSet)disavowedSessionProperties;
- (NSSet)downloadPhasesToIgnore;
- (id)description;
- (id)resetDisavowedSessionProperties;
- (int64_t)handlerIdentifier;
- (void)addDisavowedSessionProperties:(id)properties;
- (void)dealloc;
- (void)setDownloadPhasesToIgnore:(id)ignore;
- (void)setHandlerIdentifier:(int64_t)identifier;
- (void)setSessionsNeedPowerAssertion:(BOOL)assertion;
- (void)setSessionsShouldBlockOtherDownloads:(BOOL)downloads;
@end

@implementation DownloadHandlerClient

- (DownloadHandlerClient)initWithInputConnection:(id)connection
{
  v4.receiver = self;
  v4.super_class = DownloadHandlerClient;
  result = [(XPCClient *)&v4 initWithInputConnection:connection];
  if (result)
  {
    result->_sessionsNeedPowerAssertion = 1;
    result->_sessionsShouldBlockOtherDownloads = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadHandlerClient;
  [(XPCClient *)&v3 dealloc];
}

- (void)addDisavowedSessionProperties:(id)properties
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AD348;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = properties;
  dispatch_sync(dispatchQueue, v4);
}

- (NSSet)disavowedSessionProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1000AD4C4;
  v10 = sub_1000AD4D4;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AD4E0;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSSet)downloadPhasesToIgnore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1000AD4C4;
  v10 = sub_1000AD4D4;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AD61C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)handlerIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AD714;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)resetDisavowedSessionProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1000AD4C4;
  v10 = sub_1000AD4D4;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AD82C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)sessionsNeedPowerAssertion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AD940;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)sessionsShouldBlockOtherDownloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000ADA18;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDownloadPhasesToIgnore:(id)ignore
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ADAB4;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = ignore;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setHandlerIdentifier:(int64_t)identifier
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ADB80;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setSessionsNeedPowerAssertion:(BOOL)assertion
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ADC18;
  v4[3] = &unk_100327830;
  v4[4] = self;
  assertionCopy = assertion;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setSessionsShouldBlockOtherDownloads:(BOOL)downloads
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ADCB4;
  v4[3] = &unk_100327830;
  v4[4] = self;
  downloadsCopy = downloads;
  dispatch_sync(dispatchQueue, v4);
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1000AD4C4;
  v10 = sub_1000AD4D4;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000ADDC8;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end