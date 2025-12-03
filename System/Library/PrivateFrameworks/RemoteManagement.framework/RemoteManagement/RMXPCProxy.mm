@interface RMXPCProxy
+ (id)newAgentConnection;
+ (id)newConnectionWithListenerEndpoint:(id)endpoint;
+ (id)newConnectionWithScope:(int64_t)scope;
+ (id)newDaemonConnection;
+ (id)newInterface;
@end

@implementation RMXPCProxy

+ (id)newConnectionWithScope:(int64_t)scope
{
  if (scope == 1)
  {
    return +[RMXPCProxy newDaemonConnection];
  }

  else
  {
    return +[RMXPCProxy newAgentConnection];
  }
}

+ (id)newAgentConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.RemoteManagementAgent" options:0];
  newInterface = [self newInterface];
  [v3 setRemoteObjectInterface:newInterface];

  return v3;
}

+ (id)newDaemonConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.remotemanagementd" options:4096];
  newInterface = [self newInterface];
  [v3 setRemoteObjectInterface:newInterface];

  return v3;
}

+ (id)newConnectionWithListenerEndpoint:(id)endpoint
{
  v4 = MEMORY[0x1E696B0B8];
  endpointCopy = endpoint;
  v6 = [[v4 alloc] initWithListenerEndpoint:endpointCopy];

  newInterface = [self newInterface];
  [v6 setRemoteObjectInterface:newInterface];

  return v6;
}

+ (id)newInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5C17390];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v3 setWithObjects:{v4, v5, v6, v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_fetchConfigurationsWithTypes_completionHandler_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  [v2 setClasses:v15 forSelector:sel_queryForStatusAndErrorsWithKeyPaths_fromManagementSourceWithIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  return v2;
}

@end