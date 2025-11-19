@interface PKDiscoveryDriver
- (PKDiscoveryDriver)initWithAttributes:(id)a3 flags:(unint64_t)a4 host:(id)a5 report:(id)a6;
- (void)_performWithPreviousResults:(id)a3 forceNotify:(BOOL)a4 uninstalledProxies:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)installWatchers;
- (void)performWithPreviousResults:(id)a3 forceNotify:(BOOL)a4;
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
    v21 = self;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> installing watchers for continuous discovery", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = [[PKDiscoveryLSWatcher alloc] initWithDriver:self];
  [(PKDiscoveryDriver *)self setLsWatcher:v4];

  out_token = 0;
  v5 = [(PKDiscoveryDriver *)self queue];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1C689FF10;
  handler[3] = &unk_1E827F5F8;
  objc_copyWeak(&v18, buf);
  sub_1C68939B0(&out_token, v5, handler);

  [(PKDiscoveryDriver *)self setAnnotationNotifyToken:out_token];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1C68A0014;
  v15[3] = &unk_1E827F620;
  objc_copyWeak(&v16, buf);
  v6 = MEMORY[0x1C6960190](v15);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = [MEMORY[0x1E696ADC8] mainQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C68A0118;
  v12[3] = &unk_1E827F648;
  objc_copyWeak(&v14, buf);
  v9 = v6;
  v13 = v9;
  v10 = [v7 addObserverForName:@"com.apple.managedconfiguration.effectivesettingschanged" object:0 queue:v8 usingBlock:v12];
  [(PKDiscoveryDriver *)self setMcNotificationToken:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x1E69E9840];
}

- (PKDiscoveryDriver)initWithAttributes:(id)a3 flags:(unint64_t)a4 host:(id)a5 report:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
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
  v22 = self;
  v23 = v10;
  v27 = &v29;
  v28 = a4;
  v24 = v13;
  v25 = v11;
  v26 = v12;
  v14 = v11;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = self;
  os_activity_apply(v15, block);
  v19 = v30[5];

  _Block_object_dispose(&v29, 8);
  return v19;
}

- (void)dealloc
{
  v3 = [(PKDiscoveryDriver *)self relatedActivity];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C689F150;
  block[3] = &unk_1E827F1C8;
  block[4] = self;
  os_activity_apply(v3, block);

  v4.receiver = self;
  v4.super_class = PKDiscoveryDriver;
  [(PKDiscoveryDriver *)&v4 dealloc];
}

- (void)performWithPreviousResults:(id)a3 forceNotify:(BOOL)a4
{
  v6 = a3;
  v7 = [(PKDiscoveryDriver *)self relatedActivity];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C689F2B8;
  block[3] = &unk_1E827F530;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  os_activity_apply(v7, block);
}

- (void)_performWithPreviousResults:(id)a3 forceNotify:(BOOL)a4 uninstalledProxies:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PKDiscoveryDriver *)self report];

  if (v10)
  {
    v11 = [(PKDiscoveryDriver *)self relatedActivity];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1C689F8C8;
    v12[3] = &unk_1E827F5A8;
    v13 = v9;
    v16 = a4;
    v14 = v8;
    v15 = self;
    os_activity_apply(v11, v12);
  }
}

- (void)cancel
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = self;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> explicit cancellation for discovery", buf, 0xCu);
  }

  v4 = [(PKDiscoveryDriver *)self report];
  v5 = dispatch_get_current_queue();
  v6 = [(PKDiscoveryDriver *)self sync];

  if (v5 == v6)
  {
    [(PKDiscoveryDriver *)self removeWatchers];
  }

  else
  {
    v7 = [(PKDiscoveryDriver *)self sync];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1C689FE6C;
    block[3] = &unk_1E827F1C8;
    block[4] = self;
    dispatch_sync(v7, block);
  }

  v8 = [(PKDiscoveryDriver *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1C689FE74;
  v11[3] = &unk_1E827F5D0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeWatchers
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = self;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> removing watchers for continous discovery", &v8, 0xCu);
  }

  if ([(PKDiscoveryDriver *)self annotationNotifyToken])
  {
    v4 = [(PKDiscoveryDriver *)self lsWatcher];
    [v4 stopUpdates];

    sub_1C68A4694([(PKDiscoveryDriver *)self annotationNotifyToken]);
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = [(PKDiscoveryDriver *)self mcNotificationToken];
    [v5 removeObserver:v6];

    [(PKDiscoveryDriver *)self setAnnotationNotifyToken:0];
    [(PKDiscoveryDriver *)self setReport:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end