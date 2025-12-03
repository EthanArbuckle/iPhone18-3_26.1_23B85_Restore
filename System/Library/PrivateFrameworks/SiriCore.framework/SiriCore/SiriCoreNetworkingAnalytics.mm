@interface SiriCoreNetworkingAnalytics
+ (id)debugNetworkInterfacesFromSiriCoreConnectionMetrics:(id)metrics;
+ (id)debugSessionConnectionNetworkFromSiriCoreConnectionMetrics:(id)metrics;
+ (id)endpointFromDictionary:(id)dictionary;
+ (id)endpointsFromArray:(id)array;
+ (id)establishmentResolutionFromArray:(id)array;
+ (id)handShakeProtocolFromArray:(id)array;
+ (id)networkInterfacesFromDictionary:(id)dictionary;
+ (id)pathInterfacesFromArray:(id)array;
+ (id)pingInfoFromSiriCoreConnectionMetrics:(id)metrics;
+ (id)proxyConfigurationFromDictionary:(id)dictionary;
+ (id)sessionConnectionFailedError:(id)error connectionMode:(id)mode sessionType:(id)type sessionState:(id)state dormant:(BOOL)dormant analysisInfo:(id)info;
+ (id)sessionConnectionNetworkFromSiriCoreConnectionMetrics:(id)metrics;
+ (id)sessionConnectionQualityFromSiriCoreConnectionMetrics:(id)metrics;
+ (id)sharedSiriCoreNetworkingAnalytics;
+ (int)connectionMethodFromString:(id)string;
+ (int)connectionModeFromString:(id)string;
+ (int)connectionTypeFromString:(id)string;
+ (int)endpointTypeFromNumber:(id)number;
+ (int)handshakeProtocolFromString:(id)string;
+ (int)pathStatusFromNumber:(id)number;
+ (int)pathTypeFromNumber:(id)number;
+ (int)phyModeFromString:(id)string;
+ (int)providerFromString:(id)string;
+ (int)qualityFromString:(id)string;
+ (int)sessionStateFromString:(id)string;
+ (int)sessionTypeFromString:(id)string;
+ (int)tlsFromString:(id)string;
- (BOOL)emitLogDebug;
- (BOOL)isNetIdAvailable;
- (SiriCoreNetworkingAnalytics)init;
- (id)_init;
- (id)orchestratorRequestId;
- (unsigned)getSequenceNumber;
- (void)_emitAllCachedMessagesFor:(id)for;
- (void)increaseSequenceNumber;
- (void)logDebugNetworkConnectionStatePreparationSnapshotCaptured:(id)captured;
- (void)logDebugNetworkConnectionStateReadySnapshotCaptured:(id)captured;
- (void)logDebugSessionConnectionSnapshotCaptured:(id)captured;
- (void)logNetworkConnectionStatePreparationSnapshotCaptured:(id)captured;
- (void)logNetworkConnectionStateReadySnapshotCaptured:(id)captured;
- (void)logPeerConnectionFailed:(id)failed;
- (void)logRequestLinkBetweenOrchestratorAndNetworkComponent;
- (void)logSessionConnectionFailed:(id)failed;
- (void)logSessionConnectionHttpHeaderCreated:(id)created;
- (void)logSessionConnectionSnapshotCaptured:(id)captured;
- (void)reset;
- (void)resetNetId;
- (void)resetSequenceNumber;
- (void)setConnectionProvider:(id)provider;
- (void)setIsConnectionActive:(BOOL)active;
- (void)setNetId:(id)id;
- (void)setNetIdAvailable:(BOOL)available;
- (void)setNetworkConnectionId:(id)id;
- (void)setOrchestratorRequestId:(id)id;
@end

@implementation SiriCoreNetworkingAnalytics

+ (id)sessionConnectionFailedError:(id)error connectionMode:(id)mode sessionType:(id)type sessionState:(id)state dormant:(BOOL)dormant analysisInfo:(id)info
{
  dormantCopy = dormant;
  errorCopy = error;
  v14 = MEMORY[0x277D58C10];
  infoCopy = info;
  stateCopy = state;
  typeCopy = type;
  modeCopy = mode;
  v17 = objc_alloc_init(v14);
  if (errorCopy)
  {
    v18 = objc_alloc_init(MEMORY[0x277D58BC8]);
    domain = [errorCopy domain];
    [v18 setDomain:domain];

    v20 = [errorCopy description];
    [v18 setDescription:v20];

    [v18 setErrorCode:{objc_msgSend(errorCopy, "code")}];
  }

  else
  {
    v18 = 0;
  }

  userInfo = [errorCopy userInfo];
  v22 = *MEMORY[0x277CCA7E8];
  v23 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

  if (v23)
  {
    userInfo2 = [errorCopy userInfo];
    v25 = [userInfo2 objectForKey:v22];

    v23 = objc_alloc_init(MEMORY[0x277D58BC8]);
    domain2 = [v25 domain];
    [v23 setDomain:domain2];

    v27 = [v25 description];
    [v23 setDescription:v27];

    [v23 setErrorCode:{objc_msgSend(v25, "code")}];
  }

  connectionType = [infoCopy connectionType];
  v29 = SiriCoreConnectionTechnologyGetDescription([connectionType technology]);

  sendBufferSize = [infoCopy sendBufferSize];
  [sendBufferSize doubleValue];
  v32 = v31;

  [v17 setConnectionType:{objc_msgSend(self, "connectionTypeFromString:", v29)}];
  v33 = [self connectionModeFromString:modeCopy];

  [v17 setConnectionMode:v33];
  v34 = [self sessionTypeFromString:typeCopy];

  [v17 setSessionType:v34];
  v35 = [self sessionStateFromString:stateCopy];

  [v17 setNetworkSessionState:v35];
  [v17 setIsWwanPreferred:{objc_msgSend(infoCopy, "wwanPreferred")}];
  [v17 setIsDormant:dormantCopy];
  [v17 setSendBufferSize:v32];
  policyId = [infoCopy policyId];

  [v17 setPolicyId:policyId];
  [v17 setError:v18];
  [v17 setUnderlyingError:v23];

  return v17;
}

+ (int)sessionStateFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString isEqualToString:@"initial"])
  {
    v4 = 1;
  }

  else if ([lowercaseString isEqualToString:@"waiting"])
  {
    v4 = 2;
  }

  else if ([lowercaseString isEqualToString:@"retrywaiting"])
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"connectionstarted"])
  {
    v4 = 4;
  }

  else if ([lowercaseString isEqualToString:@"connectionopened"])
  {
    v4 = 5;
  }

  else if ([lowercaseString isEqualToString:@"openeddormant"])
  {
    v4 = 6;
  }

  else if ([lowercaseString isEqualToString:@"authenticating"])
  {
    v4 = 7;
  }

  else if ([lowercaseString isEqualToString:@"holding"])
  {
    v4 = 8;
  }

  else if ([lowercaseString isEqualToString:@"createassistant"])
  {
    v4 = 9;
  }

  else if ([lowercaseString isEqualToString:@"loadassistant"])
  {
    v4 = 10;
  }

  else if ([lowercaseString isEqualToString:@"destroyassistant"])
  {
    v4 = 11;
  }

  else if ([lowercaseString isEqualToString:@"active"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)sessionTypeFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString isEqualToString:@"local"])
  {
    v4 = 1;
  }

  else if ([lowercaseString isEqualToString:@"remote"])
  {
    v4 = 2;
  }

  else if ([lowercaseString isEqualToString:@"remotelimited"])
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"remotefull"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)connectionModeFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString isEqualToString:@"assistant"])
  {
    v4 = 1;
  }

  else if ([lowercaseString isEqualToString:@"assistantanddictation"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)providerFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString isEqualToString:@"adpeerconnectionprovider"])
  {
    v4 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    lowercaseString2 = [v6 lowercaseString];
    v8 = [lowercaseString isEqualToString:lowercaseString2];

    if (v8)
    {
      v4 = 3;
    }

    else
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      lowercaseString3 = [v10 lowercaseString];
      v12 = [lowercaseString isEqualToString:lowercaseString3];

      if (v12)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

+ (id)sessionConnectionQualityFromSiriCoreConnectionMetrics:(id)metrics
{
  metricsCopy = metrics;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  symptomsBasedNetworkQuality = [metricsCopy symptomsBasedNetworkQuality];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__SiriCoreNetworkingAnalytics_SessionConnectionSnapshot__sessionConnectionQualityFromSiriCoreConnectionMetrics___block_invoke;
  v8[3] = &unk_279BD5C68;
  v8[7] = &v9;
  v8[8] = self;
  v8[4] = &v21;
  v8[5] = &v17;
  v8[6] = &v13;
  [symptomsBasedNetworkQuality enumerateKeysAndObjectsUsingBlock:v8];

  v6 = objc_alloc_init(MEMORY[0x277D58BB0]);
  [v6 setSymptomsCellularHistorical:*(v18 + 6)];
  [v6 setSymptomsCellularInstant:*(v22 + 6)];
  [v6 setSymptomsWiFiHistorical:*(v10 + 6)];
  [v6 setSymptomsWiFiInstant:*(v14 + 6)];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v6;
}

void __112__SiriCoreNetworkingAnalytics_SessionConnectionSnapshot__sessionConnectionQualityFromSiriCoreConnectionMetrics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 lowercaseString];
  if ([v5 isEqualToString:@"cellularinstant"])
  {
    v6 = 32;
  }

  else if ([v5 isEqualToString:@"cellularhistorical"])
  {
    v6 = 40;
  }

  else if ([v5 isEqualToString:@"wifiinstant"])
  {
    v6 = 48;
  }

  else
  {
    if (![v5 isEqualToString:@"wifihistorical"])
    {
      goto LABEL_10;
    }

    v6 = 56;
  }

  *(*(*(a1 + v6) + 8) + 24) = [*(a1 + 64) qualityFromString:v7];
LABEL_10:
}

+ (int)qualityFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString isEqualToString:@"bad"])
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"good"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [lowercaseString isEqualToString:@"unavailable"];
  }

  return v4;
}

+ (id)pingInfoFromSiriCoreConnectionMetrics:(id)metrics
{
  v3 = MEMORY[0x277D58BA8];
  metricsCopy = metrics;
  v5 = objc_alloc_init(v3);
  pingCount = [metricsCopy pingCount];
  [pingCount doubleValue];
  [v5 setPingCount:v7];

  meanPing = [metricsCopy meanPing];
  [meanPing doubleValue];
  [v5 setMeanPingInMs:v9 * 1000.0];

  unacknowledgedPingCount = [metricsCopy unacknowledgedPingCount];

  [unacknowledgedPingCount doubleValue];
  [v5 setUnacknowledgedPingCount:v11];

  return v5;
}

+ (id)debugNetworkInterfacesFromSiriCoreConnectionMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  tcpInfoMetricsByInterfaceName = [metricsCopy tcpInfoMetricsByInterfaceName];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __110__SiriCoreNetworkingAnalytics_SessionConnectionSnapshot__debugNetworkInterfacesFromSiriCoreConnectionMetrics___block_invoke;
  v12[3] = &unk_279BD5C40;
  v13 = metricsCopy;
  selfCopy = self;
  v7 = v5;
  v14 = v7;
  v8 = metricsCopy;
  [tcpInfoMetricsByInterfaceName enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

void __110__SiriCoreNetworkingAnalytics_SessionConnectionSnapshot__debugNetworkInterfacesFromSiriCoreConnectionMetrics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277D58B98];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [v7 rttCurrent];
  [v9 doubleValue];
  [v8 setRttCurrent:v10];

  v11 = [v7 rttSmoothed];
  [v11 doubleValue];
  [v8 setRttSmoothed:v12];

  v13 = [v7 rttVariance];
  [v13 doubleValue];
  [v8 setRttVariance:v14];

  v15 = [v7 rttBest];
  [v15 doubleValue];
  [v8 setRttBest:v16];

  v17 = [v7 packetsSent];
  [v17 doubleValue];
  [v8 setPacketsSent:v18];

  v19 = [v7 packetsReceived];
  [v19 doubleValue];
  [v8 setPacketsReceived:v20];

  v21 = [v7 bytesSent];
  [v21 doubleValue];
  [v8 setBytesSent:v22];

  v23 = [v7 bytesRetransmitted];
  [v23 doubleValue];
  [v8 setBytesRetransmitted:v24];

  v25 = [v7 bytesUnacked];
  [v25 doubleValue];
  [v8 setBytesUnacked:v26];

  v27 = [v7 bytesReceived];
  [v27 doubleValue];
  [v8 setBytesReceived:v28];

  v29 = [v7 duplicateBytesReceived];
  [v29 doubleValue];
  [v8 setDuplicateBytesReceived:v30];

  v31 = [v7 outOfOrderBytesReceived];
  [v31 doubleValue];
  [v8 setOutOfOrderBytesReceived:v32];

  v33 = [v7 sendBufferBytes];
  [v33 doubleValue];
  [v8 setSendBufferBytes:v34];

  v35 = [v7 sendBandwidth];
  [v35 doubleValue];
  [v8 setSendBandwidth:v36];

  v37 = [v7 synRetransmits];
  [v37 doubleValue];
  [v8 setSynRetransmits:v38];

  v39 = [v7 tfoSynDataAcked];

  [v39 doubleValue];
  [v8 setTfoSynDataAcked:v40];

  v41 = [*(a1 + 32) subflowSwitchCounts];
  v42 = [v41 objectForKeyedSubscript:v5];
  [v42 doubleValue];
  [v8 setSubflowSwitchCount:v43];

  v44 = [*(a1 + 32) flowNetworkInterfaceType];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __110__SiriCoreNetworkingAnalytics_SessionConnectionSnapshot__debugNetworkInterfacesFromSiriCoreConnectionMetrics___block_invoke_2;
  v48[3] = &unk_279BD5C18;
  v45 = *(a1 + 48);
  v50 = v8;
  v51 = v45;
  v49 = v5;
  v46 = v8;
  v47 = v5;
  [v44 enumerateKeysAndObjectsUsingBlock:v48];

  [*(a1 + 40) addObject:v46];
}

void __110__SiriCoreNetworkingAnalytics_SessionConnectionSnapshot__debugNetworkInterfacesFromSiriCoreConnectionMetrics___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  if (v7 && [(__CFString *)v10 isEqualToString:*(a1 + 32)])
  {
    v8 = objc_alloc_init(MEMORY[0x277D58BF0]);
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = &stru_28782DDB0;
    }

    [v8 setName:v9];
    [v8 setConnectionType:{objc_msgSend(*(a1 + 48), "connectionTypeFromString:", v7)}];
    [*(a1 + 40) setNetworkInterface:v8];
    *a4 = 1;
  }
}

+ (id)debugSessionConnectionNetworkFromSiriCoreConnectionMetrics:(id)metrics
{
  v4 = MEMORY[0x277D58BA0];
  metricsCopy = metrics;
  v6 = objc_alloc_init(v4);
  wifiPhyMode = [metricsCopy wifiPhyMode];
  [v6 setWiFiPhyMode:{objc_msgSend(self, "phyModeFromString:", wifiPhyMode)}];

  signalStrengthBars = [metricsCopy signalStrengthBars];
  [signalStrengthBars doubleValue];
  [v6 setSignalStrengthBars:?];

  timeUntilOpen = [metricsCopy timeUntilOpen];
  [timeUntilOpen doubleValue];
  [v6 setOpenTimeInMs:v10 * 1000.0];

  connectedSubflowCount = [metricsCopy connectedSubflowCount];

  [connectedSubflowCount doubleValue];
  [v6 setConnectedSubflowCount:v12];

  return v6;
}

+ (int)phyModeFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString isEqualToString:@"802.11a"])
  {
    v4 = 1;
  }

  else if ([lowercaseString isEqualToString:@"802.11b"])
  {
    v4 = 2;
  }

  else if ([lowercaseString isEqualToString:@"802.11g"])
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"802.11n"])
  {
    v4 = 4;
  }

  else if ([lowercaseString isEqualToString:@"802.11ac"])
  {
    v4 = 5;
  }

  else if ([lowercaseString isEqualToString:@"802.11ax"])
  {
    v4 = 6;
  }

  else if ([lowercaseString isEqualToString:@"802.11aj"])
  {
    v4 = 7;
  }

  else if ([lowercaseString isEqualToString:@"802.11ah"])
  {
    v4 = 8;
  }

  else if ([lowercaseString isEqualToString:@"802.11ad"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sessionConnectionNetworkFromSiriCoreConnectionMetrics:(id)metrics
{
  v4 = MEMORY[0x277D58C20];
  metricsCopy = metrics;
  v6 = objc_alloc_init(v4);
  carrierName = [metricsCopy carrierName];
  v8 = carrierName;
  if (carrierName)
  {
    v9 = carrierName;
  }

  else
  {
    v9 = &stru_28782DDB0;
  }

  [v6 setCarrierName:v9];

  connectionMethod = [metricsCopy connectionMethod];
  [v6 setConnectionMethod:{objc_msgSend(self, "connectionMethodFromString:", connectionMethod)}];

  primarySubflowInterfaceName = [metricsCopy primarySubflowInterfaceName];
  v12 = primarySubflowInterfaceName;
  if (primarySubflowInterfaceName)
  {
    v13 = primarySubflowInterfaceName;
  }

  else
  {
    v13 = &stru_28782DDB0;
  }

  [v6 setPrimarySubflowInterfaceName:v13];

  isCaptive = [metricsCopy isCaptive];
  [v6 setIsCaptive:{objc_msgSend(isCaptive, "BOOLValue")}];

  rssi = [metricsCopy rssi];
  [rssi doubleValue];
  [v6 setRssi:?];

  v16 = [metricsCopy snr];
  [v16 doubleValue];
  [v6 setSnr:?];

  v17 = [metricsCopy cca];
  [v17 doubleValue];
  [v6 setClearChannelAssessmentScore:?];

  attemptCount = [metricsCopy attemptCount];
  [attemptCount doubleValue];
  [v6 setAttempCount:v19];

  timeUntilFirstByteRead = [metricsCopy timeUntilFirstByteRead];
  [timeUntilFirstByteRead doubleValue];
  [v6 setFirstByteTime:(v21 * 1000.0)];

  connectionStartTimeToDNSResolutionTimeMsec = [metricsCopy connectionStartTimeToDNSResolutionTimeMsec];
  [connectionStartTimeToDNSResolutionTimeMsec doubleValue];
  [v6 setStartToDNSResolution:v23];

  dnsResolutionTime = [metricsCopy dnsResolutionTime];
  [dnsResolutionTime doubleValue];
  [v6 setDnsResolutionTime:v25];

  tlsVersion = [metricsCopy tlsVersion];
  v27 = tlsVersion;
  if (tlsVersion)
  {
    v28 = tlsVersion;
  }

  else
  {
    v28 = &stru_28782DDB0;
  }

  [v6 setTlsVersion:{objc_msgSend(self, "tlsFromString:", v28)}];

  tlsHandshakeTimeMsec = [metricsCopy tlsHandshakeTimeMsec];
  [tlsHandshakeTimeMsec doubleValue];
  [v6 setTlsHandshakeTime:v30];

  connectionEstablishmentTimeMsec = [metricsCopy connectionEstablishmentTimeMsec];
  [connectionEstablishmentTimeMsec doubleValue];
  [v6 setConnectionEstablishmentTime:v32];

  connectionStartTimeToConnectionEstablishmentTimeMsec = [metricsCopy connectionStartTimeToConnectionEstablishmentTimeMsec];
  [connectionStartTimeToConnectionEstablishmentTimeMsec doubleValue];
  [v6 setConnectionStartToEstablishmentTime:v34];

  connectionStartTimeToTLSHandshakeTimeMsec = [metricsCopy connectionStartTimeToTLSHandshakeTimeMsec];

  [connectionStartTimeToTLSHandshakeTimeMsec doubleValue];
  [v6 setConnectionStartToTLSHandshake:v36];

  return v6;
}

+ (id)networkInterfacesFromDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CBEB18];
  dictionaryCopy = dictionary;
  v6 = objc_alloc_init(v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__SiriCoreNetworkingAnalytics_SessionConnectionSnapshot__networkInterfacesFromDictionary___block_invoke;
  v9[3] = &unk_279BD5BF0;
  selfCopy = self;
  v7 = v6;
  v10 = v7;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __90__SiriCoreNetworkingAnalytics_SessionConnectionSnapshot__networkInterfacesFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = MEMORY[0x277D58BF0];
    v6 = a3;
    v7 = a2;
    v8 = objc_alloc_init(v5);
    v11 = v8;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_28782DDB0;
    }

    [v8 setName:v9];

    v10 = [*(a1 + 40) connectionTypeFromString:v6];
    [v11 setConnectionType:v10];
    [*(a1 + 32) addObject:v11];
  }
}

+ (int)connectionTypeFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString containsString:@"wi-fi"])
  {
    v4 = 1;
  }

  else if ([lowercaseString containsString:@"wwan"])
  {
    v4 = 2;
  }

  else if ([lowercaseString containsString:@"utran"])
  {
    v4 = 3;
  }

  else if ([lowercaseString containsString:@"2g cdma1x"])
  {
    v4 = 4;
  }

  else if ([lowercaseString containsString:@"lte"])
  {
    v4 = 5;
  }

  else if ([lowercaseString containsString:@"2g gprs"])
  {
    v4 = 6;
  }

  else if ([lowercaseString containsString:@"2g edge"])
  {
    v4 = 7;
  }

  else if ([lowercaseString containsString:@"3g wcdma"])
  {
    v4 = 8;
  }

  else if ([lowercaseString containsString:@"3g hsdpa"])
  {
    v4 = 9;
  }

  else if ([lowercaseString containsString:@"3g evdorev0"])
  {
    v4 = 10;
  }

  else if ([lowercaseString containsString:@"3g evdoreva"])
  {
    v4 = 11;
  }

  else if ([lowercaseString containsString:@"cdma evdorevb"])
  {
    v4 = 12;
  }

  else if ([lowercaseString containsString:@"hrpd"])
  {
    v4 = 13;
  }

  else if ([lowercaseString isEqualToString:@"mptcp"])
  {
    v4 = 14;
  }

  else if ([lowercaseString containsString:@"lednelly"])
  {
    v4 = 15;
  }

  else if ([lowercaseString containsString:@"ids"])
  {
    v4 = 16;
  }

  else if ([lowercaseString containsString:@"pop"])
  {
    v4 = 17;
  }

  else if ([lowercaseString containsString:@"florence"])
  {
    v4 = 18;
  }

  else if ([lowercaseString containsString:@"local"])
  {
    v4 = 19;
  }

  else if ([lowercaseString isEqualToString:@"nwmptcp"])
  {
    v4 = 20;
  }

  else if ([lowercaseString isEqualToString:@"5g nrnsa"])
  {
    v4 = 21;
  }

  else if ([lowercaseString isEqualToString:@"5g nr"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)connectionMethodFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString containsString:@"peer"])
  {
    v4 = 1;
  }

  else if ([lowercaseString containsString:@"tuscany"])
  {
    v4 = 2;
  }

  else if ([lowercaseString containsString:@"florence"])
  {
    v4 = 3;
  }

  else if ([lowercaseString containsString:@"mptcp_policybanned"])
  {
    v4 = 4;
  }

  else if ([lowercaseString containsString:@"tcp_policybanned"])
  {
    v4 = 5;
  }

  else if ([lowercaseString isEqualToString:@"mptcp"])
  {
    v4 = 6;
  }

  else if ([lowercaseString isEqualToString:@"tcp"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)tlsFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString isEqualToString:@"tls14"])
  {
    v4 = 6;
  }

  else if ([lowercaseString isEqualToString:@"tls13"])
  {
    v4 = 5;
  }

  else if ([lowercaseString isEqualToString:@"tls12"])
  {
    v4 = 4;
  }

  else if ([lowercaseString isEqualToString:@"tls11"])
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"tls10"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [lowercaseString isEqualToString:@"ssl30"];
  }

  return v4;
}

+ (id)handShakeProtocolFromArray:(id)array
{
  v30 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = arrayCopy;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = objc_alloc_init(MEMORY[0x277D58BD8]);
          v12 = [v10 objectForKey:@"protocol"];
          if (v12)
          {
            v3 = [v10 objectForKey:@"protocol"];
            v13 = v3;
          }

          else
          {
            v13 = &stru_28782DDB0;
          }

          [v11 setProtocol:{objc_msgSend(self, "handshakeProtocolFromString:", v13)}];
          if (v12)
          {
          }

          v14 = [v10 objectForKey:@"handShakeRTT"];
          if (v14)
          {
            v15 = [v10 objectForKey:@"handShakeRTT"];
            [v15 doubleValue];
            [v11 setHandShakeRTT:v16];
          }

          else
          {
            [v11 setHandShakeRTT:0];
          }

          v17 = [v10 objectForKey:@"handShakeDuration"];
          if (v17)
          {
            v18 = [v10 objectForKey:@"handShakeDuration"];
            [v18 doubleValue];
            [v11 setHandShakeDuration:v19];
          }

          else
          {
            [v11 setHandShakeDuration:0];
          }

          [v23 addObject:v11];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (int)handshakeProtocolFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString containsString:@"tcp"])
  {
    v4 = 1;
  }

  else if ([lowercaseString containsString:@"tls"])
  {
    v4 = 2;
  }

  else if ([lowercaseString containsString:@"http"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)proxyConfigurationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MEMORY[0x277D58C08]);
  v5 = [dictionaryCopy objectForKey:@"proxyConfigured"];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"proxyConfigured"];
    [v4 setIsProxyConfigured:{objc_msgSend(v6, "BOOLValue")}];
  }

  else
  {
    [v4 setIsProxyConfigured:0];
  }

  v7 = [dictionaryCopy objectForKey:@"usingConfiguredProxy"];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKey:@"usingConfiguredProxy"];
    [v4 setUsingConfiguredProxy:{objc_msgSend(v8, "BOOLValue")}];
  }

  else
  {
    [v4 setUsingConfiguredProxy:0];
  }

  return v4;
}

+ (id)establishmentResolutionFromArray:(id)array
{
  v38 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = arrayCopy;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = objc_alloc_init(MEMORY[0x277D58BD0]);
          v13 = [v11 objectForKey:@"duration"];
          if (v13)
          {
            v14 = [v11 objectForKey:@"duration"];
            [v14 doubleValue];
            [v12 setDuration:v15];
          }

          else
          {
            [v12 setDuration:0];
          }

          v16 = [v11 objectForKey:@"resolutionSource"];
          if (v16)
          {
            v17 = [v11 objectForKey:@"resolutionSource"];
            [v17 doubleValue];
            [v12 setResolutionSource:v18];
          }

          else
          {
            [v12 setResolutionSource:0];
          }

          v19 = [v11 objectForKey:@"successfulEndpoint"];
          if (v19)
          {
            v4 = [v11 objectForKey:@"successfulEndpoint"];
            v20 = v4;
          }

          else
          {
            v20 = &unk_287838270;
          }

          v21 = [self endpointFromDictionary:v20];
          [v12 setSuccessfulEndpoint:v21];

          if (v19)
          {
          }

          v22 = [v11 objectForKey:@"preferredEndpoint"];
          if (v22)
          {
            v3 = [v11 objectForKey:@"preferredEndpoint"];
            v23 = v3;
          }

          else
          {
            v23 = &unk_287838270;
          }

          v24 = [self endpointFromDictionary:v23];
          [v12 setPreferredEndpoint:v24];

          if (v22)
          {
          }

          v25 = [v11 objectForKey:@"endpointCount"];
          if (v25)
          {
            v26 = [v11 objectForKey:@"endpointCount"];
            [v26 doubleValue];
            [v12 setEndpointCount:v27];
          }

          else
          {
            [v12 setEndpointCount:0];
          }

          [v30 addObject:v12];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (int)pathStatusFromNumber:(id)number
{
  numberCopy = number;
  if ([numberCopy isEqualToNumber:&unk_287838270])
  {
    v4 = 1;
  }

  else if ([numberCopy isEqualToNumber:&unk_287838288])
  {
    v4 = 2;
  }

  else if ([numberCopy isEqualToNumber:&unk_2878382A0])
  {
    v4 = 3;
  }

  else if ([numberCopy isEqualToNumber:&unk_2878382B8])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)pathInterfacesFromArray:(id)array
{
  v29 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = arrayCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = objc_alloc_init(MEMORY[0x277D58BF8]);
          v12 = [v10 objectForKey:@"type"];
          if (v12)
          {
            v3 = [v10 objectForKey:@"type"];
            v13 = v3;
          }

          else
          {
            v13 = &unk_287838270;
          }

          [v11 setType:{objc_msgSend(self, "pathTypeFromNumber:", v13)}];
          if (v12)
          {
          }

          v14 = [v10 objectForKey:@"name"];
          if (v14)
          {
            v15 = [v10 objectForKey:@"name"];
            [v11 setName:v15];
          }

          else
          {
            [v11 setName:&stru_28782DDB0];
          }

          v16 = [v10 objectForKey:@"index"];
          if (v16)
          {
            v17 = [v10 objectForKey:@"index"];
            [v17 doubleValue];
            [v11 setIndex:v18];
          }

          else
          {
            [v11 setIndex:0];
          }

          [v22 addObject:v11];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (int)pathTypeFromNumber:(id)number
{
  numberCopy = number;
  if ([numberCopy isEqualToNumber:&unk_287838270])
  {
    v4 = 0;
  }

  else if ([numberCopy isEqualToNumber:&unk_287838288])
  {
    v4 = 1;
  }

  else if ([numberCopy isEqualToNumber:&unk_2878382A0])
  {
    v4 = 2;
  }

  else if ([numberCopy isEqualToNumber:&unk_2878382B8])
  {
    v4 = 3;
  }

  else if ([numberCopy isEqualToNumber:&unk_2878382D0])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)endpointsFromArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [self endpointFromDictionary:{v11, v15}];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)endpointFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(MEMORY[0x277D58BC0]);
  v6 = [dictionaryCopy objectForKey:@"type"];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:@"type"];
  }

  else
  {
    v7 = &unk_287838270;
  }

  [v5 setType:{objc_msgSend(self, "endpointTypeFromNumber:", v7)}];
  if (v6)
  {
  }

  v8 = [dictionaryCopy objectForKey:@"port"];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKey:@"port"];
    [v9 doubleValue];
    [v5 setPort:v10];
  }

  else
  {
    [v5 setPort:0];
  }

  return v5;
}

+ (int)endpointTypeFromNumber:(id)number
{
  numberCopy = number;
  if ([numberCopy isEqualToNumber:&unk_287838270])
  {
    v4 = 1;
  }

  else if ([numberCopy isEqualToNumber:&unk_287838288])
  {
    v4 = 2;
  }

  else if ([numberCopy isEqualToNumber:&unk_2878382A0])
  {
    v4 = 3;
  }

  else if ([numberCopy isEqualToNumber:&unk_2878382B8])
  {
    v4 = 4;
  }

  else if ([numberCopy isEqualToNumber:&unk_2878382D0])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)logPeerConnectionFailed:(id)failed
{
  failedCopy = failed;
  v5 = mach_absolute_time();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SiriCoreNetworkingAnalytics_logPeerConnectionFailed___block_invoke;
  block[3] = &unk_279BD60A8;
  block[4] = self;
  v9 = failedCopy;
  v10 = v5;
  v7 = failedCopy;
  dispatch_async(queue, block);
}

void __55__SiriCoreNetworkingAnalytics_logPeerConnectionFailed___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v3 = [*(v1 + 120) netId];
    v4 = [v3 isEqual:*(*(a1 + 32) + 16)];

    if (v4)
    {
      v5 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logPeerConnectionFailed:]_block_invoke";
        v25 = 2112;
        v26 = v6;
        v7 = "%s Peer connection failed already sent for netId %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, v7, &v23, v9);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 120);
    v13 = [*(v11 + 16) copy];
    [v12 setNetId:v13];

    v14 = [*(a1 + 32) _createSchemaClientEventFromNetId:*(*(a1 + 32) + 16) networkConnectionId:*(*(a1 + 32) + 24) connectionProvider:*(*(a1 + 32) + 32)];
    [v14 setPeerConnectionFailed:*(a1 + 40)];
    v15 = [*(*(a1 + 32) + 16) isEqual:*(*(a1 + 32) + 128)];
    v16 = *(*(a1 + 32) + 120);
    if (v15)
    {
      [v16 setClientEvent:0];
      v17 = [MEMORY[0x277D552C0] sharedStream];
      [v17 emitMessage:v14 timestamp:*(a1 + 48)];

      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v19 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logPeerConnectionFailed:]_block_invoke";
        v25 = 2112;
        v26 = v19;
        v20 = "%s _peerConnectionFailedEvent emitted: %@";
LABEL_13:
        _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, v20, &v23, 0x16u);
      }
    }

    else
    {
      [v16 setClientEvent:v14];
      [*(*(a1 + 32) + 120) setTimestamp:*(a1 + 48)];
      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v21 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logPeerConnectionFailed:]_block_invoke";
        v25 = 2112;
        v26 = v21;
        v20 = "%s No _netIdForRequestLink for netId: %@";
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v10 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[SiriCoreNetworkingAnalytics logPeerConnectionFailed:]_block_invoke";
    v7 = "%s No netId generated";
    v8 = v10;
    v9 = 12;
    goto LABEL_7;
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)logSessionConnectionFailed:(id)failed
{
  failedCopy = failed;
  v5 = mach_absolute_time();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SiriCoreNetworkingAnalytics_logSessionConnectionFailed___block_invoke;
  block[3] = &unk_279BD60A8;
  block[4] = self;
  v9 = failedCopy;
  v10 = v5;
  v7 = failedCopy;
  dispatch_async(queue, block);
}

void __58__SiriCoreNetworkingAnalytics_logSessionConnectionFailed___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v3 = [*(v1 + 112) netId];
    v4 = [v3 isEqual:*(*(a1 + 32) + 16)];

    if (v4)
    {
      v5 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logSessionConnectionFailed:]_block_invoke";
        v25 = 2112;
        v26 = v6;
        v7 = "%s Session connection failed already sent for netId %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, v7, &v23, v9);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    v13 = [*(v11 + 16) copy];
    [v12 setNetId:v13];

    v14 = [*(a1 + 32) _createSchemaClientEventFromNetId:*(*(a1 + 32) + 16) networkConnectionId:*(*(a1 + 32) + 24) connectionProvider:*(*(a1 + 32) + 32)];
    [v14 setSessionConnectionFailed:*(a1 + 40)];
    v15 = [*(*(a1 + 32) + 16) isEqual:*(*(a1 + 32) + 128)];
    v16 = *(*(a1 + 32) + 112);
    if (v15)
    {
      [v16 setClientEvent:0];
      v17 = [MEMORY[0x277D552C0] sharedStream];
      [v17 emitMessage:v14 timestamp:*(a1 + 48)];

      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v19 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logSessionConnectionFailed:]_block_invoke";
        v25 = 2112;
        v26 = v19;
        v20 = "%s _sessionConnectionFailedEvent emitted: %@";
LABEL_13:
        _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, v20, &v23, 0x16u);
      }
    }

    else
    {
      [v16 setClientEvent:v14];
      [*(*(a1 + 32) + 112) setTimestamp:*(a1 + 48)];
      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v21 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logSessionConnectionFailed:]_block_invoke";
        v25 = 2112;
        v26 = v21;
        v20 = "%s No _netIdForRequestLink for netId: %@";
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v10 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[SiriCoreNetworkingAnalytics logSessionConnectionFailed:]_block_invoke";
    v7 = "%s No netId generated";
    v8 = v10;
    v9 = 12;
    goto LABEL_7;
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)logDebugSessionConnectionSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  if ([(SiriCoreNetworkingAnalytics *)self emitLogDebug])
  {
    v5 = mach_absolute_time();
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SiriCoreNetworkingAnalytics_logDebugSessionConnectionSnapshotCaptured___block_invoke;
    block[3] = &unk_279BD60A8;
    block[4] = self;
    v8 = capturedCopy;
    v9 = v5;
    dispatch_async(queue, block);
  }
}

void __73__SiriCoreNetworkingAnalytics_logDebugSessionConnectionSnapshotCaptured___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v3 = [*(v1 + 104) netId];
    v4 = [v3 isEqual:*(*(a1 + 32) + 16)];

    if (v4)
    {
      v5 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 32) + 16);
        v26 = 136315394;
        v27 = "[SiriCoreNetworkingAnalytics logDebugSessionConnectionSnapshotCaptured:]_block_invoke";
        v28 = 2112;
        v29 = v6;
        v7 = "%s Debug session connection snapshot already sent for netId %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, v7, &v26, v9);
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 104);
      v13 = [*(v11 + 16) copy];
      [v12 setNetId:v13];

      v14 = [*(a1 + 32) _createSchemaClientEventFromNetId:*(*(a1 + 32) + 16) networkConnectionId:*(*(a1 + 32) + 24) connectionProvider:*(*(a1 + 32) + 32)];
      [v14 setDebugSessionConnectionSnapshotCaptured:*(a1 + 40)];
      v15 = [*(*(a1 + 32) + 16) isEqual:*(*(a1 + 32) + 128)];
      v16 = *(*(a1 + 32) + 104);
      if (v15)
      {
        [v16 setClientEvent:0];
        v17 = [MEMORY[0x277D552C0] sharedStream];
        [v17 emitMessage:v14 timestamp:*(a1 + 48)];

        v18 = *MEMORY[0x277CEF088];
        if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 32);
          v20 = *(a1 + 40);
          v21 = *(v19 + 16);
          v22 = v18;
          v26 = 136315650;
          v27 = "[SiriCoreNetworkingAnalytics logDebugSessionConnectionSnapshotCaptured:]_block_invoke";
          v28 = 2112;
          v29 = v21;
          v30 = 1024;
          v31 = [v20 sequenceNumber];
          _os_log_impl(&dword_2669D1000, v22, OS_LOG_TYPE_INFO, "%s _debugSessionConnectionSnapthotEvent emitted: %@, sequenceNumber: %u", &v26, 0x1Cu);
        }
      }

      else
      {
        [v16 setClientEvent:v14];
        [*(*(a1 + 32) + 104) setTimestamp:*(a1 + 48)];
        v23 = *MEMORY[0x277CEF088];
        if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
        {
          v24 = *(*(a1 + 32) + 16);
          v26 = 136315394;
          v27 = "[SiriCoreNetworkingAnalytics logDebugSessionConnectionSnapshotCaptured:]_block_invoke";
          v28 = 2112;
          v29 = v24;
          _os_log_impl(&dword_2669D1000, v23, OS_LOG_TYPE_INFO, "%s No _netIdForRequestLink for netId: %@", &v26, 0x16u);
        }
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277CEF088];
    if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
    {
      v26 = 136315138;
      v27 = "[SiriCoreNetworkingAnalytics logDebugSessionConnectionSnapshotCaptured:]_block_invoke";
      v7 = "%s No netId generated";
      v8 = v10;
      v9 = 12;
      goto LABEL_7;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logSessionConnectionSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  v5 = mach_absolute_time();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SiriCoreNetworkingAnalytics_logSessionConnectionSnapshotCaptured___block_invoke;
  block[3] = &unk_279BD60A8;
  block[4] = self;
  v9 = capturedCopy;
  v10 = v5;
  v7 = capturedCopy;
  dispatch_async(queue, block);
}

void __68__SiriCoreNetworkingAnalytics_logSessionConnectionSnapshotCaptured___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v3 = [*(v1 + 96) netId];
    v4 = [v3 isEqual:*(*(a1 + 32) + 16)];

    if (v4)
    {
      v5 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 32) + 16);
        v26 = 136315394;
        v27 = "[SiriCoreNetworkingAnalytics logSessionConnectionSnapshotCaptured:]_block_invoke";
        v28 = 2112;
        v29 = v6;
        v7 = "%s Session connection snapshot already sent for netId %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, v7, &v26, v9);
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 96);
      v13 = [*(v11 + 16) copy];
      [v12 setNetId:v13];

      v14 = [*(a1 + 32) _createSchemaClientEventFromNetId:*(*(a1 + 32) + 16) networkConnectionId:*(*(a1 + 32) + 24) connectionProvider:*(*(a1 + 32) + 32)];
      [v14 setSessionConnectionSnapshotCaptured:*(a1 + 40)];
      v15 = [*(*(a1 + 32) + 16) isEqual:*(*(a1 + 32) + 128)];
      v16 = *(*(a1 + 32) + 96);
      if (v15)
      {
        [v16 setClientEvent:0];
        v17 = [MEMORY[0x277D552C0] sharedStream];
        [v17 emitMessage:v14 timestamp:*(a1 + 48)];

        v18 = *MEMORY[0x277CEF088];
        if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 32);
          v20 = *(a1 + 40);
          v21 = *(v19 + 16);
          v22 = v18;
          v26 = 136315650;
          v27 = "[SiriCoreNetworkingAnalytics logSessionConnectionSnapshotCaptured:]_block_invoke";
          v28 = 2112;
          v29 = v21;
          v30 = 1024;
          v31 = [v20 sequenceNumber];
          _os_log_impl(&dword_2669D1000, v22, OS_LOG_TYPE_INFO, "%s _sessionConnectionSnapthotEvent emitted: %@, sequenceNumber: %u", &v26, 0x1Cu);
        }
      }

      else
      {
        [v16 setClientEvent:v14];
        [*(*(a1 + 32) + 96) setTimestamp:*(a1 + 48)];
        v23 = *MEMORY[0x277CEF088];
        if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
        {
          v24 = *(*(a1 + 32) + 16);
          v26 = 136315394;
          v27 = "[SiriCoreNetworkingAnalytics logSessionConnectionSnapshotCaptured:]_block_invoke";
          v28 = 2112;
          v29 = v24;
          _os_log_impl(&dword_2669D1000, v23, OS_LOG_TYPE_INFO, "%s No _netIdForRequestLink for netId: %@", &v26, 0x16u);
        }
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277CEF088];
    if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
    {
      v26 = 136315138;
      v27 = "[SiriCoreNetworkingAnalytics logSessionConnectionSnapshotCaptured:]_block_invoke";
      v7 = "%s No netId generated";
      v8 = v10;
      v9 = 12;
      goto LABEL_7;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logDebugNetworkConnectionStateReadySnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  if ([(SiriCoreNetworkingAnalytics *)self emitLogDebug])
  {
    v5 = mach_absolute_time();
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__SiriCoreNetworkingAnalytics_logDebugNetworkConnectionStateReadySnapshotCaptured___block_invoke;
    block[3] = &unk_279BD60A8;
    block[4] = self;
    v8 = capturedCopy;
    v9 = v5;
    dispatch_async(queue, block);
  }
}

void __83__SiriCoreNetworkingAnalytics_logDebugNetworkConnectionStateReadySnapshotCaptured___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v3 = [*(v1 + 88) netId];
    v4 = [v3 isEqual:*(*(a1 + 32) + 16)];

    if (v4)
    {
      v5 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logDebugNetworkConnectionStateReadySnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v6;
        v7 = "%s Debug ready snapshot already sent for netId %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, v7, &v23, v9);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 88);
    v13 = [*(v11 + 16) copy];
    [v12 setNetId:v13];

    v14 = [*(a1 + 32) _createSchemaClientEventFromNetId:*(*(a1 + 32) + 16) networkConnectionId:*(*(a1 + 32) + 24) connectionProvider:*(*(a1 + 32) + 32)];
    [v14 setDebugNetworkConnectionStateReadySnapshotCaptured:*(a1 + 40)];
    v15 = [*(*(a1 + 32) + 16) isEqual:*(*(a1 + 32) + 128)];
    v16 = *(*(a1 + 32) + 88);
    if (v15)
    {
      [v16 setClientEvent:0];
      v17 = [MEMORY[0x277D552C0] sharedStream];
      [v17 emitMessage:v14 timestamp:*(a1 + 48)];

      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v19 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logDebugNetworkConnectionStateReadySnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v19;
        v20 = "%s _debugReadySnapshotEvent emitted: %@";
LABEL_13:
        _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, v20, &v23, 0x16u);
      }
    }

    else
    {
      [v16 setClientEvent:v14];
      [*(*(a1 + 32) + 88) setTimestamp:*(a1 + 48)];
      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v21 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logDebugNetworkConnectionStateReadySnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v21;
        v20 = "%s No _netIdForRequestLink for netId: %@";
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v10 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[SiriCoreNetworkingAnalytics logDebugNetworkConnectionStateReadySnapshotCaptured:]_block_invoke";
    v7 = "%s No netId generated";
    v8 = v10;
    v9 = 12;
    goto LABEL_7;
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)logNetworkConnectionStateReadySnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  v5 = mach_absolute_time();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SiriCoreNetworkingAnalytics_logNetworkConnectionStateReadySnapshotCaptured___block_invoke;
  block[3] = &unk_279BD60A8;
  block[4] = self;
  v9 = capturedCopy;
  v10 = v5;
  v7 = capturedCopy;
  dispatch_async(queue, block);
}

void __78__SiriCoreNetworkingAnalytics_logNetworkConnectionStateReadySnapshotCaptured___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v3 = [*(v1 + 80) netId];
    v4 = [v3 isEqual:*(*(a1 + 32) + 16)];

    if (v4)
    {
      v5 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logNetworkConnectionStateReadySnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v6;
        v7 = "%s Ready snapshot already sent for netId %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, v7, &v23, v9);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 80);
    v13 = [*(v11 + 16) copy];
    [v12 setNetId:v13];

    v14 = [*(a1 + 32) _createSchemaClientEventFromNetId:*(*(a1 + 32) + 16) networkConnectionId:*(*(a1 + 32) + 24) connectionProvider:*(*(a1 + 32) + 32)];
    [v14 setNetworkConnectionStateReadySnapshotCaptured:*(a1 + 40)];
    v15 = [*(*(a1 + 32) + 16) isEqual:*(*(a1 + 32) + 128)];
    v16 = *(*(a1 + 32) + 80);
    if (v15)
    {
      [v16 setClientEvent:0];
      v17 = [MEMORY[0x277D552C0] sharedStream];
      [v17 emitMessage:v14 timestamp:*(a1 + 48)];

      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v19 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logNetworkConnectionStateReadySnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v19;
        v20 = "%s _readySnapshotEvent emitted: %@";
LABEL_13:
        _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, v20, &v23, 0x16u);
      }
    }

    else
    {
      [v16 setClientEvent:v14];
      [*(*(a1 + 32) + 80) setTimestamp:*(a1 + 48)];
      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v21 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logNetworkConnectionStateReadySnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v21;
        v20 = "%s No _netIdForRequestLink for netId: %@";
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v10 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[SiriCoreNetworkingAnalytics logNetworkConnectionStateReadySnapshotCaptured:]_block_invoke";
    v7 = "%s No netId generated";
    v8 = v10;
    v9 = 12;
    goto LABEL_7;
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)logDebugNetworkConnectionStatePreparationSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  if ([(SiriCoreNetworkingAnalytics *)self emitLogDebug])
  {
    v5 = mach_absolute_time();
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__SiriCoreNetworkingAnalytics_logDebugNetworkConnectionStatePreparationSnapshotCaptured___block_invoke;
    block[3] = &unk_279BD60A8;
    block[4] = self;
    v8 = capturedCopy;
    v9 = v5;
    dispatch_async(queue, block);
  }
}

void __89__SiriCoreNetworkingAnalytics_logDebugNetworkConnectionStatePreparationSnapshotCaptured___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v3 = [*(v1 + 72) netId];
    v4 = [v3 isEqual:*(*(a1 + 32) + 16)];

    if (v4)
    {
      v5 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logDebugNetworkConnectionStatePreparationSnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v6;
        v7 = "%s Debug preparation snapshot already sent for netId %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, v7, &v23, v9);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 72);
    v13 = [*(v11 + 16) copy];
    [v12 setNetId:v13];

    v14 = [*(a1 + 32) _createSchemaClientEventFromNetId:*(*(a1 + 32) + 16) networkConnectionId:*(*(a1 + 32) + 24) connectionProvider:*(*(a1 + 32) + 32)];
    [v14 setDebugNetworkConnectionStatePreparationSnapshotCaptured:*(a1 + 40)];
    v15 = [*(*(a1 + 32) + 16) isEqual:*(*(a1 + 32) + 128)];
    v16 = *(*(a1 + 32) + 72);
    if (v15)
    {
      [v16 setClientEvent:0];
      v17 = [MEMORY[0x277D552C0] sharedStream];
      [v17 emitMessage:v14 timestamp:*(a1 + 48)];

      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v19 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logDebugNetworkConnectionStatePreparationSnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v19;
        v20 = "%s _debugPreparationSnapshotEvent emitted: %@";
LABEL_13:
        _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, v20, &v23, 0x16u);
      }
    }

    else
    {
      [v16 setClientEvent:v14];
      [*(*(a1 + 32) + 72) setTimestamp:*(a1 + 48)];
      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v21 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logDebugNetworkConnectionStatePreparationSnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v21;
        v20 = "%s No _netIdForRequestLink for netId: %@";
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v10 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[SiriCoreNetworkingAnalytics logDebugNetworkConnectionStatePreparationSnapshotCaptured:]_block_invoke";
    v7 = "%s No netId generated";
    v8 = v10;
    v9 = 12;
    goto LABEL_7;
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)logNetworkConnectionStatePreparationSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  v5 = mach_absolute_time();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SiriCoreNetworkingAnalytics_logNetworkConnectionStatePreparationSnapshotCaptured___block_invoke;
  block[3] = &unk_279BD60A8;
  block[4] = self;
  v9 = capturedCopy;
  v10 = v5;
  v7 = capturedCopy;
  dispatch_async(queue, block);
}

void __84__SiriCoreNetworkingAnalytics_logNetworkConnectionStatePreparationSnapshotCaptured___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v3 = [*(v1 + 64) netId];
    v4 = [v3 isEqual:*(*(a1 + 32) + 16)];

    if (v4)
    {
      v5 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logNetworkConnectionStatePreparationSnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v6;
        v7 = "%s Preparation snapshot already sent for netId %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, v7, &v23, v9);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 64);
    v13 = [*(v11 + 16) copy];
    [v12 setNetId:v13];

    v14 = [*(a1 + 32) _createSchemaClientEventFromNetId:*(*(a1 + 32) + 16) networkConnectionId:*(*(a1 + 32) + 24) connectionProvider:*(*(a1 + 32) + 32)];
    [v14 setNetworkConnectionStatePreparationSnapshotCaptured:*(a1 + 40)];
    v15 = [*(*(a1 + 32) + 16) isEqual:*(*(a1 + 32) + 128)];
    v16 = *(*(a1 + 32) + 64);
    if (v15)
    {
      [v16 setClientEvent:0];
      v17 = [MEMORY[0x277D552C0] sharedStream];
      [v17 emitMessage:v14 timestamp:*(a1 + 48)];

      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v19 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logNetworkConnectionStatePreparationSnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v19;
        v20 = "%s _preparationSnapshotEvent emitted: %@";
LABEL_13:
        _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, v20, &v23, 0x16u);
      }
    }

    else
    {
      [v16 setClientEvent:v14];
      [*(*(a1 + 32) + 64) setTimestamp:*(a1 + 48)];
      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v21 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logNetworkConnectionStatePreparationSnapshotCaptured:]_block_invoke";
        v25 = 2112;
        v26 = v21;
        v20 = "%s No _netIdForRequestLink for netId: %@";
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v10 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[SiriCoreNetworkingAnalytics logNetworkConnectionStatePreparationSnapshotCaptured:]_block_invoke";
    v7 = "%s No netId generated";
    v8 = v10;
    v9 = 12;
    goto LABEL_7;
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)logSessionConnectionHttpHeaderCreated:(id)created
{
  createdCopy = created;
  v5 = mach_absolute_time();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SiriCoreNetworkingAnalytics_logSessionConnectionHttpHeaderCreated___block_invoke;
  block[3] = &unk_279BD60A8;
  block[4] = self;
  v9 = createdCopy;
  v10 = v5;
  v7 = createdCopy;
  dispatch_async(queue, block);
}

void __69__SiriCoreNetworkingAnalytics_logSessionConnectionHttpHeaderCreated___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v3 = [*(v1 + 56) netId];
    v4 = [v3 isEqual:*(*(a1 + 32) + 16)];

    if (v4)
    {
      v5 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logSessionConnectionHttpHeaderCreated:]_block_invoke";
        v25 = 2112;
        v26 = v6;
        v7 = "%s Http header already sent for netId %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, v7, &v23, v9);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 56);
    v13 = [*(v11 + 16) copy];
    [v12 setNetId:v13];

    v14 = [*(a1 + 32) _createSchemaClientEventFromNetId:*(*(a1 + 32) + 16) networkConnectionId:*(*(a1 + 32) + 24) connectionProvider:*(*(a1 + 32) + 32)];
    [v14 setSessionConnectionHttpHeaderCreated:*(a1 + 40)];
    v15 = [*(*(a1 + 32) + 16) isEqual:*(*(a1 + 32) + 128)];
    v16 = *(*(a1 + 32) + 56);
    if (v15)
    {
      [v16 setClientEvent:0];
      v17 = [MEMORY[0x277D552C0] sharedStream];
      [v17 emitMessage:v14 timestamp:*(a1 + 48)];

      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v19 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logSessionConnectionHttpHeaderCreated:]_block_invoke";
        v25 = 2112;
        v26 = v19;
        v20 = "%s _httpHeaderEvent emitted: %@";
LABEL_13:
        _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, v20, &v23, 0x16u);
      }
    }

    else
    {
      [v16 setClientEvent:v14];
      [*(*(a1 + 32) + 56) setTimestamp:*(a1 + 48)];
      v18 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v21 = *(*(a1 + 32) + 16);
        v23 = 136315394;
        v24 = "[SiriCoreNetworkingAnalytics logSessionConnectionHttpHeaderCreated:]_block_invoke";
        v25 = 2112;
        v26 = v21;
        v20 = "%s No _netIdForRequestLink for netId: %@";
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v10 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[SiriCoreNetworkingAnalytics logSessionConnectionHttpHeaderCreated:]_block_invoke";
    v7 = "%s No netId generated";
    v8 = v10;
    v9 = 12;
    goto LABEL_7;
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)logRequestLinkBetweenOrchestratorAndNetworkComponent
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SiriCoreNetworkingAnalytics_logRequestLinkBetweenOrchestratorAndNetworkComponent__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

void __83__SiriCoreNetworkingAnalytics_logRequestLinkBetweenOrchestratorAndNetworkComponent__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!*(v1 + 16))
  {
    v8 = *MEMORY[0x277CEF088];
    if (!os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v25 = 136315138;
    v26 = "[SiriCoreNetworkingAnalytics logRequestLinkBetweenOrchestratorAndNetworkComponent]_block_invoke";
    v5 = "%s No netId generated";
    goto LABEL_16;
  }

  if (![*(v1 + 128) isEqual:?])
  {
    v9 = *(a1 + 32);
    if (*(v9 + 40))
    {
      if (*(v9 + 48))
      {
        v10 = [v9 _createRequestLinkInfoFromUUID:*(v9 + 16) component:18];
        v11 = [*(a1 + 32) _createRequestLinkInfoFromUUID:*(*(a1 + 32) + 40) component:1];
        v12 = mach_absolute_time();
        v13 = objc_alloc_init(MEMORY[0x277D5A9D0]);
        [v13 setSource:v10];
        [v13 setTarget:v11];
        v14 = [MEMORY[0x277D552C0] sharedStream];
        [v14 emitMessage:v13 timestamp:v12];

        v15 = [*(*(a1 + 32) + 16) copy];
        v16 = *(a1 + 32);
        v17 = *(v16 + 128);
        *(v16 + 128) = v15;

        v18 = *MEMORY[0x277CEF088];
        if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 32);
          v20 = *(v19 + 16);
          v21 = *(v19 + 40);
          v25 = 136315650;
          v26 = "[SiriCoreNetworkingAnalytics logRequestLinkBetweenOrchestratorAndNetworkComponent]_block_invoke";
          v27 = 2112;
          v28 = v20;
          v29 = 2112;
          v30 = v21;
          _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, "%s netId: %@, orchestratorRequestId: %@", &v25, 0x20u);
        }

        v22 = *(a1 + 32);
        v23 = [v22[2] copy];
        [v22 _emitAllCachedMessagesFor:v23];

        goto LABEL_18;
      }

      v8 = *MEMORY[0x277CEF088];
      if (!os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v25 = 136315138;
      v26 = "[SiriCoreNetworkingAnalytics logRequestLinkBetweenOrchestratorAndNetworkComponent]_block_invoke";
      v5 = "%s No active connection";
    }

    else
    {
      v8 = *MEMORY[0x277CEF088];
      if (!os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v25 = 136315138;
      v26 = "[SiriCoreNetworkingAnalytics logRequestLinkBetweenOrchestratorAndNetworkComponent]_block_invoke";
      v5 = "%s No orchestrator requestId";
    }

LABEL_16:
    v6 = v8;
    v7 = 12;
    goto LABEL_17;
  }

  v3 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 16);
    v25 = 136315394;
    v26 = "[SiriCoreNetworkingAnalytics logRequestLinkBetweenOrchestratorAndNetworkComponent]_block_invoke";
    v27 = 2112;
    v28 = v4;
    v5 = "%s Request Link already sent for netId %@";
    v6 = v3;
    v7 = 22;
LABEL_17:
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, v5, &v25, v7);
  }

LABEL_18:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_emitAllCachedMessagesFor:(id)for
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SiriCoreNetworkingAnalytics__emitAllCachedMessagesFor___block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __57__SiriCoreNetworkingAnalytics__emitAllCachedMessagesFor___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(v2 + 56) netId];
  if ([v3 isEqual:v4])
  {
    v5 = [*(*(a1 + 32) + 56) clientEvent];

    if (v5)
    {
      v6 = [MEMORY[0x277D552C0] sharedStream];
      v7 = [*(*(a1 + 32) + 56) clientEvent];
      [v6 emitMessage:v7 timestamp:{objc_msgSend(*(*(a1 + 32) + 56), "timestamp")}];

      v8 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v9 = *(*(a1 + 32) + 16);
        v76 = 136315394;
        v77 = "[SiriCoreNetworkingAnalytics _emitAllCachedMessagesFor:]_block_invoke";
        v78 = 2112;
        v79 = v9;
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, "%s _httpHeaderEvent emitted: %@", &v76, 0x16u);
      }
    }
  }

  else
  {
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  v12 = [*(v10 + 64) netId];
  if ([v11 isEqual:v12])
  {
    v13 = [*(*(a1 + 32) + 64) clientEvent];

    if (v13)
    {
      v14 = [MEMORY[0x277D552C0] sharedStream];
      v15 = [*(*(a1 + 32) + 64) clientEvent];
      [v14 emitMessage:v15 timestamp:{objc_msgSend(*(*(a1 + 32) + 64), "timestamp")}];

      v16 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v17 = *(*(a1 + 32) + 16);
        v76 = 136315394;
        v77 = "[SiriCoreNetworkingAnalytics _emitAllCachedMessagesFor:]_block_invoke";
        v78 = 2112;
        v79 = v17;
        _os_log_impl(&dword_2669D1000, v16, OS_LOG_TYPE_INFO, "%s _preparationSnapshotEvent emitted: %@", &v76, 0x16u);
      }
    }
  }

  else
  {
  }

  v18 = *(a1 + 32);
  v19 = *(v18 + 16);
  v20 = [*(v18 + 72) netId];
  if ([v19 isEqual:v20])
  {
    v21 = [*(*(a1 + 32) + 72) clientEvent];

    if (v21)
    {
      v22 = [MEMORY[0x277D552C0] sharedStream];
      v23 = [*(*(a1 + 32) + 72) clientEvent];
      [v22 emitMessage:v23 timestamp:{objc_msgSend(*(*(a1 + 32) + 72), "timestamp")}];

      v24 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v25 = *(*(a1 + 32) + 16);
        v76 = 136315394;
        v77 = "[SiriCoreNetworkingAnalytics _emitAllCachedMessagesFor:]_block_invoke";
        v78 = 2112;
        v79 = v25;
        _os_log_impl(&dword_2669D1000, v24, OS_LOG_TYPE_INFO, "%s _debugPreparationSnapshotEvent emitted: %@", &v76, 0x16u);
      }
    }
  }

  else
  {
  }

  v26 = *(a1 + 32);
  v27 = *(v26 + 16);
  v28 = [*(v26 + 80) netId];
  if ([v27 isEqual:v28])
  {
    v29 = [*(*(a1 + 32) + 80) clientEvent];

    if (v29)
    {
      v30 = [MEMORY[0x277D552C0] sharedStream];
      v31 = [*(*(a1 + 32) + 80) clientEvent];
      [v30 emitMessage:v31 timestamp:{objc_msgSend(*(*(a1 + 32) + 80), "timestamp")}];

      v32 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v33 = *(*(a1 + 32) + 16);
        v76 = 136315394;
        v77 = "[SiriCoreNetworkingAnalytics _emitAllCachedMessagesFor:]_block_invoke";
        v78 = 2112;
        v79 = v33;
        _os_log_impl(&dword_2669D1000, v32, OS_LOG_TYPE_INFO, "%s _readySnapshotEvent emitted: %@", &v76, 0x16u);
      }
    }
  }

  else
  {
  }

  v34 = *(a1 + 32);
  v35 = *(v34 + 16);
  v36 = [*(v34 + 88) netId];
  if ([v35 isEqual:v36])
  {
    v37 = [*(*(a1 + 32) + 88) clientEvent];

    if (v37)
    {
      v38 = [MEMORY[0x277D552C0] sharedStream];
      v39 = [*(*(a1 + 32) + 88) clientEvent];
      [v38 emitMessage:v39 timestamp:{objc_msgSend(*(*(a1 + 32) + 88), "timestamp")}];

      v40 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v41 = *(*(a1 + 32) + 16);
        v76 = 136315394;
        v77 = "[SiriCoreNetworkingAnalytics _emitAllCachedMessagesFor:]_block_invoke";
        v78 = 2112;
        v79 = v41;
        _os_log_impl(&dword_2669D1000, v40, OS_LOG_TYPE_INFO, "%s _debugReadySnapshotEvent emitted: %@", &v76, 0x16u);
      }
    }
  }

  else
  {
  }

  v42 = *(a1 + 32);
  v43 = *(v42 + 16);
  v44 = [*(v42 + 96) netId];
  if ([v43 isEqual:v44])
  {
    v45 = [*(*(a1 + 32) + 96) clientEvent];

    if (v45)
    {
      v46 = [MEMORY[0x277D552C0] sharedStream];
      v47 = [*(*(a1 + 32) + 96) clientEvent];
      [v46 emitMessage:v47 timestamp:{objc_msgSend(*(*(a1 + 32) + 96), "timestamp")}];

      v48 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v49 = *(*(a1 + 32) + 16);
        v76 = 136315394;
        v77 = "[SiriCoreNetworkingAnalytics _emitAllCachedMessagesFor:]_block_invoke";
        v78 = 2112;
        v79 = v49;
        _os_log_impl(&dword_2669D1000, v48, OS_LOG_TYPE_INFO, "%s _sessionConnectionSnapthotEvent emitted: %@", &v76, 0x16u);
      }
    }
  }

  else
  {
  }

  v50 = *(a1 + 32);
  v51 = *(v50 + 16);
  v52 = [*(v50 + 104) netId];
  if ([v51 isEqual:v52])
  {
    v53 = [*(*(a1 + 32) + 104) clientEvent];

    if (v53)
    {
      v54 = [MEMORY[0x277D552C0] sharedStream];
      v55 = [*(*(a1 + 32) + 104) clientEvent];
      [v54 emitMessage:v55 timestamp:{objc_msgSend(*(*(a1 + 32) + 104), "timestamp")}];

      v56 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v57 = *(*(a1 + 32) + 16);
        v76 = 136315394;
        v77 = "[SiriCoreNetworkingAnalytics _emitAllCachedMessagesFor:]_block_invoke";
        v78 = 2112;
        v79 = v57;
        _os_log_impl(&dword_2669D1000, v56, OS_LOG_TYPE_INFO, "%s _debugSessionConnectionSnapthotEvent emitted: %@", &v76, 0x16u);
      }
    }
  }

  else
  {
  }

  v58 = *(a1 + 32);
  v59 = *(v58 + 16);
  v60 = [*(v58 + 112) netId];
  if ([v59 isEqual:v60])
  {
    v61 = [*(*(a1 + 32) + 112) clientEvent];

    if (v61)
    {
      v62 = [MEMORY[0x277D552C0] sharedStream];
      v63 = [*(*(a1 + 32) + 112) clientEvent];
      [v62 emitMessage:v63 timestamp:{objc_msgSend(*(*(a1 + 32) + 112), "timestamp")}];

      v64 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v65 = *(*(a1 + 32) + 16);
        v76 = 136315394;
        v77 = "[SiriCoreNetworkingAnalytics _emitAllCachedMessagesFor:]_block_invoke";
        v78 = 2112;
        v79 = v65;
        _os_log_impl(&dword_2669D1000, v64, OS_LOG_TYPE_INFO, "%s _sessionConnectionFailedEvent emitted: %@", &v76, 0x16u);
      }
    }
  }

  else
  {
  }

  v66 = *(a1 + 32);
  v67 = *(v66 + 16);
  v68 = [*(v66 + 120) netId];
  if ([v67 isEqual:v68])
  {
    v69 = [*(*(a1 + 32) + 120) clientEvent];

    if (v69)
    {
      v70 = [MEMORY[0x277D552C0] sharedStream];
      v71 = [*(*(a1 + 32) + 120) clientEvent];
      [v70 emitMessage:v71 timestamp:{objc_msgSend(*(*(a1 + 32) + 120), "timestamp")}];

      v72 = *MEMORY[0x277CEF088];
      if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
      {
        v73 = *(*(a1 + 32) + 16);
        v76 = 136315394;
        v77 = "[SiriCoreNetworkingAnalytics _emitAllCachedMessagesFor:]_block_invoke";
        v78 = 2112;
        v79 = v73;
        _os_log_impl(&dword_2669D1000, v72, OS_LOG_TYPE_INFO, "%s _peerConnectionFailedEvent emitted: %@", &v76, 0x16u);
      }
    }
  }

  else
  {
  }

  [*(*(a1 + 32) + 56) setClientEvent:0];
  [*(*(a1 + 32) + 64) setClientEvent:0];
  [*(*(a1 + 32) + 72) setClientEvent:0];
  [*(*(a1 + 32) + 80) setClientEvent:0];
  [*(*(a1 + 32) + 88) setClientEvent:0];
  [*(*(a1 + 32) + 96) setClientEvent:0];
  [*(*(a1 + 32) + 104) setClientEvent:0];
  [*(*(a1 + 32) + 112) setClientEvent:0];
  result = [*(*(a1 + 32) + 120) setClientEvent:0];
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)emitLogDebug
{
  if (!arc4random_uniform(0xAu))
  {
    return 1;
  }

  return AFIsInternalInstall();
}

- (id)orchestratorRequestId
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2390;
  v10 = __Block_byref_object_dispose__2391;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__SiriCoreNetworkingAnalytics_orchestratorRequestId__block_invoke;
  v5[3] = &unk_279BD6120;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setOrchestratorRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SiriCoreNetworkingAnalytics_setOrchestratorRequestId___block_invoke;
  v7[3] = &unk_279BD6540;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

void __56__SiriCoreNetworkingAnalytics_setOrchestratorRequestId___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 40);
    v8 = 136315394;
    v9 = "[SiriCoreNetworkingAnalytics setOrchestratorRequestId:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s OrchestratorRequestId Updated: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resetSequenceNumber
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SiriCoreNetworkingAnalytics_resetSequenceNumber__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)increaseSequenceNumber
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SiriCoreNetworkingAnalytics_increaseSequenceNumber__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __53__SiriCoreNetworkingAnalytics_increaseSequenceNumber__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 52);
  if (v2 <= 0x3E8)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(v1 + 52) = v3;
  return result;
}

- (BOOL)isNetIdAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__SiriCoreNetworkingAnalytics_isNetIdAvailable__block_invoke;
  v5[3] = &unk_279BD6120;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __47__SiriCoreNetworkingAnalytics_isNetIdAvailable__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 49);
  v2 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    if (*(*(a1 + 32) + 49))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 136315394;
    v6 = "[SiriCoreNetworkingAnalytics isNetIdAvailable]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s NetId available: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setNetIdAvailable:(BOOL)available
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SiriCoreNetworkingAnalytics_setNetIdAvailable___block_invoke;
  v4[3] = &unk_279BD6080;
  v4[4] = self;
  availableCopy = available;
  dispatch_async(queue, v4);
}

void __49__SiriCoreNetworkingAnalytics_setNetIdAvailable___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 49) = *(a1 + 40);
  v2 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    if (*(*(a1 + 32) + 49))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 136315394;
    v6 = "[SiriCoreNetworkingAnalytics setNetIdAvailable:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s NetId available: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setIsConnectionActive:(BOOL)active
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SiriCoreNetworkingAnalytics_setIsConnectionActive___block_invoke;
  v4[3] = &unk_279BD6080;
  v4[4] = self;
  activeCopy = active;
  dispatch_async(queue, v4);
}

- (unsigned)getSequenceNumber
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SiriCoreNetworkingAnalytics_getSequenceNumber__block_invoke;
  v5[3] = &unk_279BD6120;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setConnectionProvider:(id)provider
{
  providerCopy = provider;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SiriCoreNetworkingAnalytics_setConnectionProvider___block_invoke;
  v7[3] = &unk_279BD6540;
  v7[4] = self;
  v8 = providerCopy;
  v6 = providerCopy;
  dispatch_async(queue, v7);
}

void __53__SiriCoreNetworkingAnalytics_setConnectionProvider___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 32) = [SiriCoreNetworkingAnalytics providerFromString:*(a1 + 40)];
  v2 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[SiriCoreNetworkingAnalytics setConnectionProvider:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s ConnectionProvider Updated: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setNetworkConnectionId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SiriCoreNetworkingAnalytics_setNetworkConnectionId___block_invoke;
  v7[3] = &unk_279BD6540;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

void __54__SiriCoreNetworkingAnalytics_setNetworkConnectionId___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 24);
    v5 = 136315394;
    v6 = "[SiriCoreNetworkingAnalytics setNetworkConnectionId:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s NetworkConnectionId Updated: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setNetId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SiriCoreNetworkingAnalytics_setNetId___block_invoke;
  v7[3] = &unk_279BD6540;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

void __40__SiriCoreNetworkingAnalytics_setNetId___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 16);
    v8 = 136315394;
    v9 = "[SiriCoreNetworkingAnalytics setNetId:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s NetId Updated: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resetNetId
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SiriCoreNetworkingAnalytics_resetNetId__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__SiriCoreNetworkingAnalytics_resetNetId__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *MEMORY[0x277CEF088];
  if (os_log_type_enabled(*MEMORY[0x277CEF088], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 16);
    v8 = 136315394;
    v9 = "[SiriCoreNetworkingAnalytics resetNetId]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s NetId Updated: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  [(SiriCoreNetworkingAnalytics *)self resetNetId];

  [(SiriCoreNetworkingAnalytics *)self resetSequenceNumber];
}

- (id)_init
{
  v26.receiver = self;
  v26.super_class = SiriCoreNetworkingAnalytics;
  v2 = [(SiriCoreNetworkingAnalytics *)&v26 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.assistantd.siricore.networking.analytics", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v2->_sequenceNumber = 0;
    *&v2->_isConnectionActive = 0;
    v7 = objc_opt_new();
    httpHeaderEvent = v2->_httpHeaderEvent;
    v2->_httpHeaderEvent = v7;

    v9 = objc_opt_new();
    preparationSnapshotEvent = v2->_preparationSnapshotEvent;
    v2->_preparationSnapshotEvent = v9;

    v11 = objc_opt_new();
    debugPreparationSnapshotEvent = v2->_debugPreparationSnapshotEvent;
    v2->_debugPreparationSnapshotEvent = v11;

    v13 = objc_opt_new();
    readySnapshotEvent = v2->_readySnapshotEvent;
    v2->_readySnapshotEvent = v13;

    v15 = objc_opt_new();
    debugReadySnapshotEvent = v2->_debugReadySnapshotEvent;
    v2->_debugReadySnapshotEvent = v15;

    v17 = objc_opt_new();
    sessionConnectionSnapthotEvent = v2->_sessionConnectionSnapthotEvent;
    v2->_sessionConnectionSnapthotEvent = v17;

    v19 = objc_opt_new();
    debugSessionConnectionSnapthotEvent = v2->_debugSessionConnectionSnapthotEvent;
    v2->_debugSessionConnectionSnapthotEvent = v19;

    v21 = objc_opt_new();
    sessionConnectionFailedEvent = v2->_sessionConnectionFailedEvent;
    v2->_sessionConnectionFailedEvent = v21;

    v23 = objc_opt_new();
    peerConnectionFailedEvent = v2->_peerConnectionFailedEvent;
    v2->_peerConnectionFailedEvent = v23;
  }

  return v2;
}

- (SiriCoreNetworkingAnalytics)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SiriCoreNetworkingAnalytics.m" lineNumber:55 description:{@"%s is marked as NS_UNAVAILABLE. Use the designated initializer instead.", "-[SiriCoreNetworkingAnalytics init]"}];

  return 0;
}

+ (id)sharedSiriCoreNetworkingAnalytics
{
  if (sharedSiriCoreNetworkingAnalytics_onceToken != -1)
  {
    dispatch_once(&sharedSiriCoreNetworkingAnalytics_onceToken, &__block_literal_global_2417);
  }

  v3 = sharedSiriCoreNetworkingAnalytics_shared;

  return v3;
}

uint64_t __64__SiriCoreNetworkingAnalytics_sharedSiriCoreNetworkingAnalytics__block_invoke()
{
  sharedSiriCoreNetworkingAnalytics_shared = [[SiriCoreNetworkingAnalytics alloc] _init];

  return MEMORY[0x2821F96F8]();
}

@end