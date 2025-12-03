@interface AccountStatusHandlerExchange
- (id)getStatusInfoFromAccount:(id)account;
@end

@implementation AccountStatusHandlerExchange

- (id)getStatusInfoFromAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  v5 = [RMModelStatusAccountListExchange buildRequiredOnlyWithIdentifier:identifier];

  v6 = [accountCopy objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  accountDescription = [accountCopy accountDescription];
  [v5 setStatusVisibleName:accountDescription];

  v8 = [DAAccount daAccountSubclassWithBackingAccountInfo:accountCopy];
  host = [v8 host];
  [v5 setStatusHostname:host];

  port = [v8 port];
  if (port)
  {
    v11 = [NSNumber numberWithInteger:port];
    [v5 setStatusPort:v11];
  }

  username = [accountCopy username];
  [v5 setStatusUsername:username];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:ACAccountDataclassMail]);
  [v5 setStatusIsMailEnabled:v13];

  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:ACAccountDataclassCalendars]);
  [v5 setStatusAreCalendarsEnabled:v14];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:ACAccountDataclassContacts]);
  [v5 setStatusAreContactsEnabled:v15];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:ACAccountDataclassNotes]);
  [v5 setStatusAreNotesEnabled:v16];

  v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:ACAccountDataclassReminders]);
  [v5 setStatusAreRemindersEnabled:v17];

  v18 = [v5 serializeWithType:1];

  return v18;
}

@end