@interface _DiagnosticsHandler
+ (id)tmpDir;
- (_DiagnosticsHandler)initWithSubsystem:(const char *)subsystem category:(const char *)category provider:(id)provider;
- (os_state_data_s)handler:(os_state_hints_s *)handler;
- (void)dealloc;
@end

@implementation _DiagnosticsHandler

- (os_state_data_s)handler:(os_state_hints_s *)handler
{
  if (handler->var2 != 3)
  {
    return 0;
  }

  v4 = (*(self->_provider + 2))();
  v5 = [v4 length];
  v6 = 0;
  if (v4)
  {
    v7 = v5;
    if (v5 <= 0x8000)
    {
      v6 = malloc_type_calloc(v5 + 200, 1uLL, 0x9C6C822CuLL);
      v6->var0 = 1;
      v6->var1.var1 = v7;
      title = self->_title;
      __strlcpy_chk();
      memcpy(v6->var4, [v4 bytes], v7);
    }
  }

  return v6;
}

- (void)dealloc
{
  handle = self->_handle;
  os_state_remove_handler();
  dispatch_source_cancel(self->_signal);
  free(self->_title);
  v4.receiver = self;
  v4.super_class = _DiagnosticsHandler;
  [(_DiagnosticsHandler *)&v4 dealloc];
}

- (_DiagnosticsHandler)initWithSubsystem:(const char *)subsystem category:(const char *)category provider:(id)provider
{
  providerCopy = provider;
  v29.receiver = self;
  v29.super_class = _DiagnosticsHandler;
  v9 = [(_DiagnosticsHandler *)&v29 init];
  asprintf(&v9->_path, "%s-%s", subsystem, category);
  asprintf(&v9->_title, "%s:%s", subsystem, category);
  v10 = [providerCopy copy];
  provider = v9->_provider;
  v9->_provider = v10;

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100071B60;
  v27 = &unk_1000916C8;
  v12 = v9;
  v28 = v12;
  v12->_handle = os_state_add_handler();
  ::signal(30, 1);
  v13 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, &_dispatch_main_q);
  signal = v12->_signal;
  v12->_signal = v13;

  v15 = v12->_signal;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100071B6C;
  handler[3] = &unk_1000916F0;
  v23 = providerCopy;
  v16 = v12;
  v22 = v16;
  v17 = providerCopy;
  dispatch_source_set_event_handler(v15, handler);
  dispatch_activate(v12->_signal);
  v18 = v22;
  v19 = v16;

  return v19;
}

+ (id)tmpDir
{
  v8 = 0;
  if (qword_1000A1AC0)
  {
    v2 = +[NSFileManager defaultManager];
    if ([v2 fileExistsAtPath:qword_1000A1AC0 isDirectory:&v8])
    {
      v3 = v8;

      if (v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v4 = _dirhelper();
  if (v4)
  {
    v4 = [NSString stringWithUTF8String:v9];
  }

  v5 = qword_1000A1AC0;
  qword_1000A1AC0 = v4;

LABEL_9:
  v6 = [NSURL fileURLWithPath:qword_1000A1AC0 isDirectory:1 relativeToURL:0];

  return v6;
}

@end