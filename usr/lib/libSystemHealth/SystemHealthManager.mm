@interface SystemHealthManager
- (BOOL)isSupportedIPad;
- (BOOL)shouldFilterComponent:(unint64_t)component;
- (SystemHealthManager)init;
- (void)postComponentStatusEventFor:(unint64_t)for status:(unint64_t)status withReply:(id)reply;
@end

@implementation SystemHealthManager

- (SystemHealthManager)init
{
  v8.receiver = self;
  v8.super_class = SystemHealthManager;
  v2 = [(SystemHealthManager *)&v8 init];
  if (v2)
  {
    v3 = MGCopyAnswer();
    v2->deviceClass = [v3 intValue];

    v4 = [objc_alloc(MEMORY[0x29EDBA170]) initWithMachServiceName:@"com.apple.mobilerepaird" options:0];
    connectionToService = v2->_connectionToService;
    v2->_connectionToService = v4;

    v6 = [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A1EAF960];
    [(NSXPCConnection *)v2->_connectionToService setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connectionToService resume];
  }

  return v2;
}

- (BOOL)shouldFilterComponent:(unint64_t)component
{
  deviceClass = self->deviceClass;
  v4 = deviceClass != 1 || component == 12;
  return deviceClass != 3 && v4;
}

- (BOOL)isSupportedIPad
{
  v2 = MGCopyAnswer();
  v3 = [v2 intValue] == 3 && AMFDRSealingMapGetEntry() != 0;

  return v3;
}

- (void)postComponentStatusEventFor:(unint64_t)for status:(unint64_t)status withReply:(id)reply
{
  v21[1] = *MEMORY[0x29EDCA608];
  replyCopy = reply;
  if ([(SystemHealthManager *)self shouldFilterComponent:for])
  {
    v9 = MEMORY[0x29EDB9FA0];
    v20 = *MEMORY[0x29EDB9ED8];
    v21[0] = @"not supported in this mode or device";
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.corerepair" code:5 userInfo:v10];

    v12 = 0;
  }

  else
  {
    if (self->deviceClass == 3 && ![(SystemHealthManager *)self isSupportedIPad])
    {
      v13 = MEMORY[0x29EDB9FA0];
      v18 = *MEMORY[0x29EDB9ED8];
      v19 = @"not supported in this mode or device";
      v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v11 = [v13 errorWithDomain:@"com.apple.corerepair" code:5 userInfo:v14];

      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 1;
    }

    v15 = [(NSXPCConnection *)self->_connectionToService remoteObjectProxyWithErrorHandler:&__block_literal_global];
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __68__SystemHealthManager_postComponentStatusEventFor_status_withReply___block_invoke_23;
    v17[3] = &unk_29EE8D7E8;
    v17[4] = self;
    [v15 postComponentStatusEventFor:for status:status withReply:v17];
  }

  replyCopy[2](replyCopy, v12, v11);

  v16 = *MEMORY[0x29EDCA608];
}

void __68__SystemHealthManager_postComponentStatusEventFor_status_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__SystemHealthManager_postComponentStatusEventFor_status_withReply___block_invoke_cold_1(v2, v3);
  }
}

void __68__SystemHealthManager_postComponentStatusEventFor_status_withReply___block_invoke_23(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = handleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    LODWORD(v10) = a2;
    _os_log_impl(&dword_29822C000, v6, OS_LOG_TYPE_DEFAULT, "success %d", &v9, 8u);
  }

  v7 = handleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_29822C000, v7, OS_LOG_TYPE_DEFAULT, "error %@", &v9, 0xCu);
  }

  [*(*(a1 + 32) + 8) invalidate];
  v8 = *MEMORY[0x29EDCA608];
}

void __68__SystemHealthManager_postComponentStatusEventFor_status_withReply___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29822C000, a2, OS_LOG_TYPE_ERROR, "Error:%@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end