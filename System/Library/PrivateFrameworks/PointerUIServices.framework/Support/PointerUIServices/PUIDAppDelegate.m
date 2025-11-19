@interface PUIDAppDelegate
- (PUIDAppDelegate)init;
- (void)_pointerUIServiceDidFinishSceneCreationWithSceneBag:(id)a3;
- (void)_setEventFetchThreadPriorityWhenPossible;
- (void)applicationDidCreateFBSScene:(id)a3;
- (void)scene:(id)a3 didUpdateWithDiff:(id)a4 transitionContext:(id)a5 completion:(id)a6;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation PUIDAppDelegate

- (PUIDAppDelegate)init
{
  v12.receiver = self;
  v12.super_class = PUIDAppDelegate;
  v2 = [(PUIDAppDelegate *)&v12 init];
  if (v2)
  {
    v3 = +[BSServicesConfiguration extendAutomaticBootstrapCompletion];
    servicesBootstrapExtension = v2->_servicesBootstrapExtension;
    v2->_servicesBootstrapExtension = v3;

    v5 = objc_alloc_init(PUIDPointerEventStreamController);
    pointerEventStreamController = v2->_pointerEventStreamController;
    v2->_pointerEventStreamController = v5;

    v7 = +[NSMutableSet set];
    displaysThatFinishedSceneCreation = v2->_displaysThatFinishedSceneCreation;
    v2->_displaysThatFinishedSceneCreation = v7;

    v9 = +[NSMutableDictionary dictionary];
    sceneBagForDisplay = v2->_sceneBagForDisplay;
    v2->_sceneBagForDisplay = v9;

    [(PUIDAppDelegate *)v2 _setEventFetchThreadPriorityWhenPossible];
  }

  return v2;
}

- (void)applicationDidCreateFBSScene:(id)a3
{
  v4 = a3;
  v5 = [v4 psDisplay];
  if (!v5)
  {
    sub_100027D64();
  }

  v6 = PSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 identifier];
    v21 = 138543874;
    v22 = v5;
    v23 = 2048;
    v24 = v4;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@> Scene did connect: <%p:%{public}@> ", &v21, 0x20u);
  }

  p_isa = [(NSMutableDictionary *)self->_sceneBagForDisplay objectForKeyedSubscript:v5];
  if (!p_isa)
  {
    v9 = objc_alloc_init(_PUIDSceneBag);
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeWeak(&v9->_display, v5);
    }

    [(NSMutableDictionary *)self->_sceneBagForDisplay setObject:p_isa forKeyedSubscript:v5];
  }

  v10 = [v4 identifier];
  v11 = [v10 hasPrefix:PSApplicationSceneIdentifierSystemPointer];

  if (v11)
  {
    if (p_isa)
    {
      WeakRetained = objc_loadWeakRetained(p_isa + 1);

      if (WeakRetained)
      {
        sub_100027E88();
      }
    }

    v13 = [UIWindowScene _sceneForFBSScene:v4];
    if (!v13)
    {
      sub_100027EE4();
    }

    [v13 setDelegate:self];
    [v13 _setKeepContextAssociationInBackground:1];
    if (!p_isa)
    {
      goto LABEL_26;
    }

    v14 = 1;
LABEL_25:
    objc_storeWeak(&p_isa[v14], v13);
LABEL_26:

    goto LABEL_27;
  }

  v15 = [v4 identifier];
  v16 = [v15 hasPrefix:PSApplicationSceneIdentifierPointerRendering];

  if (v16)
  {
    if (p_isa)
    {
      v17 = objc_loadWeakRetained(p_isa + 2);

      if (v17)
      {
        sub_100027DD0();
      }
    }

    v13 = [UIWindowScene _sceneForFBSScene:v4];
    if (!v13)
    {
      sub_100027E2C();
    }

    [v13 setDelegate:self];
    [v13 _setKeepContextAssociationInBackground:1];
    if (!p_isa)
    {
      goto LABEL_26;
    }

    v14 = 2;
    goto LABEL_25;
  }

LABEL_27:
  if (([(NSMutableSet *)self->_displaysThatFinishedSceneCreation containsObject:v5]& 1) == 0)
  {
    if (p_isa)
    {
      v18 = objc_loadWeakRetained(p_isa + 1);
      if (v18)
      {
        v19 = v18;
        v20 = objc_loadWeakRetained(p_isa + 2);

        if (v20)
        {
          [(NSMutableSet *)self->_displaysThatFinishedSceneCreation addObject:v5];
          [(PUIDAppDelegate *)self _pointerUIServiceDidFinishSceneCreationWithSceneBag:p_isa];
        }
      }
    }
  }
}

- (void)scene:(id)a3 didUpdateWithDiff:(id)a4 transitionContext:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = v7;
  if (v7)
  {
    v9 = UIApp;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100019580;
    v10[3] = &unk_100049350;
    v11 = v7;
    [v9 _scheduleSceneEventResponseForScene:a3 withResponseBlock:v10];
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [v4 psDisplay];
  v6 = PSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 _sceneIdentifier];
    v9 = 138543874;
    v10 = v5;
    v11 = 2048;
    v12 = v4;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@> Scene did disconnect: <%p:%{public}@> ", &v9, 0x20u);
  }

  if ([(NSMutableSet *)self->_displaysThatFinishedSceneCreation containsObject:v5])
  {
    v8 = PSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cleaning up for scene disconnection on display: %{public}@", &v9, 0xCu);
    }

    [(NSMutableSet *)self->_displaysThatFinishedSceneCreation removeObject:v5];
    [(NSMutableDictionary *)self->_sceneBagForDisplay removeObjectForKey:v5];
    [(PUIDPointerController *)self->_pointerController displayDetached:v5];
  }
}

- (void)_pointerUIServiceDidFinishSceneCreationWithSceneBag:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (WeakRetained = objc_loadWeakRetained(v4 + 3)) == 0)
  {
    sub_100027F40();
    WeakRetained = 0;
  }

  v7 = PSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> Configuring Pointer", &v16, 0xCu);
  }

  pointerController = self->_pointerController;
  if (pointerController)
  {
    if (v5)
    {
      v9 = objc_loadWeakRetained(v5 + 2);
      v10 = objc_loadWeakRetained(v5 + 1);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    [(PUIDPointerController *)pointerController displayAttached:WeakRetained pointerRenderingScene:v9 systemPointerScene:v10];
  }

  else
  {
    v11 = [PUIDPointerController alloc];
    pointerEventStreamController = self->_pointerEventStreamController;
    if (v5)
    {
      v9 = objc_loadWeakRetained(v5 + 2);
      v10 = objc_loadWeakRetained(v5 + 1);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v13 = [(PUIDPointerController *)v11 initWithPointerEventStreamProvider:pointerEventStreamController initialDisplay:WeakRetained pointerRenderingScene:v9 systemPointerScene:v10];
    v14 = self->_pointerController;
    self->_pointerController = v13;
  }

  [(BSInvalidatable *)self->_servicesBootstrapExtension invalidate];
  servicesBootstrapExtension = self->_servicesBootstrapExtension;
  self->_servicesBootstrapExtension = 0;
}

- (void)_setEventFetchThreadPriorityWhenPossible
{
  v3 = [UIApp _eventFetchRunLoop];
  if (v3)
  {

    CFRunLoopPerformBlock(v3, kCFRunLoopCommonModes, &stru_100049370);
  }

  else
  {
    v4 = dispatch_time(0, 1000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019A20;
    block[3] = &unk_100048BA8;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

@end