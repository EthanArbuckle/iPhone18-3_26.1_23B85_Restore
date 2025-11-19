@interface PODirectoryServices
- (id)uniqueIdentifierForUserName:(id)a3;
@end

@implementation PODirectoryServices

- (id)uniqueIdentifierForUserName:(id)a3
{
  v3 = [MEMORY[0x277D77BF8] sharedManager];
  v4 = [v3 currentUser];

  if (PO_LOG_PODirectoryServices_once != -1)
  {
    [PODirectoryServices uniqueIdentifierForUserName:];
  }

  v5 = PO_LOG_PODirectoryServices_log;
  if (os_log_type_enabled(PO_LOG_PODirectoryServices_log, OS_LOG_TYPE_DEBUG))
  {
    [(PODirectoryServices *)v5 uniqueIdentifierForUserName:v4];
  }

  v6 = [v4 alternateDSID];

  return v6;
}

- (void)uniqueIdentifierForUserName:(void *)a1 .cold.2(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 alternateDSID];
  v6 = 138477827;
  v7 = v4;
  _os_log_debug_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEBUG, "Current altDSID: %{private}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end