@interface _PUIDXPCClientControllerTarget
+ (_PUIDXPCClientControllerTarget)currentTarget;
- (BSServiceConnection)connection;
- (PSPointerDefaultServiceClientToServerInterface)proxyInterface;
- (_PUIDXPCClientControllerTarget)initWithConnection:(id)a3 proxyInterface:(id)a4;
- (void)_performBlock:(id)a3;
- (void)autohidePointerForReason:(id)a3;
- (void)createContentMatchMoveSourcesForDisplay:(id)a3 countValue:(id)a4 completion:(id)a5;
- (void)createPointerPortalSourceCollectionForDisplay:(id)a3 completion:(id)a4;
- (void)invalidateContentMatchMoveSources:(id)a3 completion:(id)a4;
- (void)invalidatePointerPortalSourceCollection:(id)a3 completion:(id)a4;
- (void)setActiveHoverRegion:(id)a3 transitionCompletion:(id)a4;
- (void)setOverridesHoverRegions:(id)a3 display:(id)a4;
- (void)setPointerPersistentlyHiddenForReasons:(id)a3;
- (void)setPointerPersistentlyVisibleForReasons:(id)a3;
- (void)setSystemPointerInteractionContextID:(id)a3 display:(id)a4;
- (void)setWantsServiceKeepAlive:(id)a3;
@end

@implementation _PUIDXPCClientControllerTarget

- (_PUIDXPCClientControllerTarget)initWithConnection:(id)a3 proxyInterface:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _PUIDXPCClientControllerTarget;
  v8 = [(_PUIDXPCClientControllerTarget *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, v6);
    objc_storeWeak(&v9->_proxyInterface, v7);
  }

  return v9;
}

- (void)createPointerPortalSourceCollectionForDisplay:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014100;
  v7[3] = &unk_1000492F8;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(_PUIDXPCClientControllerTarget *)v8 _performBlock:v7];
}

- (void)invalidatePointerPortalSourceCollection:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014214;
  v7[3] = &unk_1000492F8;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(_PUIDXPCClientControllerTarget *)v8 _performBlock:v7];
}

- (void)createContentMatchMoveSourcesForDisplay:(id)a3 countValue:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014348;
  v10[3] = &unk_100049280;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  [(_PUIDXPCClientControllerTarget *)v11 _performBlock:v10];
}

- (void)invalidateContentMatchMoveSources:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014460;
  v7[3] = &unk_1000492F8;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(_PUIDXPCClientControllerTarget *)v8 _performBlock:v7];
}

- (void)setActiveHoverRegion:(id)a3 transitionCompletion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014574;
  v7[3] = &unk_1000492F8;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(_PUIDXPCClientControllerTarget *)v8 _performBlock:v7];
}

- (void)autohidePointerForReason:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001465C;
  v4[3] = &unk_100048A28;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(_PUIDXPCClientControllerTarget *)v5 _performBlock:v4];
}

- (void)setPointerPersistentlyHiddenForReasons:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014744;
  v4[3] = &unk_100048A28;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(_PUIDXPCClientControllerTarget *)v5 _performBlock:v4];
}

- (void)setPointerPersistentlyVisibleForReasons:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001482C;
  v4[3] = &unk_100048A28;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(_PUIDXPCClientControllerTarget *)v5 _performBlock:v4];
}

- (void)setSystemPointerInteractionContextID:(id)a3 display:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014940;
  v7[3] = &unk_1000492D0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(_PUIDXPCClientControllerTarget *)v8 _performBlock:v7];
}

- (void)setOverridesHoverRegions:(id)a3 display:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014A54;
  v7[3] = &unk_1000492D0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(_PUIDXPCClientControllerTarget *)v8 _performBlock:v7];
}

- (void)setWantsServiceKeepAlive:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014B3C;
  v4[3] = &unk_100048A28;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(_PUIDXPCClientControllerTarget *)v5 _performBlock:v4];
}

+ (_PUIDXPCClientControllerTarget)currentTarget
{
  if (qword_100059D00 != -1)
  {
    sub_100027CC0();
  }

  v3 = qword_100059CF8;

  return pthread_getspecific(v3);
}

- (void)_performBlock:(id)a3
{
  v4 = a3;
  if (qword_100059D00 != -1)
  {
    sub_100027CC0();
  }

  pthread_setspecific(qword_100059CF8, self);
  v4[2]();
  if (qword_100059D00 != -1)
  {
    sub_100027CC0();
  }

  pthread_setspecific(qword_100059CF8, 0);
}

- (BSServiceConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (PSPointerDefaultServiceClientToServerInterface)proxyInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyInterface);

  return WeakRetained;
}

@end