@interface INCloudStorageBuilder
+ (id)_backupDevice;
+ (id)_backupDeviceGroup;
+ (id)_backupInfo;
+ (id)_imageURL;
+ (id)_mockMediaStorage;
+ (id)_specifiersInfo;
+ (id)_subscriptionInfo;
+ (id)mockAppCloudStorage;
+ (id)mockCloudStorageSummary;
@end

@implementation INCloudStorageBuilder

+ (id)mockCloudStorageSummary
{
  v3 = objc_alloc_init(ICQCloudStorageSummary);
  [v3 setDisplayLabel:@"iCloud"];
  [v3 setTotalStorage:&off_100058C10];
  [v3 setUsedStorage:&off_100058C28];
  [v3 setFreeStorage:&off_100058C40];
  [v3 setCommerceStorage:&off_100058C10];
  _mockMediaStorage = [self _mockMediaStorage];
  v10 = _mockMediaStorage;
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  [v3 setMediaStorage:v5];

  _backupInfo = [self _backupInfo];
  [v3 setBackupInfo:_backupInfo];

  _subscriptionInfo = [self _subscriptionInfo];
  [v3 setSubscriptionInfo:_subscriptionInfo];

  v8 = [NSURL URLWithString:@"https://p109-quota.icloud.com:443/quotaservice/external/ios/17118882597/00008020-001554E43E63002E/getManageCloudStorage"];
  [v3 setManageStorageURL:v8];

  [v3 setManageStorageTitle:@"Manage Plan"];

  return v3;
}

+ (id)mockAppCloudStorage
{
  v2 = objc_alloc_init(ICQAppCloudStorage);
  [v2 setBundleID:@"com.apple.mobileslideshow"];
  [v2 setStorageUsed:&off_100058C58];
  v3 = [NSURL URLWithString:@"https://www.apple.com"];
  [v2 setRuiURL:v3];

  v4 = [NSURL URLWithString:@"https://www.apple.com"];
  [v2 setLiftUIURL:v4];

  return v2;
}

+ (id)_mockMediaStorage
{
  v2 = objc_alloc_init(ICQMediaCloudStorage);
  [v2 setMediaType:@"photos"];
  [v2 setDisplayLabel:@"Photos and Videos"];
  [v2 setDisplayColor:@"FFCC00"];
  [v2 setDisplayColorDark:@"CD9F00"];
  [v2 setStorageUsed:&off_100058C28];

  return v2;
}

+ (id)_backupInfo
{
  v3 = objc_alloc_init(ICQBackupInfo);
  [v3 setNoOfBackupDevices:&off_100058C70];
  _backupDeviceGroup = [self _backupDeviceGroup];
  v7 = _backupDeviceGroup;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  [v3 setDeviceGroups:v5];

  return v3;
}

+ (id)_backupDeviceGroup
{
  v3 = objc_alloc_init(ICQBackupDeviceGroup);
  [v3 setSectionHeader:@"All Device Backups"];
  [v3 setSectionFooter:@"Some footer text"];
  _backupDevice = [self _backupDevice];
  v7 = _backupDevice;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  [v3 setBackupDevices:v5];

  return v3;
}

+ (id)_backupDevice
{
  v3 = objc_alloc_init(ICQBackupDevice);
  [v3 setDeviceName:@"iPhone"];
  [v3 setDeviceSubtitle:@"This iPhone"];
  [v3 setDeviceUDID:@"0123456789"];
  [v3 setStorageUsed:&off_100058C28];
  [v3 setStorageUsedLabel:@"50 GB"];
  _imageURL = [self _imageURL];
  [v3 setImageURL:_imageURL];

  [v3 setIsActive:1];

  return v3;
}

+ (id)_subscriptionInfo
{
  v3 = objc_alloc_init(ICQSubscriptionInfo);
  [v3 setICloudPlusSubscriber:1];
  _specifiersInfo = [self _specifiersInfo];
  [v3 setSpecifiersInfo:_specifiersInfo];

  return v3;
}

+ (id)_specifiersInfo
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(ICQSpecifierInfo);
  [v4 setType:@"LINK_CELL"];
  [v4 setIdentifier:@"FAMILY_SHARING"];
  [v4 setTitle:@"Share with Family"];
  [v4 setSubTitle:&stru_1000582D8];
  _imageURL = [self _imageURL];
  [v4 setIconURL:_imageURL];

  v6 = [NSURL URLWithString:@"https://www.apple.com"];
  [v4 setActionURL:v6];

  [v3 addObject:v4];
  v7 = objc_alloc_init(ICQSpecifierInfo);
  [v7 setType:@"SUBTITLE_CELL"];
  [v7 setIdentifier:@"STORAGE_UPGRADE"];
  [v7 setTitle:@"Manage Plan"];
  [v7 setSubTitle:@"iCloud+ with 50 GB"];
  _imageURL2 = [self _imageURL];
  [v7 setIconURL:_imageURL2];

  v9 = [NSURL URLWithString:@"https://p110-quota.icloud.com:443/quotaservice/external/ios/17118882597/00008020-001554E43E63002E/upsellUI?context=VXBncmFkZVN0b3JhZ2VfbWFuYWdlU3RvcmFnZV9zZXR0aW5nc01hbmFnZVN0b3JhZ2VfbWFuYWdlU3RvcmFnZV9udWxsX251bGw="];
  [v7 setActionURL:v9];

  [v3 addObject:v7];
  v10 = [v3 copy];

  return v10;
}

+ (id)_imageURL
{
  v2 = objc_alloc_init(ICQImageURL);
  v3 = [NSURL URLWithString:@"https://www.apple.com"];
  [v2 setURL1x:v3];

  v4 = [NSURL URLWithString:@"https://www.apple.com"];
  [v2 setURL2x:v4];

  v5 = [NSURL URLWithString:@"https://www.apple.com"];
  [v2 setURL3x:v5];

  return v2;
}

@end