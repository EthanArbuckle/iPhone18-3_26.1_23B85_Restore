@interface STStoragePlugin
- (NSArray)tips;
- (NSString)identifier;
- (void)notifyUsageChanged;
- (void)reloadSpecifiersForApp:(id)a3;
- (void)reloadTips;
@end

@implementation STStoragePlugin

- (NSString)identifier
{
  if ([(NSString *)self->_identifier length])
  {
    v3 = self->_identifier;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v4 bundleIdentifier];
  }

  return v3;
}

- (NSArray)tips
{
  if (self->_tips)
  {
    return self->_tips;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)notifyUsageChanged
{
  v2 = [MEMORY[0x277D69958] sharedNotifier];
  [v2 postAppsStateChanged:0];
}

- (void)reloadTips
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"STStoragePluginReloadTipsNotification" object:self];
}

- (void)reloadSpecifiersForApp:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D69958];
  v4 = a3;
  v5 = [v3 sharedNotifier];
  v8[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  [v5 notify:@"STStoragePluginReloadSpecifiersNotification" forBundleIDs:v6];
  v7 = *MEMORY[0x277D85DE8];
}

@end