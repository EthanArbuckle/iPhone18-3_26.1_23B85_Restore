@interface SBExternalDisplayBiomeDonor
- (SBExternalDisplayBiomeDonor)init;
- (void)_donateToBiomeIfNecessaryForDisplayInfo:(id)info connect:(BOOL)connect;
- (void)dealloc;
@end

@implementation SBExternalDisplayBiomeDonor

- (SBExternalDisplayBiomeDonor)init
{
  v6.receiver = self;
  v6.super_class = SBExternalDisplayBiomeDonor;
  v2 = [(SBExternalDisplayBiomeDonor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D66A60]);
    externalDisplayService = v2->_externalDisplayService;
    v2->_externalDisplayService = v3;

    [(SBSExternalDisplayService *)v2->_externalDisplayService addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(SBSExternalDisplayService *)self->_externalDisplayService removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBExternalDisplayBiomeDonor;
  [(SBExternalDisplayBiomeDonor *)&v3 dealloc];
}

- (void)_donateToBiomeIfNecessaryForDisplayInfo:(id)info connect:(BOOL)connect
{
  connectCopy = connect;
  infoCopy = info;
  identifier = [infoCopy identifier];
  if (identifier)
  {
    biomeDonationTimers = self->_biomeDonationTimers;
    if (!biomeDonationTimers)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v10 = self->_biomeDonationTimers;
      self->_biomeDonationTimers = dictionary;

      biomeDonationTimers = self->_biomeDonationTimers;
    }

    v11 = [(NSMutableDictionary *)biomeDonationTimers objectForKey:identifier];
    if (!v11)
    {
      v12 = [_SBDisplayConnectionDonationTimer alloc];
      identifier2 = [infoCopy identifier];
      deviceName = [infoCopy deviceName];
      displayName = [infoCopy displayName];
      isMirrored = [infoCopy isMirrored];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __79__SBExternalDisplayBiomeDonor__donateToBiomeIfNecessaryForDisplayInfo_connect___block_invoke;
      v21 = &unk_2783BF9B0;
      selfCopy = self;
      v17 = identifier;
      v23 = v17;
      v11 = [(_SBDisplayConnectionDonationTimer *)v12 initWithUniqueId:identifier2 deviceName:deviceName productName:displayName connect:connectCopy mirroring:isMirrored handler:&v18];

      [(NSMutableDictionary *)self->_biomeDonationTimers setObject:v11 forKey:v17, v18, v19, v20, v21, selfCopy];
    }

    [(_SBDisplayConnectionDonationTimer *)v11 resetTimerOnConnect:connectCopy];
  }
}

void __79__SBExternalDisplayBiomeDonor__donateToBiomeIfNecessaryForDisplayInfo_connect___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, char a5, char a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = dispatch_get_global_queue(-32768, 0);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __79__SBExternalDisplayBiomeDonor__donateToBiomeIfNecessaryForDisplayInfo_connect___block_invoke_2;
  v21 = &unk_2783BF988;
  v25 = a5;
  v22 = v12;
  v23 = v11;
  v24 = v13;
  v26 = a6;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  dispatch_async(v14, &v18);

  [*(*(a1 + 32) + 16) removeObjectForKey:{*(a1 + 40), v18, v19, v20, v21}];
}

void __79__SBExternalDisplayBiomeDonor__donateToBiomeIfNecessaryForDisplayInfo_connect___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CF1620]);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 57)];
  v8 = [v2 initWithStarting:v3 deviceName:v4 uniqueId:v5 productName:v6 mirroringMode:v7];

  v9 = BiomeLibrary();
  v10 = [v9 SpringBoard];
  v11 = [v10 ExternalDisplay];
  v12 = [v11 DisplayConnected];

  v13 = [v12 source];
  [v13 sendEvent:v8];
  v14 = SBLogBiome();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromBOOL();
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = NSStringFromBOOL();
    v20 = 138413314;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Donate display connected: %@ uuid: %{public}@ deviceName: %{public}@ productname: %{public}@ mirroring: %@", &v20, 0x34u);
  }
}

@end