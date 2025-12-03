@interface SCLSchoolModeCoordinatorConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SCLSchoolModeCoordinatorConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SCLSchoolModeCoordinatorConfiguration);
  nRDevice = [(SCLSchoolModeCoordinatorConfiguration *)self NRDevice];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setNRDevice:nRDevice];

  idsDevice = [(SCLSchoolModeCoordinatorConfiguration *)self idsDevice];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setIdsDevice:idsDevice];

  transportController = [(SCLSchoolModeCoordinatorConfiguration *)self transportController];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setTransportController:transportController];

  server = [(SCLSchoolModeCoordinatorConfiguration *)self server];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setServer:server];

  historyStore = [(SCLSchoolModeCoordinatorConfiguration *)self historyStore];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setHistoryStore:historyStore];

  directoryURL = [(SCLSchoolModeCoordinatorConfiguration *)self directoryURL];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setDirectoryURL:directoryURL];

  [(SCLSchoolModeCoordinatorConfiguration *)v4 setSendsRemoteHistoryItems:[(SCLSchoolModeCoordinatorConfiguration *)self sendsRemoteHistoryItems]];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setSendsRemoteScheduleSettings:[(SCLSchoolModeCoordinatorConfiguration *)self sendsRemoteScheduleSettings]];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setManuallyManagedOnly:[(SCLSchoolModeCoordinatorConfiguration *)self isManuallyManagedOnly]];
  targetQueue = [(SCLSchoolModeCoordinatorConfiguration *)self targetQueue];
  [(SCLSchoolModeCoordinatorConfiguration *)v4 setTargetQueue:targetQueue];

  return v4;
}

@end