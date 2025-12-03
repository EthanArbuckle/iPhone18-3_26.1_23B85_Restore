@interface ACMTicketManager
- (__SecCertificate)defaultPublicKeyCertificateForRealm:(id)realm;
- (id)certificateLabelForRealm:(id)realm;
- (id)decodedUserPreferences:(id)preferences;
- (id)encodedUserPreferences:(id)preferences;
- (id)preferences;
- (id)publicKeyVersionForRealm:(id)realm;
- (id)systemInfo;
- (id)userPreferencesForToken:(id)token;
- (void)setPublickKeyVersion:(id)version label:(id)label forRealm:(id)realm;
- (void)setUserPreferences:(id)preferences forToken:(id)token;
- (void)uninstallPublicKeyForRealm:(id)realm;
@end

@implementation ACMTicketManager

- (id)preferences
{
  components = [(ACMTicketManager *)self components];

  return [components preferences];
}

- (id)systemInfo
{
  components = [(ACMTicketManager *)self components];

  return [components systemInfo];
}

- (__SecCertificate)defaultPublicKeyCertificateForRealm:(id)realm
{
  v4 = [objc_msgSend(-[ACMTicketManager preferences](self "preferences")];

  return [(ACCTicketManager *)self certificateFromString:v4];
}

- (id)certificateLabelForRealm:(id)realm
{
  v3 = [objc_msgSend(-[ACMTicketManager components](self "components")];

  return [v3 publicKeyCertificateName];
}

- (id)publicKeyVersionForRealm:(id)realm
{
  if ([(ACCTicketManager *)self certificateForRealm:?])
  {
    v5 = [objc_msgSend(objc_msgSend(-[ACMTicketManager components](self "components")];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 length])
  {
    return v5;
  }

  return [(ACMTicketManager *)self defaultPublicKeyVersionForRealm:realm];
}

- (void)setPublickKeyVersion:(id)version label:(id)label forRealm:(id)realm
{
  v7 = [objc_msgSend(-[ACMTicketManager components](self "components")];
  [v7 setPublicKeyCertificateName:label];

  [v7 setPublicKeyVersion:version];
}

- (void)uninstallPublicKeyForRealm:(id)realm
{
  v6.receiver = self;
  v6.super_class = ACMTicketManager;
  [(ACCTicketManager *)&v6 uninstallPublicKeyForRealm:?];
  v5 = [objc_msgSend(-[ACMTicketManager components](self "components")];
  [v5 setPublicKeyVersion:&stru_2A1EB91A0];
  [v5 setPublicKeyCertificateName:&stru_2A1EB91A0];
}

- (void)setUserPreferences:(id)preferences forToken:(id)token
{
  v5 = [(ACMTicketManager *)self encodedUserPreferences:preferences];

  [token setUserPreferences:v5];
}

- (id)userPreferencesForToken:(id)token
{
  userPreferences = [token userPreferences];

  return [(ACMTicketManager *)self decodedUserPreferences:userPreferences];
}

- (id)encodedUserPreferences:(id)preferences
{
  v3 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:preferences format:200 options:0 error:0];

  return ACFEncodeBase64(v3);
}

- (id)decodedUserPreferences:(id)preferences
{
  result = [preferences length];
  if (result)
  {
    v5 = MEMORY[0x29EDBA0C0];
    v6 = ACFDecodeBase64(preferences);

    return [v5 propertyListWithData:v6 options:0 format:0 error:0];
  }

  return result;
}

@end