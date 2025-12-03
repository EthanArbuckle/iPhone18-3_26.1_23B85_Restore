@interface PUIDDisplayContextFactoryImpl
- (id)newDisplayContextForDisplay:(id)display pointerRenderingScene:(id)scene systemPointerScene:(id)pointerScene;
- (void)createStreamsForDisplay:(id)display context:(id)context;
@end

@implementation PUIDDisplayContextFactoryImpl

- (id)newDisplayContextForDisplay:(id)display pointerRenderingScene:(id)scene systemPointerScene:(id)pointerScene
{
  displayCopy = display;
  pointerSceneCopy = pointerScene;
  sceneCopy = scene;
  contextClass = [(PUIDDisplayContextFactoryImpl *)self contextClass];
  if (([(objc_class *)contextClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    sub_100027A20(contextClass, a2, self);
  }

  v13 = objc_alloc_init(contextClass);
  [v13 setDisplay:displayCopy];
  v14 = [[PUIDPointerRenderingRootViewController alloc] initWithDisplay:displayCopy hiddenForPerformanceReasons:pointerSceneCopy != 0];
  v15 = [(PUIDSecurePassthroughWindow *)[PUIDPointerRenderingWindow alloc] initWithWindowScene:sceneCopy];

  [v13 setPointerRenderingWindow:v15];
  [v13 setPointerRenderingController:v14];
  [(PUIDPointerRenderingWindow *)v15 setRootViewController:v14];
  [(PUIDPointerRenderingWindow *)v15 setHidden:0];
  v16 = PSLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    puid_description = [(PUIDSecurePassthroughWindow *)v15 puid_description];
    v27 = 138543618;
    v28 = displayCopy;
    v29 = 2114;
    v30 = puid_description;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@> created pointerRenderingWindow: %{public}@", &v27, 0x16u);
  }

  if (pointerSceneCopy)
  {
    v18 = [[PUIDSystemPointerRootViewController alloc] initWithDisplay:displayCopy];
    v19 = [(PUIDSecurePassthroughWindow *)[PUIDSystemPointerWindow alloc] initWithWindowScene:pointerSceneCopy];
    [v13 setSystemPointerWindow:v19];
    [v13 setSystemPointerRenderingController:v18];
    [(PUIDSystemPointerWindow *)v19 setRootViewController:v18];
    [(PUIDSystemPointerWindow *)v19 setHidden:0];
    v20 = PSLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      puid_description2 = [(PUIDSecurePassthroughWindow *)v19 puid_description];
      v27 = 138543618;
      v28 = displayCopy;
      v29 = 2114;
      v30 = puid_description2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@> created systemPointerWindow: %{public}@", &v27, 0x16u);
    }
  }

  else
  {
    v18 = PSLogCommon();
    if (os_log_type_enabled(&v18->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = displayCopy;
      _os_log_impl(&_mh_execute_header, &v18->super.super.super, OS_LOG_TYPE_DEFAULT, "<%{public}@> skipped creating system pointer window", &v27, 0xCu);
    }
  }

  [(PUIDDisplayContextFactoryImpl *)self createStreamsForDisplay:displayCopy context:v13];
  v22 = [PUIDSystemPointerClient alloc];
  v23 = +[NSUUID UUID];
  v24 = +[BSAuditToken tokenForCurrentProcess];
  v25 = [(PUIDPointerClient *)v22 initWithUniqueIdentifier:v23 auditToken:v24];

  [v13 setSystemPointerClient:v25];
  return v13;
}

- (void)createStreamsForDisplay:(id)display context:(id)context
{
  displayCopy = display;
  contextCopy = context;
  v6 = +[BKSMousePointerService sharedInstance];
  hardwareIdentifier = [displayCopy hardwareIdentifier];
  if (contextCopy)
  {
    _contextId = [contextCopy[5] _contextId];
  }

  else
  {
    _contextId = 0;
  }

  v9 = [v6 requestGlobalMouseEventsForDisplay:hardwareIdentifier targetContextID:_contextId];

  [contextCopy setPointerEventStream:v9];
  v10 = [BKSTouchStream alloc];
  if (contextCopy)
  {
    _contextId2 = [contextCopy[5] _contextId];
  }

  else
  {
    _contextId2 = 0;
  }

  hardwareIdentifier2 = [displayCopy hardwareIdentifier];
  v13 = objc_opt_new();
  v14 = [v10 initWithContextID:_contextId2 displayUUID:hardwareIdentifier2 identifier:3 policy:v13];

  [v14 setEventDispatchMode:2 lastTouchTimestamp:0.0];
  [contextCopy setTouchStream:v14];
}

@end