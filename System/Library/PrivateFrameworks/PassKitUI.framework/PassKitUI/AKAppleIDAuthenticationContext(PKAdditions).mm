@interface AKAppleIDAuthenticationContext(PKAdditions)
- (id)pk_AKAppleIDAuthenticationInAppContext;
@end

@implementation AKAppleIDAuthenticationContext(PKAdditions)

- (id)pk_AKAppleIDAuthenticationInAppContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = objc_alloc_init(MEMORY[0x1E698DE80]);
    reason = [self reason];
    [selfCopy setReason:reason];

    dSID = [self DSID];
    [selfCopy setDSID:dSID];

    altDSID = [self altDSID];
    [selfCopy setAltDSID:altDSID];

    defaultButtonString = [self defaultButtonString];
    [selfCopy setDefaultButtonString:defaultButtonString];

    title = [self title];
    [selfCopy setTitle:title];

    username = [self username];
    [selfCopy setUsername:username];

    [selfCopy setMaximumLoginAttempts:{objc_msgSend(self, "maximumLoginAttempts")}];
    [selfCopy setIsEphemeral:{objc_msgSend(self, "isEphemeral")}];
    [selfCopy setShouldOfferSecurityUpgrade:{objc_msgSend(self, "shouldOfferSecurityUpgrade")}];
    appProvidedData = [self appProvidedData];
    [selfCopy setAppProvidedData:appProvidedData];

    [selfCopy setServiceType:{objc_msgSend(self, "serviceType")}];
    [selfCopy setIsUsernameEditable:{objc_msgSend(self, "isUsernameEditable")}];
    [selfCopy setAuthenticationType:{objc_msgSend(self, "authenticationType")}];
  }

  return selfCopy;
}

@end