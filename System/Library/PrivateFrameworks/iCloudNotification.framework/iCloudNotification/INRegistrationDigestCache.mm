@interface INRegistrationDigestCache
+ (id)sharedInstance;
- (BOOL)removeRegistrationDigestForAccount:(id)account withError:(id *)error;
- (BOOL)updateRegistrationDigest:(id)digest forAccount:(id)account withError:(id *)error;
- (INRegistrationDigestCache)init;
- (id)registrationDigestForAccount:(id)account withError:(id *)error;
- (void)dealloc;
@end

@implementation INRegistrationDigestCache

+ (id)sharedInstance
{
  if (qword_100063650 != -1)
  {
    sub_100035F9C();
  }

  v3 = qword_100063648;

  return v3;
}

- (INRegistrationDigestCache)init
{
  v10.receiver = self;
  v10.super_class = INRegistrationDigestCache;
  v2 = [(INRegistrationDigestCache *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ind.keychain", v3);
    keychainQueue = v2->_keychainQueue;
    v2->_keychainQueue = v4;

    v6 = dispatch_get_global_queue(21, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000B22C;
    handler[3] = &unk_1000554E8;
    v9 = v2;
    notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &v2->_unlockNotifyToken, v6, handler);
  }

  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_unlockNotifyToken);
  v3.receiver = self;
  v3.super_class = INRegistrationDigestCache;
  [(INRegistrationDigestCache *)&v3 dealloc];
}

- (id)registrationDigestForAccount:(id)account withError:(id *)error
{
  accountCopy = account;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000B444;
  v23 = sub_10000B454;
  v24 = 0;
  identifier = [accountCopy identifier];
  v8 = identifier;
  if (!accountCopy)
  {

    v8 = @"logged-out";
  }

  keychainQueue = self->_keychainQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000B45C;
  v14[3] = &unk_100055510;
  v15 = v8;
  v16 = accountCopy;
  v17 = &v19;
  errorCopy = error;
  v10 = accountCopy;
  v11 = v8;
  dispatch_sync(keychainQueue, v14);
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

- (BOOL)removeRegistrationDigestForAccount:(id)account withError:(id *)error
{
  accountCopy = account;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  identifier = [accountCopy identifier];
  v8 = identifier;
  if (!accountCopy)
  {

    v8 = @"logged-out";
  }

  keychainQueue = self->_keychainQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000B6F0;
  v14[3] = &unk_100055510;
  v15 = v8;
  v16 = accountCopy;
  v17 = &v19;
  errorCopy = error;
  v10 = accountCopy;
  v11 = v8;
  dispatch_sync(keychainQueue, v14);
  v12 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v12;
}

- (BOOL)updateRegistrationDigest:(id)digest forAccount:(id)account withError:(id *)error
{
  digestCopy = digest;
  accountCopy = account;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  identifier = [accountCopy identifier];
  v11 = identifier;
  if (!accountCopy)
  {

    v11 = @"logged-out";
  }

  keychainQueue = self->_keychainQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B964;
  block[3] = &unk_100055538;
  v19 = digestCopy;
  v20 = v11;
  v21 = accountCopy;
  v22 = &v24;
  errorCopy = error;
  v13 = accountCopy;
  v14 = v11;
  v15 = digestCopy;
  dispatch_sync(keychainQueue, block);
  v16 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return v16;
}

@end