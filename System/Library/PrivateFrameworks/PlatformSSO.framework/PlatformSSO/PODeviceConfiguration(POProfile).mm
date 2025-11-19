@interface PODeviceConfiguration(POProfile)
- (uint64_t)updateWithProfile:()POProfile;
@end

@implementation PODeviceConfiguration(POProfile)

- (uint64_t)updateWithProfile:()POProfile
{
  v4 = a3;
  [a1 setCreateUsersEnabled:{objc_msgSend(v4, "createUsersEnabled")}];
  [a1 setCreateFirstUserDuringSetupEnabled:{objc_msgSend(v4, "createFirstUserDuringSetupEnabled")}];
  [a1 setAuthorizationEnabled:{objc_msgSend(v4, "authorizationEnabled")}];
  v5 = [v4 tokenToUserMapping];
  [a1 setTokenToUserMapping:v5];

  [a1 setNewUserAuthorizationMode:{objc_msgSend(v4, "newUserAuthorizationMode")}];
  [a1 setUserAuthorizationMode:{objc_msgSend(v4, "userAuthorizationMode")}];
  v6 = [v4 accountDisplayName];
  [a1 setAccountDisplayName:v6];

  v7 = [v4 loginFrequency];
  [a1 setLoginFrequency:v7];

  [a1 setFileVaultPolicy:{objc_msgSend(v4, "fileVaultPolicy")}];
  [a1 setLoginPolicy:{objc_msgSend(v4, "loginPolicy")}];
  [a1 setUnlockPolicy:{objc_msgSend(v4, "unlockPolicy")}];
  [a1 setOfflineGracePeriod:{objc_msgSend(v4, "offlineGracePeriod")}];
  v8 = [v4 nonPlatformSSOAccounts];
  [a1 setNonPlatformSSOAccounts:v8];

  [a1 setRequireAuthGracePeriod:{objc_msgSend(v4, "requireAuthGracePeriod")}];
  [a1 setAllowDeviceIdentifiersInAttestation:{objc_msgSend(v4, "allowDeviceIdentifiersInAttestation")}];
  v9 = [v4 createUserAuthenticationMethods];
  [a1 setCreateUserLoginTypes:v9];

  [a1 setAllowAccessTokenExpressMode:{objc_msgSend(v4, "allowAccessKeyExpressMode")}];
  v10 = [v4 accessKeyReaderGroupIdentifier];
  [a1 setAccessTokenReaderGroupIdentifier:v10];

  [a1 setSynchronizeProfilePicture:{objc_msgSend(v4, "synchronizeProfilePicture")}];
  v11 = [v4 temporarySessionQuickLogin];

  return [a1 setTemporarySessionQuickLogin:v11];
}

@end