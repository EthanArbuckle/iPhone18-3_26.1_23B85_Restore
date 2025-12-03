@interface WiFiUsageConnectionQualityRecord
- (WiFiUsageConnectionQualityRecord)initWithUsageSession:(id)session andNeighborBssList:(id)list andOtherBssList:(id)bssList;
- (void)queryNetworkPerformanceFeedAndSubmitToGeoWiFi;
@end

@implementation WiFiUsageConnectionQualityRecord

- (WiFiUsageConnectionQualityRecord)initWithUsageSession:(id)session andNeighborBssList:(id)list andOtherBssList:(id)bssList
{
  v159 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  listCopy = list;
  bssListCopy = bssList;
  if (!objc_opt_class())
  {
    selfCopy = 0;
    goto LABEL_72;
  }

  v139 = bssListCopy;
  v141 = listCopy;
  v155.receiver = self;
  v155.super_class = WiFiUsageConnectionQualityRecord;
  v11 = [(WiFiUsageConnectionQualityRecord *)&v155 init];
  v12 = MEMORY[0x277CCACA8];
  networkDetails = [sessionCopy networkDetails];
  networkName = [networkDetails networkName];
  networkDetails2 = [sessionCopy networkDetails];
  connectedBss = [networkDetails2 connectedBss];
  bssid = [connectedBss bssid];
  v18 = [v12 stringWithFormat:@"%@-%@", networkName, bssid];
  identifier = v11->_identifier;
  v11->_identifier = v18;

  v20 = objc_alloc_init(MEMORY[0x277D0EE50]);
  geoMessage = v11->_geoMessage;
  v11->_geoMessage = v20;

  -[GEOWiFiConnectionQuality setPacketsIn:](v11->_geoMessage, "setPacketsIn:", [sessionCopy totalRxFrames]);
  -[GEOWiFiConnectionQuality setPacketsOut:](v11->_geoMessage, "setPacketsOut:", [sessionCopy totalTxFrames]);
  v22 = v11->_geoMessage;
  v23 = +[WiFiUsagePrivacyFilter numberWithByteCount:](WiFiUsagePrivacyFilter, "numberWithByteCount:", [sessionCopy netInterfaceRxBytes]);
  -[GEOWiFiConnectionQuality setBytesInTotal:](v22, "setBytesInTotal:", [v23 unsignedLongLongValue]);

  v24 = v11->_geoMessage;
  v25 = +[WiFiUsagePrivacyFilter numberWithByteCount:](WiFiUsagePrivacyFilter, "numberWithByteCount:", [sessionCopy netInterfaceTxBytes]);
  -[GEOWiFiConnectionQuality setBytesOutTotal:](v24, "setBytesOutTotal:", [v25 unsignedLongLongValue]);

  -[GEOWiFiConnectionQuality setCca:](v11->_geoMessage, "setCca:", [sessionCopy averageCca]);
  -[GEOWiFiConnectionQuality setRssi:](v11->_geoMessage, "setRssi:", [sessionCopy lastRssi]);
  -[GEOWiFiConnectionQuality setSnr:](v11->_geoMessage, "setSnr:", [sessionCopy averageSnr]);
  v26 = v11->_geoMessage;
  networkDetails3 = [sessionCopy networkDetails];
  connectedBss2 = [networkDetails3 connectedBss];
  bssid2 = [connectedBss2 bssid];
  [(GEOWiFiConnectionQuality *)v26 setUniqueID:bssid2];

  v30 = v11->_geoMessage;
  networkDetails4 = [sessionCopy networkDetails];
  -[GEOWiFiConnectionQuality setHotspot20:](v30, "setHotspot20:", [networkDetails4 isPasspoint]);

  v32 = v11->_geoMessage;
  networkDetails5 = [sessionCopy networkDetails];
  connectedBss3 = [networkDetails5 connectedBss];
  -[GEOWiFiConnectionQuality setBand:](v32, "setBand:", [connectedBss3 band]);

  v35 = v11->_geoMessage;
  networkDetails6 = [sessionCopy networkDetails];
  connectedBss4 = [networkDetails6 connectedBss];
  -[GEOWiFiConnectionQuality setChannel:](v35, "setChannel:", [connectedBss4 channel]);

  v38 = v11->_geoMessage;
  networkDetails7 = [sessionCopy networkDetails];
  connectedBss5 = [networkDetails7 connectedBss];
  -[GEOWiFiConnectionQuality setChannelWidth:](v38, "setChannelWidth:", [connectedBss5 channelWidth]);

  v41 = v11->_geoMessage;
  networkDetails8 = [sessionCopy networkDetails];
  connectedBss6 = [networkDetails8 connectedBss];
  -[GEOWiFiConnectionQuality setPhyMode:](v41, "setPhyMode:", [connectedBss6 phyMode]);

  v44 = v11->_geoMessage;
  networkDetails9 = [sessionCopy networkDetails];
  connectedBss7 = [networkDetails9 connectedBss];
  -[GEOWiFiConnectionQuality setIsEdgeBSS:](v44, "setIsEdgeBSS:", [connectedBss7 isEdgeBss]);

  v47 = v11->_geoMessage;
  responsivenessScore = [sessionCopy responsivenessScore];
  [responsivenessScore doubleValue];
  [(GEOWiFiConnectionQuality *)v47 setResponsivenessScore:?];

  v49 = v11->_geoMessage;
  networkDetails10 = [sessionCopy networkDetails];
  connectedBss8 = [networkDetails10 connectedBss];
  -[GEOWiFiConnectionQuality setNetworkType:](v49, "setNetworkType:", [connectedBss8 networkAccessCode] + 1);

  v52 = v11;
  networkDetails11 = [sessionCopy networkDetails];
  LODWORD(networkDetails10) = [networkDetails11 isAdhoc];

  if (networkDetails10)
  {
    v54 = 1;
  }

  else
  {
    v54 = 2;
  }

  [(GEOWiFiConnectionQuality *)v11->_geoMessage setApMode:v54];
  v55 = v11->_geoMessage;
  sessionStartTime = [sessionCopy sessionStartTime];
  [sessionStartTime timeIntervalSinceReferenceDate];
  [(GEOWiFiConnectionQuality *)v55 setTimeOfDay:v57];

  networkDetails12 = [sessionCopy networkDetails];
  captiveStatus = [networkDetails12 captiveStatus];

  if (captiveStatus <= 2)
  {
    [(GEOWiFiConnectionQuality *)v11->_geoMessage setCaptiveDetermination:captiveStatus];
  }

  networkDetails13 = [sessionCopy networkDetails];
  isAutoJoined = [networkDetails13 isAutoJoined];

  if (isAutoJoined)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  [(GEOWiFiConnectionQuality *)v11->_geoMessage setAssociationReason:v62];
  -[GEOWiFiConnectionQuality setDisassociationReason:](v11->_geoMessage, "setDisassociationReason:", WiFiUsageConnectionQualityRecordConvertDisconnectReasonToGEOReason([sessionCopy lastDisconnectReason]));
  [sessionCopy sessionDuration];
  if (v63 >= 60.0)
  {
    [sessionCopy sessionDuration];
    if (v67 >= 300.0)
    {
      [sessionCopy sessionDuration];
      if (v68 >= 1200.0)
      {
        [sessionCopy sessionDuration];
        if (v69 >= 3600.0)
        {
          [sessionCopy sessionDuration];
          v64 = v11->_geoMessage;
          if (v70 >= 3600.0)
          {
            v65 = 5;
          }

          else
          {
            v65 = 0;
          }
        }

        else
        {
          v64 = v11->_geoMessage;
          v65 = 4;
        }
      }

      else
      {
        v64 = v11->_geoMessage;
        v65 = 3;
      }
    }

    else
    {
      v64 = v11->_geoMessage;
      v65 = 2;
    }
  }

  else
  {
    v64 = v11->_geoMessage;
    v65 = 1;
  }

  [(GEOWiFiConnectionQuality *)v64 setAssociationLength:v65];
  networkDetails14 = [sessionCopy networkDetails];
  p_isa = &v11->super.isa;
  if (([networkDetails14 isPublic] & 1) == 0)
  {
    networkDetails15 = [sessionCopy networkDetails];
    if (![networkDetails15 isCarrierBased])
    {
LABEL_28:

      goto LABEL_29;
    }

    v74 = [WiFiUsagePrivacyFilter canPerformActionWithSampleRate:1];

    if (!v74)
    {
      goto LABEL_29;
    }

LABEL_27:
    v75 = v11->_geoMessage;
    networkDetails14 = [sessionCopy networkDetails];
    networkDetails15 = [networkDetails14 networkName];
    [(GEOWiFiConnectionQuality *)v75 setIdentifier:networkDetails15];
    goto LABEL_28;
  }

  v72 = [WiFiUsagePrivacyFilter canPerformActionWithSampleRate:1];

  if (v72)
  {
    goto LABEL_27;
  }

LABEL_29:
  v76 = objc_alloc_init(MEMORY[0x277D0EB50]);
  networkDetails16 = [sessionCopy networkDetails];
  connectedBss9 = [networkDetails16 connectedBss];
  [connectedBss9 locationLatitude];
  [v76 setLat:?];

  networkDetails17 = [sessionCopy networkDetails];
  connectedBss10 = [networkDetails17 connectedBss];
  [connectedBss10 locationLongitude];
  [v76 setLng:?];

  v81 = objc_alloc_init(MEMORY[0x277D0EB78]);
  [v81 setLatLng:v76];
  v82 = &v52->super.isa;
  [(GEOWiFiConnectionQuality *)v52->_geoMessage setLocation:v81];
  networkDetails18 = [sessionCopy networkDetails];
  v137 = v81;
  v138 = v76;
  if ([networkDetails18 addedFromUI])
  {

    v84 = v141;
LABEL_32:
    v87 = p_isa[1];
    v88 = 1;
    goto LABEL_33;
  }

  networkDetails19 = [sessionCopy networkDetails];
  addedViaATJ = [networkDetails19 addedViaATJ];

  v84 = v141;
  if (addedViaATJ)
  {
    goto LABEL_32;
  }

  networkDetails20 = [sessionCopy networkDetails];
  addedFromApp = [networkDetails20 addedFromApp];

  if (addedFromApp)
  {
    v87 = p_isa[1];
    v88 = 2;
  }

  else
  {
    networkDetails21 = [sessionCopy networkDetails];
    isCarrierBased = [networkDetails21 isCarrierBased];

    v87 = p_isa[1];
    if (isCarrierBased)
    {
      v88 = 3;
    }

    else
    {
      v88 = 0;
    }
  }

LABEL_33:
  [v87 setNetworkOrigin:v88];
  networkDetails22 = [sessionCopy networkDetails];
  isOpen = [networkDetails22 isOpen];

  if (isOpen)
  {
    v91 = p_isa[1];
    v92 = 1;
  }

  else
  {
    networkDetails23 = [sessionCopy networkDetails];
    hasEnterpriseSecurity = [networkDetails23 hasEnterpriseSecurity];

    if (hasEnterpriseSecurity)
    {
      v91 = p_isa[1];
      v92 = 4;
    }

    else
    {
      networkDetails24 = [sessionCopy networkDetails];
      hasWep = [networkDetails24 hasWep];

      v91 = p_isa[1];
      if (hasWep)
      {
        v92 = 2;
      }

      else
      {
        v92 = 3;
      }
    }
  }

  [v91 addAuthTraits:v92];
  networkDetails25 = [sessionCopy networkDetails];
  isMoving = [networkDetails25 isMoving];

  if (isMoving)
  {
    [p_isa[1] addTraits:1];
  }

  networkDetails26 = [sessionCopy networkDetails];
  isWidelyDeployed = [networkDetails26 isWidelyDeployed];

  if (isWidelyDeployed)
  {
    [p_isa[1] addTraits:2];
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  networkDetails27 = [sessionCopy networkDetails];
  downloadSpeedResults = [networkDetails27 downloadSpeedResults];

  v107 = [downloadSpeedResults countByEnumeratingWithState:&v151 objects:v158 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v152;
    do
    {
      for (i = 0; i != v108; ++i)
      {
        if (*v152 != v109)
        {
          objc_enumerationMutation(downloadSpeedResults);
        }

        v111 = *(*(&v151 + 1) + 8 * i);
        v112 = objc_alloc_init(MEMORY[0x277D0EE60]);
        [v111 floatValue];
        [v112 setAvgDL:?];
        [p_isa[1] addSpeedTest:v112];
      }

      v108 = [downloadSpeedResults countByEnumeratingWithState:&v151 objects:v158 count:16];
    }

    while (v108);
  }

  v140 = sessionCopy;

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v113 = v84;
  v114 = [v113 countByEnumeratingWithState:&v147 objects:v157 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = 0;
    v117 = *v148;
    do
    {
      for (j = 0; j != v115; ++j)
      {
        if (*v148 != v117)
        {
          objc_enumerationMutation(v113);
        }

        v119 = *(*(&v147 + 1) + 8 * j);
        v120 = objc_alloc_init(MEMORY[0x277D0EE40]);
        [v120 setRssi:{objc_msgSend(v119, "rssi")}];
        [v120 setChannel:{objc_msgSend(v119, "channel")}];
        bssid3 = [v119 bssid];
        [v120 setUniqueID:bssid3];

        [v82[1] addEssMembers:v120];
        if ((v116 & 1) == 0)
        {
          networkAccessCode = [v119 networkAccessCode];
          venueGroup = [v119 venueGroup];
          venueCode = [v119 venueCode];
          v125 = objc_alloc_init(MEMORY[0x277D0EE70]);
          [v125 setVenueName:&stru_28487EF20];
          [v125 setNetworkType:networkAccessCode];
          [v125 setVenueType:venueCode];
          v126 = venueGroup;
          v82 = p_isa;
          [v125 setVenueGroup:v126];
          [p_isa[1] setPasspointInfo:v125];
        }

        v116 = 1;
      }

      v115 = [v113 countByEnumeratingWithState:&v147 objects:v157 count:16];
    }

    while (v115);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  bssListCopy = v139;
  v127 = v139;
  v128 = [v127 countByEnumeratingWithState:&v143 objects:v156 count:16];
  sessionCopy = v140;
  if (v128)
  {
    v129 = v128;
    v130 = *v144;
    do
    {
      for (k = 0; k != v129; ++k)
      {
        if (*v144 != v130)
        {
          objc_enumerationMutation(v127);
        }

        v132 = *(*(&v143 + 1) + 8 * k);
        v133 = objc_alloc_init(MEMORY[0x277D0EE40]);
        [v133 setRssi:{objc_msgSend(v132, "rssi")}];
        [v133 setChannel:{objc_msgSend(v132, "channel")}];
        bssid4 = [v132 bssid];
        [v133 setUniqueID:bssid4];

        [p_isa[1] addNearbyBSS:v133];
      }

      v129 = [v127 countByEnumeratingWithState:&v143 objects:v156 count:16];
    }

    while (v129);
  }

  self = p_isa;
  selfCopy = self;
  listCopy = v141;
LABEL_72:

  v135 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)queryNetworkPerformanceFeedAndSubmitToGeoWiFi
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__3;
  v5[4] = __Block_byref_object_dispose__3;
  v6 = 0;
  if (self->_identifier)
  {
    v3 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__WiFiUsageConnectionQualityRecord_queryNetworkPerformanceFeedAndSubmitToGeoWiFi__block_invoke;
    block[3] = &unk_2789C73A8;
    block[4] = self;
    block[5] = v5;
    dispatch_async(v3, block);
  }

  else
  {
    NSLog(&cfstr_SNullIdentifie.isa, a2, "[WiFiUsageConnectionQualityRecord queryNetworkPerformanceFeedAndSubmitToGeoWiFi]");
  }

  _Block_object_dispose(v5, 8);
}

void __81__WiFiUsageConnectionQualityRecord_queryNetworkPerformanceFeedAndSubmitToGeoWiFi__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277D6B4F8]);
  v4 = [v3 initWorkspaceWithService:*MEMORY[0x277D6B698]];
  v5 = [objc_alloc(MEMORY[0x277D6B6F0]) initWithWorkspace:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*(*(a1 + 32) + 16), *MEMORY[0x277D6B6C0], 0}];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__WiFiUsageConnectionQualityRecord_queryNetworkPerformanceFeedAndSubmitToGeoWiFi__block_invoke_2;
    v7[3] = &unk_2789C7380;
    v8 = *(a1 + 32);
    [v5 fullScorecardFor:1 options:v6 reply:v7];
  }

  objc_autoreleasePoolPop(v2);
}

void __81__WiFiUsageConnectionQualityRecord_queryNetworkPerformanceFeedAndSubmitToGeoWiFi__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"historical"];
  v33 = [v3 allValues];

  v4 = [v33 firstObject];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  NSLog(&cfstr_S.isa, "[WiFiUsageConnectionQualityRecord queryNetworkPerformanceFeedAndSubmitToGeoWiFi]_block_invoke_2", *(*(*(a1 + 40) + 8) + 40));
  v7 = *(*(a1 + 32) + 8);
  v8 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"overallStay"];
  [v7 setOverAllStay:{objc_msgSend(v8, "unsignedLongLongValue")}];

  v9 = *(*(a1 + 32) + 8);
  v10 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"lowLqmStay"];
  [v9 setLowLQMStay:{objc_msgSend(v10, "unsignedLongLongValue")}];

  v11 = *(*(a1 + 32) + 8);
  v12 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"faultyStay"];
  [v11 setFaultyStay:{objc_msgSend(v12, "unsignedLongLongValue")}];

  v13 = *(*(a1 + 32) + 8);
  v14 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"dataStalls"];
  [v13 setDataStalls:{objc_msgSend(v14, "unsignedLongLongValue")}];

  v15 = *(*(a1 + 32) + 8);
  v16 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"rttMin"];
  [v16 floatValue];
  [v15 setRoundTripTimeMin:?];

  v17 = *(*(a1 + 32) + 8);
  v18 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"rttAvg"];
  [v18 floatValue];
  [v17 setRoundTripTimeAvg:?];

  v19 = *(*(a1 + 32) + 8);
  v20 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"rttVar"];
  [v20 floatValue];
  [v19 setRoundTripTimeVar:?];

  v21 = *(*(a1 + 32) + 8);
  v22 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"connSuccesses"];
  [v21 setSuccessfulConnections:{objc_msgSend(v22, "unsignedLongLongValue")}];

  v23 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"connAttempts"];
  v24 = [v23 unsignedLongLongValue];
  v25 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"connSuccesses"];
  v26 = v24 - [v25 unsignedLongLongValue];

  [*(*(a1 + 32) + 8) setFailedConnections:v26];
  v27 = *(*(a1 + 32) + 8);
  v28 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"connAttempts"];
  [v27 setSslConnectionCount:{objc_msgSend(v28, "unsignedIntValue")}];

  v29 = *(*(a1 + 32) + 8);
  v30 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"certErrors"];
  [v29 setSslErrorCount:{objc_msgSend(v30, "unsignedIntValue")}];

  v31 = *(*(a1 + 32) + 8);
  v32 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"isKnownGood"];
  [v31 setIsKnownGood:{objc_msgSend(v32, "BOOLValue")}];

  [MEMORY[0x277D0EE58] reportWiFiConnectionQuality:*(*(a1 + 32) + 8)];
  NSLog(&cfstr_SSubmittedGeos.isa, "[WiFiUsageConnectionQualityRecord queryNetworkPerformanceFeedAndSubmitToGeoWiFi]_block_invoke_2");
}

@end