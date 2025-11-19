@interface AccountStatusHandlerSubscribedCalendar
- (id)getStatusInfoFromAccount:(id)a3;
@end

@implementation AccountStatusHandlerSubscribedCalendar

- (id)getStatusInfoFromAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [RMModelStatusAccountListSubscribedCalendar buildRequiredOnlyWithIdentifier:v4];

  v6 = [v3 objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  v7 = [v3 accountDescription];
  [v5 setStatusVisibleName:v7];

  v8 = [DAAccount daAccountSubclassWithBackingAccountInfo:v3];
  v9 = [v8 subscriptionURL];
  v10 = [v9 absoluteString];
  [v5 setStatusCalendarUrl:v10];

  v11 = [v3 username];
  [v5 setStatusUsername:v11];

  v12 = [v3 isEnabledForDataclass:kASSAccountDataclassCalendars];
  v13 = [NSNumber numberWithBool:v12];
  [v5 setStatusIsEnabled:v13];

  v14 = [v5 serializeWithType:1];

  return v14;
}

@end