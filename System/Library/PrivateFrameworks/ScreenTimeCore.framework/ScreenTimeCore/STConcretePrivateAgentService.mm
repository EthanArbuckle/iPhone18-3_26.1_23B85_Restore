@interface STConcretePrivateAgentService
- (STPrivateAgentServiceDelegate)delegate;
- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)handler;
- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler;
- (void)authenticateRestrictionsPasscode:(id)passcode replyHandler:(id)handler;
- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)handler;
- (void)communicationPoliciesForDSID:(id)d withCompletionHandler:(id)handler;
- (void)communicationPoliciesWithCompletionHandler:(id)handler;
- (void)contactManagementStateForDSID:(id)d completionHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier replyHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(id)history replyHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application replyHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(id)domain webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(id)domain webApplication:(id)application replyHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application replyHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(id)ls webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(id)ls webApplication:(id)application replyHandler:(id)handler;
- (void)enableRemoteManagementForDSID:(id)d completionHandler:(id)handler;
- (void)enableScreenTimeForDSID:(id)d completionHandler:(id)handler;
- (void)enableWebContentFilterWithCompletionHandler:(id)handler;
- (void)exportDatabaseToURL:(id)l replyHandler:(id)handler;
- (void)isCommunicationSafetyEnabledForUserDSID:(id)d completionHandler:(id)handler;
- (void)isContentPrivacyEnabledForDSID:(id)d completionHandler:(id)handler;
- (void)isExplicitContentRestrictedWithCompletionHandler:(id)handler;
- (void)isLocationSharingModificationAllowedForDSID:(id)d completionHandler:(id)handler;
- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler;
- (void)isWebContentRestrictedWithCompletionHandler:(id)handler;
- (void)lastCommunicationLimitsModifcationDateForDSID:(id)d completionHandler:(id)handler;
- (void)lastModifcationDateForDSID:(id)d completionHandler:(id)handler;
- (void)loadEncodedSettingsForEncodedUser:(id)user withEncodedDefaults:(id)defaults completion:(id)completion;
- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)handler;
- (void)needsToSetRestrictionsPasscodeWithReplyHandler:(id)handler;
- (void)performMigrationFromMCXSettings:(id)settings completionHandler:(id)handler;
- (void)permitWebFilterURL:(id)l pageTitle:(id)title completionHandler:(id)handler;
- (void)postNotificationForContext:(id)context;
- (void)presentRemotePINControllerWithCompletionHandler:(id)handler;
- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)handler;
- (void)restrictionsForUserDSID:(id)d completionHandler:(id)handler;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithReplyHandler:(id)handler;
- (void)saveEncodedDefaults:(id)defaults forEncodedUser:(id)user completion:(id)completion;
- (void)saveEncodedSettings:(id)settings forEncodedUser:(id)user completion:(id)completion;
- (void)saveExpressIntroductionSettingsDefaults:(id)defaults completionHandler:(id)handler;
- (void)screenTimeStateWithCompletionHandler:(id)handler;
- (void)screenTimeSyncStateWithCompletionHandler:(id)handler;
- (void)setContactManagementState:(int64_t)state forDSID:(id)d completionHandler:(id)handler;
- (void)setRestrictionsPasscode:(id)passcode completionHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier replyHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier replyHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForWebDomain:(id)domain replyHandler:(id)handler;
- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler;
- (void)triggerDowngradeMigrationWithCompletionHandler:(id)handler;
@end

@implementation STConcretePrivateAgentService

- (STPrivateAgentServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate clearRestrictionsPasscodeWithCompletionHandler:handlerCopy];
}

- (void)communicationPoliciesForDSID:(id)d withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate communicationPoliciesForDSID:dCopy withCompletionHandler:handlerCopy];
}

- (void)communicationPoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate communicationPoliciesWithCompletionHandler:handlerCopy];
}

- (void)contactManagementStateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate contactManagementStateForDSID:dCopy completionHandler:handlerCopy];
}

- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  historyCopy = history;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteAllWebApplicationHistory:historyCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)deleteAllWebApplicationHistory:(id)history replyHandler:(id)handler
{
  handlerCopy = handler;
  historyCopy = history;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteAllWebApplicationHistory:historyCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteWebHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application replyHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  intervalCopy = interval;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteWebHistoryDuringInterval:intervalCopy webApplication:applicationCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForDomain:(id)domain webApplication:(id)application replyHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  domainCopy = domain;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteWebHistoryForDomain:domainCopy webApplication:applicationCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  applicationCopy = application;
  lCopy = l;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteWebHistoryForURL:lCopy webApplication:applicationCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application replyHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  lCopy = l;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteWebHistoryForURL:lCopy webApplication:applicationCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURLs:(id)ls webApplication:(id)application replyHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  lsCopy = ls;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteWebHistoryForURLs:lsCopy webApplication:applicationCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  lCopy = l;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteWebHistoryForURL:lCopy webApplication:applicationCopy profileIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURLs:(id)ls webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  lsCopy = ls;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteWebHistoryForURLs:lsCopy webApplication:applicationCopy profileIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForDomain:(id)domain webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  domainCopy = domain;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteWebHistoryForDomain:domainCopy webApplication:applicationCopy profileIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteWebHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  historyCopy = history;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate deleteAllWebApplicationHistory:historyCopy profileIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)enableScreenTimeForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate enableScreenTimeForDSID:dCopy completionHandler:handlerCopy];
}

- (void)enableRemoteManagementForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate enableRemoteManagementForDSID:dCopy completionHandler:handlerCopy];
}

- (void)isExplicitContentRestrictedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate isExplicitContentRestrictedWithCompletionHandler:handlerCopy];
}

- (void)isWebContentRestrictedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate isWebContentRestrictedWithCompletionHandler:handlerCopy];
}

- (void)enableWebContentFilterWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate enableWebContentFilterWithCompletionHandler:handlerCopy];
}

- (void)needsToSetRestrictionsPasscodeWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate needsToSetRestrictionsPasscodeWithReplyHandler:handlerCopy];
}

- (void)setRestrictionsPasscode:(id)passcode completionHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate setRestrictionsPasscode:passcodeCopy completionHandler:handlerCopy];
}

- (void)performMigrationFromMCXSettings:(id)settings completionHandler:(id)handler
{
  handlerCopy = handler;
  settingsCopy = settings;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate performMigrationFromMCXSettings:settingsCopy completionHandler:handlerCopy];
}

- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate applyDefaultUserPoliciesWithCompletionHandler:handlerCopy];
}

- (void)permitWebFilterURL:(id)l pageTitle:(id)title completionHandler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  lCopy = l;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate permitWebFilterURL:lCopy pageTitle:titleCopy completionHandler:handlerCopy];
}

- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:handlerCopy];
}

- (void)screenTimeStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate screenTimeStateWithCompletionHandler:handlerCopy];
}

- (void)screenTimeSyncStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate screenTimeSyncStateWithCompletionHandler:handlerCopy];
}

- (void)setContactManagementState:(int64_t)state forDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate setContactManagementState:state forDSID:dCopy completionHandler:handlerCopy];
}

- (void)isContentPrivacyEnabledForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate isContentPrivacyEnabledForDSID:dCopy completionHandler:handlerCopy];
}

- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate shouldAllowOneMoreMinuteForBundleIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate shouldAllowOneMoreMinuteForCategoryIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)shouldAllowOneMoreMinuteForWebDomain:(id)domain replyHandler:(id)handler
{
  handlerCopy = handler;
  domainCopy = domain;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate shouldAllowOneMoreMinuteForWebDomain:domainCopy replyHandler:handlerCopy];
}

- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate shouldRequestMoreTimeWithCompletionHandler:handlerCopy];
}

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate isRestrictionsPasscodeSetWithCompletionHandler:handlerCopy];
}

- (void)lastModifcationDateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate lastModifcationDateForDSID:dCopy completionHandler:handlerCopy];
}

- (void)lastCommunicationLimitsModifcationDateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate lastCommunicationLimitsModifcationDateForDSID:dCopy completionHandler:handlerCopy];
}

- (void)authenticateRestrictionsPasscode:(id)passcode replyHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate authenticateRestrictionsPasscode:passcodeCopy replyHandler:handlerCopy];
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithReplyHandler:handlerCopy];
}

- (void)presentRemotePINControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate presentRemotePINControllerWithCompletionHandler:handlerCopy];
}

- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  modelCopy = model;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate applyIntroductionModel:modelCopy forDSID:dCopy completionHandler:handlerCopy];
}

- (void)isLocationSharingModificationAllowedForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate isLocationSharingModificationAllowedForDSID:dCopy completionHandler:handlerCopy];
}

- (void)postNotificationForContext:(id)context
{
  contextCopy = context;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate postNotificationForContext:contextCopy];
}

- (void)triggerDowngradeMigrationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate triggerDowngradeMigrationWithCompletionHandler:handlerCopy];
}

- (void)restrictionsForUserDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate restrictionsForUserDSID:dCopy completionHandler:handlerCopy];
}

- (void)isCommunicationSafetyEnabledForUserDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate isCommunicationSafetyEnabledForUserDSID:dCopy completionHandler:handlerCopy];
}

- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate managingGuardianAppleIDsForLocalUserWithCompletionHandler:handlerCopy];
}

- (void)saveExpressIntroductionSettingsDefaults:(id)defaults completionHandler:(id)handler
{
  handlerCopy = handler;
  defaultsCopy = defaults;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate saveExpressIntroductionSettingsDefaults:defaultsCopy completionHandler:handlerCopy];
}

- (void)loadEncodedSettingsForEncodedUser:(id)user withEncodedDefaults:(id)defaults completion:(id)completion
{
  completionCopy = completion;
  defaultsCopy = defaults;
  userCopy = user;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate loadEncodedSettingsForEncodedUser:userCopy withEncodedDefaults:defaultsCopy completion:completionCopy];
}

- (void)saveEncodedSettings:(id)settings forEncodedUser:(id)user completion:(id)completion
{
  completionCopy = completion;
  userCopy = user;
  settingsCopy = settings;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate saveEncodedSettings:settingsCopy forEncodedUser:userCopy completion:completionCopy];
}

- (void)saveEncodedDefaults:(id)defaults forEncodedUser:(id)user completion:(id)completion
{
  completionCopy = completion;
  userCopy = user;
  defaultsCopy = defaults;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate saveEncodedDefaults:defaultsCopy forEncodedUser:userCopy completion:completionCopy];
}

- (void)exportDatabaseToURL:(id)l replyHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  delegate = [(STConcretePrivateAgentService *)self delegate];
  [delegate exportDatabaseToURL:lCopy replyHandler:handlerCopy];
}

@end