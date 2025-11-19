@interface TIKeyboardInputManagerServer
+ (id)sharedKeyboardInputManagerServer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (TIKeyboardInputManagerServer)init;
- (void)appleKeyboardsSettingsChanged:(id)a3;
- (void)checkAndFlushDynamicCaches;
- (void)dealloc;
- (void)handleMemoryPressureLevel:(unint64_t)a3 excessMemoryInBytes:(unint64_t)a4;
- (void)keyboardActivityDidTransition:(id)a3;
- (void)prepareForActivity;
- (void)prepareForInactivity;
@end

@implementation TIKeyboardInputManagerServer

- (void)prepareForActivity
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[TIKeyboardInputManagerServer prepareForActivity]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  Preparing keyboard for activity", &v3, 0xCu);
  }

  +[TILanguageModelLoaderManager wireAllLanguageModelMemory];
  v2 = +[TIKeyboardInputManagerLoader sharedLoader];
  [v2 prepareForKeyboardActivity];
}

+ (id)sharedKeyboardInputManagerServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000067F4;
  block[3] = &unk_10001C810;
  block[4] = a1;
  if (qword_1000265A8 != -1)
  {
    dispatch_once(&qword_1000265A8, block);
  }

  v2 = qword_1000265A0;

  return v2;
}

- (void)dealloc
{
  v3 = +[TIKeyboardActivityController sharedController];
  [v3 removeActivityObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerServer;
  [(TIKeyboardInputManagerServer *)&v5 dealloc];
}

- (TIKeyboardInputManagerServer)init
{
  v12.receiver = self;
  v12.super_class = TIKeyboardInputManagerServer;
  v2 = [(TIKeyboardInputManagerServer *)&v12 init];
  if (v2)
  {
    v3 = +[NSDate date];
    lastFlush = v2->_lastFlush;
    v2->_lastFlush = v3;

    v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.TextInput"];
    listener = v2->_listener;
    v2->_listener = v5;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener _setQueue:&_dispatch_main_q];
    [(NSXPCListener *)v2->_listener resume];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"appleKeyboardsSettingsChanged:" name:@"AppleKeyboardsContinuousPathSettingsChangedNotification" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"appleKeyboardsSettingsChanged:" name:TIAppleKeyboardsPreferencesChangedNotification_Private object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"appleKeyboardsSettingsChanged:" name:@"AppleKeyboardsInternalSettingsChangedNotification" object:0];

    v10 = +[TIKeyboardActivityController sharedController];
    [v10 addActivityObserver:v2];
  }

  return v2;
}

- (void)appleKeyboardsSettingsChanged:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[TIKeyboardInputManagerServer appleKeyboardsSettingsChanged:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  Keyboard settings changed. Releasing input managers.", &v4, 0xCu);
  }

  v3 = +[TIKeyboardInputManagerLoader sharedLoader];
  [v3 releaseAllInputManagers];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[TIKeyboardInputManagerServer listener:shouldAcceptNewConnection:]";
    v17 = 1024;
    v18 = [v4 processIdentifier];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  Establishing connection with PID %d", buf, 0x12u);
  }

  v5 = objc_opt_new();
  v6 = [TIKBDClientProxy KBDClientProxyWithConnection:v4];
  [v5 setClientProxy:v6];

  [v4 setExportedObject:v5];
  v7 = +[TIKeyboardInputManagerStub serverInterface];
  [v4 setExportedInterface:v7];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006E18;
  v13[3] = &unk_10001CA40;
  v14 = v4;
  v8 = v4;
  [v8 setInvalidationHandler:v13];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TIKeyboardInputManagerToImplProtocol];
  [v8 setRemoteObjectInterface:v9];

  v10 = +[TIKeyboardInputManagerLoader sharedLoader];
  [v10 startSyncHelper];

  v11 = +[TIKeyboardInputManagerLoader sharedLoader];
  [v11 setInteractingConnection:v8];

  [v8 _setQueue:&_dispatch_main_q];
  [v8 resume];

  return 1;
}

- (void)keyboardActivityDidTransition:(id)a3
{
  v4 = a3;
  if ([v4 toState] == 3)
  {
    [(TIKeyboardInputManagerServer *)self prepareForInactivity];
  }

  else if ([v4 fromState] == 3)
  {
    [(TIKeyboardInputManagerServer *)self prepareForActivity];
  }
}

- (void)handleMemoryPressureLevel:(unint64_t)a3 excessMemoryInBytes:(unint64_t)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[TIKeyboardInputManagerServer handleMemoryPressureLevel:excessMemoryInBytes:]";
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  Received memory pressure level %ld", &v7, 0x16u);
  }

  if (a3 - 1 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(TIKeyboardInputManagerServer *)self reduceCacheToSize:dword_1000128E0[a3 - 1]];
  }

  [TILanguageModelLoaderManager flushDynamicResourcesForInputModes:v6];
}

- (void)prepareForInactivity
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TIKeyboardInputManagerServer prepareForInactivity]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  Preparing keyboard for inactivity", &v5, 0xCu);
  }

  v3 = [(TIKeyboardInputManagerServer *)self reduceCacheToSize:2];
  v4 = +[TIKeyboardInputManagerLoader sharedLoader];
  [v4 prepareForKeyboardInactivity];
  [(TIKeyboardInputManagerServer *)self checkAndFlushDynamicCaches];
}

- (void)checkAndFlushDynamicCaches
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:self->_lastFlush];
  v5 = v4;

  v6 = +[TIPreferencesController sharedPreferencesController];
  v7 = [v6 valueForPreferenceKey:TIKeyboardFlushDynamicCachePeriodPreference];

  v8 = 10800.0;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      v8 = v9;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[TIKeyboardInputManagerServer checkAndFlushDynamicCaches]";
    v14 = 2048;
    v15 = v5;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  Preparing keyboard for inactivity, last flush at %lf, flush period: %lf", &v12, 0x20u);
  }

  if (v5 > v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[TIKeyboardInputManagerServer checkAndFlushDynamicCaches]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  Flushing the dynamic resources on inactivity", &v12, 0xCu);
    }

    +[TILanguageModelLoaderManager flushDynamicLearningCaches];
    v10 = +[NSDate date];
    lastFlush = self->_lastFlush;
    self->_lastFlush = v10;
  }
}

@end