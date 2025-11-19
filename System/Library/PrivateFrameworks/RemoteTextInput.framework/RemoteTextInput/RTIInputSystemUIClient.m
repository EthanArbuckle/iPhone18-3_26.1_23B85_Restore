@interface RTIInputSystemUIClient
- (RTIInputSystemUIClient)initWithUIHostMachName:(id)a3;
- (RTIInputSystemUIClient)initWithUIHostMachName:(id)a3 serviceName:(id)a4;
- (void)_initializeConnectionWithMachName:(id)a3 serviceName:(id)a4;
@end

@implementation RTIInputSystemUIClient

- (RTIInputSystemUIClient)initWithUIHostMachName:(id)a3 serviceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RTIInputSystemUIClient;
  v8 = [(RTIInputSystemClient *)&v11 initWithMachNames:MEMORY[0x1E695E0F0]];
  v9 = v8;
  if (v8)
  {
    [(RTIInputSystemUIClient *)v8 _initializeConnectionWithMachName:v6 serviceName:v7];
  }

  return v9;
}

- (RTIInputSystemUIClient)initWithUIHostMachName:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _serviceName];
  v6 = [(RTIInputSystemUIClient *)self initWithUIHostMachName:v4 serviceName:v5];

  return v6;
}

- (void)_initializeConnectionWithMachName:(id)a3 serviceName:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = RTILogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[RTIInputSystemUIClient _initializeConnectionWithMachName:serviceName:]";
    _os_log_impl(&dword_19A2A6000, v8, OS_LOG_TYPE_INFO, "%s  Starting InputUI connection", &v12, 0xCu);
  }

  v9 = [MEMORY[0x1E698F498] endpointForMachName:v6 service:v7 instance:0];

  if (v9)
  {
    v10 = [MEMORY[0x1E698F490] NSXPCConnectionWithEndpoint:v9 configurator:&__block_literal_global_1];
    [(RTIInputSystemClient *)self _didIntializeConnection:v10 withMachName:v6];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __72__RTIInputSystemUIClient__initializeConnectionWithMachName_serviceName___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C7560];
  v3 = a2;
  v4 = [v2 attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setPerMessageAssertionAttributes:v5];

  [v3 setActivateOnResume];
  v6 = *MEMORY[0x1E69E9840];
}

@end