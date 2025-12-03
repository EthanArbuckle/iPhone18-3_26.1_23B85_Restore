@interface PODeviceConfiguration(POProfile)
- (uint64_t)updateWithProfile:()POProfile;
@end

@implementation PODeviceConfiguration(POProfile)

- (uint64_t)updateWithProfile:()POProfile
{
  v4 = a3;
  [self setCreateUsersEnabled:{objc_msgSend(v4, "createUsersEnabled")}];
  [self setCreateFirstUserDuringSetupEnabled:{objc_msgSend(v4, "createFirstUserDuringSetupEnabled")}];
  [self setAuthorizationEnabled:{objc_msgSend(v4, "authorizationEnabled")}];
  tokenToUserMapping = [v4 tokenToUserMapping];
  [self setTokenToUserMapping:tokenToUserMapping];

  [self setNewUserAuthorizationMode:{objc_msgSend(v4, "newUserAuthorizationMode")}];
  [self setUserAuthorizationMode:{objc_msgSend(v4, "userAuthorizationMode")}];
  accountDisplayName = [v4 accountDisplayName];
  [self setAccountDisplayName:accountDisplayName];

  loginFrequency = [v4 loginFrequency];
  [self setLoginFrequency:loginFrequency];

  [self setFileVaultPolicy:{objc_msgSend(v4, "fileVaultPolicy")}];
  [self setLoginPolicy:{objc_msgSend(v4, "loginPolicy")}];
  [self setUnlockPolicy:{objc_msgSend(v4, "unlockPolicy")}];
  [self setOfflineGracePeriod:{objc_msgSend(v4, "offlineGracePeriod")}];
  nonPlatformSSOAccounts = [v4 nonPlatformSSOAccounts];
  [self setNonPlatformSSOAccounts:nonPlatformSSOAccounts];

  [self setRequireAuthGracePeriod:{objc_msgSend(v4, "requireAuthGracePeriod")}];
  [self setAllowDeviceIdentifiersInAttestation:{objc_msgSend(v4, "allowDeviceIdentifiersInAttestation")}];
  createUserAuthenticationMethods = [v4 createUserAuthenticationMethods];
  [self setCreateUserLoginTypes:createUserAuthenticationMethods];

  [self setAllowAccessTokenExpressMode:{objc_msgSend(v4, "allowAccessKeyExpressMode")}];
  accessKeyReaderGroupIdentifier = [v4 accessKeyReaderGroupIdentifier];
  [self setAccessTokenReaderGroupIdentifier:accessKeyReaderGroupIdentifier];

  [self setSynchronizeProfilePicture:{objc_msgSend(v4, "synchronizeProfilePicture")}];
  temporarySessionQuickLogin = [v4 temporarySessionQuickLogin];

  return [self setTemporarySessionQuickLogin:temporarySessionQuickLogin];
}

@end