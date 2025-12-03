@interface CSFolderMonitorBackgroundScanningConfiguration
- (CSFolderMonitorBackgroundScanningConfiguration)initWithFileProtectionType:(id)type allowBattery:(BOOL)battery periodInseconds:(unint64_t)inseconds;
@end

@implementation CSFolderMonitorBackgroundScanningConfiguration

- (CSFolderMonitorBackgroundScanningConfiguration)initWithFileProtectionType:(id)type allowBattery:(BOOL)battery periodInseconds:(unint64_t)inseconds
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = CSFolderMonitorBackgroundScanningConfiguration;
  v10 = [(CSFolderMonitorBackgroundScanningConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileProtectionType, type);
    v11->_allowBattery = battery;
    v11->_periodInSeconds = inseconds;
  }

  return v11;
}

@end