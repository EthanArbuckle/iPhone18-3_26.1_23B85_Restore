@interface HDSPSyncedDefaultsInfo
- (HDSPSyncedDefaultsInfo)initWithDataVersionKey:(id)key currentDataVersion:(unint64_t)version cloudDataVersionKey:(id)versionKey currentCloudDataVersion:(unint64_t)dataVersion cloudSyncEnabledKey:(id)enabledKey localDataVersionKey:(id)dataVersionKey currentLocalDataVersion:(unint64_t)localDataVersion;
@end

@implementation HDSPSyncedDefaultsInfo

- (HDSPSyncedDefaultsInfo)initWithDataVersionKey:(id)key currentDataVersion:(unint64_t)version cloudDataVersionKey:(id)versionKey currentCloudDataVersion:(unint64_t)dataVersion cloudSyncEnabledKey:(id)enabledKey localDataVersionKey:(id)dataVersionKey currentLocalDataVersion:(unint64_t)localDataVersion
{
  keyCopy = key;
  versionKeyCopy = versionKey;
  enabledKeyCopy = enabledKey;
  dataVersionKeyCopy = dataVersionKey;
  v24.receiver = self;
  v24.super_class = HDSPSyncedDefaultsInfo;
  v19 = [(HDSPSyncedDefaultsInfo *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dataVersionKey, key);
    v20->_currentDataVersion = version;
    objc_storeStrong(&v20->_cloudDataVersionKey, versionKey);
    v20->_currentCloudDataVersion = dataVersion;
    objc_storeStrong(&v20->_cloudSyncEnabledKey, enabledKey);
    objc_storeStrong(&v20->_localDataVersionKey, dataVersionKey);
    v20->_currentLocalDataVersion = localDataVersion;
    v21 = v20;
  }

  return v20;
}

@end