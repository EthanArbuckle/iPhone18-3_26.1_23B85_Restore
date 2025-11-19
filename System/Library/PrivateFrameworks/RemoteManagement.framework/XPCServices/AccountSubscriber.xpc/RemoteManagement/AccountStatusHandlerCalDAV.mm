@interface AccountStatusHandlerCalDAV
- (id)getStatusInfoFromAccount:(id)a3;
@end

@implementation AccountStatusHandlerCalDAV

- (id)getStatusInfoFromAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [RMModelStatusAccountListCalDAV buildRequiredOnlyWithIdentifier:v4];

  v6 = [v3 objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  v7 = [v3 accountDescription];
  [v5 setStatusVisibleName:v7];

  v8 = [DAAccount daAccountSubclassWithBackingAccountInfo:v3];
  v9 = [v8 host];
  [v5 setStatusHostname:v9];

  v10 = [v8 port];
  if (v10)
  {
    v11 = [NSNumber numberWithInteger:v10];
    [v5 setStatusPort:v11];
  }

  v12 = [v3 username];
  [v5 setStatusUsername:v12];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabledForDataclass:kASSAccountDataclassCalendars]);
  [v5 setStatusAreCalendarsEnabled:v13];

  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabledForDataclass:kASSAccountDataclassReminders]);
  [v5 setStatusAreRemindersEnabled:v14];

  v15 = [v5 serializeWithType:1];

  return v15;
}

@end