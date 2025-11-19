@interface CSFolderMonitorBackgroundScanningConfiguration
- (CSFolderMonitorBackgroundScanningConfiguration)initWithFileProtectionType:(id)a3 allowBattery:(BOOL)a4 periodInseconds:(unint64_t)a5;
@end

@implementation CSFolderMonitorBackgroundScanningConfiguration

- (CSFolderMonitorBackgroundScanningConfiguration)initWithFileProtectionType:(id)a3 allowBattery:(BOOL)a4 periodInseconds:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CSFolderMonitorBackgroundScanningConfiguration;
  v10 = [(CSFolderMonitorBackgroundScanningConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileProtectionType, a3);
    v11->_allowBattery = a4;
    v11->_periodInSeconds = a5;
  }

  return v11;
}

@end