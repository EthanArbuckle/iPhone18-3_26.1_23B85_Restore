@interface AccountStatusHandlerGoogle
- (id)getStatusInfoFromAccount:(id)a3;
@end

@implementation AccountStatusHandlerGoogle

- (id)getStatusInfoFromAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [RMModelStatusAccountListGoogle buildRequiredOnlyWithIdentifier:v4];

  v6 = [v3 objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  v7 = [v3 accountDescription];
  [v5 setStatusVisibleName:v7];

  v8 = [v3 username];
  [v5 setStatusUsername:v8];

  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabledForDataclass:ACAccountDataclassMail]);
  [v5 setStatusIsMailEnabled:v9];

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabledForDataclass:ACAccountDataclassCalendars]);
  [v5 setStatusAreCalendarsEnabled:v10];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabledForDataclass:ACAccountDataclassContacts]);
  [v5 setStatusAreContactsEnabled:v11];

  v12 = [v3 isEnabledForDataclass:ACAccountDataclassNotes];
  v13 = [NSNumber numberWithBool:v12];
  [v5 setStatusAreNotesEnabled:v13];

  v14 = [v5 serializeWithType:1];

  return v14;
}

@end