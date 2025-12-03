@interface PSUICoreTelephonyPostponementCache
+ (id)sharedInstance;
- (PSUICoreTelephonyPostponementCache)init;
- (id)getActivationPolicyState;
- (id)initPrivate;
- (void)fetchActivationPolicyState;
- (void)willEnterForeground;
@end

@implementation PSUICoreTelephonyPostponementCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PSUICoreTelephonyPostponementCache sharedInstance];
  }

  v3 = sharedInstance_cacheInstance;

  return v3;
}

uint64_t __52__PSUICoreTelephonyPostponementCache_sharedInstance__block_invoke()
{
  sharedInstance_cacheInstance = [[PSUICoreTelephonyPostponementCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v11.receiver = self;
  v11.super_class = PSUICoreTelephonyPostponementCache;
  v2 = [(PSUICoreTelephonyPostponementCache *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.preferences.coretelephony_client_postponement_queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_queue];
    client = v2->_client;
    v2->_client = v6;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    activationPolicyState = v2->_activationPolicyState;
    v2->_activationPolicyState = 0;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (PSUICoreTelephonyPostponementCache)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSUICoreTelephonyPostponementCache init]";
    _os_log_error_impl(&dword_21CF20000, v2, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)willEnterForeground
{
  activationPolicyState = self->_activationPolicyState;
  self->_activationPolicyState = 0;
  MEMORY[0x2821F96F8]();
}

- (void)fetchActivationPolicyState
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[PSUICoreTelephonyPostponementCache fetchActivationPolicyState]";
  v5 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_21CF20000, a2, OS_LOG_TYPE_ERROR, "%s fetch failed: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)getActivationPolicyState
{
  activationPolicyState = [(PSUICoreTelephonyPostponementCache *)self activationPolicyState];

  if (!activationPolicyState)
  {
    [(PSUICoreTelephonyPostponementCache *)self fetchActivationPolicyState];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  activationPolicyState2 = [(PSUICoreTelephonyPostponementCache *)selfCopy activationPolicyState];
  objc_sync_exit(selfCopy);

  return activationPolicyState2;
}

@end