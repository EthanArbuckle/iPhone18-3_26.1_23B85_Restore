@interface CSIndexAgent
+ (id)indexAgent:(BOOL)a3 serviceName:(id)a4;
+ (id)indexDelegateAgent:(id)a3;
- (BOOL)addClientConnectionIfAllowedForConfiguration:(id)a3;
- (BOOL)addClientConnectionIfAllowedForConnection:(id)a3;
- (BOOL)handleCommand:(const char *)a3 info:(id)a4 connection:(id)a5;
- (BOOL)lostClientConnection:(id)a3 error:(id)a4;
- (id)indexConnection:(id)a3;
@end

@implementation CSIndexAgent

+ (id)indexAgent:(BOOL)a3 serviceName:(id)a4
{
  v5 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__CSIndexAgent_indexAgent_serviceName___block_invoke;
  v11[3] = &unk_278934400;
  v13 = a3;
  v12 = v5;
  v6 = indexAgent_serviceName__onceToken;
  v7 = v5;
  if (v6 != -1)
  {
    dispatch_once(&indexAgent_serviceName__onceToken, v11);
  }

  v8 = sIndexAgent;
  v9 = sIndexAgent;

  return v8;
}

void __39__CSIndexAgent_indexAgent_serviceName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [CSIndexAgent alloc];
  if (*(a1 + 32))
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = @"com.apple.spotlight.IndexAgent";
  }

  if (v2 == 1)
  {
    v5 = [(CSXPCConnection *)v3 initWithServiceName:v4];
  }

  else
  {
    v5 = [(CSXPCConnection *)v3 initMachServiceListenerWithName:v4];
  }

  v6 = sIndexAgent;
  sIndexAgent = v5;

  v7 = objc_opt_new();
  [sIndexAgent setIndexConnections:v7];
}

+ (id)indexDelegateAgent:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CSIndexAgent_indexDelegateAgent___block_invoke;
  block[3] = &unk_278934050;
  v10 = v3;
  v4 = indexDelegateAgent__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&indexDelegateAgent__onceToken, block);
  }

  v6 = sIndexDelegateAgent;
  v7 = sIndexDelegateAgent;

  return v6;
}

void __35__CSIndexAgent_indexDelegateAgent___block_invoke(uint64_t a1)
{
  v2 = [CSIndexAgent alloc];
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = @"com.apple.spotlight.IndexDelegateAgent";
  }

  v4 = [(CSXPCConnection *)v2 initMachServiceListenerWithName:v3];
  v5 = sIndexDelegateAgent;
  sIndexDelegateAgent = v4;

  [sIndexDelegateAgent setNonLaunching:1];
  v6 = objc_opt_new();
  [sIndexDelegateAgent setIndexConnections:v6];
}

- (BOOL)addClientConnectionIfAllowedForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[CSIndexClientConnection alloc] initWithConfiguration:v4 indexer:self->_indexer];
  v6 = [(CSIndexClientConnection *)v5 configuration];
  v7 = [v6 bundleID];
  if (v7)
  {

LABEL_4:
    v10 = [v4 connection];
    v11 = [CSIndexClientConnectionKey keyWithConnection:v10];

    [(NSMutableDictionary *)self->_indexConnections setObject:v5 forKeyedSubscript:v11];
    v12 = 1;
    goto LABEL_5;
  }

  v8 = [(CSIndexClientConnection *)v5 configuration];
  v9 = [v8 internal];

  if (v9)
  {
    goto LABEL_4;
  }

  v14 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [CSIndexAgent addClientConnectionIfAllowedForConfiguration:v4];
  }

  v12 = 0;
LABEL_5:

  return v12;
}

- (BOOL)addClientConnectionIfAllowedForConnection:(id)a3
{
  v4 = a3;
  v5 = [[SDConnectionConfiguration alloc] initWithConnection:v4 isPrivate:0];

  LOBYTE(self) = [(CSIndexAgent *)self addClientConnectionIfAllowedForConfiguration:v5];
  return self;
}

- (BOOL)lostClientConnection:(id)a3 error:(id)a4
{
  v5 = [CSIndexClientConnectionKey keyWithConnection:a3, a4];
  [(NSMutableDictionary *)self->_indexConnections setObject:0 forKeyedSubscript:v5];

  return 0;
}

- (id)indexConnection:(id)a3
{
  v4 = [CSIndexClientConnectionKey keyWithConnection:a3];
  v5 = [(NSMutableDictionary *)self->_indexConnections objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)handleCommand:(const char *)a3 info:(id)a4 connection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CSIndexAgent handleCommand:a3 info:v9 connection:v10];
  }

  v11 = [(CSIndexAgent *)self indexConnection:v9];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 service];
    v14 = [v13 handleCommand:a3 info:v8];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)addClientConnectionIfAllowedForConfiguration:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 connection];
  OUTLINED_FUNCTION_0_3(&dword_231A35000, v2, v3, "Could not resolve bundle id for %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:(uint64_t)a1 info:(xpc_connection_t)connection connection:(NSObject *)a3 .cold.1(uint64_t a1, xpc_connection_t connection, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  pid = xpc_connection_get_pid(connection);
  _os_log_debug_impl(&dword_231A35000, a3, OS_LOG_TYPE_DEBUG, "request %s from pid: %d", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

@end