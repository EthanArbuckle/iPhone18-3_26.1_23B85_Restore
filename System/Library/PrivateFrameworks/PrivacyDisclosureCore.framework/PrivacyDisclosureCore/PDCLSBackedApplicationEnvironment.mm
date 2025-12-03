@interface PDCLSBackedApplicationEnvironment
- (PDCLSBackedApplicationEnvironment)init;
- (id)applicationIdentityForIdentityString:(id)string;
- (id)applicationRecordForBundleIdentifier:(id)identifier;
- (id)monitorAppEventsWithDelegate:(id)delegate onQueue:(id)queue;
@end

@implementation PDCLSBackedApplicationEnvironment

- (PDCLSBackedApplicationEnvironment)init
{
  v7.receiver = self;
  v7.super_class = PDCLSBackedApplicationEnvironment;
  v2 = [(PDCLSBackedApplicationEnvironment *)&v7 init];
  if (v2)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    workspace = v2->_workspace;
    v2->_workspace = defaultWorkspace;

    v5 = v2;
  }

  return v2;
}

- (id)applicationRecordForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PDCLSBackedApplicationEnvironment *)identifierCopy applicationRecordForBundleIdentifier:v5, v6];
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (id)applicationIdentityForIdentityString:(id)string
{
  v3 = MEMORY[0x277CC1E58];
  stringCopy = string;
  v5 = [[v3 alloc] initWithIdentityString:stringCopy];

  return v5;
}

- (id)monitorAppEventsWithDelegate:(id)delegate onQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v8 = [[PDCApplicationEnvironmentMonitoringHandle alloc] initWithWorkspace:self->_workspace delegate:delegateCopy queue:queueCopy];

  [(LSApplicationWorkspace *)self->_workspace addObserver:v8];

  return v8;
}

- (void)applicationRecordForBundleIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25F701000, log, OS_LOG_TYPE_ERROR, "Failed to look up record for app %@, error %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end