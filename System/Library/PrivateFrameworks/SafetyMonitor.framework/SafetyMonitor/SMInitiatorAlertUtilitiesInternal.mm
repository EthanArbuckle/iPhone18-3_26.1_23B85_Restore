@interface SMInitiatorAlertUtilitiesInternal
+ (id)alertMessageWith:(id)with addTimeMode:(BOOL)mode isWatchNotification:(BOOL)notification shortStrings:(BOOL)strings watchStrings:(BOOL)watchStrings;
+ (id)alertTitleWith:(id)with addTimeMode:(BOOL)mode shortStrings:(BOOL)strings watchStrings:(BOOL)watchStrings;
- (SMInitiatorAlertUtilitiesInternal)init;
@end

@implementation SMInitiatorAlertUtilitiesInternal

+ (id)alertTitleWith:(id)with addTimeMode:(BOOL)mode shortStrings:(BOOL)strings watchStrings:(BOOL)watchStrings
{
  watchStringsCopy = watchStrings;
  stringsCopy = strings;
  withCopy = with;
  _s13SafetyMonitor25SMInitiatorAlertUtilitiesC10alertTitle4with11addTimeMode12shortStrings05watchM0SSSo21SMSessionManagerStateCSg_S3btFZ_0(with, mode, stringsCopy, watchStringsCopy);

  v11 = sub_2645D397C();

  return v11;
}

+ (id)alertMessageWith:(id)with addTimeMode:(BOOL)mode isWatchNotification:(BOOL)notification shortStrings:(BOOL)strings watchStrings:(BOOL)watchStrings
{
  watchStringsCopy = watchStrings;
  stringsCopy = strings;
  notificationCopy = notification;
  withCopy = with;
  _s13SafetyMonitor25SMInitiatorAlertUtilitiesC12alertMessage4with11addTimeMode19isWatchNotification12shortStrings05watchP0SSSo21SMSessionManagerStateCSg_S4btFZ_0(with, mode, notificationCopy, stringsCopy, watchStringsCopy);

  v13 = sub_2645D397C();

  return v13;
}

- (SMInitiatorAlertUtilitiesInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SMInitiatorAlertUtilities();
  return [(SMInitiatorAlertUtilitiesInternal *)&v3 init];
}

@end