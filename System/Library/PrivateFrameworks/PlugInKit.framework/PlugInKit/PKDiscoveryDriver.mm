@interface PKDiscoveryDriver
- (PKDiscoveryDriver)initWithAttributes:(id)attributes flags:(unint64_t)flags host:(id)host report:(id)report;
- (void)_performWithPreviousResults:(id)results forceNotify:(BOOL)notify uninstalledProxies:(id)proxies;
- (void)cancel;
- (void)dealloc;
- (void)installWatchers;
- (void)performWithPreviousResults:(id)results forceNotify:(BOOL)notify;
- (void)removeWatchers;
@end

@implementation PKDiscoveryDriver

- (void)installWatchers
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> installing watchers for continuous discovery", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = [[PKDiscoveryLSWatcher alloc] initWithDriver:self];
  [(PKDiscoveryDriver *)self setLsWatcher:v4];

  out_token = 0;
  queue = [(PKDiscoveryDriver *)self queue];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1C689FF10;
  handler[3] = &unk_1E827F5F8;
  objc_copyWeak(&v18, buf);
  sub_1C68939B0(&out_token, queue, handler);

  [(PKDiscoveryDriver *)self setAnnotationNotifyToken:out_token];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1C68A0014;
  v15[3] = &unk_1E827F620;
  objc_copyWeak(&v16, buf);
  v6 = MEMORY[0x1C6960190](v15);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C68A0118;
  v12[3] = &unk_1E827F648;
  objc_copyWeak(&v14, buf);
  v9 = v6;
  v13 = v9;
  v10 = [defaultCenter addObserverForName:@"com.apple.managedconfiguration.effectivesettingschanged" object:0 queue:mainQueue usingBlock:v12];
  [(PKDiscoveryDriver *)self setMcNotificationToken:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x1E69E9840];
}

- (PKDiscoveryDriver)initWithAttributes:(id)attributes flags:(unint64_t)flags host:(id)host report:(id)report
{
  attributesCopy = attributes;
  hostCopy = host;
  reportCopy = report;
  v13 = _os_activity_create(&dword_1C6892000, "continuous-discovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1C68936A4;
  v33 = sub_1C6894554;
  v34 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C689EF28;
  block[3] = &unk_1E827F4B8;
  selfCopy = self;
  v23 = attributesCopy;
  v27 = &v29;
  flagsCopy = flags;
  v24 = v13;
  v25 = hostCopy;
  v26 = reportCopy;
  v14 = hostCopy;
  v15 = v13;
  v16 = reportCopy;
  v17 = attributesCopy;
  selfCopy2 = self;
  os_activity_apply(v15, block);
  v19 = v30[5];

  _Block_object_dispose(&v29, 8);
  return v19;
}

- (void)dealloc
{
  relatedActivity = [(PKDiscoveryDriver *)self relatedActivity];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C689F150;
  block[3] = &unk_1E827F1C8;
  block[4] = self;
  os_activity_apply(relatedActivity, block);

  v4.receiver = self;
  v4.super_class = PKDiscoveryDriver;
  [(PKDiscoveryDriver *)&v4 dealloc];
}

- (void)performWithPreviousResults:(id)results forceNotify:(BOOL)notify
{
  resultsCopy = results;
  relatedActivity = [(PKDiscoveryDriver *)self relatedActivity];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C689F2B8;
  block[3] = &unk_1E827F530;
  block[4] = self;
  v10 = resultsCopy;
  notifyCopy = notify;
  v8 = resultsCopy;
  os_activity_apply(relatedActivity, block);
}

- (void)_performWithPreviousResults:(id)results forceNotify:(BOOL)notify uninstalledProxies:(id)proxies
{
  resultsCopy = results;
  proxiesCopy = proxies;
  report = [(PKDiscoveryDriver *)self report];

  if (report)
  {
    relatedActivity = [(PKDiscoveryDriver *)self relatedActivity];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1C689F8C8;
    v12[3] = &unk_1E827F5A8;
    v13 = proxiesCopy;
    notifyCopy = notify;
    v14 = resultsCopy;
    selfCopy = self;
    os_activity_apply(relatedActivity, v12);
  }
}

- (void)cancel
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> explicit cancellation for discovery", buf, 0xCu);
  }

  report = [(PKDiscoveryDriver *)self report];
  v5 = dispatch_get_current_queue();
  sync = [(PKDiscoveryDriver *)self sync];

  if (v5 == sync)
  {
    [(PKDiscoveryDriver *)self removeWatchers];
  }

  else
  {
    sync2 = [(PKDiscoveryDriver *)self sync];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1C689FE6C;
    block[3] = &unk_1E827F1C8;
    block[4] = self;
    dispatch_sync(sync2, block);
  }

  queue = [(PKDiscoveryDriver *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1C689FE74;
  v11[3] = &unk_1E827F5D0;
  v11[4] = self;
  v12 = report;
  v9 = report;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeWatchers
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> removing watchers for continous discovery", &v8, 0xCu);
  }

  if ([(PKDiscoveryDriver *)self annotationNotifyToken])
  {
    lsWatcher = [(PKDiscoveryDriver *)self lsWatcher];
    [lsWatcher stopUpdates];

    sub_1C68A4694([(PKDiscoveryDriver *)self annotationNotifyToken]);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mcNotificationToken = [(PKDiscoveryDriver *)self mcNotificationToken];
    [defaultCenter removeObserver:mcNotificationToken];

    [(PKDiscoveryDriver *)self setAnnotationNotifyToken:0];
    [(PKDiscoveryDriver *)self setReport:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end