@interface ICQUsageStorageMonitor
+ (id)sharedMonitor;
- (ICQUsageStorageMonitor)init;
- (NSArray)footerItems;
- (void)_setAvailable:(float)available;
- (void)clearUsageDataCache;
- (void)deregisterUsageStorageClient;
- (void)fetchSystemSizeStrings;
- (void)flushViews;
- (void)populateUsageDataWithProgressBlock:(id)block;
- (void)registerUsageStorageClient;
@end

@implementation ICQUsageStorageMonitor

+ (id)sharedMonitor
{
  if (sharedMonitor_once != -1)
  {
    +[ICQUsageStorageMonitor sharedMonitor];
  }

  v3 = sharedMonitor_monitor;

  return v3;
}

void __39__ICQUsageStorageMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(ICQUsageStorageMonitor);
  v1 = sharedMonitor_monitor;
  sharedMonitor_monitor = v0;
}

- (ICQUsageStorageMonitor)init
{
  v5.receiver = self;
  v5.super_class = ICQUsageStorageMonitor;
  v2 = [(ICQUsageStorageMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICQUsageStorageMonitor *)v2 fetchSystemSizeStrings];
  }

  return v3;
}

- (void)registerUsageStorageClient
{
  storageClientCount = self->_storageClientCount;
  self->_storageClientCount = storageClientCount + 1;
  if (!storageClientCount)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, AppDeleted, @"com.apple.mobile.application_deletion_complete", 0, CFNotificationSuspensionBehaviorCoalesce);
  }
}

- (void)deregisterUsageStorageClient
{
  storageClientCount = self->_storageClientCount;
  if (storageClientCount <= 0)
  {
    [ICQUsageStorageMonitor deregisterUsageStorageClient];
  }

  v4 = storageClientCount - 1;
  self->_storageClientCount = v4;
  if (!v4)
  {
    [(ICQUsageStorageMonitor *)self clearUsageDataCache];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.application_deletion_complete", 0);
  }
}

- (void)populateUsageDataWithProgressBlock:(id)block
{
  blockCopy = block;
  [(ICQUsageStorageMonitor *)self clearUsageDataCache];
  v4 = objc_alloc_init(ICQUsageStorageCache);
  cache = self->_cache;
  self->_cache = v4;

  [(ICQUsageStorageCache *)self->_cache populateUsageDataWithProgressBlock:blockCopy];
}

- (void)clearUsageDataCache
{
  [(ICQUsageStorageCache *)self->_cache cancelUsageDataPopulation];
  cache = self->_cache;
  self->_cache = 0;
}

- (void)fetchSystemSizeStrings
{
  v14 = MGCopyAnswer();
  v3 = [v14 objectForKey:*MEMORY[0x277D823C0]];
  v4 = [v14 objectForKey:*MEMORY[0x277D82398]];
  v5 = [v14 objectForKey:*MEMORY[0x277D823A0]];
  [v4 floatValue];
  v7 = v6;
  [v3 floatValue];
  v9 = v8;
  [v5 floatValue];
  v11 = (v9 - v10) - v7;
  *&v12 = v7;
  [(ICQUsageStorageMonitor *)self _setAvailable:v12];
  *&v13 = v11;
  [(ICQUsageStorageMonitor *)self setUsedSize:v13];
}

- (void)_setAvailable:(float)available
{
  if (self->_availableSize != available)
  {
    self->_availableSize = available;
    if (self->_footerLabel)
    {
      v4 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v9 localizedStringForKey:@"SIZE_available_DEVICE" value:&stru_28844FC60 table:@"Usage Statistics"];
      v6 = [MEMORY[0x277CCA8E8] stringFromByteCount:self->_availableSize countStyle:2];
      v7 = DeviceName();
      v8 = [v4 stringWithFormat:v5, v6, v7];
      [(UILabel *)self->_footerLabel setText:v8];
    }
  }
}

- (NSArray)footerItems
{
  footerItems = self->_footerItems;
  if (!footerItems)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    footerLabel = self->_footerLabel;
    self->_footerLabel = v5;

    v7 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)self->_footerLabel setFont:v7];

    v8 = PSToolbarLabelsTextColor();
    [(UILabel *)self->_footerLabel setTextColor:v8];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_footerLabel setBackgroundColor:clearColor];

    [(UILabel *)self->_footerLabel setTextAlignment:1];
    [(UILabel *)self->_footerLabel setLineBreakMode:5];
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"SIZE_available_DEVICE" value:&stru_28844FC60 table:@"Usage Statistics"];
    v13 = [MEMORY[0x277CCA8E8] stringFromByteCount:self->_availableSize countStyle:2];
    v14 = DeviceName();
    v15 = [v10 stringWithFormat:v12, v13, v14];
    [(UILabel *)self->_footerLabel setText:v15];

    [(UILabel *)self->_footerLabel sizeToFit];
    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:self->_footerLabel];
    footerItem = self->_footerItem;
    self->_footerItem = v16;

    v18 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v19 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v18, self->_footerItem, v18, 0}];
    v20 = self->_footerItems;
    self->_footerItems = v19;

    footerItems = self->_footerItems;
  }

  return footerItems;
}

- (void)flushViews
{
  footerItems = self->_footerItems;
  self->_footerItems = 0;

  footerItem = self->_footerItem;
  self->_footerItem = 0;

  footerLabel = self->_footerLabel;
  self->_footerLabel = 0;
}

@end