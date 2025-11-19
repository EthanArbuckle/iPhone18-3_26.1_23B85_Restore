@interface RMUIError
+ (id)legacyProfilesInvalidURLForDeclarationID:(id)a3 urlString:(id)a4;
+ (id)legacyProfilesNoObserverStoreForDeclarationID:(id)a3;
@end

@implementation RMUIError

+ (id)legacyProfilesInvalidURLForDeclarationID:(id)a3 urlString:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid profile URL for declaration %@: %@", a3, a4];
  v5 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA068];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"RMUILegacyProfilesErrorDomain" code:0 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)legacyProfilesNoObserverStoreForDeclarationID:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"No observer store for declaration %@", a3];
  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA068];
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"RMUILegacyProfilesErrorDomain" code:2 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end