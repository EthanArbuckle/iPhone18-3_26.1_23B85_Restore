@interface STXPCEventDispatcher
+ (id)alarmEventDispatcher;
+ (id)distnotedEventDispatcher;
+ (id)notifydEventDispatcher;
+ (void)installEventHandlers;
- (STXPCEventDispatcher)initWithStream:(id)stream;
- (id)registerObserverWithIdentifier:(id)identifier;
- (void)_handleEventStream:(id)stream;
@end

@implementation STXPCEventDispatcher

+ (void)installEventHandlers
{
  notifydEventDispatcher = [self notifydEventDispatcher];
  alarmEventDispatcher = [self alarmEventDispatcher];
  distnotedEventDispatcher = [self distnotedEventDispatcher];
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

- (STXPCEventDispatcher)initWithStream:(id)stream
{
  streamCopy = stream;
  v16.receiver = self;
  v16.super_class = STXPCEventDispatcher;
  v5 = [(STXPCEventDispatcher *)&v16 init];
  if (v5)
  {
    v6 = [streamCopy copy];
    stream = v5->_stream;
    v5->_stream = v6;

    v8 = objc_opt_new();
    eventObserversByIdentifier = v5->_eventObserversByIdentifier;
    v5->_eventObserversByIdentifier = v8;

    objc_initWeak(&location, v5);
    uTF8String = [streamCopy UTF8String];
    v11 = &_dispatch_main_q;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000582F8;
    v13[3] = &unk_1001A4990;
    objc_copyWeak(&v14, &location);
    xpc_set_event_stream_handler(uTF8String, &_dispatch_main_q, v13);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_handleEventStream:(id)stream
{
  streamCopy = stream;
  string = xpc_dictionary_get_string(streamCopy, _xpc_event_key_name);
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

    handler = [v9 handler];
    v11 = handler;
    if (handler)
    {
      (*(handler + 16))(handler, streamCopy);
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

- (id)registerObserverWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    sub_10011A398(a2, self);
  }

  v6 = [[STXPCEventObserver alloc] initWithIdentifier:identifierCopy dispatcher:self];
  v7 = self->_eventObserversByIdentifier;
  objc_sync_enter(v7);
  eventObserversByIdentifier = self->_eventObserversByIdentifier;
  identifier = [(STXPCEventObserver *)v6 identifier];
  [(NSMutableDictionary *)eventObserversByIdentifier setObject:v6 forKeyedSubscript:identifier];

  objc_sync_exit(v7);

  return v6;
}

@end