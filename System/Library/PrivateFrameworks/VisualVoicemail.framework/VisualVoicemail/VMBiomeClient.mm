@interface VMBiomeClient
- (VMBiomeClient)init;
- (void)dealloc;
- (void)donateToLanguageConsumptionBiomeStream:(id)a3 confidence:(id)a4 duration:(double)a5;
@end

@implementation VMBiomeClient

- (VMBiomeClient)init
{
  v3 = sub_10003DD84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v17 = "";
    v18 = 2080;
    v19 = "";
    v20 = 2112;
    v21 = objc_opt_class();
    v22 = 2048;
    v23 = self;
    v4 = v21;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p Creating", buf, 0x2Au);
  }

  v15.receiver = self;
  v15.super_class = VMBiomeClient;
  v5 = [(VMBiomeClient *)&v15 init];
  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 bundleIdentifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [NSString stringWithFormat:@"%@.%@", v7, v9];
    v11 = v10;
    v12 = dispatch_queue_create([v10 UTF8String], 0);
    queue = v5->queue;
    v5->queue = v12;
  }

  return v5;
}

- (void)dealloc
{
  v3 = sub_10003DD84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v7 = "";
    v8 = 2080;
    v9 = "";
    v10 = 2112;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = self;
    v4 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p Deleting", buf, 0x2Au);
  }

  v5.receiver = self;
  v5.super_class = VMBiomeClient;
  [(VMBiomeClient *)&v5 dealloc];
}

- (void)donateToLanguageConsumptionBiomeStream:(id)a3 confidence:(id)a4 duration:(double)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DFE4;
  block[3] = &unk_1000EE520;
  v16 = a5;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);
}

@end