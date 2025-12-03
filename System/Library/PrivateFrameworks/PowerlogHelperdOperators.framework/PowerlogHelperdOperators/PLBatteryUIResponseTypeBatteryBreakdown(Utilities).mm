@interface PLBatteryUIResponseTypeBatteryBreakdown(Utilities)
- (void)getBundleIDToDisplayNameMap;
@end

@implementation PLBatteryUIResponseTypeBatteryBreakdown(Utilities)

- (void)getDataRange:()Utilities .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "First usage time entry at %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getDataRange:()Utilities .cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "First RNE entry at %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getNodeEntriesForEntryKey:()Utilities withRange:andTimeInterval:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Querying for nodes with %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getBundleIDToDisplayNameMap
{
  bundleIdentifier = [a2 bundleIdentifier];
  *self = 138412290;
  *a3 = bundleIdentifier;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v6, v7, "LSApplicationRecord Skipping non system / non user bundleID=%@");
}

@end