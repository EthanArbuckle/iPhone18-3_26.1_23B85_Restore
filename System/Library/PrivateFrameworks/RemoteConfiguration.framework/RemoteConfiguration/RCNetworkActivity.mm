@interface RCNetworkActivity
- (RCNetworkActivity)initWithDomain:(unsigned int)a3 label:(unsigned int)a4 parentToken:(id)a5;
- (void)attachActivityToTask:(id)a3;
- (void)completeActivityWithSuccess:(BOOL)a3;
- (void)startActivity;
@end

@implementation RCNetworkActivity

- (RCNetworkActivity)initWithDomain:(unsigned int)a3 label:(unsigned int)a4 parentToken:(id)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v18.receiver = self;
  v18.super_class = RCNetworkActivity;
  v10 = [(RCNetworkActivity *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_domain = a3;
    v10->_label = a4;
    objc_storeStrong(&v10->_parentToken, a5);
    v12 = nw_activity_create();
    activity = v11->_activity;
    v11->_activity = v12;

    if (v9)
    {
      v19[0] = 0;
      v19[1] = 0;
      [v9 getUUIDBytes:v19];
      v14 = nw_activity_create_from_token();
      v15 = v11->_activity;
      nw_activity_set_parent_activity();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)startActivity
{
  v3 = [(RCNetworkActivity *)self accessLock];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__RCNetworkActivity_startActivity__block_invoke;
  v4[3] = &unk_27822F2B0;
  v4[4] = self;
  [v3 performWithLockSync:v4];
}

- (void)completeActivityWithSuccess:(BOOL)a3
{
  v5 = [(RCNetworkActivity *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__RCNetworkActivity_completeActivityWithSuccess___block_invoke;
  v6[3] = &unk_27822FE90;
  v6[4] = self;
  v7 = a3;
  [v5 performWithLockSync:v6];
}

uint64_t __49__RCNetworkActivity_completeActivityWithSuccess___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (*(a1 + 40))
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  return MEMORY[0x282126560](*(*(a1 + 32) + 8), v2);
}

- (void)attachActivityToTask:(id)a3
{
  v4 = a3;
  v5 = [(RCNetworkActivity *)self accessLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RCNetworkActivity_attachActivityToTask___block_invoke;
  v7[3] = &unk_27822F130;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performWithLockSync:v7];
}

@end