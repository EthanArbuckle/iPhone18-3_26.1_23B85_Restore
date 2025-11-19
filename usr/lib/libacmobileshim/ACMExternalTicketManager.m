@interface ACMExternalTicketManager
- (id)deviceIdentifier;
- (id)preferences;
- (id)twoSVCreateDateForPrincipal:(id)a3;
- (id)twoSVPersonIDForPrincipal:(id)a3;
- (id)twoSVSecretForPrincipal:(id)a3;
- (void)tokenDidReceive2SVSecret:(id)a3;
@end

@implementation ACMExternalTicketManager

- (id)preferences
{
  v2 = +[ACMAppleConnectImplComponents components];

  return [v2 preferences];
}

- (id)twoSVPersonIDForPrincipal:(id)a3
{
  v3 = [-[ACMExternalTicketManager preferences](self "preferences")];

  return [v3 personID];
}

- (id)twoSVSecretForPrincipal:(id)a3
{
  v3 = [-[ACMExternalTicketManager preferences](self "preferences")];

  return [v3 clientSecret];
}

- (id)twoSVCreateDateForPrincipal:(id)a3
{
  v3 = [-[ACMExternalTicketManager preferences](self "preferences")];

  return [v3 clientSecretCreateDate];
}

- (id)deviceIdentifier
{
  v2 = [+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")];

  return [v2 uniqueDeviceIdentifier];
}

- (void)tokenDidReceive2SVSecret:(id)a3
{
  v4 = [-[ACMExternalTicketManager preferences](self "preferences")];
  [v4 setClientSecret:{objc_msgSend(a3, "clientSecret")}];
  [v4 setClientSecretCreateDate:{objc_msgSend(a3, "clientSecretCreationTimestamp")}];
  v5 = [a3 personID];

  [v4 setPersonID:v5];
}

@end