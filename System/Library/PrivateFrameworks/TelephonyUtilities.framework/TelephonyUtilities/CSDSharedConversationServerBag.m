@interface CSDSharedConversationServerBag
- (BOOL)faceTimeSpamReportingCheckPrefix;
- (BOOL)gftaasPseudonymsEnabled:(id)a3;
- (BOOL)isAutomaticUpgradingEnabled;
- (BOOL)isControlMessageOverQREnabled;
- (BOOL)isFaceTimeMyselfEnabled;
- (BOOL)isGFTDowngradeToOneToOneAvailable;
- (BOOL)isGuestModeSupported;
- (BOOL)isLetMeInRequestUIForUnknownParticipantEnabled;
- (BOOL)isMSNPillDataSourceEnabled;
- (BOOL)isModernGFTEnabled;
- (BOOL)isNoConversationParticipantEndCallEnabled;
- (BOOL)isParticipantIDToURIIncludedInPush;
- (BOOL)isSharePlayVersionCheckEnabled;
- (BOOL)isShortMKIEnabled;
- (BOOL)isTLEUPlusOneEnabled;
- (BOOL)isTranslationAvailable;
- (BOOL)isUPlusNDowngradeAvailable;
- (BOOL)isUPlusOneSessionCapabilitiesEnabled;
- (BOOL)sharePlayTelephonyEnabled;
- (BOOL)shouldRingForIncomingCallEnabled;
- (NSDictionary)activityIdentifierBundleIDMapping;
- (double)liveLookupTimeoutSeconds;
- (float)answeringMachineAudioPowerLevelThreshold;
- (id)localBundleIDForActivityIdentifier:(id)a3;
- (id)stableBundleIdentifierForLocalBundleIdentifier:(id)a3;
- (int64_t)answeringMachineDidStopTimeout;
- (int64_t)maxVoicemailLengthFudgeSeconds;
- (int64_t)maxVoicemailLengthSeconds;
- (int64_t)voIPDOSCount;
- (unint64_t)AVCBlobRecoveryGracePeriod;
- (unint64_t)AVCBlobRecoveryTimeout;
- (unint64_t)activeParticipantPruningTimeout;
- (unint64_t)activeParticipantRefreshDelay;
- (unint64_t)addParticipantFromQRTime;
- (unint64_t)answeringMachineAudioPowerLevelCount;
- (unint64_t)clearMuteCacheDelay;
- (unint64_t)greenTeaHandoffTimeout;
- (unint64_t)groupFaceTimeTLESampleRate;
- (unint64_t)handoffAudioDeviceTimeout;
- (unint64_t)handoffUPlusOneLeaveDelay;
- (unint64_t)handoffUPlusOneLeaveTimeout;
- (unint64_t)idsFirewallBatchSize;
- (unint64_t)idsFirewallCHExpiryTimeDays;
- (unint64_t)inactiveLinkCacheLimit;
- (unint64_t)inactiveLinkPseudonymExpiry;
- (unint64_t)letMeInRequestNotificationTimeout;
- (unint64_t)letMeInRequestRecoveryTimeout;
- (unint64_t)letMeInRequestUINotificationGracePeriod;
- (unint64_t)linkPseudonymExpiry;
- (unint64_t)linkRemainingTimeBeforeAutoRenewal;
- (unint64_t)linkRenewalExtensionTime;
- (unint64_t)linkSyncRecoverFailureLimit;
- (unint64_t)linkSyncRecoverTimeLimit;
- (unint64_t)maxActiveParticipantFetchRetries;
- (unint64_t)maxIRSessionRetries;
- (unint64_t)maxKickMemberRetries;
- (unint64_t)maxRemoteSpatialPersonaParticipants;
- (unint64_t)messageRetryIntervalMillis;
- (unint64_t)messageRetryMaxAttempts;
- (unint64_t)noConversationParticipantTimeout;
- (unint64_t)rebroadcastTimeThreshold;
- (unint64_t)sessionCleanupTimeout;
- (unint64_t)sharePlayForCallsRemoteHangupFailsafeSeconds;
- (unint64_t)sharePlayTelephonyRemoteAvailabilityThresholdSeconds;
- (unint64_t)uPlusOneAuthTagSampleRate;
- (unint64_t)uPlusOneTLESampleRate;
- (unint64_t)voIPDOSMaxJailTimeSeconds;
- (unint64_t)voIPDOSMinJailTimeSeconds;
- (unint64_t)voIPDOSTimeSeconds;
- (unint64_t)watchInviteNotificationDelay;
- (unint64_t)webNicknameLengthLimit;
@end

@implementation CSDSharedConversationServerBag

- (BOOL)isMSNPillDataSourceEnabled
{
  v2 = self;
  v3 = sub_100030A94();

  return v3 & 1;
}

- (unint64_t)activeParticipantPruningTimeout
{
  v2 = self;
  v3 = sub_1003022B0();

  return v3;
}

- (unint64_t)sessionCleanupTimeout
{
  v2 = self;
  v3 = sub_100302308();

  return v3;
}

- (unint64_t)greenTeaHandoffTimeout
{
  v2 = self;
  v3 = sub_100302360();

  return v3;
}

- (unint64_t)AVCBlobRecoveryGracePeriod
{
  v2 = self;
  v3 = sub_1003023B8();

  return v3;
}

- (unint64_t)AVCBlobRecoveryTimeout
{
  v2 = self;
  v3 = sub_100302410();

  return v3;
}

- (unint64_t)noConversationParticipantTimeout
{
  v2 = self;
  v3 = sub_100302468();

  return v3;
}

- (unint64_t)rebroadcastTimeThreshold
{
  v2 = self;
  v3 = sub_1003024C0();

  return v3;
}

- (unint64_t)activeParticipantRefreshDelay
{
  v2 = self;
  v3 = sub_100302518();

  return v3;
}

- (BOOL)isAutomaticUpgradingEnabled
{
  v2 = self;
  v3 = sub_100302570();

  return v3 & 1;
}

- (unint64_t)uPlusOneAuthTagSampleRate
{
  v2 = self;
  v3 = sub_1003025C8();

  return v3;
}

- (unint64_t)groupFaceTimeTLESampleRate
{
  v2 = self;
  v3 = sub_100302620();

  return v3;
}

- (unint64_t)uPlusOneTLESampleRate
{
  v2 = self;
  v3 = sub_100302678();

  return v3;
}

- (BOOL)isShortMKIEnabled
{
  v2 = self;
  v3 = sub_1003026D0();

  return v3 & 1;
}

- (BOOL)isTLEUPlusOneEnabled
{
  v2 = self;
  v3 = sub_100302728();

  return v3 & 1;
}

- (BOOL)isParticipantIDToURIIncludedInPush
{
  v2 = self;
  v3 = sub_100302780();

  return v3 & 1;
}

- (BOOL)isModernGFTEnabled
{
  v2 = self;
  v3 = sub_1003027D8();

  return v3 & 1;
}

- (BOOL)isSharePlayVersionCheckEnabled
{
  v2 = self;
  v3 = sub_100302830();

  return v3 & 1;
}

- (BOOL)isLetMeInRequestUIForUnknownParticipantEnabled
{
  v2 = self;
  v3 = sub_100302888();

  return v3 & 1;
}

- (BOOL)isNoConversationParticipantEndCallEnabled
{
  v2 = self;
  v3 = sub_1003028E0();

  return v3 & 1;
}

- (BOOL)isUPlusOneSessionCapabilitiesEnabled
{
  v2 = self;
  v3 = sub_100302938();

  return v3 & 1;
}

- (BOOL)isControlMessageOverQREnabled
{
  v2 = self;
  v3 = sub_100302990();

  return v3 & 1;
}

- (BOOL)shouldRingForIncomingCallEnabled
{
  v2 = self;
  v3 = sub_1003029E8();

  return v3 & 1;
}

- (BOOL)isFaceTimeMyselfEnabled
{
  v2 = self;
  v3 = sub_100302A40();

  return v3 & 1;
}

- (unint64_t)maxActiveParticipantFetchRetries
{
  v2 = self;
  v3 = sub_100302A98();

  return v3;
}

- (unint64_t)maxKickMemberRetries
{
  v2 = self;
  v3 = sub_100302AF0();

  return v3;
}

- (unint64_t)linkPseudonymExpiry
{
  v2 = self;
  v3 = sub_100302B48();

  return v3;
}

- (unint64_t)addParticipantFromQRTime
{
  v2 = self;
  v3 = sub_100302BA0();

  return v3;
}

- (unint64_t)linkRenewalExtensionTime
{
  v2 = self;
  v3 = sub_100302BF8();

  return v3;
}

- (unint64_t)linkRemainingTimeBeforeAutoRenewal
{
  v2 = self;
  v3 = sub_100302C50();

  return v3;
}

- (unint64_t)inactiveLinkPseudonymExpiry
{
  v2 = self;
  v3 = sub_100302CA8();

  return v3;
}

- (unint64_t)inactiveLinkCacheLimit
{
  v2 = self;
  v3 = sub_100302D00();

  return v3;
}

- (unint64_t)webNicknameLengthLimit
{
  v2 = self;
  v3 = sub_100302D58();

  return v3;
}

- (unint64_t)linkSyncRecoverFailureLimit
{
  v2 = self;
  v3 = sub_100302DB0();

  return v3;
}

- (unint64_t)linkSyncRecoverTimeLimit
{
  v2 = self;
  v3 = sub_100302E08();

  return v3;
}

- (unint64_t)letMeInRequestNotificationTimeout
{
  v2 = self;
  v3 = sub_100302E60();

  return v3;
}

- (unint64_t)letMeInRequestRecoveryTimeout
{
  v2 = self;
  v3 = sub_100302EB8();

  return v3;
}

- (unint64_t)letMeInRequestUINotificationGracePeriod
{
  v2 = self;
  v3 = sub_100302F10();

  return v3;
}

- (NSDictionary)activityIdentifierBundleIDMapping
{
  v2 = self;
  sub_100302FB4();

  sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)localBundleIDForActivityIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_100303000(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)idsFirewallCHExpiryTimeDays
{
  v2 = self;
  v3 = sub_1003032DC();

  return v3;
}

- (unint64_t)idsFirewallBatchSize
{
  v2 = self;
  v3 = sub_100303334();

  return v3;
}

- (unint64_t)handoffAudioDeviceTimeout
{
  v2 = self;
  v3 = sub_10030338C();

  return v3;
}

- (id)stableBundleIdentifierForLocalBundleIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_1003033B0(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)messageRetryMaxAttempts
{
  v2 = self;
  v3 = sub_1003036C0();

  return v3;
}

- (unint64_t)messageRetryIntervalMillis
{
  v2 = self;
  v3 = sub_100303718();

  return v3;
}

- (BOOL)isGFTDowngradeToOneToOneAvailable
{
  v2 = self;
  v3 = sub_100303770();

  return v3 & 1;
}

- (unint64_t)maxRemoteSpatialPersonaParticipants
{
  v2 = self;
  v3 = sub_1003037C8();

  return v3;
}

- (BOOL)isUPlusNDowngradeAvailable
{
  v2 = self;
  v3 = sub_100303820();

  return v3 & 1;
}

- (BOOL)isGuestModeSupported
{
  v2 = self;
  v3 = sub_100303878();

  return v3 & 1;
}

- (BOOL)isTranslationAvailable
{
  v2 = self;
  v3 = sub_1003038D0();

  return v3 & 1;
}

- (BOOL)gftaasPseudonymsEnabled:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_1003038F4(v4, v6);

  return v4 & 1;
}

- (unint64_t)handoffUPlusOneLeaveTimeout
{
  v2 = self;
  v3 = sub_1003039C8();

  return v3;
}

- (unint64_t)handoffUPlusOneLeaveDelay
{
  v2 = self;
  v3 = sub_100303A20();

  return v3;
}

- (unint64_t)watchInviteNotificationDelay
{
  v2 = self;
  v3 = sub_100303A78();

  return v3;
}

- (unint64_t)maxIRSessionRetries
{
  v2 = self;
  v3 = sub_100303AD0();

  return v3;
}

- (float)answeringMachineAudioPowerLevelThreshold
{
  v2 = self;
  v3 = sub_100303B30();

  return v3;
}

- (unint64_t)answeringMachineAudioPowerLevelCount
{
  v2 = self;
  v3 = sub_100303BB4();

  return v3;
}

- (int64_t)answeringMachineDidStopTimeout
{
  v2 = self;
  v3 = sub_100303C0C();

  return v3;
}

- (int64_t)maxVoicemailLengthSeconds
{
  v2 = self;
  v3 = sub_100303C64();

  return v3;
}

- (int64_t)maxVoicemailLengthFudgeSeconds
{
  v2 = self;
  v3 = sub_100303CBC();

  return v3;
}

- (unint64_t)clearMuteCacheDelay
{
  v2 = self;
  v3 = sub_100303D14();

  return v3;
}

- (int64_t)voIPDOSCount
{
  v2 = self;
  v3 = sub_100303D6C();

  return v3;
}

- (unint64_t)voIPDOSTimeSeconds
{
  v2 = self;
  v3 = sub_100303DC4();

  return v3;
}

- (unint64_t)voIPDOSMaxJailTimeSeconds
{
  v2 = self;
  v3 = sub_100303E1C();

  return v3;
}

- (unint64_t)voIPDOSMinJailTimeSeconds
{
  v2 = self;
  v3 = sub_100303E74();

  return v3;
}

- (double)liveLookupTimeoutSeconds
{
  v2 = self;
  v3 = sub_100303ED4();

  return v3;
}

- (BOOL)faceTimeSpamReportingCheckPrefix
{
  v2 = self;
  v3 = sub_100303F58();

  return v3 & 1;
}

- (BOOL)sharePlayTelephonyEnabled
{
  v2 = self;
  v3 = sub_100303FB0();

  return v3 & 1;
}

- (unint64_t)sharePlayTelephonyRemoteAvailabilityThresholdSeconds
{
  v2 = self;
  v3 = sub_100304008();

  return v3;
}

- (unint64_t)sharePlayForCallsRemoteHangupFailsafeSeconds
{
  v2 = self;
  v3 = sub_100304060();

  return v3;
}

@end