@interface STAgentServer
- (STAgentServer)initWithScreenTimeStateManager:(id)manager expressIntroductionServer:(id)server;
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
- (void)fetchAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)fetchHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
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
- (void)requestConfigurationWithReplyHandler:(id)handler;
- (void)restrictionsForUserDSID:(id)d completionHandler:(id)handler;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithReplyHandler:(id)handler;
- (void)saveEncodedDefaults:(id)defaults forEncodedUser:(id)user completion:(id)completion;
- (void)saveEncodedSettings:(id)settings forEncodedUser:(id)user completion:(id)completion;
- (void)saveExpressIntroductionSettingsDefaults:(id)defaults completionHandler:(id)handler;
- (void)screenTimeStateWithCompletionHandler:(id)handler;
- (void)screenTimeSyncStateWithCompletionHandler:(id)handler;
- (void)sendPasscodeActivityToParentsWithReplyHandler:(id)handler;
- (void)setContactManagementState:(int64_t)state forDSID:(id)d completionHandler:(id)handler;
- (void)setRestrictionsPasscode:(id)passcode completionHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier replyHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier replyHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForWebDomain:(id)domain replyHandler:(id)handler;
- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler;
- (void)triggerDowngradeMigrationWithCompletionHandler:(id)handler;
@end

@implementation STAgentServer

- (STAgentServer)initWithScreenTimeStateManager:(id)manager expressIntroductionServer:(id)server
{
  managerCopy = manager;
  serverCopy = server;
  v14.receiver = self;
  v14.super_class = STAgentServer;
  v8 = [(STAgentServer *)&v14 init];
  if (v8)
  {
    v9 = [[STManagementStateServer alloc] initWithScreenTimeStateManager:managerCopy];
    stateServer = v8->_stateServer;
    v8->_stateServer = v9;

    v11 = objc_opt_new();
    remoteUIPINService = v8->_remoteUIPINService;
    v8->_remoteUIPINService = v11;

    objc_storeStrong(&v8->_expressIntroductionServer, server);
  }

  return v8;
}

- (void)requestConfigurationWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000065B0;
  v7[3] = &unk_1001A2C58;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [stateServer isRestrictionsPasscodeSetWithCompletionHandler:v7];
}

- (void)screenTimeStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer screenTimeStateWithCompletionHandler:handlerCopy];
}

- (void)enableScreenTimeForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer enableScreenTimeForDSID:dCopy completionHandler:handlerCopy];
}

- (void)enableRemoteManagementForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer enableRemoteManagementForDSID:dCopy completionHandler:handlerCopy];
}

- (void)screenTimeSyncStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer screenTimeSyncStateWithCompletionHandler:handlerCopy];
}

- (void)isContentPrivacyEnabledForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer isContentPrivacyEnabledForDSID:dCopy completionHandler:handlerCopy];
}

- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer clearRestrictionsPasscodeWithCompletionHandler:handlerCopy];
}

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer isRestrictionsPasscodeSetWithCompletionHandler:handlerCopy];
}

- (void)needsToSetRestrictionsPasscodeWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer needsToSetRestrictionsPasscodeWithReplyHandler:handlerCopy];
}

- (void)setRestrictionsPasscode:(id)passcode completionHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer setRestrictionsPasscode:passcodeCopy completionHandler:handlerCopy];
}

- (void)authenticateRestrictionsPasscode:(id)passcode replyHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer authenticateRestrictionsPasscode:passcodeCopy replyHandler:handlerCopy];
}

- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer shouldRequestMoreTimeWithCompletionHandler:handlerCopy];
}

- (void)communicationPoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer communicationPoliciesWithCompletionHandler:handlerCopy];
}

- (void)communicationPoliciesForDSID:(id)d withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer communicationPoliciesForDSID:dCopy withCompletionHandler:handlerCopy];
}

- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:handlerCopy];
}

- (void)setContactManagementState:(int64_t)state forDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer setContactManagementState:state forDSID:dCopy completionHandler:handlerCopy];
}

- (void)contactManagementStateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer contactManagementStateForDSID:dCopy completionHandler:handlerCopy];
}

- (void)isExplicitContentRestrictedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer isExplicitContentRestrictedWithCompletionHandler:handlerCopy];
}

- (void)isWebContentRestrictedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer isWebContentRestrictedWithCompletionHandler:handlerCopy];
}

- (void)enableWebContentFilterWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer enableWebContentFilterWithCompletionHandler:handlerCopy];
}

- (void)saveExpressIntroductionSettingsDefaults:(id)defaults completionHandler:(id)handler
{
  handlerCopy = handler;
  defaultsCopy = defaults;
  expressIntroductionServer = [(STAgentServer *)self expressIntroductionServer];
  [expressIntroductionServer saveSettingsDefaultsObjC:defaultsCopy completion:handlerCopy];
}

- (void)exportDatabaseToURL:(id)l replyHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer exportDatabaseToURL:lCopy replyHandler:handlerCopy];
}

- (void)presentRemotePINControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  remoteUIPINService = [(STAgentServer *)self remoteUIPINService];
  [remoteUIPINService presentRemotePINControllerWithCompletionHandler:handlerCopy];
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:handlerCopy];
}

- (void)sendPasscodeActivityToParentsWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer sendPasscodeActivityToParentsWithCompletionHandler:handlerCopy];
}

- (void)fetchHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer fetchHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)fetchAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  historyCopy = history;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer fetchAllWebApplicationHistory:historyCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application replyHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  lCopy = l;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteWebHistoryForURL:lCopy webApplication:applicationCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURLs:(id)ls webApplication:(id)application replyHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  lsCopy = ls;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteWebHistoryForURLs:lsCopy webApplication:applicationCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForDomain:(id)domain webApplication:(id)application replyHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  domainCopy = domain;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteWebHistoryForDomain:domainCopy webApplication:applicationCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application replyHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  intervalCopy = interval;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteWebHistoryDuringInterval:intervalCopy webApplication:applicationCopy replyHandler:handlerCopy];
}

- (void)deleteAllWebApplicationHistory:(id)history replyHandler:(id)handler
{
  handlerCopy = handler;
  historyCopy = history;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteAllWebApplicationHistory:historyCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  lCopy = l;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteWebHistoryForURL:lCopy webApplication:applicationCopy profileIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURLs:(id)ls webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  lsCopy = ls;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteWebHistoryForURLs:lsCopy webApplication:applicationCopy profileIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForDomain:(id)domain webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  domainCopy = domain;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteWebHistoryForDomain:domainCopy webApplication:applicationCopy profileIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteWebHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  historyCopy = history;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteAllWebApplicationHistory:historyCopy profileIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  applicationCopy = application;
  lCopy = l;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteWebHistoryForURL:lCopy webApplication:applicationCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteWebHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  historyCopy = history;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer deleteAllWebApplicationHistory:historyCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)performMigrationFromMCXSettings:(id)settings completionHandler:(id)handler
{
  handlerCopy = handler;
  settingsCopy = settings;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer performMigrationFromMCXSettings:settingsCopy completionHandler:handlerCopy];
}

- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer applyDefaultUserPoliciesWithCompletionHandler:handlerCopy];
}

- (void)permitWebFilterURL:(id)l pageTitle:(id)title completionHandler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  lCopy = l;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer permitWebFilterURL:lCopy pageTitle:titleCopy completionHandler:handlerCopy];
}

- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer shouldAllowOneMoreMinuteForBundleIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)shouldAllowOneMoreMinuteForWebDomain:(id)domain replyHandler:(id)handler
{
  handlerCopy = handler;
  domainCopy = domain;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer shouldAllowOneMoreMinuteForWebDomain:domainCopy replyHandler:handlerCopy];
}

- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer shouldAllowOneMoreMinuteForCategoryIdentifier:identifierCopy replyHandler:handlerCopy];
}

- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  modelCopy = model;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer applyIntroductionModel:modelCopy forDSID:dCopy completionHandler:handlerCopy];
}

- (void)isLocationSharingModificationAllowedForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer isLocationSharingModificationAllowedForDSID:dCopy completionHandler:handlerCopy];
}

- (void)lastCommunicationLimitsModifcationDateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer lastCommunicationLimitsModifcationDateForDSID:dCopy completionHandler:handlerCopy];
}

- (void)lastModifcationDateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer lastModifcationDateForDSID:dCopy completionHandler:handlerCopy];
}

- (void)postNotificationForContext:(id)context
{
  contextCopy = context;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer postNotificationForContext:contextCopy];
}

- (void)triggerDowngradeMigrationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer triggerDowngradeMigrationWithCompletionHandler:handlerCopy];
}

- (void)restrictionsForUserDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer restrictionsForUserDSID:dCopy completionHandler:handlerCopy];
}

- (void)isCommunicationSafetyEnabledForUserDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer isCommunicationSafetyEnabledForUserDSID:dCopy completionHandler:handlerCopy];
}

- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateServer = [(STAgentServer *)self stateServer];
  [stateServer managingGuardianAppleIDsForLocalUserWithCompletionHandler:handlerCopy];
}

- (void)loadEncodedSettingsForEncodedUser:(id)user withEncodedDefaults:(id)defaults completion:(id)completion
{
  completionCopy = completion;
  defaultsCopy = defaults;
  userCopy = user;
  expressIntroductionServer = [(STAgentServer *)self expressIntroductionServer];
  [expressIntroductionServer loadEncodedSettingsForEncodedUser:userCopy withEncodedDefaults:defaultsCopy completion:completionCopy];
}

- (void)saveEncodedSettings:(id)settings forEncodedUser:(id)user completion:(id)completion
{
  completionCopy = completion;
  userCopy = user;
  settingsCopy = settings;
  expressIntroductionServer = [(STAgentServer *)self expressIntroductionServer];
  [expressIntroductionServer saveEncodedSettings:settingsCopy forEncodedUser:userCopy completion:completionCopy];
}

- (void)saveEncodedDefaults:(id)defaults forEncodedUser:(id)user completion:(id)completion
{
  completionCopy = completion;
  userCopy = user;
  defaultsCopy = defaults;
  expressIntroductionServer = [(STAgentServer *)self expressIntroductionServer];
  [expressIntroductionServer saveEncodedDefaults:defaultsCopy forEncodedUser:userCopy completion:completionCopy];
}

@end