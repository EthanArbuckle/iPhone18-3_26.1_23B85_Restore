@interface AccountStatusHandlerSubscribedCalendar
- (id)getStatusInfoFromAccount:(id)account;
@end

@implementation AccountStatusHandlerSubscribedCalendar

- (id)getStatusInfoFromAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  v5 = [RMModelStatusAccountListSubscribedCalendar buildRequiredOnlyWithIdentifier:identifier];

  v6 = [accountCopy objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  accountDescription = [accountCopy accountDescription];
  [v5 setStatusVisibleName:accountDescription];

  v8 = [DAAccount daAccountSubclassWithBackingAccountInfo:accountCopy];
  subscriptionURL = [v8 subscriptionURL];
  absoluteString = [subscriptionURL absoluteString];
  [v5 setStatusCalendarUrl:absoluteString];

  username = [accountCopy username];
  [v5 setStatusUsername:username];

  v12 = [accountCopy isEnabledForDataclass:kASSAccountDataclassCalendars];
  v13 = [NSNumber numberWithBool:v12];
  [v5 setStatusIsEnabled:v13];

  v14 = [v5 serializeWithType:1];

  return v14;
}

@end