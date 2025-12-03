@interface MobileGestaltHelperProxy
+ (id)proxy;
- (BOOL)proxyRebuildCache;
- (BOOL)proxySetCacheSentinel;
- (MobileGestaltHelperProxy)init;
- (void)dealloc;
@end

@implementation MobileGestaltHelperProxy

+ (id)proxy
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (MobileGestaltHelperProxy)init
{
  v30.receiver = self;
  v30.super_class = MobileGestaltHelperProxy;
  v2 = [(MobileGestaltHelperProxy *)&v30 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v2->_connection = objc_msgSend_initWithMachServiceName_options_(v3, v4, @"com.apple.mobilegestalt.xpc", 0, v5);
    v9 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v6, &unk_1F42F7350, v7, v8);
    objc_msgSend_setRemoteObjectInterface_(v2->_connection, v10, v9, v11, v12);
    if (xpc_user_sessions_enabled())
    {
      v29 = 0;
      xpc_user_sessions_get_foreground_uid();
      objc_msgSend__xpcConnection(v2->_connection, v17, v18, v19, v20);
      xpc_connection_set_target_user_session_uid();
    }

    objc_msgSend_resume(v2->_connection, v13, v14, v15, v16);
    connection = v2->_connection;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1C3939318;
    v28[3] = &unk_1E81B1440;
    v28[4] = v2;
    v25 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(connection, v22, v28, v23, v24);
    v2->_helper = v25;
    v26 = v25;
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self->_connection, a2, v2, v3, v4);

  v6.receiver = self;
  v6.super_class = MobileGestaltHelperProxy;
  [(MobileGestaltHelperProxy *)&v6 dealloc];
}

- (BOOL)proxyRebuildCache
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  helper = self->_helper;
  if (helper)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1C39394D0;
    v7[3] = &unk_1E81B1468;
    v7[4] = &v8;
    objc_msgSend_rebuildCache_(helper, a2, v7, v2, v3);
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

- (BOOL)proxySetCacheSentinel
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  helper = self->_helper;
  if (helper)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1C39395AC;
    v7[3] = &unk_1E81B1468;
    v7[4] = &v8;
    objc_msgSend_setCacheSentinel_(helper, a2, v7, v2, v3);
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

@end