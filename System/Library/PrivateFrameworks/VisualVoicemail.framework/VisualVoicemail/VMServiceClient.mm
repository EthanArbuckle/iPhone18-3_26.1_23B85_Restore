@interface VMServiceClient
+ (id)sharedClient;
- (BOOL)sharedServiceIsSubscribed;
- (VMServiceClient)init;
- (id)sharedAccount;
- (void)dealloc;
@end

@implementation VMServiceClient

- (VMServiceClient)init
{
  v9.receiver = self;
  v9.super_class = VMServiceClient;
  v2 = [(VMServiceClient *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(VMVoicemailManager);
    voicemailManager = v2->_voicemailManager;
    v2->_voicemailManager = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_handleVoicemailsChangedNotification_ name:@"VMVoicemailVoicemailsChangedNotification" object:v2->_voicemailManager];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_handleSubscriptionStatusChangedNotification_ name:@"VMVoicemailSubscriptionStateStatusChangedNotification" object:v2->_voicemailManager];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel_handleOnlineStatusChangedNotification_ name:@"VMVoicemailOnlineStatusChangedNotification" object:v2->_voicemailManager];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VMServiceClient;
  [(VMServiceClient *)&v4 dealloc];
}

+ (id)sharedClient
{
  if (sharedClient_onceToken != -1)
  {
    +[VMServiceClient sharedClient];
  }

  v3 = __sharedServiceClient;

  return v3;
}

uint64_t __31__VMServiceClient_sharedClient__block_invoke()
{
  __sharedServiceClient = objc_alloc_init(VMServiceClient);

  return MEMORY[0x2821F96F8]();
}

- (id)sharedAccount
{
  if (sharedAccount_onceToken != -1)
  {
    [VMServiceClient sharedAccount];
  }

  v3 = sharedAccount___legacyAccount;

  return v3;
}

uint64_t __32__VMServiceClient_sharedAccount__block_invoke()
{
  sharedAccount___legacyAccount = objc_alloc_init(VMLegacyAccount);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)sharedServiceIsSubscribed
{
  v2 = [(VMServiceClient *)self voicemailManager];
  v3 = [v2 isSubscribed];

  return v3;
}

@end