@interface PUIDXPCClientController
- (PUIDXPCClientController)init;
- (PUIDXPCClientControllerDelegate)delegate;
- (id)_launchingPointerClientForServiceConnection:(id)connection;
- (id)_nonLaunchingServiceConnectionForPointerClient:(id)client;
- (id)_pointerClientForNonLaunchingServiceConnection:(id)connection;
- (void)_addLaunchingMapBetweenServiceConnection:(id)connection pointerClient:(id)client;
- (void)_addNonLaunchingMapBetweenServiceConnection:(id)connection pointerClient:(id)client;
- (void)_handleDisconnectForLaunchingConnection:(id)connection;
- (void)_handleDisconnectForNonLaunchingConnection:(id)connection;
- (void)_removeLaunchingMapBetweenServiceConnection:(id)connection pointerClient:(id)client;
- (void)_removeNonLaunchingMapBetweenServiceConnection:(id)connection pointerClient:(id)client;
- (void)adjustedDecelerationTargetForPointerClient:(id)client withTargetPointerPosition:(CGPoint)position velocity:(CGPoint)velocity inContextID:(unsigned int)d cursorRegionLookupRadius:(double)radius cursorRegionLookupResolution:(double)resolution lookupConeAngle:(double)angle completion:(id)self0;
- (void)autohidePointerForReason:(id)reason;
- (void)createContentMatchMoveSourcesForDisplay:(id)display countValue:(id)value completion:(id)completion;
- (void)createPointerPortalSourceCollectionForDisplay:(id)display completion:(id)completion;
- (void)invalidateContentMatchMoveSources:(id)sources completion:(id)completion;
- (void)invalidatePointerPortalSourceCollection:(id)collection completion:(id)completion;
- (void)invalidatedPortalSourceCollections:(id)collections matchMoveSources:(id)sources forClient:(id)client;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)setActiveHoverRegion:(id)region transitionCompletion:(id)completion;
- (void)setClientInteractionState:(int64_t)state;
- (void)setOverridesHoverRegions:(id)regions display:(id)display;
- (void)setPointerPersistentlyHiddenForReasons:(id)reasons;
- (void)setPointerPersistentlyVisibleForReasons:(id)reasons;
- (void)setPointerVisibilityState:(int64_t)state;
- (void)setSystemPointerInteractionContextID:(id)d display:(id)display;
- (void)setWantsServiceKeepAlive:(id)alive;
@end

@implementation PUIDXPCClientController

- (PUIDXPCClientController)init
{
  v21.receiver = self;
  v21.super_class = PUIDXPCClientController;
  v2 = [(PUIDXPCClientController *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_clientServiceCollectionMapLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v5;

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100010CF4;
    v19[3] = &unk_100049140;
    v7 = v3;
    v20 = v7;
    v8 = [BSServiceConnectionListener listenerWithConfigurator:v19];
    v9 = v7[5];
    v7[5] = v8;

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100010D94;
    v17 = &unk_100049140;
    v10 = v7;
    v18 = v10;
    v11 = [BSServiceConnectionListener listenerWithConfigurator:&v14];
    v12 = v10[6];
    v10[6] = v11;

    [v7[5] activate];
    [v10[6] activate];
  }

  return v3;
}

- (void)adjustedDecelerationTargetForPointerClient:(id)client withTargetPointerPosition:(CGPoint)position velocity:(CGPoint)velocity inContextID:(unsigned int)d cursorRegionLookupRadius:(double)radius cursorRegionLookupResolution:(double)resolution lookupConeAngle:(double)angle completion:(id)self0
{
  y = velocity.y;
  x = velocity.x;
  v17 = position.y;
  v18 = position.x;
  clientCopy = client;
  completionCopy = completion;
  connectionQueue = self->_connectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010F4C;
  block[3] = &unk_1000491E0;
  block[4] = self;
  v26 = clientCopy;
  v28 = v18;
  v29 = v17;
  v30 = x;
  v31 = y;
  dCopy = d;
  radiusCopy = radius;
  resolutionCopy = resolution;
  angleCopy = angle;
  v27 = completionCopy;
  v23 = completionCopy;
  v24 = clientCopy;
  dispatch_async(connectionQueue, block);
}

- (void)invalidatedPortalSourceCollections:(id)collections matchMoveSources:(id)sources forClient:(id)client
{
  collectionsCopy = collections;
  sourcesCopy = sources;
  clientCopy = client;
  connectionQueue = self->_connectionQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000113EC;
  v15[3] = &unk_100049208;
  v15[4] = self;
  v16 = clientCopy;
  v17 = collectionsCopy;
  v18 = sourcesCopy;
  v12 = sourcesCopy;
  v13 = collectionsCopy;
  v14 = clientCopy;
  dispatch_async(connectionQueue, v15);
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v10 = [remoteProcess pid];
  v11 = getpid();

  if (v10 != v11)
  {
    v12 = [PUIDPointerClient alloc];
    v13 = +[NSUUID UUID];
    remoteProcess2 = [connectionCopy remoteProcess];
    auditToken = [remoteProcess2 auditToken];
    v16 = [(PUIDPointerClient *)v12 initWithUniqueIdentifier:v13 auditToken:auditToken];

    if (self->_nonLaunchingConnectionListener == listenerCopy)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100011850;
      v35[3] = &unk_100049258;
      v17 = connectionCopy;
      v36 = v17;
      selfCopy = self;
      [v17 configureConnection:v35];
      [(PUIDXPCClientController *)self _addNonLaunchingMapBetweenServiceConnection:v17 pointerClient:v16];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011A1C;
      block[3] = &unk_100048A28;
      block[4] = self;
      v34 = v16;
      dispatch_async(&_dispatch_main_q, block);
      [v17 activate];
      if ([(PUIDXPCClientController *)self _clientInteractionState])
      {
        remoteTarget = [v17 remoteTarget];
        v19 = [NSNumber numberWithInteger:[(PUIDXPCClientController *)self _clientInteractionState]];
        [remoteTarget clientInteractionStateDidChange:v19];
      }

      if ([(PUIDXPCClientController *)self _pointerVisibilityState])
      {
        remoteTarget2 = [v17 remoteTarget];
        v21 = [NSNumber numberWithInteger:[(PUIDXPCClientController *)self _pointerVisibilityState]];
        [remoteTarget2 pointerVisibilityStateDidChange:v21];
      }

      v22 = v36;
    }

    else
    {
      if (self->_launchingConnectionListener != listenerCopy)
      {
        [connectionCopy invalidate];
LABEL_13:

        goto LABEL_14;
      }

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100011A70;
      v30[3] = &unk_100049258;
      v23 = connectionCopy;
      v31 = v23;
      selfCopy2 = self;
      [v23 configureConnection:v30];
      [(PUIDXPCClientController *)self _addLaunchingMapBetweenServiceConnection:v23 pointerClient:v16];
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_100011C3C;
      v27 = &unk_100048A28;
      selfCopy3 = self;
      v29 = v16;
      dispatch_async(&_dispatch_main_q, &v24);
      [v23 activate];

      v22 = v31;
    }

    goto LABEL_13;
  }

  [connectionCopy invalidate];
LABEL_14:
}

- (void)createPointerPortalSourceCollectionForDisplay:(id)display completion:(id)completion
{
  displayCopy = display;
  completionCopy = completion;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connection];
  if (v10)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100011DF8;
    v12[3] = &unk_100049280;
    v12[4] = self;
    v13 = displayCopy;
    v14 = v10;
    v15 = completionCopy;
    dispatch_async(&_dispatch_main_q, v12);
  }

  else if (completionCopy)
  {
    v11 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1002 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (void)invalidatePointerPortalSourceCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connection];
  if (v10)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100011FEC;
    v12[3] = &unk_100049280;
    v12[4] = self;
    v13 = collectionCopy;
    v14 = v10;
    v15 = completionCopy;
    dispatch_async(&_dispatch_main_q, v12);
  }

  else if (completionCopy)
  {
    v11 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1002 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

- (void)createContentMatchMoveSourcesForDisplay:(id)display countValue:(id)value completion:(id)completion
{
  displayCopy = display;
  valueCopy = value;
  completionCopy = completion;
  v11 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v11 connection];

  v13 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connection];
  if (v13)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000121E0;
    block[3] = &unk_1000492A8;
    v16 = valueCopy;
    selfCopy = self;
    v18 = displayCopy;
    v19 = v13;
    v20 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (completionCopy)
  {
    v14 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1002 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)invalidateContentMatchMoveSources:(id)sources completion:(id)completion
{
  sourcesCopy = sources;
  completionCopy = completion;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connection];
  if (v10)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100012598;
    v12[3] = &unk_100049280;
    v12[4] = self;
    v13 = sourcesCopy;
    v14 = v10;
    v15 = completionCopy;
    dispatch_async(&_dispatch_main_q, v12);
  }

  else if (completionCopy)
  {
    v11 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1002 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

- (void)setActiveHoverRegion:(id)region transitionCompletion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connection];
  if (v10)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100012828;
    v12[3] = &unk_100049280;
    v13 = regionCopy;
    selfCopy = self;
    v15 = v10;
    v16 = completionCopy;
    dispatch_async(&_dispatch_main_q, v12);
  }

  else if (completionCopy)
  {
    v11 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1002 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

- (void)autohidePointerForReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v5 connection];

  v7 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connection];
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012A64;
    block[3] = &unk_1000492D0;
    block[4] = self;
    v10 = reasonCopy;
    v11 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v8 = PSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100027B00();
    }
  }
}

- (void)setPointerPersistentlyHiddenForReasons:(id)reasons
{
  reasonsCopy = reasons;
  v5 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v5 connection];

  v7 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connection];
  v8 = v7;
  if (!v7)
  {
    v11 = PSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100027B68();
    }

    goto LABEL_8;
  }

  auditToken = [v7 auditToken];
  v10 = [auditToken hasEntitlement:@"com.apple.pointerui.persistentlyHidePointer"];

  if (!v10)
  {
    v11 = PSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = @"com.apple.pointerui.persistentlyHidePointer";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ignoring persistent hide request because missing entitlement (%@)", buf, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012CA8;
  block[3] = &unk_1000492D0;
  block[4] = self;
  v13 = reasonsCopy;
  v14 = v8;
  dispatch_async(&_dispatch_main_q, block);

LABEL_9:
}

- (void)setPointerPersistentlyVisibleForReasons:(id)reasons
{
  reasonsCopy = reasons;
  v5 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v5 connection];

  v7 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connection];
  v8 = v7;
  if (!v7)
  {
    v11 = PSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100027BD0();
    }

    goto LABEL_8;
  }

  auditToken = [v7 auditToken];
  v10 = [auditToken hasEntitlement:@"com.apple.pointerui.persistentlyShowPointer"];

  if (!v10)
  {
    v11 = PSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = @"com.apple.pointerui.persistentlyShowPointer";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ignoring persistent show request because missing entitlement (%@)", buf, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012EDC;
  block[3] = &unk_1000492D0;
  block[4] = self;
  v13 = reasonsCopy;
  v14 = v8;
  dispatch_async(&_dispatch_main_q, block);

LABEL_9:
}

- (void)setSystemPointerInteractionContextID:(id)d display:(id)display
{
  dCopy = d;
  displayCopy = display;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connection];
  v11 = v10;
  if (v10)
  {
    auditToken = [v10 auditToken];
    v13 = [auditToken hasEntitlement:@"com.apple.pointerui.set-system-cursor-interaction-context"];

    if (v13)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100013084;
      v14[3] = &unk_100049208;
      v14[4] = self;
      v15 = dCopy;
      v16 = displayCopy;
      v17 = v11;
      dispatch_async(&_dispatch_main_q, v14);
    }
  }
}

- (void)setOverridesHoverRegions:(id)regions display:(id)display
{
  regionsCopy = regions;
  displayCopy = display;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connection];
  v11 = v10;
  if (v10)
  {
    auditToken = [v10 auditToken];
    v13 = [auditToken hasEntitlement:@"com.apple.pointerui.set-system-cursor-interaction-context"];

    if (v13)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10001326C;
      v15[3] = &unk_100049208;
      v15[4] = self;
      v16 = regionsCopy;
      v17 = displayCopy;
      v18 = v11;
      dispatch_async(&_dispatch_main_q, v15);
    }

    else
    {
      v14 = PSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100027C38();
      }
    }
  }
}

- (void)setWantsServiceKeepAlive:(id)alive
{
  aliveCopy = alive;
  v5 = +[_PUIDXPCClientControllerTarget currentTarget];
  connection = [v5 connection];

  v7 = [(PUIDXPCClientController *)self _launchingPointerClientForServiceConnection:connection];
  v8 = v7;
  if (v7)
  {
    auditToken = [v7 auditToken];
    v10 = [auditToken hasEntitlement:@"com.apple.pointerui.service-keep-alive-assertion"];

    if (v10)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000133FC;
      block[3] = &unk_1000492D0;
      block[4] = self;
      v12 = aliveCopy;
      v13 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)setClientInteractionState:(int64_t)state
{
  if ([(PUIDXPCClientController *)self _clientInteractionState]!= state)
  {
    [(PUIDXPCClientController *)self set_clientInteractionState:state];
    connectionQueue = self->_connectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000134FC;
    block[3] = &unk_100048BA8;
    block[4] = self;
    dispatch_async(connectionQueue, block);
  }
}

- (void)setPointerVisibilityState:(int64_t)state
{
  if ([(PUIDXPCClientController *)self _pointerVisibilityState]!= state)
  {
    [(PUIDXPCClientController *)self set_pointerVisibilityState:state];
    connectionQueue = self->_connectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013754;
    block[3] = &unk_100048BA8;
    block[4] = self;
    dispatch_async(connectionQueue, block);
  }
}

- (void)_handleDisconnectForLaunchingConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v5 = [(PUIDXPCClientController *)self _launchingPointerClientForServiceConnection:connectionCopy];
  if (v5)
  {
    [(PUIDXPCClientController *)self _removeLaunchingMapBetweenServiceConnection:connectionCopy pointerClient:v5];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000139EC;
    v6[3] = &unk_100048A28;
    v6[4] = self;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_handleDisconnectForNonLaunchingConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v5 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:connectionCopy];
  if (v5)
  {
    [(PUIDXPCClientController *)self _removeNonLaunchingMapBetweenServiceConnection:connectionCopy pointerClient:v5];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100013B18;
    v6[3] = &unk_100048A28;
    v6[4] = self;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_addLaunchingMapBetweenServiceConnection:(id)connection pointerClient:(id)client
{
  connectionCopy = connection;
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  launchingConnectionToPointerClientMap = self->_launchingConnectionToPointerClientMap;
  if (!launchingConnectionToPointerClientMap)
  {
    v8 = +[NSMapTable strongToStrongObjectsMapTable];
    v9 = self->_launchingConnectionToPointerClientMap;
    self->_launchingConnectionToPointerClientMap = v8;

    launchingConnectionToPointerClientMap = self->_launchingConnectionToPointerClientMap;
  }

  [(NSMapTable *)launchingConnectionToPointerClientMap setObject:clientCopy forKey:connectionCopy];
  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);
}

- (id)_launchingPointerClientForServiceConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  v5 = [(NSMapTable *)self->_launchingConnectionToPointerClientMap objectForKey:connectionCopy];

  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);

  return v5;
}

- (void)_removeLaunchingMapBetweenServiceConnection:(id)connection pointerClient:(id)client
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  [(NSMapTable *)self->_launchingConnectionToPointerClientMap removeObjectForKey:connectionCopy];

  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);
}

- (void)_addNonLaunchingMapBetweenServiceConnection:(id)connection pointerClient:(id)client
{
  connectionCopy = connection;
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  nonLaunchingConnectionToPointerClientMap = self->_nonLaunchingConnectionToPointerClientMap;
  if (!nonLaunchingConnectionToPointerClientMap)
  {
    v8 = +[NSMapTable strongToStrongObjectsMapTable];
    v9 = self->_nonLaunchingConnectionToPointerClientMap;
    self->_nonLaunchingConnectionToPointerClientMap = v8;

    nonLaunchingConnectionToPointerClientMap = self->_nonLaunchingConnectionToPointerClientMap;
  }

  [(NSMapTable *)nonLaunchingConnectionToPointerClientMap setObject:clientCopy forKey:connectionCopy];
  pointerClientToNonLaunchingConnectionMap = self->_pointerClientToNonLaunchingConnectionMap;
  if (!pointerClientToNonLaunchingConnectionMap)
  {
    v11 = +[NSMapTable strongToStrongObjectsMapTable];
    v12 = self->_pointerClientToNonLaunchingConnectionMap;
    self->_pointerClientToNonLaunchingConnectionMap = v11;

    pointerClientToNonLaunchingConnectionMap = self->_pointerClientToNonLaunchingConnectionMap;
  }

  [(NSMapTable *)pointerClientToNonLaunchingConnectionMap setObject:connectionCopy forKey:clientCopy];
  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);
}

- (id)_nonLaunchingServiceConnectionForPointerClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  v5 = [(NSMapTable *)self->_pointerClientToNonLaunchingConnectionMap objectForKey:clientCopy];

  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);

  return v5;
}

- (id)_pointerClientForNonLaunchingServiceConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  v5 = [(NSMapTable *)self->_nonLaunchingConnectionToPointerClientMap objectForKey:connectionCopy];

  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);

  return v5;
}

- (void)_removeNonLaunchingMapBetweenServiceConnection:(id)connection pointerClient:(id)client
{
  clientCopy = client;
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  [(NSMapTable *)self->_nonLaunchingConnectionToPointerClientMap removeObjectForKey:connectionCopy];

  [(NSMapTable *)self->_pointerClientToNonLaunchingConnectionMap removeObjectForKey:clientCopy];

  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);
}

- (PUIDXPCClientControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end