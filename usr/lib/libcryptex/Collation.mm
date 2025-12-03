@interface Collation
- (Collation)init;
- (__CFDictionary)package;
- (id)getValidPaths:(id)paths forLabels:(id)labels;
- (id)initForUser:(unsigned int)user;
- (id)mountPointOfBundleID:(id)d;
- (void)package;
@end

@implementation Collation

- (Collation)init
{
  v3 = getuid();

  return [(Collation *)self initForUser:v3];
}

- (id)initForUser:(unsigned int)user
{
  v26.receiver = self;
  v26.super_class = Collation;
  v3 = [(Collation *)&v26 init];
  if (!v3)
  {
LABEL_6:
    v22 = v3;
    goto LABEL_10;
  }

  v4 = os_log_create("com.apple.libcryptex", "collations");
  [(Collation *)v3 setLog:v4];

  v5 = dispatch_queue_create("com.apple.security.libcryptex.collations", 0);
  [(Collation *)v3 setDq:v5];

  v6 = collation_interface_request_endpoint_for_user();
  [(Collation *)v3 setEndpoint:v6];

  endpoint = [(Collation *)v3 endpoint];

  if (endpoint)
  {
    endpoint2 = [(Collation *)v3 endpoint];
    v9 = xpc_connection_create_from_endpoint(endpoint2);
    [(Collation *)v3 setClient_con:v9];

    client_con = [(Collation *)v3 client_con];
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 3221225472;
    handler[2] = __25__Collation_initForUser___block_invoke;
    handler[3] = &unk_29EEA7910;
    v11 = v3;
    v25 = v11;
    xpc_connection_set_event_handler(client_con, handler);

    client_con2 = [(Collation *)v11 client_con];
    v13 = [(Collation *)v11 dq];
    xpc_connection_set_target_queue(client_con2, v13);

    client_con3 = [(Collation *)v11 client_con];
    xpc_connection_activate(client_con3);

    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_string(empty, "command", "package");
    client_con4 = [(Collation *)v11 client_con];
    v17 = xpc_connection_send_message_with_reply_sync(client_con4, empty);

    if (v17)
    {
      v18 = xpc_dictionary_get_value(v17, "package");
      v19 = objc_alloc(MEMORY[0x29EDC9618]);
      v20 = [(Collation *)v11 dq];
      v21 = [v19 initWithXPC:v18 queue:v20];
      [(Collation *)v11 setCcore:v21];
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    [Collation initForUser:];
  }

  v22 = 0;
LABEL_10:

  return v22;
}

void __25__Collation_initForUser___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = MEMORY[0x29C28F4F0]();
  if (v4 == MEMORY[0x29EDCAA00])
  {
    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_2986C0000, v5, OS_LOG_TYPE_DEFAULT, "Received message %@", &v7, 0xCu);
    }
  }

  else if (v4 == MEMORY[0x29EDCAA18])
  {
    xpc_dictionary_get_string(v3, *MEMORY[0x29EDCA9C8]);
    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __25__Collation_initForUser___block_invoke_cold_2();
    }
  }

  else
  {
    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __25__Collation_initForUser___block_invoke_cold_1();
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (__CFDictionary)package
{
  v9 = *MEMORY[0x29EDCA608];
  ccore = [(Collation *)self ccore];
  packToXPC = [ccore packToXPC];
  v4 = _CFXPCCreateCFObjectFromXPCObject();

  if (!v4)
  {
    [(Collation *)&v7 package];
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

- (id)mountPointOfBundleID:(id)d
{
  dCopy = d;
  ccore = [(Collation *)self ccore];
  v6 = [ccore mountPointOfBundleID:dCopy];

  return v6;
}

- (id)getValidPaths:(id)paths forLabels:(id)labels
{
  labelsCopy = labels;
  pathsCopy = paths;
  ccore = [(Collation *)self ccore];
  v9 = [ccore getValidPaths:pathsCopy forBundleID:labelsCopy];

  return v9;
}

- (void)initForUser:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void __25__Collation_initForUser___block_invoke_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)package
{
  *self = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *self;
  _os_crash_msg();
  __break(1u);
}

@end