@interface SCLSchoolModeCoordinatorConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SCLSchoolModeCoordinatorConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SCLSchoolModeCoordinatorConfiguration);
  v5 = [(SCLSchoolModeCoordinatorConfiguration *)self NRDevice];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setNRDevice:v5];

  v6 = [(SCLSchoolModeCoordinatorConfiguration *)self idsDevice];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setIdsDevice:v6];

  v7 = [(SCLSchoolModeCoordinatorConfiguration *)self transportController];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setTransportController:v7];

  v8 = [(SCLSchoolModeCoordinatorConfiguration *)self server];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setServer:v8];

  v9 = [(SCLSchoolModeCoordinatorConfiguration *)self historyStore];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setHistoryStore:v9];

  v10 = [(SCLSchoolModeCoordinatorConfiguration *)self directoryURL];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setDirectoryURL:v10];

  [(SCLSchoolModeCoordinatorConfiguration *)v4 setSendsRemoteHistoryItems:[(SCLSchoolModeCoordinatorConfiguration *)self sendsRemoteHistoryItems]];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setSendsRemoteScheduleSettings:[(SCLSchoolModeCoordinatorConfiguration *)self sendsRemoteScheduleSettings]];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setManuallyManagedOnly:[(SCLSchoolModeCoordinatorConfiguration *)self isManuallyManagedOnly]];
  v11 = [(SCLSchoolModeCoordinatorConfiguration *)self targetQueue];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setTargetQueue:v11];

  return v4;
}

@end