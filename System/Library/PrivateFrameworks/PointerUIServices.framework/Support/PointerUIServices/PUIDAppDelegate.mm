@interface PUIDAppDelegate
- (PUIDAppDelegate)init;
- (void)_pointerUIServiceDidFinishSceneCreationWithSceneBag:(id)bag;
- (void)_setEventFetchThreadPriorityWhenPossible;
- (void)applicationDidCreateFBSScene:(id)scene;
- (void)scene:(id)scene didUpdateWithDiff:(id)diff transitionContext:(id)context completion:(id)completion;
- (void)sceneDidDisconnect:(id)disconnect;
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

- (void)applicationDidCreateFBSScene:(id)scene
{
  sceneCopy = scene;
  psDisplay = [sceneCopy psDisplay];
  if (!psDisplay)
  {
    sub_100027D64();
  }

  v6 = PSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sceneCopy identifier];
    v21 = 138543874;
    v22 = psDisplay;
    v23 = 2048;
    v24 = sceneCopy;
    v25 = 2114;
    v26 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@> Scene did connect: <%p:%{public}@> ", &v21, 0x20u);
  }

  p_isa = [(NSMutableDictionary *)self->_sceneBagForDisplay objectForKeyedSubscript:psDisplay];
  if (!p_isa)
  {
    v9 = objc_alloc_init(_PUIDSceneBag);
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeWeak(&v9->_display, psDisplay);
    }

    [(NSMutableDictionary *)self->_sceneBagForDisplay setObject:p_isa forKeyedSubscript:psDisplay];
  }

  identifier2 = [sceneCopy identifier];
  v11 = [identifier2 hasPrefix:PSApplicationSceneIdentifierSystemPointer];

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

    v13 = [UIWindowScene _sceneForFBSScene:sceneCopy];
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

  identifier3 = [sceneCopy identifier];
  v16 = [identifier3 hasPrefix:PSApplicationSceneIdentifierPointerRendering];

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

    v13 = [UIWindowScene _sceneForFBSScene:sceneCopy];
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
  if (([(NSMutableSet *)self->_displaysThatFinishedSceneCreation containsObject:psDisplay]& 1) == 0)
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
          [(NSMutableSet *)self->_displaysThatFinishedSceneCreation addObject:psDisplay];
          [(PUIDAppDelegate *)self _pointerUIServiceDidFinishSceneCreationWithSceneBag:p_isa];
        }
      }
    }
  }
}

- (void)scene:(id)scene didUpdateWithDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v9 = UIApp;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100019580;
    v10[3] = &unk_100049350;
    v11 = completionCopy;
    [v9 _scheduleSceneEventResponseForScene:scene withResponseBlock:v10];
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  psDisplay = [disconnectCopy psDisplay];
  v6 = PSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [disconnectCopy _sceneIdentifier];
    v9 = 138543874;
    v10 = psDisplay;
    v11 = 2048;
    v12 = disconnectCopy;
    v13 = 2114;
    v14 = _sceneIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@> Scene did disconnect: <%p:%{public}@> ", &v9, 0x20u);
  }

  if ([(NSMutableSet *)self->_displaysThatFinishedSceneCreation containsObject:psDisplay])
  {
    v8 = PSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = psDisplay;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cleaning up for scene disconnection on display: %{public}@", &v9, 0xCu);
    }

    [(NSMutableSet *)self->_displaysThatFinishedSceneCreation removeObject:psDisplay];
    [(NSMutableDictionary *)self->_sceneBagForDisplay removeObjectForKey:psDisplay];
    [(PUIDPointerController *)self->_pointerController displayDetached:psDisplay];
  }
}

- (void)_pointerUIServiceDidFinishSceneCreationWithSceneBag:(id)bag
{
  bagCopy = bag;
  v5 = bagCopy;
  if (!bagCopy || (WeakRetained = objc_loadWeakRetained(bagCopy + 3)) == 0)
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
  _eventFetchRunLoop = [UIApp _eventFetchRunLoop];
  if (_eventFetchRunLoop)
  {

    CFRunLoopPerformBlock(_eventFetchRunLoop, kCFRunLoopCommonModes, &stru_100049370);
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