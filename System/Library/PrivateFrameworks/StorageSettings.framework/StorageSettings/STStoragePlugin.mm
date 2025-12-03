@interface STStoragePlugin
- (NSArray)tips;
- (NSString)identifier;
- (void)notifyUsageChanged;
- (void)reloadSpecifiersForApp:(id)app;
- (void)reloadTips;
@end

@implementation STStoragePlugin

- (NSString)identifier
{
  if ([(NSString *)self->_identifier length])
  {
    bundleIdentifier = self->_identifier;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v4 bundleIdentifier];
  }

  return bundleIdentifier;
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
  mEMORY[0x277D69958] = [MEMORY[0x277D69958] sharedNotifier];
  [mEMORY[0x277D69958] postAppsStateChanged:0];
}

- (void)reloadTips
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"STStoragePluginReloadTipsNotification" object:self];
}

- (void)reloadSpecifiersForApp:(id)app
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D69958];
  appCopy = app;
  sharedNotifier = [v3 sharedNotifier];
  v8[0] = appCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  [sharedNotifier notify:@"STStoragePluginReloadSpecifiersNotification" forBundleIDs:v6];
  v7 = *MEMORY[0x277D85DE8];
}

@end