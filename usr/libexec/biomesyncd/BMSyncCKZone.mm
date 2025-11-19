@interface BMSyncCKZone
- (BMSyncCKZone)initWithFMResultSet:(id)a3;
@end

@implementation BMSyncCKZone

- (BMSyncCKZone)initWithFMResultSet:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BMSyncCKZone;
  v5 = [(BMSyncCKZone *)&v13 init];
  if (v5)
  {
    v6 = [v4 stringForColumn:@"zone_name"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v6;

    v8 = [v4 stringForColumn:@"zone_uuid"];
    zoneUUID = v5->_zoneUUID;
    v5->_zoneUUID = v8;

    v5->_recoveryState = [v4 intForColumn:@"recovery_state"];
    v10 = [v4 dateForColumn:@"attempted_recovery_date"];
    attemptedRecoveryDate = v5->_attemptedRecoveryDate;
    v5->_attemptedRecoveryDate = v10;
  }

  return v5;
}

@end