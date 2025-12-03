@interface RESiriActionsDonationsWhitelist
+ (id)sharedInstance;
- (BOOL)intentIsWhitelistedForBundleID:(id)d andTypeName:(id)name;
- (BOOL)userActivityIsWhitelistedForBundleID:(id)d andActivityType:(id)type;
- (NSSet)intentWhitelistBundleIDs;
- (NSSet)userActivityWhitelistBundleIDs;
- (RESiriActionsDonationsWhitelist)init;
- (id)intentWhitelistedRelevanceThresholdForBundleID:(id)d andTypeName:(id)name;
- (id)userActivityWhitelistedRelevanceThresholdForBundleID:(id)d andActivityType:(id)type;
@end

@implementation RESiriActionsDonationsWhitelist

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[RESiriActionsDonationsWhitelist sharedInstance];
  }

  v3 = sharedInstance__whitelist;

  return v3;
}

uint64_t __49__RESiriActionsDonationsWhitelist_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(RESiriActionsDonationsWhitelist);
  v1 = sharedInstance__whitelist;
  sharedInstance__whitelist = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (RESiriActionsDonationsWhitelist)init
{
  v10.receiver = self;
  v10.super_class = RESiriActionsDonationsWhitelist;
  v2 = [(RESiriActionsDonationsWhitelist *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x277CBEAC0];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:@"DonationsWhitelist" ofType:@"plist"];
    v7 = [v4 dictionaryWithContentsOfFile:v6];
    whitelist = v3->_whitelist;
    v3->_whitelist = v7;
  }

  return v3;
}

- (id)userActivityWhitelistedRelevanceThresholdForBundleID:(id)d andActivityType:(id)type
{
  whitelist = self->_whitelist;
  typeCopy = type;
  dCopy = d;
  v8 = [(NSDictionary *)whitelist objectForKeyedSubscript:@"UserActivities"];
  v9 = [v8 objectForKeyedSubscript:dCopy];

  v10 = [v9 objectForKeyedSubscript:typeCopy];

  return v10;
}

- (BOOL)userActivityIsWhitelistedForBundleID:(id)d andActivityType:(id)type
{
  v4 = [(RESiriActionsDonationsWhitelist *)self userActivityWhitelistedRelevanceThresholdForBundleID:d andActivityType:type];
  v5 = v4 != 0;

  return v5;
}

- (id)intentWhitelistedRelevanceThresholdForBundleID:(id)d andTypeName:(id)name
{
  whitelist = self->_whitelist;
  nameCopy = name;
  dCopy = d;
  v8 = [(NSDictionary *)whitelist objectForKeyedSubscript:@"Intents"];
  v9 = [v8 objectForKeyedSubscript:dCopy];

  v10 = [v9 objectForKeyedSubscript:nameCopy];

  return v10;
}

- (BOOL)intentIsWhitelistedForBundleID:(id)d andTypeName:(id)name
{
  v4 = [(RESiriActionsDonationsWhitelist *)self intentWhitelistedRelevanceThresholdForBundleID:d andTypeName:name];
  v5 = v4 != 0;

  return v5;
}

- (NSSet)intentWhitelistBundleIDs
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_intentWhitelistBundleIDs;
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB98]);
    v5 = [(NSDictionary *)self->_whitelist objectForKeyedSubscript:@"Intents"];
    allKeys = [v5 allKeys];
    v3 = [v4 initWithArray:allKeys];

    objc_storeStrong(&self->_intentWhitelistBundleIDs, v3);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)userActivityWhitelistBundleIDs
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_userActivityWhitelistBundleIDs;
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB98]);
    v5 = [(NSDictionary *)self->_whitelist objectForKeyedSubscript:@"UserActivities"];
    allKeys = [v5 allKeys];
    v3 = [v4 initWithArray:allKeys];

    objc_storeStrong(&self->_userActivityWhitelistBundleIDs, v3);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end