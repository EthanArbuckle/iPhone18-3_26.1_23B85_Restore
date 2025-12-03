@interface PreorderQueueClient
- (BOOL)supportsItemKind:(id)kind;
- (NSSet)itemKinds;
- (void)dealloc;
- (void)setItemKinds:(id)kinds;
@end

@implementation PreorderQueueClient

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PreorderQueueClient;
  [(XPCClient *)&v3 dealloc];
}

- (NSSet)itemKinds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100183878;
  v10 = sub_100183888;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100183894;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setItemKinds:(id)kinds
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100183954;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = kinds;
  dispatch_sync(dispatchQueue, v4);
}

- (BOOL)supportsItemKind:(id)kind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  dispatchQueue = self->super._dispatchQueue;
  v10 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100183A5C;
  block[3] = &unk_100329338;
  block[5] = kind;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

@end