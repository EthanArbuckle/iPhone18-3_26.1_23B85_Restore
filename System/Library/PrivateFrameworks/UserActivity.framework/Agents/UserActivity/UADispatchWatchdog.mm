@interface UADispatchWatchdog
- (UADispatchWatchdog)initWithName:(id)name timeout:(double)timeout block:(id)block;
- (void)_triggerWatchdog;
- (void)cancel;
- (void)dealloc;
- (void)poke;
- (void)start;
@end

@implementation UADispatchWatchdog

- (UADispatchWatchdog)initWithName:(id)name timeout:(double)timeout block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = UADispatchWatchdog;
  v10 = [(UADispatchWatchdog *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(UADispatchWatchdog *)v10 setName:nameCopy];
    [(UADispatchWatchdog *)v11 setTimeout:timeout];
    [(UADispatchWatchdog *)v11 setHandler:blockCopy];
    [(UADispatchWatchdog *)v11 setHasFired:0];
  }

  return v11;
}

- (void)dealloc
{
  source = [(UADispatchWatchdog *)self source];
  v4 = source;
  if (source)
  {
    dispatch_source_cancel(source);
  }

  v5.receiver = self;
  v5.super_class = UADispatchWatchdog;
  [(UADispatchWatchdog *)&v5 dealloc];
}

- (void)start
{
  source = [(UADispatchWatchdog *)self source];

  if (source)
  {
    source2 = [(UADispatchWatchdog *)self source];
    dispatch_source_cancel(source2);
  }

  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    name = [(UADispatchWatchdog *)self name];
    [(UADispatchWatchdog *)self timeout];
    *buf = 138412546;
    v13 = name;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Starting watchdog: %@ - %fs", buf, 0x16u);
  }

  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
  dispatch_set_qos_class_floor(v8, QOS_CLASS_USER_INTERACTIVE, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001D8B8;
  handler[3] = &unk_1000C4CC0;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  [(UADispatchWatchdog *)self timeout];
  v10 = dispatch_walltime(0, (v9 * 1000000000.0));
  dispatch_source_set_timer(v8, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_activate(v8);
  [(UADispatchWatchdog *)self setSource:v8];
}

- (void)poke
{
  source = [(UADispatchWatchdog *)self source];
  if (![(UADispatchWatchdog *)self hasFired]&& source)
  {
    [(UADispatchWatchdog *)self timeout];
    v4 = dispatch_walltime(0, (v3 * 1000000000.0));
    dispatch_source_set_timer(source, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

- (void)cancel
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = [(UADispatchWatchdog *)self name];
    v7 = 138412290;
    v8 = name;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Canceling watchdog: %@", &v7, 0xCu);
  }

  source = [(UADispatchWatchdog *)self source];
  v6 = source;
  if (source)
  {
    dispatch_source_cancel(source);
  }
}

- (void)_triggerWatchdog
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = [(UADispatchWatchdog *)self name];
    [(UADispatchWatchdog *)self timeout];
    v6 = v5;
    v7 = [NSNumber numberWithBool:[(UADispatchWatchdog *)self hasFired]];
    v9 = 138412802;
    v10 = name;
    v11 = 2048;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Triggering watchdog: %@ - %fs - %@", &v9, 0x20u);
  }

  if (![(UADispatchWatchdog *)self hasFired])
  {
    [(UADispatchWatchdog *)self setHasFired:1];
    handler = [(UADispatchWatchdog *)self handler];
    handler[2]();
  }
}

@end