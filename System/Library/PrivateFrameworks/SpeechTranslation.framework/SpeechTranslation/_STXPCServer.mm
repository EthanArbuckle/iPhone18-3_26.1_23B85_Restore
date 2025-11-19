@interface _STXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_STXPCServer)initWithError:(id *)a3;
- (_STXPCServer)initWithManagerProvider:(id)a3 xpcListener:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)makePeerWithConfiguration:(id)a3 inReply:(id)a4;
- (void)makePeerWithIdentifier:(id)a3 inReply:(id)a4;
@end

@implementation _STXPCServer

- (_STXPCServer)initWithError:(id *)a3
{
  v5 = objc_alloc_init(_STManagerProviderDefault);
  v6 = objc_alloc(MEMORY[0x277CCAE98]);
  v7 = +[_STXPCServerInterface machService];
  v8 = [v6 initWithMachServiceName:v7];
  v9 = [(_STXPCServer *)self initWithManagerProvider:v5 xpcListener:v8 error:a3];

  return v9;
}

- (_STXPCServer)initWithManagerProvider:(id)a3 xpcListener:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = _STXPCServer;
  v10 = [(_STXPCServer *)&v17 init];
  v11 = v10;
  if (v9 && v10)
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.speechtranslation.SpeechTranslationXPCServer.listenerQueue", v12);
    [v9 _setQueue:v13];
    [v9 setDelegate:v11];
    [(_STXPCServer *)v11 setManagerProvider:v8];
    [(_STXPCServer *)v11 setXpcListener:v9];
    [(_STXPCServer *)v11 setListenerQueue:v13];
    v14 = [(_STXPCServer *)v11 xpcListener];
    [v14 activate];

    v15 = v11;
  }

  else
  {
    [MEMORY[0x277CCA9B8] st_populateError:a5 forCode:10];
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  v3 = [(_STXPCServer *)self xpcListener];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = _STXPCServer;
  [(_STXPCServer *)&v4 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(_STXPCServer *)self listenerQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 valueForEntitlement:@"com.apple.private.speechtranslationclient"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = +[_STXPCServerInterface interface];
    [v5 setExportedInterface:v11];
    [v5 setExportedObject:self];
    [v5 activate];
    v12 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v5;
      _os_log_impl(&dword_26B5BC000, v12, OS_LOG_TYPE_DEFAULT, "Accepting new connection: %{public}@", &v16, 0xCu);
    }
  }

  else
  {
    v13 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_STXPCServer listener:v5 shouldAcceptNewConnection:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)makePeerWithConfiguration:(id)a3 inReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(_STXPCServer *)self managerProvider];
  v8 = [v9 speechTranslatorManager];
  [v8 makePeerWithConfiguration:v7 inReply:v6];
}

- (void)makePeerWithIdentifier:(id)a3 inReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(_STXPCServer *)self managerProvider];
  v8 = [v9 speechTranslatorManager];
  [v8 makePeerWithIdentifier:v7 inReply:v6];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "Denying connection: %{public}@ due to insufficient privilege", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end