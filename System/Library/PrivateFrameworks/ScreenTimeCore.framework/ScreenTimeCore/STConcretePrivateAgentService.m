@interface STConcretePrivateAgentService
- (STPrivateAgentServiceDelegate)delegate;
- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)a3;
- (void)applyIntroductionModel:(id)a3 forDSID:(id)a4 completionHandler:(id)a5;
- (void)authenticateRestrictionsPasscode:(id)a3 replyHandler:(id)a4;
- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)a3;
- (void)communicationPoliciesForDSID:(id)a3 withCompletionHandler:(id)a4;
- (void)communicationPoliciesWithCompletionHandler:(id)a3;
- (void)contactManagementStateForDSID:(id)a3 completionHandler:(id)a4;
- (void)deleteAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 clientBundleURLWrapper:(id)a5 replyHandler:(id)a6;
- (void)deleteAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 replyHandler:(id)a5;
- (void)deleteAllWebApplicationHistory:(id)a3 replyHandler:(id)a4;
- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7;
- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6;
- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 replyHandler:(id)a5;
- (void)deleteWebHistoryForDomain:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6;
- (void)deleteWebHistoryForDomain:(id)a3 webApplication:(id)a4 replyHandler:(id)a5;
- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7;
- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6;
- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 replyHandler:(id)a5;
- (void)deleteWebHistoryForURLs:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6;
- (void)deleteWebHistoryForURLs:(id)a3 webApplication:(id)a4 replyHandler:(id)a5;
- (void)enableRemoteManagementForDSID:(id)a3 completionHandler:(id)a4;
- (void)enableScreenTimeForDSID:(id)a3 completionHandler:(id)a4;
- (void)enableWebContentFilterWithCompletionHandler:(id)a3;
- (void)exportDatabaseToURL:(id)a3 replyHandler:(id)a4;
- (void)isCommunicationSafetyEnabledForUserDSID:(id)a3 completionHandler:(id)a4;
- (void)isContentPrivacyEnabledForDSID:(id)a3 completionHandler:(id)a4;
- (void)isExplicitContentRestrictedWithCompletionHandler:(id)a3;
- (void)isLocationSharingModificationAllowedForDSID:(id)a3 completionHandler:(id)a4;
- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)a3;
- (void)isWebContentRestrictedWithCompletionHandler:(id)a3;
- (void)lastCommunicationLimitsModifcationDateForDSID:(id)a3 completionHandler:(id)a4;
- (void)lastModifcationDateForDSID:(id)a3 completionHandler:(id)a4;
- (void)loadEncodedSettingsForEncodedUser:(id)a3 withEncodedDefaults:(id)a4 completion:(id)a5;
- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)a3;
- (void)needsToSetRestrictionsPasscodeWithReplyHandler:(id)a3;
- (void)performMigrationFromMCXSettings:(id)a3 completionHandler:(id)a4;
- (void)permitWebFilterURL:(id)a3 pageTitle:(id)a4 completionHandler:(id)a5;
- (void)postNotificationForContext:(id)a3;
- (void)presentRemotePINControllerWithCompletionHandler:(id)a3;
- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)a3;
- (void)restrictionsForUserDSID:(id)a3 completionHandler:(id)a4;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithReplyHandler:(id)a3;
- (void)saveEncodedDefaults:(id)a3 forEncodedUser:(id)a4 completion:(id)a5;
- (void)saveEncodedSettings:(id)a3 forEncodedUser:(id)a4 completion:(id)a5;
- (void)saveExpressIntroductionSettingsDefaults:(id)a3 completionHandler:(id)a4;
- (void)screenTimeStateWithCompletionHandler:(id)a3;
- (void)screenTimeSyncStateWithCompletionHandler:(id)a3;
- (void)setContactManagementState:(int64_t)a3 forDSID:(id)a4 completionHandler:(id)a5;
- (void)setRestrictionsPasscode:(id)a3 completionHandler:(id)a4;
- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(id)a3 replyHandler:(id)a4;
- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)a3 replyHandler:(id)a4;
- (void)shouldAllowOneMoreMinuteForWebDomain:(id)a3 replyHandler:(id)a4;
- (void)shouldRequestMoreTimeWithCompletionHandler:(id)a3;
- (void)triggerDowngradeMigrationWithCompletionHandler:(id)a3;
@end

@implementation STConcretePrivateAgentService

- (STPrivateAgentServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 clearRestrictionsPasscodeWithCompletionHandler:v4];
}

- (void)communicationPoliciesForDSID:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 communicationPoliciesForDSID:v7 withCompletionHandler:v6];
}

- (void)communicationPoliciesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 communicationPoliciesWithCompletionHandler:v4];
}

- (void)contactManagementStateForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 contactManagementStateForDSID:v7 completionHandler:v6];
}

- (void)deleteAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 clientBundleURLWrapper:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(STConcretePrivateAgentService *)self delegate];
  [v14 deleteAllWebApplicationHistory:v13 profileIdentifier:v12 clientBundleURLWrapper:v11 replyHandler:v10];
}

- (void)deleteAllWebApplicationHistory:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 deleteAllWebApplicationHistory:v7 replyHandler:v6];
}

- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(STConcretePrivateAgentService *)self delegate];
  [v17 deleteWebHistoryDuringInterval:v16 webApplication:v15 profileIdentifier:v14 clientBundleURLWrapper:v13 replyHandler:v12];
}

- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STConcretePrivateAgentService *)self delegate];
  [v11 deleteWebHistoryDuringInterval:v10 webApplication:v9 replyHandler:v8];
}

- (void)deleteWebHistoryForDomain:(id)a3 webApplication:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STConcretePrivateAgentService *)self delegate];
  [v11 deleteWebHistoryForDomain:v10 webApplication:v9 replyHandler:v8];
}

- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(STConcretePrivateAgentService *)self delegate];
  [v17 deleteWebHistoryForURL:v16 webApplication:v15 profileIdentifier:v14 clientBundleURLWrapper:v13 replyHandler:v12];
}

- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STConcretePrivateAgentService *)self delegate];
  [v11 deleteWebHistoryForURL:v10 webApplication:v9 replyHandler:v8];
}

- (void)deleteWebHistoryForURLs:(id)a3 webApplication:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STConcretePrivateAgentService *)self delegate];
  [v11 deleteWebHistoryForURLs:v10 webApplication:v9 replyHandler:v8];
}

- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(STConcretePrivateAgentService *)self delegate];
  [v14 deleteWebHistoryForURL:v13 webApplication:v12 profileIdentifier:v11 replyHandler:v10];
}

- (void)deleteWebHistoryForURLs:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(STConcretePrivateAgentService *)self delegate];
  [v14 deleteWebHistoryForURLs:v13 webApplication:v12 profileIdentifier:v11 replyHandler:v10];
}

- (void)deleteWebHistoryForDomain:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(STConcretePrivateAgentService *)self delegate];
  [v14 deleteWebHistoryForDomain:v13 webApplication:v12 profileIdentifier:v11 replyHandler:v10];
}

- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(STConcretePrivateAgentService *)self delegate];
  [v14 deleteWebHistoryDuringInterval:v13 webApplication:v12 profileIdentifier:v11 replyHandler:v10];
}

- (void)deleteAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STConcretePrivateAgentService *)self delegate];
  [v11 deleteAllWebApplicationHistory:v10 profileIdentifier:v9 replyHandler:v8];
}

- (void)enableScreenTimeForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 enableScreenTimeForDSID:v7 completionHandler:v6];
}

- (void)enableRemoteManagementForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 enableRemoteManagementForDSID:v7 completionHandler:v6];
}

- (void)isExplicitContentRestrictedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 isExplicitContentRestrictedWithCompletionHandler:v4];
}

- (void)isWebContentRestrictedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 isWebContentRestrictedWithCompletionHandler:v4];
}

- (void)enableWebContentFilterWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 enableWebContentFilterWithCompletionHandler:v4];
}

- (void)needsToSetRestrictionsPasscodeWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 needsToSetRestrictionsPasscodeWithReplyHandler:v4];
}

- (void)setRestrictionsPasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 setRestrictionsPasscode:v7 completionHandler:v6];
}

- (void)performMigrationFromMCXSettings:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 performMigrationFromMCXSettings:v7 completionHandler:v6];
}

- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 applyDefaultUserPoliciesWithCompletionHandler:v4];
}

- (void)permitWebFilterURL:(id)a3 pageTitle:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STConcretePrivateAgentService *)self delegate];
  [v11 permitWebFilterURL:v10 pageTitle:v9 completionHandler:v8];
}

- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:v4];
}

- (void)screenTimeStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 screenTimeStateWithCompletionHandler:v4];
}

- (void)screenTimeSyncStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 screenTimeSyncStateWithCompletionHandler:v4];
}

- (void)setContactManagementState:(int64_t)a3 forDSID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(STConcretePrivateAgentService *)self delegate];
  [v10 setContactManagementState:a3 forDSID:v9 completionHandler:v8];
}

- (void)isContentPrivacyEnabledForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 isContentPrivacyEnabledForDSID:v7 completionHandler:v6];
}

- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 shouldAllowOneMoreMinuteForBundleIdentifier:v7 replyHandler:v6];
}

- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 shouldAllowOneMoreMinuteForCategoryIdentifier:v7 replyHandler:v6];
}

- (void)shouldAllowOneMoreMinuteForWebDomain:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 shouldAllowOneMoreMinuteForWebDomain:v7 replyHandler:v6];
}

- (void)shouldRequestMoreTimeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 shouldRequestMoreTimeWithCompletionHandler:v4];
}

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 isRestrictionsPasscodeSetWithCompletionHandler:v4];
}

- (void)lastModifcationDateForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 lastModifcationDateForDSID:v7 completionHandler:v6];
}

- (void)lastCommunicationLimitsModifcationDateForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 lastCommunicationLimitsModifcationDateForDSID:v7 completionHandler:v6];
}

- (void)authenticateRestrictionsPasscode:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 authenticateRestrictionsPasscode:v7 replyHandler:v6];
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithReplyHandler:v4];
}

- (void)presentRemotePINControllerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 presentRemotePINControllerWithCompletionHandler:v4];
}

- (void)applyIntroductionModel:(id)a3 forDSID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STConcretePrivateAgentService *)self delegate];
  [v11 applyIntroductionModel:v10 forDSID:v9 completionHandler:v8];
}

- (void)isLocationSharingModificationAllowedForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 isLocationSharingModificationAllowedForDSID:v7 completionHandler:v6];
}

- (void)postNotificationForContext:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 postNotificationForContext:v4];
}

- (void)triggerDowngradeMigrationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 triggerDowngradeMigrationWithCompletionHandler:v4];
}

- (void)restrictionsForUserDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 restrictionsForUserDSID:v7 completionHandler:v6];
}

- (void)isCommunicationSafetyEnabledForUserDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 isCommunicationSafetyEnabledForUserDSID:v7 completionHandler:v6];
}

- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePrivateAgentService *)self delegate];
  [v5 managingGuardianAppleIDsForLocalUserWithCompletionHandler:v4];
}

- (void)saveExpressIntroductionSettingsDefaults:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 saveExpressIntroductionSettingsDefaults:v7 completionHandler:v6];
}

- (void)loadEncodedSettingsForEncodedUser:(id)a3 withEncodedDefaults:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STConcretePrivateAgentService *)self delegate];
  [v11 loadEncodedSettingsForEncodedUser:v10 withEncodedDefaults:v9 completion:v8];
}

- (void)saveEncodedSettings:(id)a3 forEncodedUser:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STConcretePrivateAgentService *)self delegate];
  [v11 saveEncodedSettings:v10 forEncodedUser:v9 completion:v8];
}

- (void)saveEncodedDefaults:(id)a3 forEncodedUser:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STConcretePrivateAgentService *)self delegate];
  [v11 saveEncodedDefaults:v10 forEncodedUser:v9 completion:v8];
}

- (void)exportDatabaseToURL:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcretePrivateAgentService *)self delegate];
  [v8 exportDatabaseToURL:v7 replyHandler:v6];
}

@end