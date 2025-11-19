@interface ACMTicketManager
- (__SecCertificate)defaultPublicKeyCertificateForRealm:(id)a3;
- (id)certificateLabelForRealm:(id)a3;
- (id)decodedUserPreferences:(id)a3;
- (id)encodedUserPreferences:(id)a3;
- (id)preferences;
- (id)publicKeyVersionForRealm:(id)a3;
- (id)systemInfo;
- (id)userPreferencesForToken:(id)a3;
- (void)setPublickKeyVersion:(id)a3 label:(id)a4 forRealm:(id)a5;
- (void)setUserPreferences:(id)a3 forToken:(id)a4;
- (void)uninstallPublicKeyForRealm:(id)a3;
@end

@implementation ACMTicketManager

- (id)preferences
{
  v2 = [(ACMTicketManager *)self components];

  return [v2 preferences];
}

- (id)systemInfo
{
  v2 = [(ACMTicketManager *)self components];

  return [v2 systemInfo];
}

- (__SecCertificate)defaultPublicKeyCertificateForRealm:(id)a3
{
  v4 = [objc_msgSend(-[ACMTicketManager preferences](self "preferences")];

  return [(ACCTicketManager *)self certificateFromString:v4];
}

- (id)certificateLabelForRealm:(id)a3
{
  v3 = [objc_msgSend(-[ACMTicketManager components](self "components")];

  return [v3 publicKeyCertificateName];
}

- (id)publicKeyVersionForRealm:(id)a3
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

  return [(ACMTicketManager *)self defaultPublicKeyVersionForRealm:a3];
}

- (void)setPublickKeyVersion:(id)a3 label:(id)a4 forRealm:(id)a5
{
  v7 = [objc_msgSend(-[ACMTicketManager components](self "components")];
  [v7 setPublicKeyCertificateName:a4];

  [v7 setPublicKeyVersion:a3];
}

- (void)uninstallPublicKeyForRealm:(id)a3
{
  v6.receiver = self;
  v6.super_class = ACMTicketManager;
  [(ACCTicketManager *)&v6 uninstallPublicKeyForRealm:?];
  v5 = [objc_msgSend(-[ACMTicketManager components](self "components")];
  [v5 setPublicKeyVersion:&stru_2A1EB91A0];
  [v5 setPublicKeyCertificateName:&stru_2A1EB91A0];
}

- (void)setUserPreferences:(id)a3 forToken:(id)a4
{
  v5 = [(ACMTicketManager *)self encodedUserPreferences:a3];

  [a4 setUserPreferences:v5];
}

- (id)userPreferencesForToken:(id)a3
{
  v4 = [a3 userPreferences];

  return [(ACMTicketManager *)self decodedUserPreferences:v4];
}

- (id)encodedUserPreferences:(id)a3
{
  v3 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:a3 format:200 options:0 error:0];

  return ACFEncodeBase64(v3);
}

- (id)decodedUserPreferences:(id)a3
{
  result = [a3 length];
  if (result)
  {
    v5 = MEMORY[0x29EDBA0C0];
    v6 = ACFDecodeBase64(a3);

    return [v5 propertyListWithData:v6 options:0 format:0 error:0];
  }

  return result;
}

@end