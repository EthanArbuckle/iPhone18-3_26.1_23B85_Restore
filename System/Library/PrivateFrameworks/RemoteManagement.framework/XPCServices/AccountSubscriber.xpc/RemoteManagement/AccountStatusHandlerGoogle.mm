@interface AccountStatusHandlerGoogle
- (id)getStatusInfoFromAccount:(id)account;
@end

@implementation AccountStatusHandlerGoogle

- (id)getStatusInfoFromAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  v5 = [RMModelStatusAccountListGoogle buildRequiredOnlyWithIdentifier:identifier];

  v6 = [accountCopy objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  accountDescription = [accountCopy accountDescription];
  [v5 setStatusVisibleName:accountDescription];

  username = [accountCopy username];
  [v5 setStatusUsername:username];

  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:ACAccountDataclassMail]);
  [v5 setStatusIsMailEnabled:v9];

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:ACAccountDataclassCalendars]);
  [v5 setStatusAreCalendarsEnabled:v10];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:ACAccountDataclassContacts]);
  [v5 setStatusAreContactsEnabled:v11];

  v12 = [accountCopy isEnabledForDataclass:ACAccountDataclassNotes];
  v13 = [NSNumber numberWithBool:v12];
  [v5 setStatusAreNotesEnabled:v13];

  v14 = [v5 serializeWithType:1];

  return v14;
}

@end