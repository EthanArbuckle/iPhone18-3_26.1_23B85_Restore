@interface HDSPSyncedDefaultsInfo
- (HDSPSyncedDefaultsInfo)initWithDataVersionKey:(id)a3 currentDataVersion:(unint64_t)a4 cloudDataVersionKey:(id)a5 currentCloudDataVersion:(unint64_t)a6 cloudSyncEnabledKey:(id)a7 localDataVersionKey:(id)a8 currentLocalDataVersion:(unint64_t)a9;
@end

@implementation HDSPSyncedDefaultsInfo

- (HDSPSyncedDefaultsInfo)initWithDataVersionKey:(id)a3 currentDataVersion:(unint64_t)a4 cloudDataVersionKey:(id)a5 currentCloudDataVersion:(unint64_t)a6 cloudSyncEnabledKey:(id)a7 localDataVersionKey:(id)a8 currentLocalDataVersion:(unint64_t)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = HDSPSyncedDefaultsInfo;
  v19 = [(HDSPSyncedDefaultsInfo *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dataVersionKey, a3);
    v20->_currentDataVersion = a4;
    objc_storeStrong(&v20->_cloudDataVersionKey, a5);
    v20->_currentCloudDataVersion = a6;
    objc_storeStrong(&v20->_cloudSyncEnabledKey, a7);
    objc_storeStrong(&v20->_localDataVersionKey, a8);
    v20->_currentLocalDataVersion = a9;
    v21 = v20;
  }

  return v20;
}

@end