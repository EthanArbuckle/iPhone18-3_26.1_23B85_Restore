@interface TPSPairedWatchValidation
- (TPSPairedWatchValidation)initWithCapability:(id)capability;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSPairedWatchValidation

- (TPSPairedWatchValidation)initWithCapability:(id)capability
{
  capabilityCopy = capability;
  v9.receiver = self;
  v9.super_class = TPSPairedWatchValidation;
  v6 = [(TPSPairedWatchValidation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_capability, capability);
  }

  return v7;
}

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277D2BCF8];
  completionCopy = completion;
  sharedInstance = [v4 sharedInstance];
  getActivePairedDevice = [sharedInstance getActivePairedDevice];

  if (getActivePairedDevice)
  {
    capability = [(TPSPairedWatchValidation *)self capability];

    if (capability)
    {
      capability2 = [(TPSPairedWatchValidation *)self capability];
      capability = [getActivePairedDevice supportsCapability:capability2];
    }
  }

  else
  {
    capability = 0;
  }

  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSPairedWatchValidation *)self validateWithCompletion:capability, targeting];
  }

  completionCopy[2](completionCopy, capability, 0);
}

- (void)validateWithCompletion:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 name];
  v7 = [a1 capability];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 1024;
  v14 = a2 & 1;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - capability: %@. Valid: %d", &v9, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

@end