@interface PUIDXPCClientController
- (PUIDXPCClientController)init;
- (PUIDXPCClientControllerDelegate)delegate;
- (id)_launchingPointerClientForServiceConnection:(id)a3;
- (id)_nonLaunchingServiceConnectionForPointerClient:(id)a3;
- (id)_pointerClientForNonLaunchingServiceConnection:(id)a3;
- (void)_addLaunchingMapBetweenServiceConnection:(id)a3 pointerClient:(id)a4;
- (void)_addNonLaunchingMapBetweenServiceConnection:(id)a3 pointerClient:(id)a4;
- (void)_handleDisconnectForLaunchingConnection:(id)a3;
- (void)_handleDisconnectForNonLaunchingConnection:(id)a3;
- (void)_removeLaunchingMapBetweenServiceConnection:(id)a3 pointerClient:(id)a4;
- (void)_removeNonLaunchingMapBetweenServiceConnection:(id)a3 pointerClient:(id)a4;
- (void)adjustedDecelerationTargetForPointerClient:(id)a3 withTargetPointerPosition:(CGPoint)a4 velocity:(CGPoint)a5 inContextID:(unsigned int)a6 cursorRegionLookupRadius:(double)a7 cursorRegionLookupResolution:(double)a8 lookupConeAngle:(double)a9 completion:(id)a10;
- (void)autohidePointerForReason:(id)a3;
- (void)createContentMatchMoveSourcesForDisplay:(id)a3 countValue:(id)a4 completion:(id)a5;
- (void)createPointerPortalSourceCollectionForDisplay:(id)a3 completion:(id)a4;
- (void)invalidateContentMatchMoveSources:(id)a3 completion:(id)a4;
- (void)invalidatePointerPortalSourceCollection:(id)a3 completion:(id)a4;
- (void)invalidatedPortalSourceCollections:(id)a3 matchMoveSources:(id)a4 forClient:(id)a5;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)setActiveHoverRegion:(id)a3 transitionCompletion:(id)a4;
- (void)setClientInteractionState:(int64_t)a3;
- (void)setOverridesHoverRegions:(id)a3 display:(id)a4;
- (void)setPointerPersistentlyHiddenForReasons:(id)a3;
- (void)setPointerPersistentlyVisibleForReasons:(id)a3;
- (void)setPointerVisibilityState:(int64_t)a3;
- (void)setSystemPointerInteractionContextID:(id)a3 display:(id)a4;
- (void)setWantsServiceKeepAlive:(id)a3;
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

- (void)adjustedDecelerationTargetForPointerClient:(id)a3 withTargetPointerPosition:(CGPoint)a4 velocity:(CGPoint)a5 inContextID:(unsigned int)a6 cursorRegionLookupRadius:(double)a7 cursorRegionLookupResolution:(double)a8 lookupConeAngle:(double)a9 completion:(id)a10
{
  y = a5.y;
  x = a5.x;
  v17 = a4.y;
  v18 = a4.x;
  v20 = a3;
  v21 = a10;
  connectionQueue = self->_connectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010F4C;
  block[3] = &unk_1000491E0;
  block[4] = self;
  v26 = v20;
  v28 = v18;
  v29 = v17;
  v30 = x;
  v31 = y;
  v35 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a9;
  v27 = v21;
  v23 = v21;
  v24 = v20;
  dispatch_async(connectionQueue, block);
}

- (void)invalidatedPortalSourceCollections:(id)a3 matchMoveSources:(id)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  connectionQueue = self->_connectionQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000113EC;
  v15[3] = &unk_100049208;
  v15[4] = self;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(connectionQueue, v15);
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 remoteProcess];
  v10 = [v9 pid];
  v11 = getpid();

  if (v10 != v11)
  {
    v12 = [PUIDPointerClient alloc];
    v13 = +[NSUUID UUID];
    v14 = [v8 remoteProcess];
    v15 = [v14 auditToken];
    v16 = [(PUIDPointerClient *)v12 initWithUniqueIdentifier:v13 auditToken:v15];

    if (self->_nonLaunchingConnectionListener == v7)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100011850;
      v35[3] = &unk_100049258;
      v17 = v8;
      v36 = v17;
      v37 = self;
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
        v18 = [v17 remoteTarget];
        v19 = [NSNumber numberWithInteger:[(PUIDXPCClientController *)self _clientInteractionState]];
        [v18 clientInteractionStateDidChange:v19];
      }

      if ([(PUIDXPCClientController *)self _pointerVisibilityState])
      {
        v20 = [v17 remoteTarget];
        v21 = [NSNumber numberWithInteger:[(PUIDXPCClientController *)self _pointerVisibilityState]];
        [v20 pointerVisibilityStateDidChange:v21];
      }

      v22 = v36;
    }

    else
    {
      if (self->_launchingConnectionListener != v7)
      {
        [v8 invalidate];
LABEL_13:

        goto LABEL_14;
      }

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100011A70;
      v30[3] = &unk_100049258;
      v23 = v8;
      v31 = v23;
      v32 = self;
      [v23 configureConnection:v30];
      [(PUIDXPCClientController *)self _addLaunchingMapBetweenServiceConnection:v23 pointerClient:v16];
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_100011C3C;
      v27 = &unk_100048A28;
      v28 = self;
      v29 = v16;
      dispatch_async(&_dispatch_main_q, &v24);
      [v23 activate];

      v22 = v31;
    }

    goto LABEL_13;
  }

  [v8 invalidate];
LABEL_14:
}

- (void)createPointerPortalSourceCollectionForDisplay:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  v9 = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v9];
  if (v10)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100011DF8;
    v12[3] = &unk_100049280;
    v12[4] = self;
    v13 = v6;
    v14 = v10;
    v15 = v7;
    dispatch_async(&_dispatch_main_q, v12);
  }

  else if (v7)
  {
    v11 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1002 userInfo:0];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)invalidatePointerPortalSourceCollection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  v9 = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v9];
  if (v10)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100011FEC;
    v12[3] = &unk_100049280;
    v12[4] = self;
    v13 = v6;
    v14 = v10;
    v15 = v7;
    dispatch_async(&_dispatch_main_q, v12);
  }

  else if (v7)
  {
    v11 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1002 userInfo:0];
    (*(v7 + 2))(v7, v11);
  }
}

- (void)createContentMatchMoveSourcesForDisplay:(id)a3 countValue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[_PUIDXPCClientControllerTarget currentTarget];
  v12 = [v11 connection];

  v13 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v12];
  if (v13)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000121E0;
    block[3] = &unk_1000492A8;
    v16 = v9;
    v17 = self;
    v18 = v8;
    v19 = v13;
    v20 = v10;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (v10)
  {
    v14 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1002 userInfo:0];
    (*(v10 + 2))(v10, 0, v14);
  }
}

- (void)invalidateContentMatchMoveSources:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  v9 = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v9];
  if (v10)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100012598;
    v12[3] = &unk_100049280;
    v12[4] = self;
    v13 = v6;
    v14 = v10;
    v15 = v7;
    dispatch_async(&_dispatch_main_q, v12);
  }

  else if (v7)
  {
    v11 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1002 userInfo:0];
    (*(v7 + 2))(v7, v11);
  }
}

- (void)setActiveHoverRegion:(id)a3 transitionCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  v9 = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v9];
  if (v10)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100012828;
    v12[3] = &unk_100049280;
    v13 = v6;
    v14 = self;
    v15 = v10;
    v16 = v7;
    dispatch_async(&_dispatch_main_q, v12);
  }

  else if (v7)
  {
    v11 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1002 userInfo:0];
    (*(v7 + 2))(v7, v11);
  }
}

- (void)autohidePointerForReason:(id)a3
{
  v4 = a3;
  v5 = +[_PUIDXPCClientControllerTarget currentTarget];
  v6 = [v5 connection];

  v7 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v6];
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012A64;
    block[3] = &unk_1000492D0;
    block[4] = self;
    v10 = v4;
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

- (void)setPointerPersistentlyHiddenForReasons:(id)a3
{
  v4 = a3;
  v5 = +[_PUIDXPCClientControllerTarget currentTarget];
  v6 = [v5 connection];

  v7 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v6];
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

  v9 = [v7 auditToken];
  v10 = [v9 hasEntitlement:@"com.apple.pointerui.persistentlyHidePointer"];

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
  v13 = v4;
  v14 = v8;
  dispatch_async(&_dispatch_main_q, block);

LABEL_9:
}

- (void)setPointerPersistentlyVisibleForReasons:(id)a3
{
  v4 = a3;
  v5 = +[_PUIDXPCClientControllerTarget currentTarget];
  v6 = [v5 connection];

  v7 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v6];
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

  v9 = [v7 auditToken];
  v10 = [v9 hasEntitlement:@"com.apple.pointerui.persistentlyShowPointer"];

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
  v13 = v4;
  v14 = v8;
  dispatch_async(&_dispatch_main_q, block);

LABEL_9:
}

- (void)setSystemPointerInteractionContextID:(id)a3 display:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  v9 = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 auditToken];
    v13 = [v12 hasEntitlement:@"com.apple.pointerui.set-system-cursor-interaction-context"];

    if (v13)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100013084;
      v14[3] = &unk_100049208;
      v14[4] = self;
      v15 = v6;
      v16 = v7;
      v17 = v11;
      dispatch_async(&_dispatch_main_q, v14);
    }
  }
}

- (void)setOverridesHoverRegions:(id)a3 display:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_PUIDXPCClientControllerTarget currentTarget];
  v9 = [v8 connection];

  v10 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 auditToken];
    v13 = [v12 hasEntitlement:@"com.apple.pointerui.set-system-cursor-interaction-context"];

    if (v13)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10001326C;
      v15[3] = &unk_100049208;
      v15[4] = self;
      v16 = v6;
      v17 = v7;
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

- (void)setWantsServiceKeepAlive:(id)a3
{
  v4 = a3;
  v5 = +[_PUIDXPCClientControllerTarget currentTarget];
  v6 = [v5 connection];

  v7 = [(PUIDXPCClientController *)self _launchingPointerClientForServiceConnection:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 auditToken];
    v10 = [v9 hasEntitlement:@"com.apple.pointerui.service-keep-alive-assertion"];

    if (v10)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000133FC;
      block[3] = &unk_1000492D0;
      block[4] = self;
      v12 = v4;
      v13 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)setClientInteractionState:(int64_t)a3
{
  if ([(PUIDXPCClientController *)self _clientInteractionState]!= a3)
  {
    [(PUIDXPCClientController *)self set_clientInteractionState:a3];
    connectionQueue = self->_connectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000134FC;
    block[3] = &unk_100048BA8;
    block[4] = self;
    dispatch_async(connectionQueue, block);
  }
}

- (void)setPointerVisibilityState:(int64_t)a3
{
  if ([(PUIDXPCClientController *)self _pointerVisibilityState]!= a3)
  {
    [(PUIDXPCClientController *)self set_pointerVisibilityState:a3];
    connectionQueue = self->_connectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013754;
    block[3] = &unk_100048BA8;
    block[4] = self;
    dispatch_async(connectionQueue, block);
  }
}

- (void)_handleDisconnectForLaunchingConnection:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v5 = [(PUIDXPCClientController *)self _launchingPointerClientForServiceConnection:v4];
  if (v5)
  {
    [(PUIDXPCClientController *)self _removeLaunchingMapBetweenServiceConnection:v4 pointerClient:v5];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000139EC;
    v6[3] = &unk_100048A28;
    v6[4] = self;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_handleDisconnectForNonLaunchingConnection:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v5 = [(PUIDXPCClientController *)self _pointerClientForNonLaunchingServiceConnection:v4];
  if (v5)
  {
    [(PUIDXPCClientController *)self _removeNonLaunchingMapBetweenServiceConnection:v4 pointerClient:v5];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100013B18;
    v6[3] = &unk_100048A28;
    v6[4] = self;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_addLaunchingMapBetweenServiceConnection:(id)a3 pointerClient:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  launchingConnectionToPointerClientMap = self->_launchingConnectionToPointerClientMap;
  if (!launchingConnectionToPointerClientMap)
  {
    v8 = +[NSMapTable strongToStrongObjectsMapTable];
    v9 = self->_launchingConnectionToPointerClientMap;
    self->_launchingConnectionToPointerClientMap = v8;

    launchingConnectionToPointerClientMap = self->_launchingConnectionToPointerClientMap;
  }

  [(NSMapTable *)launchingConnectionToPointerClientMap setObject:v6 forKey:v10];
  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);
}

- (id)_launchingPointerClientForServiceConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  v5 = [(NSMapTable *)self->_launchingConnectionToPointerClientMap objectForKey:v4];

  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);

  return v5;
}

- (void)_removeLaunchingMapBetweenServiceConnection:(id)a3 pointerClient:(id)a4
{
  v5 = a3;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  [(NSMapTable *)self->_launchingConnectionToPointerClientMap removeObjectForKey:v5];

  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);
}

- (void)_addNonLaunchingMapBetweenServiceConnection:(id)a3 pointerClient:(id)a4
{
  v13 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  nonLaunchingConnectionToPointerClientMap = self->_nonLaunchingConnectionToPointerClientMap;
  if (!nonLaunchingConnectionToPointerClientMap)
  {
    v8 = +[NSMapTable strongToStrongObjectsMapTable];
    v9 = self->_nonLaunchingConnectionToPointerClientMap;
    self->_nonLaunchingConnectionToPointerClientMap = v8;

    nonLaunchingConnectionToPointerClientMap = self->_nonLaunchingConnectionToPointerClientMap;
  }

  [(NSMapTable *)nonLaunchingConnectionToPointerClientMap setObject:v6 forKey:v13];
  pointerClientToNonLaunchingConnectionMap = self->_pointerClientToNonLaunchingConnectionMap;
  if (!pointerClientToNonLaunchingConnectionMap)
  {
    v11 = +[NSMapTable strongToStrongObjectsMapTable];
    v12 = self->_pointerClientToNonLaunchingConnectionMap;
    self->_pointerClientToNonLaunchingConnectionMap = v11;

    pointerClientToNonLaunchingConnectionMap = self->_pointerClientToNonLaunchingConnectionMap;
  }

  [(NSMapTable *)pointerClientToNonLaunchingConnectionMap setObject:v13 forKey:v6];
  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);
}

- (id)_nonLaunchingServiceConnectionForPointerClient:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  v5 = [(NSMapTable *)self->_pointerClientToNonLaunchingConnectionMap objectForKey:v4];

  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);

  return v5;
}

- (id)_pointerClientForNonLaunchingServiceConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  v5 = [(NSMapTable *)self->_nonLaunchingConnectionToPointerClientMap objectForKey:v4];

  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);

  return v5;
}

- (void)_removeNonLaunchingMapBetweenServiceConnection:(id)a3 pointerClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_clientServiceCollectionMapLock);
  [(NSMapTable *)self->_nonLaunchingConnectionToPointerClientMap removeObjectForKey:v7];

  [(NSMapTable *)self->_pointerClientToNonLaunchingConnectionMap removeObjectForKey:v6];

  os_unfair_lock_unlock(&self->_clientServiceCollectionMapLock);
}

- (PUIDXPCClientControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end