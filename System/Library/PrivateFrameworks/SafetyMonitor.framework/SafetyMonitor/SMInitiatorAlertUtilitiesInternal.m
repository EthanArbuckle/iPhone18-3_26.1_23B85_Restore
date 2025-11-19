@interface SMInitiatorAlertUtilitiesInternal
+ (id)alertMessageWith:(id)a3 addTimeMode:(BOOL)a4 isWatchNotification:(BOOL)a5 shortStrings:(BOOL)a6 watchStrings:(BOOL)a7;
+ (id)alertTitleWith:(id)a3 addTimeMode:(BOOL)a4 shortStrings:(BOOL)a5 watchStrings:(BOOL)a6;
- (SMInitiatorAlertUtilitiesInternal)init;
@end

@implementation SMInitiatorAlertUtilitiesInternal

+ (id)alertTitleWith:(id)a3 addTimeMode:(BOOL)a4 shortStrings:(BOOL)a5 watchStrings:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  _s13SafetyMonitor25SMInitiatorAlertUtilitiesC10alertTitle4with11addTimeMode12shortStrings05watchM0SSSo21SMSessionManagerStateCSg_S3btFZ_0(a3, a4, v7, v6);

  v11 = sub_2645D397C();

  return v11;
}

+ (id)alertMessageWith:(id)a3 addTimeMode:(BOOL)a4 isWatchNotification:(BOOL)a5 shortStrings:(BOOL)a6 watchStrings:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v12 = a3;
  _s13SafetyMonitor25SMInitiatorAlertUtilitiesC12alertMessage4with11addTimeMode19isWatchNotification12shortStrings05watchP0SSSo21SMSessionManagerStateCSg_S4btFZ_0(a3, a4, v9, v8, v7);

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