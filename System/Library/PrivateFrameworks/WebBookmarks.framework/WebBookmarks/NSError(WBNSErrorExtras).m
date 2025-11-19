@interface NSError(WBNSErrorExtras)
+ (id)wb_databaseOpenError;
+ (id)wb_featureDisabledError;
+ (id)wb_lockError;
- (id)wb_privacyPreservingDescription;
@end

@implementation NSError(WBNSErrorExtras)

+ (id)wb_databaseOpenError
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA470];
  v6[0] = @"Failed to open database";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = [v0 errorWithDomain:@"com.apple.WebBookmarks.TabGroupSyncAgent.ErrorDomain" code:3 userInfo:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)wb_featureDisabledError
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA470];
  v6[0] = @"The feature is disabled";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = [v0 errorWithDomain:@"com.apple.WebBookmarks.TabGroupSyncAgent.ErrorDomain" code:2 userInfo:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)wb_lockError
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA470];
  v6[0] = @"Failed to acquire the lock on the database";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = [v0 errorWithDomain:@"com.apple.WebBookmarks.TabGroupSyncAgent.ErrorDomain" code:1 userInfo:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)wb_privacyPreservingDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 domain];
  v4 = [v2 stringWithFormat:@"Error: domain=%@, code=%ld", v3, objc_msgSend(a1, "code")];

  return v4;
}

@end