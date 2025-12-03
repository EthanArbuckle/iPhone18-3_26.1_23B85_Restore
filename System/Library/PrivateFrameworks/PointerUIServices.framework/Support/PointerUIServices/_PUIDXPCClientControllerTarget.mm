@interface _PUIDXPCClientControllerTarget
+ (_PUIDXPCClientControllerTarget)currentTarget;
- (BSServiceConnection)connection;
- (PSPointerDefaultServiceClientToServerInterface)proxyInterface;
- (_PUIDXPCClientControllerTarget)initWithConnection:(id)connection proxyInterface:(id)interface;
- (void)_performBlock:(id)block;
- (void)autohidePointerForReason:(id)reason;
- (void)createContentMatchMoveSourcesForDisplay:(id)display countValue:(id)value completion:(id)completion;
- (void)createPointerPortalSourceCollectionForDisplay:(id)display completion:(id)completion;
- (void)invalidateContentMatchMoveSources:(id)sources completion:(id)completion;
- (void)invalidatePointerPortalSourceCollection:(id)collection completion:(id)completion;
- (void)setActiveHoverRegion:(id)region transitionCompletion:(id)completion;
- (void)setOverridesHoverRegions:(id)regions display:(id)display;
- (void)setPointerPersistentlyHiddenForReasons:(id)reasons;
- (void)setPointerPersistentlyVisibleForReasons:(id)reasons;
- (void)setSystemPointerInteractionContextID:(id)d display:(id)display;
- (void)setWantsServiceKeepAlive:(id)alive;
@end

@implementation _PUIDXPCClientControllerTarget

- (_PUIDXPCClientControllerTarget)initWithConnection:(id)connection proxyInterface:(id)interface
{
  connectionCopy = connection;
  interfaceCopy = interface;
  v11.receiver = self;
  v11.super_class = _PUIDXPCClientControllerTarget;
  v8 = [(_PUIDXPCClientControllerTarget *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    objc_storeWeak(&v9->_proxyInterface, interfaceCopy);
  }

  return v9;
}

- (void)createPointerPortalSourceCollectionForDisplay:(id)display completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014100;
  v7[3] = &unk_1000492F8;
  selfCopy = self;
  displayCopy = display;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = displayCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v7];
}

- (void)invalidatePointerPortalSourceCollection:(id)collection completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014214;
  v7[3] = &unk_1000492F8;
  selfCopy = self;
  collectionCopy = collection;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = collectionCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v7];
}

- (void)createContentMatchMoveSourcesForDisplay:(id)display countValue:(id)value completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014348;
  v10[3] = &unk_100049280;
  selfCopy = self;
  displayCopy = display;
  valueCopy = value;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = valueCopy;
  v9 = displayCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v10];
}

- (void)invalidateContentMatchMoveSources:(id)sources completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014460;
  v7[3] = &unk_1000492F8;
  selfCopy = self;
  sourcesCopy = sources;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = sourcesCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v7];
}

- (void)setActiveHoverRegion:(id)region transitionCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014574;
  v7[3] = &unk_1000492F8;
  selfCopy = self;
  regionCopy = region;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = regionCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v7];
}

- (void)autohidePointerForReason:(id)reason
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001465C;
  v4[3] = &unk_100048A28;
  selfCopy = self;
  reasonCopy = reason;
  v3 = reasonCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v4];
}

- (void)setPointerPersistentlyHiddenForReasons:(id)reasons
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014744;
  v4[3] = &unk_100048A28;
  selfCopy = self;
  reasonsCopy = reasons;
  v3 = reasonsCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v4];
}

- (void)setPointerPersistentlyVisibleForReasons:(id)reasons
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001482C;
  v4[3] = &unk_100048A28;
  selfCopy = self;
  reasonsCopy = reasons;
  v3 = reasonsCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v4];
}

- (void)setSystemPointerInteractionContextID:(id)d display:(id)display
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014940;
  v7[3] = &unk_1000492D0;
  selfCopy = self;
  dCopy = d;
  displayCopy = display;
  v5 = displayCopy;
  v6 = dCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v7];
}

- (void)setOverridesHoverRegions:(id)regions display:(id)display
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014A54;
  v7[3] = &unk_1000492D0;
  selfCopy = self;
  regionsCopy = regions;
  displayCopy = display;
  v5 = displayCopy;
  v6 = regionsCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v7];
}

- (void)setWantsServiceKeepAlive:(id)alive
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014B3C;
  v4[3] = &unk_100048A28;
  selfCopy = self;
  aliveCopy = alive;
  v3 = aliveCopy;
  [(_PUIDXPCClientControllerTarget *)selfCopy _performBlock:v4];
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

- (void)_performBlock:(id)block
{
  blockCopy = block;
  if (qword_100059D00 != -1)
  {
    sub_100027CC0();
  }

  pthread_setspecific(qword_100059CF8, self);
  blockCopy[2]();
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