@interface PUIDDisplayContextFactoryImpl
- (id)newDisplayContextForDisplay:(id)a3 pointerRenderingScene:(id)a4 systemPointerScene:(id)a5;
- (void)createStreamsForDisplay:(id)a3 context:(id)a4;
@end

@implementation PUIDDisplayContextFactoryImpl

- (id)newDisplayContextForDisplay:(id)a3 pointerRenderingScene:(id)a4 systemPointerScene:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [(PUIDDisplayContextFactoryImpl *)self contextClass];
  if (([(objc_class *)v12 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    sub_100027A20(v12, a2, self);
  }

  v13 = objc_alloc_init(v12);
  [v13 setDisplay:v9];
  v14 = [[PUIDPointerRenderingRootViewController alloc] initWithDisplay:v9 hiddenForPerformanceReasons:v10 != 0];
  v15 = [(PUIDSecurePassthroughWindow *)[PUIDPointerRenderingWindow alloc] initWithWindowScene:v11];

  [v13 setPointerRenderingWindow:v15];
  [v13 setPointerRenderingController:v14];
  [(PUIDPointerRenderingWindow *)v15 setRootViewController:v14];
  [(PUIDPointerRenderingWindow *)v15 setHidden:0];
  v16 = PSLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(PUIDSecurePassthroughWindow *)v15 puid_description];
    v27 = 138543618;
    v28 = v9;
    v29 = 2114;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@> created pointerRenderingWindow: %{public}@", &v27, 0x16u);
  }

  if (v10)
  {
    v18 = [[PUIDSystemPointerRootViewController alloc] initWithDisplay:v9];
    v19 = [(PUIDSecurePassthroughWindow *)[PUIDSystemPointerWindow alloc] initWithWindowScene:v10];
    [v13 setSystemPointerWindow:v19];
    [v13 setSystemPointerRenderingController:v18];
    [(PUIDSystemPointerWindow *)v19 setRootViewController:v18];
    [(PUIDSystemPointerWindow *)v19 setHidden:0];
    v20 = PSLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(PUIDSecurePassthroughWindow *)v19 puid_description];
      v27 = 138543618;
      v28 = v9;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@> created systemPointerWindow: %{public}@", &v27, 0x16u);
    }
  }

  else
  {
    v18 = PSLogCommon();
    if (os_log_type_enabled(&v18->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, &v18->super.super.super, OS_LOG_TYPE_DEFAULT, "<%{public}@> skipped creating system pointer window", &v27, 0xCu);
    }
  }

  [(PUIDDisplayContextFactoryImpl *)self createStreamsForDisplay:v9 context:v13];
  v22 = [PUIDSystemPointerClient alloc];
  v23 = +[NSUUID UUID];
  v24 = +[BSAuditToken tokenForCurrentProcess];
  v25 = [(PUIDPointerClient *)v22 initWithUniqueIdentifier:v23 auditToken:v24];

  [v13 setSystemPointerClient:v25];
  return v13;
}

- (void)createStreamsForDisplay:(id)a3 context:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = +[BKSMousePointerService sharedInstance];
  v7 = [v15 hardwareIdentifier];
  if (v5)
  {
    v8 = [v5[5] _contextId];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 requestGlobalMouseEventsForDisplay:v7 targetContextID:v8];

  [v5 setPointerEventStream:v9];
  v10 = [BKSTouchStream alloc];
  if (v5)
  {
    v11 = [v5[5] _contextId];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v15 hardwareIdentifier];
  v13 = objc_opt_new();
  v14 = [v10 initWithContextID:v11 displayUUID:v12 identifier:3 policy:v13];

  [v14 setEventDispatchMode:2 lastTouchTimestamp:0.0];
  [v5 setTouchStream:v14];
}

@end