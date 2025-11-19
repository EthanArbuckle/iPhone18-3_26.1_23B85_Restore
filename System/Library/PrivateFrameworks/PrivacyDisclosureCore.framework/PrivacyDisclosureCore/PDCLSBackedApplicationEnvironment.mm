@interface PDCLSBackedApplicationEnvironment
- (PDCLSBackedApplicationEnvironment)init;
- (id)applicationIdentityForIdentityString:(id)a3;
- (id)applicationRecordForBundleIdentifier:(id)a3;
- (id)monitorAppEventsWithDelegate:(id)a3 onQueue:(id)a4;
@end

@implementation PDCLSBackedApplicationEnvironment

- (PDCLSBackedApplicationEnvironment)init
{
  v7.receiver = self;
  v7.super_class = PDCLSBackedApplicationEnvironment;
  v2 = [(PDCLSBackedApplicationEnvironment *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    workspace = v2->_workspace;
    v2->_workspace = v3;

    v5 = v2;
  }

  return v2;
}

- (id)applicationRecordForBundleIdentifier:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PDCLSBackedApplicationEnvironment *)v3 applicationRecordForBundleIdentifier:v5, v6];
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (id)applicationIdentityForIdentityString:(id)a3
{
  v3 = MEMORY[0x277CC1E58];
  v4 = a3;
  v5 = [[v3 alloc] initWithIdentityString:v4];

  return v5;
}

- (id)monitorAppEventsWithDelegate:(id)a3 onQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PDCApplicationEnvironmentMonitoringHandle alloc] initWithWorkspace:self->_workspace delegate:v7 queue:v6];

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