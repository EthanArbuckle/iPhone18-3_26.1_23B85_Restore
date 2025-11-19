@interface KeyValueStore
+ (id)defaultKeyValueStore;
+ (void)getValuesWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)removeAccountWithMessage:(id)a3 connection:(id)a4;
+ (void)removeAllValuesWithMessage:(id)a3 connection:(id)a4;
+ (void)removeValuesWithMessage:(id)a3 connection:(id)a4;
+ (void)setValuesWithMessage:(id)a3 connection:(id)a4;
- (KeyValueStore)init;
- (id)valueForDomain:(id)a3 key:(id)a4;
- (void)_getValuesWithMessage:(id)a3 connection:(id)a4;
- (void)_handleMessage:(id)a3 connection:(id)a4 withBlock:(id)a5;
- (void)_handleMessage:(id)a3 connection:(id)a4 withReplyBlock:(id)a5;
- (void)_removeAccountWithMessage:(id)a3 connection:(id)a4;
- (void)_removeAllValuesWithMessage:(id)a3 connection:(id)a4;
- (void)_removeValuesWithMessage:(id)a3 connection:(id)a4;
- (void)_setValuesWithMessage:(id)a3 connection:(id)a4;
- (void)dealloc;
@end

@implementation KeyValueStore

- (KeyValueStore)init
{
  v4.receiver = self;
  v4.super_class = KeyValueStore;
  v2 = [(KeyValueStore *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.KeyValueStore", 0);
    v2->_keyValueStore = objc_alloc_init(SSKeyValueStore);
  }

  return v2;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = KeyValueStore;
  [(KeyValueStore *)&v4 dealloc];
}

+ (id)defaultKeyValueStore
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100207A38;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_100384140 != -1)
  {
    dispatch_once(&qword_100384140, block);
  }

  return qword_100384138;
}

- (id)valueForDomain:(id)a3 key:(id)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_100207B98;
  v16 = sub_100207BA8;
  v17 = 0;
  v7 = dispatch_semaphore_create(0);
  keyValueStore = self->_keyValueStore;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100207BB4;
  v11[3] = &unk_10032C3C8;
  v11[4] = v7;
  v11[5] = &v12;
  [(SSKeyValueStore *)keyValueStore getValueForDomain:a3 key:a4 usingBlock:v11];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v7);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

+ (void)getValuesWithMessage:(id)a3 connection:(id)a4
{
  v6 = +[KeyValueStore defaultKeyValueStore];
  if (sub_100207C8C())
  {

    [v6 _getValuesWithMessage:a3 connection:a4];
  }

  else
  {

    [v6 _handleMessage:a3 connection:a4 withReplyBlock:0];
  }
}

+ (void)observeXPCServer:(id)a3
{
  [a3 addObserver:a1 selector:"getValuesWithMessage:connection:" forMessage:92];
  [a3 addObserver:a1 selector:"removeAccountWithMessage:connection:" forMessage:193];
  [a3 addObserver:a1 selector:"removeAllValuesWithMessage:connection:" forMessage:95];
  [a3 addObserver:a1 selector:"removeValuesWithMessage:connection:" forMessage:94];

  [a3 addObserver:a1 selector:"setValuesWithMessage:connection:" forMessage:93];
}

+ (void)removeAccountWithMessage:(id)a3 connection:(id)a4
{
  v6 = +[KeyValueStore defaultKeyValueStore];

  [v6 _removeAccountWithMessage:a3 connection:a4];
}

+ (void)removeAllValuesWithMessage:(id)a3 connection:(id)a4
{
  v6 = +[KeyValueStore defaultKeyValueStore];

  [v6 _removeAllValuesWithMessage:a3 connection:a4];
}

+ (void)removeValuesWithMessage:(id)a3 connection:(id)a4
{
  v6 = +[KeyValueStore defaultKeyValueStore];

  [v6 _removeValuesWithMessage:a3 connection:a4];
}

+ (void)setValuesWithMessage:(id)a3 connection:(id)a4
{
  v6 = +[KeyValueStore defaultKeyValueStore];

  [v6 _setValuesWithMessage:a3 connection:a4];
}

- (void)_getValuesWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100207F24;
  v4[3] = &unk_10032C440;
  v4[4] = a3;
  v4[5] = self;
  [(KeyValueStore *)self _handleMessage:a3 connection:a4 withReplyBlock:v4];
}

- (void)_handleMessage:(id)a3 connection:(id)a4 withBlock:(id)a5
{
  [+[Daemon daemon](Daemon "daemon")];
  xpc_retain(a4);
  xpc_retain(a3);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002081F8;
  block[3] = &unk_100327408;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleMessage:(id)a3 connection:(id)a4 withReplyBlock:(id)a5
{
  [+[Daemon daemon](Daemon "daemon")];
  xpc_retain(a4);
  xpc_retain(a3);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100208318;
  block[3] = &unk_10032A7D8;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  dispatch_async(dispatchQueue, block);
}

- (void)_removeAccountWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100208414;
  v4[3] = &unk_1003273E0;
  v4[4] = a4;
  v4[5] = a3;
  v4[6] = self;
  [(KeyValueStore *)self _handleMessage:a3 connection:a4 withBlock:v4];
}

- (void)_removeAllValuesWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100208510;
  v4[3] = &unk_10032C440;
  v4[4] = a4;
  v4[5] = self;
  [(KeyValueStore *)self _handleMessage:a3 connection:a4 withReplyBlock:v4];
}

- (void)_removeValuesWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002086A8;
  v4[3] = &unk_10032BA20;
  v4[4] = a4;
  v4[5] = a3;
  v4[6] = self;
  [(KeyValueStore *)self _handleMessage:a3 connection:a4 withReplyBlock:v4];
}

- (void)_setValuesWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100208878;
  v4[3] = &unk_10032BA20;
  v4[4] = a4;
  v4[5] = a3;
  v4[6] = self;
  [(KeyValueStore *)self _handleMessage:a3 connection:a4 withReplyBlock:v4];
}

@end