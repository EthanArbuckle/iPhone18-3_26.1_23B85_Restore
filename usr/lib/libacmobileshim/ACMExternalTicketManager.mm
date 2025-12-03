@interface ACMExternalTicketManager
- (id)deviceIdentifier;
- (id)preferences;
- (id)twoSVCreateDateForPrincipal:(id)principal;
- (id)twoSVPersonIDForPrincipal:(id)principal;
- (id)twoSVSecretForPrincipal:(id)principal;
- (void)tokenDidReceive2SVSecret:(id)secret;
@end

@implementation ACMExternalTicketManager

- (id)preferences
{
  v2 = +[ACMAppleConnectImplComponents components];

  return [v2 preferences];
}

- (id)twoSVPersonIDForPrincipal:(id)principal
{
  v3 = [-[ACMExternalTicketManager preferences](self "preferences")];

  return [v3 personID];
}

- (id)twoSVSecretForPrincipal:(id)principal
{
  v3 = [-[ACMExternalTicketManager preferences](self "preferences")];

  return [v3 clientSecret];
}

- (id)twoSVCreateDateForPrincipal:(id)principal
{
  v3 = [-[ACMExternalTicketManager preferences](self "preferences")];

  return [v3 clientSecretCreateDate];
}

- (id)deviceIdentifier
{
  v2 = [+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")];

  return [v2 uniqueDeviceIdentifier];
}

- (void)tokenDidReceive2SVSecret:(id)secret
{
  v4 = [-[ACMExternalTicketManager preferences](self "preferences")];
  [v4 setClientSecret:{objc_msgSend(secret, "clientSecret")}];
  [v4 setClientSecretCreateDate:{objc_msgSend(secret, "clientSecretCreationTimestamp")}];
  personID = [secret personID];

  [v4 setPersonID:personID];
}

@end