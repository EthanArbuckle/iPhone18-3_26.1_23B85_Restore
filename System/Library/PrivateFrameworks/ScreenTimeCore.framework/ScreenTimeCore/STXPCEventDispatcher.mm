@interface STXPCEventDispatcher
+ (id)alarmEventDispatcher;
+ (id)distnotedEventDispatcher;
+ (id)notifydEventDispatcher;
+ (void)installEventHandlers;
- (STXPCEventDispatcher)initWithStream:(id)a3;
- (id)registerObserverWithIdentifier:(id)a3;
- (void)_handleEventStream:(id)a3;
@end

@implementation STXPCEventDispatcher

+ (void)installEventHandlers
{
  v3 = [a1 notifydEventDispatcher];
  v4 = [a1 alarmEventDispatcher];
  v5 = [a1 distnotedEventDispatcher];
}

+ (id)notifydEventDispatcher
{
  if (qword_1001E3918 != -1)
  {
    sub_10011A190();
  }

  v3 = qword_1001E3910;

  return v3;
}

+ (id)alarmEventDispatcher
{
  if (qword_1001E3928 != -1)
  {
    sub_10011A1A4();
  }

  v3 = qword_1001E3920;

  return v3;
}

+ (id)distnotedEventDispatcher
{
  if (qword_1001E3938 != -1)
  {
    sub_10011A1B8();
  }

  v3 = qword_1001E3930;

  return v3;
}

- (STXPCEventDispatcher)initWithStream:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = STXPCEventDispatcher;
  v5 = [(STXPCEventDispatcher *)&v16 init];
  if (v5)
  {
    v6 = [v4 copy];
    stream = v5->_stream;
    v5->_stream = v6;

    v8 = objc_opt_new();
    eventObserversByIdentifier = v5->_eventObserversByIdentifier;
    v5->_eventObserversByIdentifier = v8;

    objc_initWeak(&location, v5);
    v10 = [v4 UTF8String];
    v11 = &_dispatch_main_q;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000582F8;
    v13[3] = &unk_1001A4990;
    objc_copyWeak(&v14, &location);
    xpc_set_event_stream_handler(v10, &_dispatch_main_q, v13);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_handleEventStream:(id)a3
{
  v4 = a3;
  string = xpc_dictionary_get_string(v4, _xpc_event_key_name);
  v6 = +[STLog daemon];
  v7 = v6;
  if (string)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10011A1CC(string, self);
    }

    v7 = [NSString stringWithUTF8String:string];
    v8 = self->_eventObserversByIdentifier;
    objc_sync_enter(v8);
    v9 = [(NSMutableDictionary *)self->_eventObserversByIdentifier objectForKeyedSubscript:v7];
    objc_sync_exit(v8);

    v10 = [v9 handler];
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, v4);
    }

    else
    {
      v12 = +[STLog daemon];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10011A264(string, self);
      }
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10011A2FC(self, v7);
  }
}

- (id)registerObserverWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_10011A398(a2, self);
  }

  v6 = [[STXPCEventObserver alloc] initWithIdentifier:v5 dispatcher:self];
  v7 = self->_eventObserversByIdentifier;
  objc_sync_enter(v7);
  eventObserversByIdentifier = self->_eventObserversByIdentifier;
  v9 = [(STXPCEventObserver *)v6 identifier];
  [(NSMutableDictionary *)eventObserversByIdentifier setObject:v6 forKeyedSubscript:v9];

  objc_sync_exit(v7);

  return v6;
}

@end