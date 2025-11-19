@interface WiFiUsageConnectionQualityRecord
- (WiFiUsageConnectionQualityRecord)initWithUsageSession:(id)a3 andNeighborBssList:(id)a4 andOtherBssList:(id)a5;
- (void)queryNetworkPerformanceFeedAndSubmitToGeoWiFi;
@end

@implementation WiFiUsageConnectionQualityRecord

- (WiFiUsageConnectionQualityRecord)initWithUsageSession:(id)a3 andNeighborBssList:(id)a4 andOtherBssList:(id)a5
{
  v159 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!objc_opt_class())
  {
    v66 = 0;
    goto LABEL_72;
  }

  v139 = v10;
  v141 = v9;
  v155.receiver = self;
  v155.super_class = WiFiUsageConnectionQualityRecord;
  v11 = [(WiFiUsageConnectionQualityRecord *)&v155 init];
  v12 = MEMORY[0x277CCACA8];
  v13 = [v8 networkDetails];
  v14 = [v13 networkName];
  v15 = [v8 networkDetails];
  v16 = [v15 connectedBss];
  v17 = [v16 bssid];
  v18 = [v12 stringWithFormat:@"%@-%@", v14, v17];
  identifier = v11->_identifier;
  v11->_identifier = v18;

  v20 = objc_alloc_init(MEMORY[0x277D0EE50]);
  geoMessage = v11->_geoMessage;
  v11->_geoMessage = v20;

  -[GEOWiFiConnectionQuality setPacketsIn:](v11->_geoMessage, "setPacketsIn:", [v8 totalRxFrames]);
  -[GEOWiFiConnectionQuality setPacketsOut:](v11->_geoMessage, "setPacketsOut:", [v8 totalTxFrames]);
  v22 = v11->_geoMessage;
  v23 = +[WiFiUsagePrivacyFilter numberWithByteCount:](WiFiUsagePrivacyFilter, "numberWithByteCount:", [v8 netInterfaceRxBytes]);
  -[GEOWiFiConnectionQuality setBytesInTotal:](v22, "setBytesInTotal:", [v23 unsignedLongLongValue]);

  v24 = v11->_geoMessage;
  v25 = +[WiFiUsagePrivacyFilter numberWithByteCount:](WiFiUsagePrivacyFilter, "numberWithByteCount:", [v8 netInterfaceTxBytes]);
  -[GEOWiFiConnectionQuality setBytesOutTotal:](v24, "setBytesOutTotal:", [v25 unsignedLongLongValue]);

  -[GEOWiFiConnectionQuality setCca:](v11->_geoMessage, "setCca:", [v8 averageCca]);
  -[GEOWiFiConnectionQuality setRssi:](v11->_geoMessage, "setRssi:", [v8 lastRssi]);
  -[GEOWiFiConnectionQuality setSnr:](v11->_geoMessage, "setSnr:", [v8 averageSnr]);
  v26 = v11->_geoMessage;
  v27 = [v8 networkDetails];
  v28 = [v27 connectedBss];
  v29 = [v28 bssid];
  [(GEOWiFiConnectionQuality *)v26 setUniqueID:v29];

  v30 = v11->_geoMessage;
  v31 = [v8 networkDetails];
  -[GEOWiFiConnectionQuality setHotspot20:](v30, "setHotspot20:", [v31 isPasspoint]);

  v32 = v11->_geoMessage;
  v33 = [v8 networkDetails];
  v34 = [v33 connectedBss];
  -[GEOWiFiConnectionQuality setBand:](v32, "setBand:", [v34 band]);

  v35 = v11->_geoMessage;
  v36 = [v8 networkDetails];
  v37 = [v36 connectedBss];
  -[GEOWiFiConnectionQuality setChannel:](v35, "setChannel:", [v37 channel]);

  v38 = v11->_geoMessage;
  v39 = [v8 networkDetails];
  v40 = [v39 connectedBss];
  -[GEOWiFiConnectionQuality setChannelWidth:](v38, "setChannelWidth:", [v40 channelWidth]);

  v41 = v11->_geoMessage;
  v42 = [v8 networkDetails];
  v43 = [v42 connectedBss];
  -[GEOWiFiConnectionQuality setPhyMode:](v41, "setPhyMode:", [v43 phyMode]);

  v44 = v11->_geoMessage;
  v45 = [v8 networkDetails];
  v46 = [v45 connectedBss];
  -[GEOWiFiConnectionQuality setIsEdgeBSS:](v44, "setIsEdgeBSS:", [v46 isEdgeBss]);

  v47 = v11->_geoMessage;
  v48 = [v8 responsivenessScore];
  [v48 doubleValue];
  [(GEOWiFiConnectionQuality *)v47 setResponsivenessScore:?];

  v49 = v11->_geoMessage;
  v50 = [v8 networkDetails];
  v51 = [v50 connectedBss];
  -[GEOWiFiConnectionQuality setNetworkType:](v49, "setNetworkType:", [v51 networkAccessCode] + 1);

  v52 = v11;
  v53 = [v8 networkDetails];
  LODWORD(v50) = [v53 isAdhoc];

  if (v50)
  {
    v54 = 1;
  }

  else
  {
    v54 = 2;
  }

  [(GEOWiFiConnectionQuality *)v11->_geoMessage setApMode:v54];
  v55 = v11->_geoMessage;
  v56 = [v8 sessionStartTime];
  [v56 timeIntervalSinceReferenceDate];
  [(GEOWiFiConnectionQuality *)v55 setTimeOfDay:v57];

  v58 = [v8 networkDetails];
  v59 = [v58 captiveStatus];

  if (v59 <= 2)
  {
    [(GEOWiFiConnectionQuality *)v11->_geoMessage setCaptiveDetermination:v59];
  }

  v60 = [v8 networkDetails];
  v61 = [v60 isAutoJoined];

  if (v61)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  [(GEOWiFiConnectionQuality *)v11->_geoMessage setAssociationReason:v62];
  -[GEOWiFiConnectionQuality setDisassociationReason:](v11->_geoMessage, "setDisassociationReason:", WiFiUsageConnectionQualityRecordConvertDisconnectReasonToGEOReason([v8 lastDisconnectReason]));
  [v8 sessionDuration];
  if (v63 >= 60.0)
  {
    [v8 sessionDuration];
    if (v67 >= 300.0)
    {
      [v8 sessionDuration];
      if (v68 >= 1200.0)
      {
        [v8 sessionDuration];
        if (v69 >= 3600.0)
        {
          [v8 sessionDuration];
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
  v71 = [v8 networkDetails];
  p_isa = &v11->super.isa;
  if (([v71 isPublic] & 1) == 0)
  {
    v73 = [v8 networkDetails];
    if (![v73 isCarrierBased])
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
    v71 = [v8 networkDetails];
    v73 = [v71 networkName];
    [(GEOWiFiConnectionQuality *)v75 setIdentifier:v73];
    goto LABEL_28;
  }

  v72 = [WiFiUsagePrivacyFilter canPerformActionWithSampleRate:1];

  if (v72)
  {
    goto LABEL_27;
  }

LABEL_29:
  v76 = objc_alloc_init(MEMORY[0x277D0EB50]);
  v77 = [v8 networkDetails];
  v78 = [v77 connectedBss];
  [v78 locationLatitude];
  [v76 setLat:?];

  v79 = [v8 networkDetails];
  v80 = [v79 connectedBss];
  [v80 locationLongitude];
  [v76 setLng:?];

  v81 = objc_alloc_init(MEMORY[0x277D0EB78]);
  [v81 setLatLng:v76];
  v82 = &v52->super.isa;
  [(GEOWiFiConnectionQuality *)v52->_geoMessage setLocation:v81];
  v83 = [v8 networkDetails];
  v137 = v81;
  v138 = v76;
  if ([v83 addedFromUI])
  {

    v84 = v141;
LABEL_32:
    v87 = p_isa[1];
    v88 = 1;
    goto LABEL_33;
  }

  v85 = [v8 networkDetails];
  v86 = [v85 addedViaATJ];

  v84 = v141;
  if (v86)
  {
    goto LABEL_32;
  }

  v95 = [v8 networkDetails];
  v96 = [v95 addedFromApp];

  if (v96)
  {
    v87 = p_isa[1];
    v88 = 2;
  }

  else
  {
    v99 = [v8 networkDetails];
    v100 = [v99 isCarrierBased];

    v87 = p_isa[1];
    if (v100)
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
  v89 = [v8 networkDetails];
  v90 = [v89 isOpen];

  if (v90)
  {
    v91 = p_isa[1];
    v92 = 1;
  }

  else
  {
    v93 = [v8 networkDetails];
    v94 = [v93 hasEnterpriseSecurity];

    if (v94)
    {
      v91 = p_isa[1];
      v92 = 4;
    }

    else
    {
      v97 = [v8 networkDetails];
      v98 = [v97 hasWep];

      v91 = p_isa[1];
      if (v98)
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
  v101 = [v8 networkDetails];
  v102 = [v101 isMoving];

  if (v102)
  {
    [p_isa[1] addTraits:1];
  }

  v103 = [v8 networkDetails];
  v104 = [v103 isWidelyDeployed];

  if (v104)
  {
    [p_isa[1] addTraits:2];
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v105 = [v8 networkDetails];
  v106 = [v105 downloadSpeedResults];

  v107 = [v106 countByEnumeratingWithState:&v151 objects:v158 count:16];
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
          objc_enumerationMutation(v106);
        }

        v111 = *(*(&v151 + 1) + 8 * i);
        v112 = objc_alloc_init(MEMORY[0x277D0EE60]);
        [v111 floatValue];
        [v112 setAvgDL:?];
        [p_isa[1] addSpeedTest:v112];
      }

      v108 = [v106 countByEnumeratingWithState:&v151 objects:v158 count:16];
    }

    while (v108);
  }

  v140 = v8;

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
        v121 = [v119 bssid];
        [v120 setUniqueID:v121];

        [v82[1] addEssMembers:v120];
        if ((v116 & 1) == 0)
        {
          v122 = [v119 networkAccessCode];
          v123 = [v119 venueGroup];
          v124 = [v119 venueCode];
          v125 = objc_alloc_init(MEMORY[0x277D0EE70]);
          [v125 setVenueName:&stru_28487EF20];
          [v125 setNetworkType:v122];
          [v125 setVenueType:v124];
          v126 = v123;
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
  v10 = v139;
  v127 = v139;
  v128 = [v127 countByEnumeratingWithState:&v143 objects:v156 count:16];
  v8 = v140;
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
        v134 = [v132 bssid];
        [v133 setUniqueID:v134];

        [p_isa[1] addNearbyBSS:v133];
      }

      v129 = [v127 countByEnumeratingWithState:&v143 objects:v156 count:16];
    }

    while (v129);
  }

  self = p_isa;
  v66 = self;
  v9 = v141;
LABEL_72:

  v135 = *MEMORY[0x277D85DE8];
  return v66;
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