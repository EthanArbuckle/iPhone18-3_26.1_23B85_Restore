@interface RTIInputSystemUIService
+ (id)sharedServiceWithDomainName:(id)name serviceName:(id)serviceName;
- (RTIInputSystemUIService)initWithDomainName:(id)name serviceName:(id)serviceName;
- (void)_createListenerIfNecessary;
- (void)_destroyListenerIfNecessary;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation RTIInputSystemUIService

- (void)_createListenerIfNecessary
{
  if (!self->_bsConnectionListener && self->_domainName)
  {
    if (self->_serviceName)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __53__RTIInputSystemUIService__createListenerIfNecessary__block_invoke;
      v5[3] = &unk_1E7514BB8;
      v5[4] = self;
      v3 = [MEMORY[0x1E698F4B8] listenerWithConfigurator:v5];
      bsConnectionListener = self->_bsConnectionListener;
      self->_bsConnectionListener = v3;

      [(BSServiceConnectionListener *)self->_bsConnectionListener activate];
    }
  }
}

void __53__RTIInputSystemUIService__createListenerIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 80);
  v4 = a2;
  [v4 setDomain:v3];
  [v4 setService:*(*(a1 + 32) + 88)];
  [v4 setDelegate:*(a1 + 32)];
}

+ (id)sharedServiceWithDomainName:(id)name serviceName:(id)serviceName
{
  nameCopy = name;
  serviceNameCopy = serviceName;
  if (sharedServiceWithDomainName_serviceName__onceToken != -1)
  {
    +[RTIInputSystemUIService sharedServiceWithDomainName:serviceName:];
  }

  v7 = [sharedServiceWithDomainName_serviceName___services objectForKey:serviceNameCopy];
  if (!v7)
  {
    v7 = [[RTIInputSystemUIService alloc] initWithDomainName:nameCopy serviceName:serviceNameCopy];
    [sharedServiceWithDomainName_serviceName___services setObject:v7 forKey:serviceNameCopy];
  }

  return v7;
}

uint64_t __67__RTIInputSystemUIService_sharedServiceWithDomainName_serviceName___block_invoke()
{
  sharedServiceWithDomainName_serviceName___services = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];

  return MEMORY[0x1EEE66BB8]();
}

- (RTIInputSystemUIService)initWithDomainName:(id)name serviceName:(id)serviceName
{
  nameCopy = name;
  serviceNameCopy = serviceName;
  v14.receiver = self;
  v14.super_class = RTIInputSystemUIService;
  v8 = [(RTIInputSystemService *)&v14 initWithMachName:0];
  if (v8)
  {
    v9 = [nameCopy copy];
    domainName = v8->_domainName;
    v8->_domainName = v9;

    v11 = [serviceNameCopy copy];
    serviceName = v8->_serviceName;
    v8->_serviceName = v11;

    [(RTIInputSystemUIService *)v8 _createListenerIfNecessary];
  }

  return v8;
}

- (void)_destroyListenerIfNecessary
{
  bsConnectionListener = self->_bsConnectionListener;
  if (bsConnectionListener)
  {
    [(BSServiceConnectionListener *)bsConnectionListener invalidate];
    v4 = self->_bsConnectionListener;
    self->_bsConnectionListener = 0;
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v7 = RTILogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[RTIInputSystemUIService listener:didReceiveConnection:withContext:]";
    v20 = 2112;
    v21 = connectionCopy;
    _os_log_impl(&dword_19A2A6000, v7, OS_LOG_TYPE_DEFAULT, "%s  didReceiveConnection: %@", buf, 0x16u);
  }

  remoteProcess = [connectionCopy remoteProcess];
  v9 = [connectionCopy extractNSXPCConnectionWithConfigurator:&__block_literal_global_6];
  dispatchQueue = [(RTIInputSystemService *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__RTIInputSystemUIService_listener_didReceiveConnection_withContext___block_invoke_2;
  block[3] = &unk_1E75142D0;
  v15 = v9;
  v16 = remoteProcess;
  selfCopy = self;
  v11 = remoteProcess;
  v12 = v9;
  dispatch_async(dispatchQueue, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __69__RTIInputSystemUIService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1)
{
  v2 = [RTIInputSystemServiceUISession sessionWithConnection:*(a1 + 32) remoteProcess:*(a1 + 40)];
  [*(a1 + 48) inputSession:v2 didReceiveConnection:*(a1 + 32)];
  [*(a1 + 32) activate];
}

@end