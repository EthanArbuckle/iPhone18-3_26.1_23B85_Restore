@interface PPSClientRegistrationHelper
- (BOOL)permissionsForSubsystem:(id)subsystem category:(id)category;
- (id)createXPCConnection;
@end

@implementation PPSClientRegistrationHelper

- (id)createXPCConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.PerfPowerTelemetryClientRegistrationService"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v3;

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38E9590];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v5];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_1];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_8];
  [(NSXPCConnection *)self->_connectionToServer resume];
  v6 = logHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_INFO, "Spinning up XPC service", v9, 2u);
  }

  v7 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_12];

  return v7;
}

void __50__PPSClientRegistrationHelper_createXPCConnection__block_invoke_6()
{
  v0 = logHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BACB7000, v0, OS_LOG_TYPE_INFO, "Client Permission check completed. Invalidating XPC Connection.", v1, 2u);
  }
}

void __50__PPSClientRegistrationHelper_createXPCConnection__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__PPSClientRegistrationHelper_createXPCConnection__block_invoke_9_cold_1(v2, v3);
  }
}

void __50__PPSClientRegistrationHelper_createXPCConnection__block_invoke_9_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1BACB7000, a2, OS_LOG_TYPE_ERROR, "Connection error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)permissionsForSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  if (os_variant_is_darwinos())
  {
    v8 = 0;
  }

  else
  {
    createXPCConnection = [(PPSClientRegistrationHelper *)self createXPCConnection];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PPSClientRegistrationHelper_permissionsForSubsystem_category___block_invoke;
    v11[3] = &unk_1E7F18AE8;
    v11[4] = &v12;
    [createXPCConnection checkPermissionForSubsystem:subsystemCopy category:categoryCopy withReply:v11];
    [(PPSClientRegistrationHelper *)self closeXPCConnection];
    v8 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v8 & 1;
}

void __50__PPSClientRegistrationHelper_createXPCConnection__block_invoke()
{
  v0 = logHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __50__PPSClientRegistrationHelper_createXPCConnection__block_invoke_cold_1(v0);
  }
}

@end