@interface WiFiUsageNetworkDetails
- (BOOL)isCurrentBssOnChannel:(id)channel;
- (WiFiUsageNetworkDetails)initWithNetworkName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)redactedDescription;
- (void)addDownloadSpeed:(double)speed;
@end

@implementation WiFiUsageNetworkDetails

- (WiFiUsageNetworkDetails)initWithNetworkName:(id)name
{
  v8.receiver = self;
  v8.super_class = WiFiUsageNetworkDetails;
  nameCopy = name;
  v4 = [(WiFiUsageNetworkDetails *)&v8 init];
  v5 = [nameCopy copy];

  networkName = v4->_networkName;
  v4->_networkName = v5;

  return v4;
}

- (id)redactedDescription
{
  v2 = MEMORY[0x277CCACA8];
  redactedDescription = [(WiFiUsageBssDetails *)self->_connectedBss redactedDescription];
  v4 = [v2 stringWithFormat:@"NetworkName:REDACTED BSSDetails:%@", redactedDescription];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(objc_opt_class());
  networkName = [(WiFiUsageNetworkDetails *)self networkName];
  v6 = [v4 initWithNetworkName:networkName];

  [v6 setIsKnown:self->_isKnown];
  [v6 setIsOpen:self->_isOpen];
  [v6 setIsOpen:self->_isOpen];
  [v6 setCaptiveStatus:self->_captiveStatus];
  [v6 setIsPublic:self->_isPublic];
  [v6 setIsLowQuality:self->_isLowQuality];
  [v6 setIsHome:self->_isHome];
  [v6 setIsWork:self->_isWork];
  [v6 setIsInternal:self->_isInternal];
  [v6 setIsManaged:self->_isManaged];
  [v6 setIsCarrierBased:self->_isCarrierBased];
  [v6 setIsCarPlay:self->_isCarPlay];
  [v6 setIsAppBased:self->_isAppBased];
  [v6 setIsWalletBased:self->_isWalletBased];
  [v6 setIsPersonalHotspot:self->_isPersonalHotspot];
  [v6 setIsMoving:self->_isMoving];
  [v6 setIsMesh:self->_isMesh];
  [v6 setIsWidelyDeployed:self->_isWidelyDeployed];
  [v6 setIsAutoJoined:self->_isAutoJoined];
  [v6 setIsAdhoc:self->_isAdhoc];
  [v6 setIsHidden:self->_isHidden];
  [v6 setIsPasspoint:self->_isPasspoint];
  [v6 setIsMetered:self->_isMetered];
  [v6 setIsBlueAtlas:self->_isBlueAtlas];
  [v6 setHasWapi:self->_hasWapi];
  [v6 setHasWeakSecurity:self->_hasWeakSecurity];
  [v6 setHasWpa3:self->_hasWpa3];
  [v6 setHasWep:self->_hasWep];
  [v6 setHasEnterpriseSecurity:self->_hasEnterpriseSecurity];
  [v6 setHasLegacyEnterpriseSecurity:self->_hasLegacyEnterpriseSecurity];
  [v6 setHasNoMap:self->_hasNoMap];
  [v6 setHasAmbiguousSsid:self->_hasAmbiguousSsid];
  [v6 setHasCustomNetworkSettings:self->_hasCustomNetworkSettings];
  [v6 setRequiresUsername:self->_requiresUsername];
  [v6 setRequiresPassword:self->_requiresPassword];
  [v6 setRequiresIdentity:self->_requiresIdentity];
  [v6 setRequiresOtp:self->_requiresOtp];
  [v6 setCanExposeImsi:self->_canExposeImsi];
  [v6 setAddedFromUI:self->_addedFromUI];
  [v6 setAddedFromApp:self->_addedFromApp];
  [v6 setAddedViaSync:self->_addedViaSync];
  [v6 setAddedViaATJ:self->_addedViaATJ];
  [v6 setAddedViaRecommendation:self->_addedViaRecommendation];
  [v6 setAddedViaSharing:self->_addedViaSharing];
  [v6 setAddedViaGuessing:self->_addedViaGuessing];
  [v6 setUsageRank:self->_usageRank];
  [v6 setAutoJoinDisabled:self->_autoJoinDisabled];
  [v6 setAutoLoginDisabled:self->_autoLoginDisabled];
  [v6 setLowDataModeEnabled:self->_lowDataModeEnabled];
  [v6 setControlCenterDisabled:self->_controlCenterDisabled];
  [v6 setPrivateRelayEnabled:self->_privateRelayEnabled];
  [v6 setPrivateRelayBlockedReason:self->_privateRelayBlockedReason];
  [v6 setAdvertisedCountryCode:self->_advertisedCountryCode];
  [v6 setAppliedCountryCode:self->_appliedCountryCode];
  [v6 setLocaleSource:self->_localeSource];
  [v6 setBssEnvironment:self->_bssEnvironment];
  [v6 setLastJoinDate:self->_lastJoinDate];
  [v6 setConnectedBss:self->_connectedBss];
  [v6 setColocatedNetworkCount:self->_colocatedNetworkCount];
  [v6 setSwitchedToCount:self->_switchedToCount];
  [v6 setSwitchedAwayCount:self->_switchedAwayCount];
  [v6 setNetworkScore:self->_networkScore];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_downloadSpeedResults;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v11) doubleValue];
        [v6 addDownloadSpeed:?];
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v6 setPrivateMacType:self->_privateMacType];
  [v6 setPrivateMacFeatureToggled:self->_privateMacFeatureToggled];
  [v6 setPrivateMacUnderClassification:self->_privateMacUnderClassification];
  [v6 setPrivateMacDisabledByProfile:self->_privateMacDisabledByProfile];
  [v6 setPrivateMacNetworkTypeHome:self->_privateMacNetworkTypeHome];
  [v6 setUsageDayTimeInLastDay:self->_usageDayTimeInLastDay];
  [v6 setUsageDayTimeInLastWeek:self->_usageDayTimeInLastWeek];
  [v6 setUsageDayTimeInLastMonth:self->_usageDayTimeInLastMonth];
  [v6 setUsageNightTimeInLastDay:self->_usageNightTimeInLastDay];
  [v6 setUsageNightTimeInLastWeek:self->_usageNightTimeInLastWeek];
  [v6 setUsageNightTimeInLastMonth:self->_usageNightTimeInLastMonth];
  [v6 setUsageStationaryDayTimeInLastDay:self->_usageStationaryDayTimeInLastDay];
  [v6 setUsageStationaryDayTimeInLastWeek:self->_usageStationaryDayTimeInLastWeek];
  [v6 setUsageStationaryDayTimeInLastMonth:self->_usageStationaryDayTimeInLastMonth];
  [v6 setUsageStationaryNightTimeInLastDay:self->_usageStationaryNightTimeInLastDay];
  [v6 setUsageStationaryNightTimeInLastWeek:self->_usageStationaryNightTimeInLastWeek];
  [v6 setUsageStationaryNightTimeInLastMonth:self->_usageStationaryNightTimeInLastMonth];
  [v6 setUsageChargingDayTimeInLastDay:self->_usageChargingDayTimeInLastDay];
  [v6 setUsageChargingDayTimeInLastWeek:self->_usageChargingDayTimeInLastWeek];
  [v6 setUsageChargingDayTimeInLastMonth:self->_usageChargingDayTimeInLastMonth];
  [v6 setUsageChargingNightTimeInLastDay:self->_usageChargingNightTimeInLastDay];
  [v6 setUsageChargingNightTimeInLastWeek:self->_usageChargingNightTimeInLastWeek];
  [v6 setUsageChargingNightTimeInLastMonth:self->_usageChargingNightTimeInLastMonth];
  [v6 setIsAtPrimaryHMHome:self->_isAtPrimaryHMHome];
  [v6 setIsAtNonPrimaryHMHome:self->_isAtNonPrimaryHMHome];
  [v6 setJoinSuccessCountInLastDay:self->_joinSuccessCountInLastDay];
  [v6 setJoinSuccessCountInLastWeek:self->_joinSuccessCountInLastWeek];
  [v6 setJoinSuccessCountInLastMonth:self->_joinSuccessCountInLastMonth];
  [v6 setJoinFailCountInLastDay:self->_joinFailCountInLastDay];
  [v6 setJoinFailCountInLastWeek:self->_joinFailCountInLastWeek];
  [v6 setJoinFailCountInLastMonth:self->_joinFailCountInLastMonth];
  [v6 setColocatedScopeCount:self->_colocatedScopeCount];
  [v6 setDisable6eMode:self->_disable6eMode];
  [v6 setIsStandalone6E:self->_isStandalone6E];
  [v6 setCarrierPayloadIdentifier:self->_carrierPayloadIdentifier];
  [v6 setIsCarrierPayloadIdentifierTelemetryApproved:self->_isCarrierPayloadIdentifierTelemetryApproved];
  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)addDownloadSpeed:(double)speed
{
  downloadSpeedResults = self->_downloadSpeedResults;
  if (!downloadSpeedResults)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = self->_downloadSpeedResults;
    self->_downloadSpeedResults = array;

    downloadSpeedResults = self->_downloadSpeedResults;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInt:speed];
  [(NSMutableArray *)downloadSpeedResults addObject:v8];
}

- (BOOL)isCurrentBssOnChannel:(id)channel
{
  channelCopy = channel;
  connectedBss = [(WiFiUsageNetworkDetails *)self connectedBss];
  v6 = [connectedBss isOnChannel:channelCopy];

  return v6;
}

@end