@interface AKAppleIDAuthenticationContext(PKAdditions)
- (id)pk_AKAppleIDAuthenticationInAppContext;
@end

@implementation AKAppleIDAuthenticationContext(PKAdditions)

- (id)pk_AKAppleIDAuthenticationInAppContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E698DE80]);
    v3 = [a1 reason];
    [v2 setReason:v3];

    v4 = [a1 DSID];
    [v2 setDSID:v4];

    v5 = [a1 altDSID];
    [v2 setAltDSID:v5];

    v6 = [a1 defaultButtonString];
    [v2 setDefaultButtonString:v6];

    v7 = [a1 title];
    [v2 setTitle:v7];

    v8 = [a1 username];
    [v2 setUsername:v8];

    [v2 setMaximumLoginAttempts:{objc_msgSend(a1, "maximumLoginAttempts")}];
    [v2 setIsEphemeral:{objc_msgSend(a1, "isEphemeral")}];
    [v2 setShouldOfferSecurityUpgrade:{objc_msgSend(a1, "shouldOfferSecurityUpgrade")}];
    v9 = [a1 appProvidedData];
    [v2 setAppProvidedData:v9];

    [v2 setServiceType:{objc_msgSend(a1, "serviceType")}];
    [v2 setIsUsernameEditable:{objc_msgSend(a1, "isUsernameEditable")}];
    [v2 setAuthenticationType:{objc_msgSend(a1, "authenticationType")}];
  }

  return v2;
}

@end