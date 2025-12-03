@interface SUUIMobileNeRDOperation
- (BOOL)isActive;
- (SUUIMobileNeRDOperation)initWithIdentifier:(id)identifier usingSUManagerClient:(id)client;
- (id)baseDomain;
- (id)currentInstalledNeRDInfo;
- (void)cancel:(id)cancel;
- (void)updateNeRDVersionWithOptions:(id)options;
@end

@implementation SUUIMobileNeRDOperation

- (SUUIMobileNeRDOperation)initWithIdentifier:(id)identifier usingSUManagerClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v15 = 0;
  objc_storeStrong(&v15, client);
  v4 = selfCopy;
  selfCopy = 0;
  v14.receiver = v4;
  v14.super_class = SUUIMobileNeRDOperation;
  v13 = [(SUUIMobileNeRDOperation *)&v14 init];
  selfCopy = v13;
  objc_storeStrong(&selfCopy, v13);
  if (v13)
  {
    [(SUUIMobileNeRDOperation *)selfCopy setIdentifier:location[0]];
    [(SUUIMobileNeRDOperation *)selfCopy setSuClient:v15];
    v8 = MEMORY[0x277CCACA8];
    baseDomain = [(SUUIMobileNeRDOperation *)selfCopy baseDomain];
    v10 = [v8 stringWithFormat:@"%@.work-queue", baseDomain];
    v5 = v10;
    v9 = dispatch_queue_create([v10 UTF8String], 0);
    [(SUUIMobileNeRDOperation *)selfCopy setWorkQueue:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](baseDomain);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)currentInstalledNeRDInfo
{
  suClient = [(SUUIMobileNeRDOperation *)self suClient];
  rvGetCurrentNeRDInfo = [(SUManagerClient *)suClient rvGetCurrentNeRDInfo];
  MEMORY[0x277D82BD8](suClient);

  return rvGetCurrentNeRDInfo;
}

- (void)updateNeRDVersionWithOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  queue = selfCopy->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __56__SUUIMobileNeRDOperation_updateNeRDVersionWithOptions___block_invoke;
  v8 = &unk_279CCDBD0;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

uint64_t __56__SUUIMobileNeRDOperation_updateNeRDVersionWithOptions___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (*(a1 + 40))
  {
    return [v2 rvTriggerNeRDUpdate:*(a1 + 40)];
  }

  else
  {
    return [v2 rvTriggerNeRDUpdate:MEMORY[0x277CBEC10]];
  }
}

- (void)cancel:(id)cancel
{
  selfCopy = self;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, cancel);
  v6 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(v11);
  v7 = [v4 stringWithFormat:@"%@ is unavailable", v8];
  v9 = [v6 exceptionWithName:v5 reason:? userInfo:?];
  v3 = v9;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_exception_throw(v9);
}

- (BOOL)isActive
{
  v5 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v3 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v6 = [v3 stringWithFormat:@"%@ is unavailable", v7];
  v8 = [v5 exceptionWithName:v4 reason:? userInfo:?];
  v2 = v8;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_exception_throw(v8);
}

- (id)baseDomain
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [v2 initWithFormat:@"%@.stateful-ui.nerd.%@", *MEMORY[0x277D64C30], self->_identifier];

  return v3;
}

@end