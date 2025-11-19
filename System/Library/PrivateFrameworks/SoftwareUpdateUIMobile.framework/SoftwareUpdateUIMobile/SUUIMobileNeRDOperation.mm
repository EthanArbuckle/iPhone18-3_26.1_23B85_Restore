@interface SUUIMobileNeRDOperation
- (BOOL)isActive;
- (SUUIMobileNeRDOperation)initWithIdentifier:(id)a3 usingSUManagerClient:(id)a4;
- (id)baseDomain;
- (id)currentInstalledNeRDInfo;
- (void)cancel:(id)a3;
- (void)updateNeRDVersionWithOptions:(id)a3;
@end

@implementation SUUIMobileNeRDOperation

- (SUUIMobileNeRDOperation)initWithIdentifier:(id)a3 usingSUManagerClient:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v4 = v17;
  v17 = 0;
  v14.receiver = v4;
  v14.super_class = SUUIMobileNeRDOperation;
  v13 = [(SUUIMobileNeRDOperation *)&v14 init];
  v17 = v13;
  objc_storeStrong(&v17, v13);
  if (v13)
  {
    [(SUUIMobileNeRDOperation *)v17 setIdentifier:location[0]];
    [(SUUIMobileNeRDOperation *)v17 setSuClient:v15];
    v8 = MEMORY[0x277CCACA8];
    v11 = [(SUUIMobileNeRDOperation *)v17 baseDomain];
    v10 = [v8 stringWithFormat:@"%@.work-queue", v11];
    v5 = v10;
    v9 = dispatch_queue_create([v10 UTF8String], 0);
    [(SUUIMobileNeRDOperation *)v17 setWorkQueue:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
  }

  v7 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v7;
}

- (id)currentInstalledNeRDInfo
{
  v3 = [(SUUIMobileNeRDOperation *)self suClient];
  v4 = [(SUManagerClient *)v3 rvGetCurrentNeRDInfo];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)updateNeRDVersionWithOptions:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __56__SUUIMobileNeRDOperation_updateNeRDVersionWithOptions___block_invoke;
  v8 = &unk_279CCDBD0;
  v9 = MEMORY[0x277D82BE0](v12);
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

- (void)cancel:(id)a3
{
  v12 = self;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
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