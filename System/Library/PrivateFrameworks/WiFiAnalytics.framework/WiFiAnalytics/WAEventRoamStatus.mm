@interface WAEventRoamStatus
+ (id)akmsAsDictionary:(unsigned int)dictionary withPrefix:(id)prefix;
+ (id)roamFlagAsDictionary:(int)dictionary;
+ (id)stringRepresentationWithReason:(int)reason;
+ (id)stringRepresentationWithStatus:(int)status;
- (BOOL)processEventAt:(id)at withPersistentContainer:(id)container andRunPostprocessing:(id)postprocessing withError:(id *)error;
- (BOOL)verifyDriverEvent:(id)event andDeviceCapabilities:(id)capabilities withError:(id *)error;
- (WAEventRoamStatus)initWithDriverEvent:(id)event andDeviceCapabilities:(id)capabilities withError:(id *)error;
- (void)submitEventToCA;
- (void)updateRecord:(id)record;
@end

@implementation WAEventRoamStatus

- (void)updateRecord:(id)record
{
  recordCopy = record;
  [recordCopy setFwReason:{-[WAEventRoamStatus reason](self, "reason")}];
  [recordCopy setHostReason:{-[WAEventRoamStatus hostReason](self, "hostReason")}];
  [recordCopy setStatus:{-[WAEventRoamStatus status](self, "status")}];
  [recordCopy setRoamLatencyMs:{-[WAEventRoamStatus roamScanDuration](self, "roamScanDuration")}];
  [recordCopy setMotionState:{-[WAEventRoamStatus motionState](self, "motionState")}];
  [recordCopy setVoipActive:{-[WAEventRoamStatus voipActive](self, "voipActive")}];
  [recordCopy setSourceRssi:{-[WAEventRoamStatus sourceRssi](self, "sourceRssi")}];
  [recordCopy setTargetRssi:{-[WAEventRoamStatus targetRssi](self, "targetRssi")}];
  [recordCopy setIsLateRoam:{-[WAEventRoamStatus lateRoam](self, "lateRoam")}];
  [recordCopy setSourceTimeSpentSecs:{-[WAEventRoamStatus associatedDur](self, "associatedDur")}];
  [recordCopy setRoamProfileType:{-[WAEventRoamStatus driverRoamProfile](self, "driverRoamProfile")}];
  [recordCopy setSourceChannel:{-[WAEventRoamStatus sourceChannel](self, "sourceChannel")}];
  [recordCopy setSourceChannelWidth:{-[WAEventRoamStatus sourceBW](self, "sourceBW")}];
  [recordCopy setSourceBand:{-[WAEventRoamStatus sourceBand](self, "sourceBand")}];
  [recordCopy setSourcePhyMode:{-[WAEventRoamStatus sourcePhyMode](self, "sourcePhyMode")}];
  [recordCopy setTargetChannel:{-[WAEventRoamStatus targetChannel](self, "targetChannel")}];
  [recordCopy setTargetChannelWidth:{-[WAEventRoamStatus targetBW](self, "targetBW")}];
  [recordCopy setTargetBand:{-[WAEventRoamStatus targetBand](self, "targetBand")}];
  [recordCopy setTargetPhyMode:{-[WAEventRoamStatus targetPhyMode](self, "targetPhyMode")}];
  ccaHistory = [(WAEventRoamStatus *)self ccaHistory];
  [recordCopy setHistoryCca:ccaHistory];

  rssiHistory = [(WAEventRoamStatus *)self rssiHistory];
  [recordCopy setHistoryRssi:rssiHistory];

  snrHistory = [(WAEventRoamStatus *)self snrHistory];
  [recordCopy setHistorySnr:snrHistory];

  txPerHistory = [(WAEventRoamStatus *)self txPerHistory];
  [recordCopy setHistoryTxPer:txPerHistory];

  txFrameHistory = [(WAEventRoamStatus *)self txFrameHistory];
  [recordCopy setHistoryTxFrames:txFrameHistory];

  fwTxPerHistory = [(WAEventRoamStatus *)self fwTxPerHistory];
  [recordCopy setHistoryFwTxPer:fwTxPerHistory];

  fwTxFramesHistory = [(WAEventRoamStatus *)self fwTxFramesHistory];
  [recordCopy setHistoryFwTxFrames:fwTxFramesHistory];

  beaconSchedHistory = [(WAEventRoamStatus *)self beaconSchedHistory];
  [recordCopy setHistoryBcnSched:beaconSchedHistory];

  beaconPerHistory = [(WAEventRoamStatus *)self beaconPerHistory];
  [recordCopy setHistoryBcnPer:beaconPerHistory];
}

- (BOOL)processEventAt:(id)at withPersistentContainer:(id)container andRunPostprocessing:(id)postprocessing withError:(id *)error
{
  v138[1] = *MEMORY[0x1E69E9840];
  atCopy = at;
  containerCopy = container;
  postprocessingCopy = postprocessing;
  context = objc_autoreleasePoolPush();
  v12 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAEventRoamStatus processEventAt:", "", buf, 2u);
  }

  if (![(WAEventRoamStatus *)self status])
  {
    targetBssid = [(WAEventRoamStatus *)self targetBssid];
    v14 = [WAUtil isWildcardMacAddress:targetBssid];

    if (v14)
    {
      v15 = MEMORY[0x1E696ABC0];
      v137 = *MEMORY[0x1E696A588];
      v16 = MEMORY[0x1E696AEC0];
      targetBssid2 = [(WAEventRoamStatus *)self targetBssid];
      v18 = [v16 stringWithFormat:@"targetAddr(%@) is the wildcard address", targetBssid2];
      v138[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:&v137 count:1];
      v20 = [v15 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v19];

      v21 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        targetBssid3 = [(WAEventRoamStatus *)self targetBssid];
        *buf = 136446722;
        v116 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
        v117 = 1024;
        v118 = 148;
        v119 = 2112;
        v120 = targetBssid3;
        _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:targetAddr(%@) is the wildcard address", buf, 0x1Cu);
      }

LABEL_7:

      v23 = 0;
LABEL_8:
      v24 = 0;
      v25 = 0;
      goto LABEL_45;
    }
  }

  sourceBssid = [(WAEventRoamStatus *)self sourceBssid];
  targetBssid4 = [(WAEventRoamStatus *)self targetBssid];
  v28 = [sourceBssid isEqualToString:targetBssid4];

  if (v28)
  {
    v89 = MEMORY[0x1E696ABC0];
    v135 = *MEMORY[0x1E696A588];
    v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ignoring roam status with identical origin and targetAddr"];
    v136 = v90;
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
    v20 = [v89 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v91];

    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v116 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
      v117 = 1024;
      v118 = 151;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:ignoring roam status with identical origin and targetAddr", buf, 0x12u);
    }

    goto LABEL_7;
  }

  v29 = +[RoamMO entity];
  v113 = 0;
  v23 = [containerCopy newDatedEventObjectFor:v29 withDate:atCopy withError:&v113];
  v20 = v113;

  if (!v23)
  {
    goto LABEL_8;
  }

  [(WAEventRoamStatus *)self updateRecord:v23];
  v30 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v116 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
    v117 = 1024;
    v118 = 156;
    v119 = 2112;
    v120 = v23;
    _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:new Roam Event: %@", buf, 0x1Cu);
  }

  sourceBssid2 = [(WAEventRoamStatus *)self sourceBssid];
  v112 = v20;
  v32 = [containerCopy bssForBssid:sourceBssid2 prefetchProperties:0 withError:&v112];
  v99 = v112;

  if (v32)
  {
    v95 = atCopy;
    [v32 setMostRecentChannel:{objc_msgSend(v23, "sourceChannel")}];
    [v32 setMostRecentBand:{objc_msgSend(v23, "sourceBand")}];
    [v32 setPhyMode:{objc_msgSend(v23, "sourcePhyMode")}];
    date = [v23 date];
    [v32 setLastSeen:date];

    [v23 setSource:v32];
    v34 = WALogCategoryDeviceStoreHandle();
    v103 = v32;
    v104 = v23;
    v97 = postprocessingCopy;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      bssid = [v32 bssid];
      lastSeen = [v32 lastSeen];
      mostRecentChannel = [v32 mostRecentChannel];
      v37 = +[WADeviceAnalyticsClient bandAsString:](WADeviceAnalyticsClient, "bandAsString:", [v32 mostRecentBand]);
      errorCopy = error;
      selfCopy = self;
      v40 = +[WAEventRoamStatus stringRepresentationWithReason:](WAEventRoamStatus, "stringRepresentationWithReason:", [v104 fwReason]);
      fwReason = [v104 fwReason];
      v42 = +[WAEventRoamStatus stringRepresentationWithStatus:](WAEventRoamStatus, "stringRepresentationWithStatus:", [v104 status]);
      status = [v104 status];
      *buf = 136448514;
      v116 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
      v117 = 1024;
      v118 = 172;
      v119 = 2112;
      v120 = bssid;
      v121 = 2112;
      v122 = lastSeen;
      v123 = 1024;
      v124 = mostRecentChannel;
      v125 = 2112;
      v126 = v37;
      v127 = 2112;
      v128 = v40;
      v129 = 1024;
      v130 = fwReason;
      v131 = 2112;
      v132 = v42;
      v133 = 1024;
      v134 = status;
      _os_log_impl(&dword_1C8460000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Set Roam Source BSS[%@ (%@)] (chan: %d %@) reason %@ (%d) status %@ (%d)", buf, 0x56u);

      v23 = v104;
      self = selfCopy;
      error = errorCopy;

      v32 = v103;
    }

    if ([v23 status])
    {
      goto LABEL_31;
    }

    targetBssid5 = [(WAEventRoamStatus *)self targetBssid];
    v111 = v99;
    v45 = [containerCopy bssForBSSID:targetBssid5 allowCreate:1 prefetchProperties:&unk_1F483E890 withError:&v111];
    v46 = v111;

    if (v45)
    {
      [v45 setMostRecentChannel:{objc_msgSend(v23, "targetChannel")}];
      [v45 setMostRecentBand:{objc_msgSend(v23, "targetBand")}];
      [v45 setPhyMode:{objc_msgSend(v23, "targetPhyMode")}];
      date2 = [v23 date];
      [v45 setLastSeen:date2];

      targetApProfile = [(WAEventRoamStatus *)self targetApProfile];
      [v45 setApProfileID:targetApProfile];

      [v23 setTarget:v45];
      v49 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        bssid2 = [v45 bssid];
        lastSeen2 = [v45 lastSeen];
        mostRecentChannel2 = [v45 mostRecentChannel];
        *buf = 136447234;
        v116 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
        v117 = 1024;
        v118 = 184;
        v119 = 2112;
        v120 = bssid2;
        v121 = 2112;
        v122 = lastSeen2;
        v123 = 1024;
        v124 = mostRecentChannel2;
        _os_log_impl(&dword_1C8460000, v49, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Set Roam Target BSS[%@ (%@)] (chan: %d)", buf, 0x2Cu);

        v32 = v103;
      }

      network = [v45 network];
      if (!network)
      {
        goto LABEL_22;
      }

      v54 = network;
      network2 = [v45 network];
      network3 = [v32 network];

      v57 = network2 == network3;
      v32 = v103;
      if (!v57)
      {
LABEL_22:
        network4 = [v32 network];
        [v45 setNetwork:network4];

        v59 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          bssid3 = [v45 bssid];
          network5 = [v45 network];
          *buf = 136446978;
          v116 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
          v117 = 1024;
          v118 = 188;
          v119 = 2112;
          v120 = bssid3;
          v121 = 2112;
          v122 = network5;
          _os_log_impl(&dword_1C8460000, v59, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added BSS[%@] to Network[%@]", buf, 0x26u);

          v32 = v103;
        }

        network6 = [v45 network];
        [containerCopy setHasBandsForMO:network6 forBand:{objc_msgSend(v45, "mostRecentBand")}];
      }

      v63 = [v45 lan];
      v64 = [v32 lan];

      if (v63 == v64)
      {
        goto LABEL_30;
      }

      v65 = [v32 lan];
      [v45 setLan:v65];

      v66 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:

LABEL_30:
        v99 = v46;
LABEL_31:
        errorCopy2 = error;
        roamCache = [(WAEventRoamStatus *)self roamCache];
        [v23 setNeighborCache:roamCache];

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        selfCopy2 = self;
        obj = [(WAEventRoamStatus *)self roamCache];
        v70 = [obj countByEnumeratingWithState:&v107 objects:v114 count:16];
        if (v70)
        {
          v71 = v70;
          v102 = *v108;
          v20 = v99;
          do
          {
            v72 = 0;
            v73 = v20;
            do
            {
              if (*v108 != v102)
              {
                objc_enumerationMutation(obj);
              }

              v74 = *(*(&v107 + 1) + 8 * v72);
              v75 = [v74 objectForKeyedSubscript:@"bssid"];
              v106 = v73;
              v76 = [containerCopy bssForBSSID:v75 allowCreate:1 prefetchProperties:0 withError:&v106];
              v77 = v106;

              v78 = [v74 objectForKeyedSubscript:@"band"];
              [v76 setMostRecentBand:{objc_msgSend(v78, "shortValue")}];

              date3 = [v104 date];
              [v76 setLastSeen:date3];

              network7 = [v103 network];
              [containerCopy setHasBandsForMO:network7 forBand:{objc_msgSend(v76, "mostRecentBand")}];

              v20 = v77;
              ++v72;
              v73 = v77;
            }

            while (v71 != v72);
            v71 = [obj countByEnumeratingWithState:&v107 objects:v114 count:16];
          }

          while (v71);
        }

        else
        {
          v20 = v99;
        }

        v81 = [WADeviceAnalytics_BandsInNetwork alloc];
        v24 = v103;
        network8 = [v103 network];
        v83 = [(WADeviceAnalytics_BandsInNetwork *)v81 initWithNetwork:network8];
        [(WAEventRoamStatus *)selfCopy2 setBandsInNetwork:v83];

        postprocessingCopy = v97;
        if (v97)
        {
          v23 = v104;
          error = errorCopy2;
          atCopy = v95;
          if (![v104 status])
          {
            [v97 updateRoamPoliciesForSourceBss:v103 andRoam:v104 withReason:@"immediate processing of Roam Record"];
          }

          v25 = 1;
        }

        else
        {
          v25 = 1;
          error = errorCopy2;
          atCopy = v95;
          v23 = v104;
        }

        goto LABEL_45;
      }

      bssid4 = [v45 bssid];
      v68 = [v45 lan];
      *buf = 136446978;
      v116 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
      v117 = 1024;
      v118 = 198;
      v119 = 2112;
      v120 = bssid4;
      v121 = 2112;
      v122 = v68;
      _os_log_impl(&dword_1C8460000, v66, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added BSS[%@] to LAN[%@]", buf, 0x26u);
    }

    else
    {
      v66 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      bssid4 = [(WAEventRoamStatus *)self targetBssid];
      *buf = 136446722;
      v116 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
      v117 = 1024;
      v118 = 176;
      v119 = 2112;
      v120 = bssid4;
      _os_log_impl(&dword_1C8460000, v66, OS_LOG_TYPE_ERROR, "%{public}s::%d:targetBssMO nil for %@", buf, 0x1Cu);
    }

    goto LABEL_29;
  }

  v92 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    sourceBssid3 = [(WAEventRoamStatus *)self sourceBssid];
    *buf = 136446722;
    v116 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
    v117 = 1024;
    v118 = 161;
    v119 = 2112;
    v120 = sourceBssid3;
    _os_log_impl(&dword_1C8460000, v92, OS_LOG_TYPE_ERROR, "%{public}s::%d:originBssMO nil for %@", buf, 0x1Cu);
  }

  v24 = 0;
  v25 = 0;
  v20 = v99;
LABEL_45:
  v84 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v84))
  {
    v85 = @"FAILED";
    if (v25)
    {
      v85 = @"SUCCESSFUL";
    }

    *buf = 138412290;
    v116 = v85;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v84, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAEventRoamStatus processEventAt:", "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  if (error)
  {
    v86 = v20;
    *error = v20;
  }

  v87 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)verifyDriverEvent:(id)event andDeviceCapabilities:(id)capabilities withError:(id *)error
{
  v165[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  capabilitiesCopy = capabilities;
  if (!eventCopy)
  {
    if (error)
    {
      v34 = MEMORY[0x1E696ABC0];
      v164 = *MEMORY[0x1E696A588];
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil driver event - bailing"];
      v165[0] = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v165 forKeys:&v164 count:1];
      *error = [v34 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v36];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 294;
    v38 = "%{public}s::%d:nil driver event - bailing";
    goto LABEL_44;
  }

  v9 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_ADDR"];
  if (!v9)
  {
    if (error)
    {
      v39 = MEMORY[0x1E696ABC0];
      v162 = *MEMORY[0x1E696A588];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin address"];
      v163 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
      *error = [v39 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v41];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 297;
    v38 = "%{public}s::%d:nil origin address";
    goto LABEL_44;
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v42 = MEMORY[0x1E696ABC0];
      v160 = *MEMORY[0x1E696A588];
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"origin address expected as NSData, found %@", objc_opt_class()];
      v161 = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
      *error = [v42 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v44];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
      v156 = 1024;
      v157 = 298;
      v158 = 2112;
      v159 = objc_opt_class();
      v45 = v159;
      _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_FAULT, "%{public}s::%d:origin address expected as NSData, found %@", buf, 0x1Cu);
    }

    goto LABEL_128;
  }

  v11 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_ADDR"];

  if (!v11)
  {
    if (error)
    {
      v46 = MEMORY[0x1E696ABC0];
      v152 = *MEMORY[0x1E696A588];
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target address"];
      v153 = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
      *error = [v46 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v48];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 300;
    v38 = "%{public}s::%d:nil target address";
LABEL_44:
    _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_FAULT, v38, buf, 0x12u);
LABEL_45:
    v10 = 0;
LABEL_128:

    v31 = 0;
    v11 = v10;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v49 = MEMORY[0x1E696ABC0];
      v150 = *MEMORY[0x1E696A588];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"target address expected as NSData, found %@", objc_opt_class()];
      v151 = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
      *error = [v49 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v51];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      v52 = objc_opt_class();
      *buf = 136446722;
      v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
      v156 = 1024;
      v157 = 301;
      v158 = 2112;
      v159 = v52;
      v53 = v52;
      _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_FAULT, "%{public}s::%d:target address expected as NSData, found %@", buf, 0x1Cu);
    }

    goto LABEL_127;
  }

  v12 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_STATUS"];

  if (!v12)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v148 = *MEMORY[0x1E696A588];
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil status"];
      v149 = v55;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
      *error = [v54 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v56];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 303;
    v57 = "%{public}s::%d:nil status";
    goto LABEL_126;
  }

  v13 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_REASON"];

  if (!v13)
  {
    if (error)
    {
      v58 = MEMORY[0x1E696ABC0];
      v146 = *MEMORY[0x1E696A588];
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil reason"];
      v147 = v59;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
      *error = [v58 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v60];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 304;
    v57 = "%{public}s::%d:nil reason";
    goto LABEL_126;
  }

  v14 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_FLAGS"];

  if (!v14)
  {
    if (error)
    {
      v61 = MEMORY[0x1E696ABC0];
      v144 = *MEMORY[0x1E696A588];
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil flags"];
      v145 = v62;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
      *error = [v61 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v63];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 305;
    v57 = "%{public}s::%d:nil flags";
    goto LABEL_126;
  }

  v15 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_PROFILE_TYPE"];

  if (!v15)
  {
    if (error)
    {
      v64 = MEMORY[0x1E696ABC0];
      v142 = *MEMORY[0x1E696A588];
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil profile"];
      v143 = v65;
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
      *error = [v64 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v66];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 306;
    v57 = "%{public}s::%d:nil profile";
    goto LABEL_126;
  }

  v16 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_RSSI"];

  if (!v16)
  {
    if (error)
    {
      v67 = MEMORY[0x1E696ABC0];
      v140 = *MEMORY[0x1E696A588];
      v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin rssi"];
      v141 = v68;
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
      *error = [v67 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v69];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 307;
    v57 = "%{public}s::%d:nil origin rssi";
    goto LABEL_126;
  }

  v17 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_RSSI"];

  if (!v17)
  {
    if (error)
    {
      v70 = MEMORY[0x1E696ABC0];
      v138 = *MEMORY[0x1E696A588];
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target rssi"];
      v139 = v71;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      *error = [v70 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v72];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 308;
    v57 = "%{public}s::%d:nil target rssi";
    goto LABEL_126;
  }

  v18 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_CHANNEL"];

  if (!v18)
  {
    if (error)
    {
      v73 = MEMORY[0x1E696ABC0];
      v136 = *MEMORY[0x1E696A588];
      v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin channel"];
      v137 = v74;
      v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
      *error = [v73 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v75];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 309;
    v57 = "%{public}s::%d:nil origin channel";
    goto LABEL_126;
  }

  v19 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_CHANNEL"];

  if (!v19)
  {
    if (error)
    {
      v76 = MEMORY[0x1E696ABC0];
      v134 = *MEMORY[0x1E696A588];
      v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target channel"];
      v135 = v77;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
      *error = [v76 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v78];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 310;
    v57 = "%{public}s::%d:nil target channel";
    goto LABEL_126;
  }

  v20 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_CHANNEL_FLAGS"];

  if (!v20)
  {
    if (error)
    {
      v79 = MEMORY[0x1E696ABC0];
      v132 = *MEMORY[0x1E696A588];
      v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin channel flags"];
      v133 = v80;
      v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
      *error = [v79 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v81];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 311;
    v57 = "%{public}s::%d:nil origin channel flags";
    goto LABEL_126;
  }

  v21 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_CHANNEL_FLAGS"];

  if (!v21)
  {
    if (error)
    {
      v82 = MEMORY[0x1E696ABC0];
      v130 = *MEMORY[0x1E696A588];
      v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target channel flags"];
      v131 = v83;
      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
      *error = [v82 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v84];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 312;
    v57 = "%{public}s::%d:nil target channel flags";
    goto LABEL_126;
  }

  v22 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_AUTHTYPE"];

  if (!v22)
  {
    if (error)
    {
      v85 = MEMORY[0x1E696ABC0];
      v128 = *MEMORY[0x1E696A588];
      v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin auth type"];
      v129 = v86;
      v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
      *error = [v85 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v87];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 313;
    v57 = "%{public}s::%d:nil origin auth type";
    goto LABEL_126;
  }

  v23 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_AUTHTYPE"];

  if (!v23)
  {
    if (error)
    {
      v88 = MEMORY[0x1E696ABC0];
      v126 = *MEMORY[0x1E696A588];
      v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target auth type"];
      v127 = v89;
      v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
      *error = [v88 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v90];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 314;
    v57 = "%{public}s::%d:nil target auth type";
    goto LABEL_126;
  }

  v24 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_AKMS"];

  if (!v24)
  {
    if (error)
    {
      v91 = MEMORY[0x1E696ABC0];
      v124 = *MEMORY[0x1E696A588];
      v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin AKMs"];
      v125 = v92;
      v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
      *error = [v91 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v93];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 315;
    v57 = "%{public}s::%d:nil origin AKMs";
    goto LABEL_126;
  }

  v25 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_AKMS"];

  if (!v25)
  {
    if (error)
    {
      v94 = MEMORY[0x1E696ABC0];
      v122 = *MEMORY[0x1E696A588];
      v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target AKMs"];
      v123 = v95;
      v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
      *error = [v94 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v96];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 316;
    v57 = "%{public}s::%d:nil target AKMs";
    goto LABEL_126;
  }

  v26 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_PHYMODE"];

  if (!v26)
  {
    if (error)
    {
      v97 = MEMORY[0x1E696ABC0];
      v120 = *MEMORY[0x1E696A588];
      v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin phymode"];
      v121 = v98;
      v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
      *error = [v97 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v99];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 317;
    v57 = "%{public}s::%d:nil origin phymode";
    goto LABEL_126;
  }

  v27 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_PHYMODE"];

  if (!v27)
  {
    if (error)
    {
      v100 = MEMORY[0x1E696ABC0];
      v118 = *MEMORY[0x1E696A588];
      v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target phymode"];
      v119 = v101;
      v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
      *error = [v100 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v102];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 318;
    v57 = "%{public}s::%d:nil target phymode";
    goto LABEL_126;
  }

  v28 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_CHANNELS_SCANNED_COUNT"];

  if (!v28)
  {
    if (error)
    {
      v103 = MEMORY[0x1E696ABC0];
      v116 = *MEMORY[0x1E696A588];
      v104 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil scanned channel"];
      v117 = v104;
      v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      *error = [v103 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v105];
    }

    v37 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v156 = 1024;
    v157 = 319;
    v57 = "%{public}s::%d:nil scanned channel";
    goto LABEL_126;
  }

  if ([capabilitiesCopy containsObject:&unk_1F483E368])
  {
    v29 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_STARTED"];

    if (v29)
    {
      v30 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_ENDED"];

      if (v30)
      {
        goto LABEL_26;
      }

      if (error)
      {
        v109 = MEMORY[0x1E696ABC0];
        v112 = *MEMORY[0x1E696A588];
        v110 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enhanced Roam Event capabilities and nil timeEnded"];
        v113 = v110;
        v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        *error = [v109 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v111];
      }

      v37 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_127;
      }

      *buf = 136446466;
      v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
      v156 = 1024;
      v157 = 323;
      v57 = "%{public}s::%d:Enhanced Roam Event capabilities and nil timeEnded";
    }

    else
    {
      if (error)
      {
        v106 = MEMORY[0x1E696ABC0];
        v114 = *MEMORY[0x1E696A588];
        v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enhanced Roam Event capabilities and nil timeStarted"];
        v115 = v107;
        v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        *error = [v106 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v108];
      }

      v37 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_127;
      }

      *buf = 136446466;
      v155 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
      v156 = 1024;
      v157 = 322;
      v57 = "%{public}s::%d:Enhanced Roam Event capabilities and nil timeStarted";
    }

LABEL_126:
    _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_FAULT, v57, buf, 0x12u);
LABEL_127:
    v10 = v11;
    goto LABEL_128;
  }

LABEL_26:
  v31 = 1;
LABEL_27:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (WAEventRoamStatus)initWithDriverEvent:(id)event andDeviceCapabilities:(id)capabilities withError:(id *)error
{
  v118[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  capabilitiesCopy = capabilities;
  if (![(WAEventRoamStatus *)self verifyDriverEvent:eventCopy andDeviceCapabilities:capabilitiesCopy withError:error])
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v112 = "[WAEventRoamStatus initWithDriverEvent:andDeviceCapabilities:withError:]";
      v113 = 1024;
      v114 = 339;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "%{public}s::%d:parsing driver event FAILED - bailing", buf, 0x12u);
    }

    goto LABEL_59;
  }

  v107.receiver = self;
  v107.super_class = WAEventRoamStatus;
  v10 = [(WAEventRoamStatus *)&v107 init];
  if (v10)
  {
    -[WAEventRoamStatus setDeviceIs6eCapable:](v10, "setDeviceIs6eCapable:", [capabilitiesCopy containsObject:&unk_1F483E380]);
    v11 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_ADDR"];
    v12 = v11;
    if (v11 && [v11 length]== 6)
    {
      [v12 getBytes:buf length:6];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buf[0], buf[1], buf[2], buf[3], v112, BYTE1(v112)];
      [(WAEventRoamStatus *)v10 setSourceBssid:v13];
    }

    sourceBssid = [(WAEventRoamStatus *)v10 sourceBssid];
    v15 = [WAUtil isWildcardMacAddress:sourceBssid];

    if (v15)
    {
      if (error)
      {
        v79 = MEMORY[0x1E696ABC0];
        v117 = *MEMORY[0x1E696A588];
        v80 = MEMORY[0x1E696AEC0];
        sourceBssid2 = [(WAEventRoamStatus *)v10 sourceBssid];
        v82 = [v80 stringWithFormat:@"originAddr(%@) is the wildcard address", sourceBssid2];
        v118[0] = v82;
        v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:&v117 count:1];
        *error = [v79 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v83];
      }

      v84 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
      {
        sourceBssid3 = [(WAEventRoamStatus *)v10 sourceBssid];
        *buf = 136446722;
        v112 = "[WAEventRoamStatus initWithDriverEvent:andDeviceCapabilities:withError:]";
        v113 = 1024;
        v114 = 356;
        v115 = 2112;
        v116 = sourceBssid3;
        _os_log_impl(&dword_1C8460000, v84, OS_LOG_TYPE_FAULT, "%{public}s::%d:originAddr(%@) is the wildcard address", buf, 0x1Cu);
      }
    }

    else
    {
      v16 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_ADDR"];
      v17 = v16;
      v106 = 0;
      v105 = 0;
      if (v16)
      {
        if ([v16 length] == 6)
        {
          v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v105 length:6];
          v19 = [v17 isEqualToData:v18];

          if ((v19 & 1) == 0)
          {
            [v17 getBytes:buf length:6];
            v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buf[0], buf[1], buf[2], buf[3], v112, BYTE1(v112)];
            [(WAEventRoamStatus *)v10 setTargetBssid:v20];
          }
        }
      }

      v94 = v17;
      v21 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_STATUS"];
      -[WAEventRoamStatus setStatus:](v10, "setStatus:", [v21 intValue]);

      v22 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_REASON"];
      -[WAEventRoamStatus setReason:](v10, "setReason:", [v22 intValue]);

      v23 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_FLAGS"];
      -[WAEventRoamStatus setFlags:](v10, "setFlags:", [v23 integerValue]);

      v24 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_PROFILE_TYPE"];
      -[WAEventRoamStatus setDriverRoamProfile:](v10, "setDriverRoamProfile:", +[WADeviceAnalyticsClient convert32to16:](WADeviceAnalyticsClient, "convert32to16:", [v24 intValue]));

      v25 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_CHANNELS_SCANNED_COUNT"];
      -[WAEventRoamStatus setScannedChannelCount:](v10, "setScannedChannelCount:", [v25 unsignedShortValue]);

      v26 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_RSSI"];
      -[WAEventRoamStatus setSourceRssi:](v10, "setSourceRssi:", +[WADeviceAnalyticsClient convert32to16:](WADeviceAnalyticsClient, "convert32to16:", [v26 intValue]));

      v27 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_CHANNEL"];
      -[WAEventRoamStatus setSourceChannel:](v10, "setSourceChannel:", +[WADeviceAnalyticsClient convert32to16:](WADeviceAnalyticsClient, "convert32to16:", [v27 intValue]));

      v28 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_CHANNEL_FLAGS"];
      -[WAEventRoamStatus setSourceBand:](v10, "setSourceBand:", +[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", [v28 unsignedIntValue]));

      v29 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_CHANNEL_FLAGS"];
      -[WAEventRoamStatus setSourceBW:](v10, "setSourceBW:", +[WADeviceAnalyticsClient channelWidthFromChannelFlags:](WADeviceAnalyticsClient, "channelWidthFromChannelFlags:", [v29 unsignedIntValue]));

      v30 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_AUTHTYPE"];
      -[WAEventRoamStatus setSourceAuth:](v10, "setSourceAuth:", [v30 unsignedIntValue]);

      v31 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_AKMS"];
      -[WAEventRoamStatus setSourceAKMs:](v10, "setSourceAKMs:", [v31 unsignedIntValue]);

      v32 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_PHYMODE"];
      -[WAEventRoamStatus setSourcePhyMode:](v10, "setSourcePhyMode:", [v32 unsignedIntValue]);

      v33 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_RSSI"];
      -[WAEventRoamStatus setTargetRssi:](v10, "setTargetRssi:", +[WADeviceAnalyticsClient convert32to16:](WADeviceAnalyticsClient, "convert32to16:", [v33 intValue]));

      v34 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_CHANNEL"];
      -[WAEventRoamStatus setTargetChannel:](v10, "setTargetChannel:", +[WADeviceAnalyticsClient convert32to16:](WADeviceAnalyticsClient, "convert32to16:", [v34 intValue]));

      v35 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_CHANNEL_FLAGS"];
      -[WAEventRoamStatus setTargetBand:](v10, "setTargetBand:", +[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", [v35 unsignedIntValue]));

      v36 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_CHANNEL_FLAGS"];
      -[WAEventRoamStatus setTargetBW:](v10, "setTargetBW:", +[WADeviceAnalyticsClient channelWidthFromChannelFlags:](WADeviceAnalyticsClient, "channelWidthFromChannelFlags:", [v36 unsignedIntValue]));

      v37 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_AUTHTYPE"];
      -[WAEventRoamStatus setTargetAuth:](v10, "setTargetAuth:", [v37 unsignedIntValue]);

      v38 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_AKMS"];
      -[WAEventRoamStatus setTargetAKMs:](v10, "setTargetAKMs:", [v38 unsignedIntValue]);

      v39 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_PHYMODE"];
      -[WAEventRoamStatus setTargetPhyMode:](v10, "setTargetPhyMode:", [v39 unsignedIntValue]);

      v40 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_STARTED"];

      if (!v40)
      {
        goto LABEL_14;
      }

      v41 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_STARTED"];
      longLongValue = [v41 longLongValue];

      v43 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_ENDED"];

      if (v43)
      {
        v44 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_ENDED"];
        longLongValue2 = [v44 longLongValue];

        [(WAEventRoamStatus *)v10 setHasRoamScanDuration:1];
        [(WAEventRoamStatus *)v10 setRoamScanDuration:longLongValue2 - longLongValue];
LABEL_14:
        v46 = [eventCopy objectForKey:@"ROAM_CACHE"];
        self = v46;
        v47 = v94;
        if (v46 && [(WAEventRoamStatus *)v46 count])
        {
          v91 = v12;
          v92 = capabilitiesCopy;
          v93 = eventCopy;
          v48 = WALogCategoryDeviceStoreHandle();
          if (os_signpost_enabled(v48))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C8460000, v48, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAEventRoamStatus init roamCacheloop", "", buf, 2u);
          }

          array = [MEMORY[0x1E695DF70] array];
          v95 = v10;
          [(WAEventRoamStatus *)v10 setRoamCache:array];

          string = [MEMORY[0x1E696AD60] string];
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          selfCopy = self;
          obj = self;
          v50 = [(WAEventRoamStatus *)obj countByEnumeratingWithState:&v101 objects:v108 count:16];
          if (v50)
          {
            v51 = v50;
            v100 = *v102;
            do
            {
              v52 = 0;
              v97 = v51;
              do
              {
                if (*v102 != v100)
                {
                  objc_enumerationMutation(obj);
                }

                v53 = *(*(&v101 + 1) + 8 * v52);
                v54 = [v53 objectForKey:@"CHANNEL"];
                v55 = [v53 objectForKey:@"CHANNEL_FLAGS"];
                v56 = [v53 objectForKey:@"RSSI"];
                v57 = [v53 objectForKey:@"BSSID"];
                v58 = v57;
                if (v54)
                {
                  v59 = v56 == 0;
                }

                else
                {
                  v59 = 1;
                }

                if (!v59 && v57 != 0 && v55 != 0)
                {
                  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  shortValue = [v54 shortValue];
                  sourceRssi = [(WAEventRoamStatus *)v95 sourceRssi];
                  sourceRssi2 = [(WAEventRoamStatus *)v95 sourceRssi];
                  v66 = shortValue - sourceRssi2;
                  if (shortValue >= sourceRssi)
                  {
                    v66 = sourceRssi2 - shortValue;
                  }

                  v99 = v66;
                  [v62 setObject:v54 forKeyedSubscript:@"channel"];
                  v67 = [MEMORY[0x1E696AD98] numberWithShort:{+[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", objc_msgSend(v55, "unsignedIntValue"))}];
                  [v62 setObject:v67 forKeyedSubscript:@"band"];

                  v68 = [MEMORY[0x1E696AD98] numberWithShort:shortValue];
                  [v62 setObject:v68 forKeyedSubscript:@"rssi"];

                  [v62 setObject:v58 forKeyedSubscript:@"bssid"];
                  v69 = [MEMORY[0x1E696AD98] numberWithInteger:v99];
                  [v62 setObject:v69 forKeyedSubscript:@"roamDelta"];

                  roamCache = [(WAEventRoamStatus *)v95 roamCache];
                  [roamCache addObject:v62];

                  v71 = [v62 objectForKeyedSubscript:@"bssid"];
                  v72 = [v62 objectForKeyedSubscript:@"rssi"];
                  v73 = [v62 objectForKeyedSubscript:@"channel"];
                  v74 = [v62 objectForKeyedSubscript:@"roamDelta"];
                  [string appendFormat:@" {%@, %@, %@, %@} ", v71, v72, v73, v74];

                  v51 = v97;
                }

                ++v52;
              }

              while (v51 != v52);
              v51 = [(WAEventRoamStatus *)obj countByEnumeratingWithState:&v101 objects:v108 count:16];
            }

            while (v51);
          }

          v75 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v112 = "[WAEventRoamStatus initWithDriverEvent:andDeviceCapabilities:withError:]";
            v113 = 1024;
            v114 = 438;
            v115 = 2112;
            v116 = string;
            _os_log_impl(&dword_1C8460000, v75, OS_LOG_TYPE_DEBUG, "%{public}s::%d:roamCacheStr:%@", buf, 0x1Cu);
          }

          v76 = WALogCategoryDeviceStoreHandle();
          capabilitiesCopy = v92;
          eventCopy = v93;
          self = selfCopy;
          v12 = v91;
          v47 = v94;
          if (os_signpost_enabled(v76))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C8460000, v76, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAEventRoamStatus init roamCacheloop", "", buf, 2u);
          }

          v10 = v95;
        }

        goto LABEL_44;
      }

      if (error)
      {
        v86 = MEMORY[0x1E696ABC0];
        v109 = *MEMORY[0x1E696A588];
        v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"non-nil time started with nil time ended"];
        v110 = v87;
        v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        *error = [v86 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v88];
      }

      v89 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v112 = "[WAEventRoamStatus initWithDriverEvent:andDeviceCapabilities:withError:]";
        v113 = 1024;
        v114 = 396;
        _os_log_impl(&dword_1C8460000, v89, OS_LOG_TYPE_FAULT, "%{public}s::%d:non-nil time started with nil time ended", buf, 0x12u);
      }
    }

    self = v10;
LABEL_59:
    v10 = 0;
LABEL_44:
  }

  v77 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)submitEventToCA
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E695DF90];
  v5 = [WAEventRoamStatus roamFlagAsDictionary:self->_flags];
  v6 = [v4 dictionaryWithDictionary:v5];
  [v3 addEntriesFromDictionary:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_status];
  [v3 setObject:v7 forKeyedSubscript:@"status"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_reason];
  [v3 setObject:v8 forKeyedSubscript:@"reason"];

  v9 = [WAEventRoamStatus stringRepresentationWithStatus:self->_status];
  [v3 setObject:v9 forKeyedSubscript:@"statusString"];

  v10 = [WAEventRoamStatus stringRepresentationWithReason:self->_reason];
  [v3 setObject:v10 forKeyedSubscript:@"reasonString"];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_driverRoamProfile];
  [v3 setObject:v11 forKeyedSubscript:@"profileType"];

  driverRoamProfile = self->_driverRoamProfile;
  v13 = [MEMORY[0x1E696AEC0] stringWithCString:apple80211_roam_profile_typetoStr() encoding:4];
  [v3 setObject:v13 forKeyedSubscript:@"roamProfile"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_roamScanDuration];
  [v3 setObject:v14 forKeyedSubscript:@"roamScanDuration"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_scannedChannelCount];
  [v3 setObject:v15 forKeyedSubscript:@"scannedChannelCount"];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:self->_sourceRssi];
  [v3 setObject:v16 forKeyedSubscript:@"originRssi"];

  if (self->_targetRssi)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v3 setObject:v17 forKeyedSubscript:@"targetRssi"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"targetRssi"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithInt:self->_sourceChannel];
  [v3 setObject:v18 forKeyedSubscript:@"originChannel"];

  if (self->_targetChannel)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v3 setObject:v19 forKeyedSubscript:@"targetChannel"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"targetChannel"];
  }

  v20 = [WADeviceAnalyticsClient bandAsString:self->_sourceBand];
  [v3 setObject:v20 forKeyedSubscript:@"originChannelBand"];

  v21 = [WADeviceAnalyticsClient bandAsString:self->_targetBand];
  [v3 setObject:v21 forKeyedSubscript:@"targetChannelBand"];

  v22 = [WADeviceAnalyticsClient channelWidthAsString:self->_sourceBW];
  [v3 setObject:v22 forKeyedSubscript:@"originChannelBW"];

  v23 = [WADeviceAnalyticsClient channelWidthAsString:self->_targetBW];
  [v3 setObject:v23 forKeyedSubscript:@"targetChannelBW"];

  v24 = [WADeviceAnalyticsClient ouiFromBssid:self->_sourceBssid];
  [v3 setObject:v24 forKeyedSubscript:@"originOui"];

  if (self->_targetBssid)
  {
    v25 = [WADeviceAnalyticsClient ouiFromBssid:?];
    [v3 setObject:v25 forKeyedSubscript:@"targetOui"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"targetOui"];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sourceAuth];
  [v3 setObject:v26 forKeyedSubscript:@"origin_auth"];

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetAuth];
  [v3 setObject:v27 forKeyedSubscript:@"target_auth"];

  v28 = [WAEventRoamStatus akmsAsDictionary:self->_sourceAKMs withPrefix:@"origin"];
  if (v28)
  {
    [v3 addEntriesFromDictionary:v28];
  }

  else
  {
    v29 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sourceAKMs = self->_sourceAKMs;
      v63 = 136446722;
      v64 = "[WAEventRoamStatus submitEventToCA]";
      v65 = 1024;
      v66 = 486;
      v67 = 1024;
      v68 = sourceAKMs;
      _os_log_impl(&dword_1C8460000, v29, OS_LOG_TYPE_FAULT, "%{public}s::%d:originAKMs:%u could not be translated", &v63, 0x18u);
    }
  }

  v31 = [WAEventRoamStatus akmsAsDictionary:self->_targetAKMs withPrefix:@"target"];

  if (v31)
  {
    [v3 addEntriesFromDictionary:v31];
  }

  else
  {
    v32 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      targetAKMs = self->_targetAKMs;
      v63 = 136446722;
      v64 = "[WAEventRoamStatus submitEventToCA]";
      v65 = 1024;
      v66 = 492;
      v67 = 1024;
      v68 = targetAKMs;
      _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_FAULT, "%{public}s::%d:targetAKMs:%u could not be translated", &v63, 0x18u);
    }
  }

  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sourcePhyMode];
  [v3 setObject:v34 forKeyedSubscript:@"originPhyMode"];

  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sourcePhyMode];
  [v3 setObject:v35 forKeyedSubscript:@"origin_PhyMode"];

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetPhyMode];
  [v3 setObject:v36 forKeyedSubscript:@"targetPhyMode"];

  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetPhyMode];
  [v3 setObject:v37 forKeyedSubscript:@"target_PhyMode"];

  if (self->_hasOriginChannelScore)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithShort:self->_originChannelScore];
    [v3 setObject:v38 forKeyedSubscript:@"originChannelScore"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"originChannelScore"];
  }

  if (self->_hasCcaTotal)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ccaTotal];
    [v3 setObject:v39 forKeyedSubscript:@"ccaTotal"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"ccaTotal"];
  }

  if (self->_hasCcaOthers)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ccaOthers];
    [v3 setObject:v40 forKeyedSubscript:@"ccaOthers"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"ccaOthers"];
  }

  if (self->_hasCcaInt)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ccaInt];
    [v3 setObject:v41 forKeyedSubscript:@"ccaInt"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"ccaInt"];
  }

  if (self->_hasOriginTxPer)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_originTxPer];
    [v3 setObject:v42 forKeyedSubscript:@"originTxPer"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"originTxPer"];
  }

  if (self->_hasOriginBcnPer)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_originBcnPer];
    [v3 setObject:v43 forKeyedSubscript:@"originBcnPer"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"originBcnPer"];
  }

  if (self->_hasOriginFwTxPer)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_originFwTxPer];
    [v3 setObject:v44 forKeyedSubscript:@"originFwTxPer"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"originFwTxPer"];
  }

  if (self->_hasAssociatedDur)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_associatedDur];
    [v3 setObject:v45 forKeyedSubscript:@"associationDuration"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"associationDuration"];
  }

  if (self->_hasHostReason)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithInteger:self->_hostReason];
    [v3 setObject:v46 forKeyedSubscript:@"hostReason"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"hostReason"];
  }

  if (self->_hasMotionState)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithInt:self->_motionState];
    [v3 setObject:v47 forKeyedSubscript:@"motionStateEnum"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"motionStateEnum"];
  }

  if (self->_hasVoipActive)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:self->_voipActive];
    [v3 setObject:v48 forKeyedSubscript:@"voipActive"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"voipActive"];
  }

  if (self->_hasLateRoam)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:self->_lateRoam];
    [v3 setObject:v49 forKeyedSubscript:@"lateRoam"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"lateRoam"];
  }

  bandsInNetwork = [(WAEventRoamStatus *)self bandsInNetwork];

  if (bandsInNetwork)
  {
    v51 = MEMORY[0x1E696AD98];
    bandsInNetwork2 = [(WAEventRoamStatus *)self bandsInNetwork];
    v53 = [v51 numberWithBool:{objc_msgSend(bandsInNetwork2, "has2GHz")}];
    [v3 setObject:v53 forKeyedSubscript:@"networkHas2GHz"];

    v54 = MEMORY[0x1E696AD98];
    bandsInNetwork3 = [(WAEventRoamStatus *)self bandsInNetwork];
    v56 = [v54 numberWithBool:{objc_msgSend(bandsInNetwork3, "has5GHz")}];
    [v3 setObject:v56 forKeyedSubscript:@"networkHas5GHz"];

    if (self->_deviceIs6eCapable)
    {
      v57 = MEMORY[0x1E696AD98];
      bandsInNetwork4 = [(WAEventRoamStatus *)self bandsInNetwork];
      v59 = [v57 numberWithBool:{objc_msgSend(bandsInNetwork4, "has6GHz")}];
      [v3 setObject:v59 forKeyedSubscript:@"networkHas6GHz"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"networkHas6GHz"];
    }
  }

  v60 = [MEMORY[0x1E696AD98] numberWithBool:self->_deviceIs6eCapable];
  [v3 setObject:v60 forKeyedSubscript:@"deviceIs6ECapable"];

  v61 = +[WAClient sharedClient];
  [v61 submitWiFiAnalytics:@"com.apple.wifi.RoamStatus" data:v3];

  v62 = *MEMORY[0x1E69E9840];
}

+ (id)stringRepresentationWithReason:(int)reason
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithCString:convertApple80211ReturnToString() encoding:4];
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136447234;
    v9 = "+[WAEventRoamStatus stringRepresentationWithReason:]";
    v10 = 1024;
    v11 = 530;
    v12 = 1024;
    reasonCopy = reason;
    v14 = 1024;
    reasonCopy2 = reason;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEBUG, "%{public}s::%d:reason:%d(%X) --> %@", &v8, 0x28u);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)stringRepresentationWithStatus:(int)status
{
  v18 = *MEMORY[0x1E69E9840];
  if (status)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithCString:convertApple80211ReturnToString() encoding:4];
  }

  else
  {
    v4 = @"Success";
  }

  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136447234;
    v9 = "+[WAEventRoamStatus stringRepresentationWithStatus:]";
    v10 = 1024;
    v11 = 537;
    v12 = 1024;
    statusCopy = status;
    v14 = 1024;
    statusCopy2 = status;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEBUG, "%{public}s::%d:status:%d(%X) --> %@", &v8, 0x28u);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)roamFlagAsDictionary:(int)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = 1;
  context = objc_autoreleasePoolPush();
  while (1)
  {
    v6 = apple80211_roam_status_bss_flagstoStr();
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v19 = "+[WAEventRoamStatus roamFlagAsDictionary:]";
      v20 = 1024;
      v21 = 551;
      v22 = 1024;
      *v23 = v5;
      *&v23[4] = 2080;
      *&v23[6] = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bit:%X --> %s", buf, 0x22u);
    }

    if (!strcmp("unknown", v6))
    {
      break;
    }

    v8 = MEMORY[0x1E696AEC0];
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:4];
    context = [v8 stringWithFormat:@"roamFlags_%@", v9, context];

    v11 = [MEMORY[0x1E696AD98] numberWithBool:(v5 & dictionary) != 0];
    [v4 setObject:v11 forKeyedSubscript:context];

    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v4 objectForKeyedSubscript:context];
      *buf = 136446978;
      v19 = "+[WAEventRoamStatus roamFlagAsDictionary:]";
      v20 = 1024;
      v21 = 557;
      v22 = 2112;
      *v23 = context;
      *&v23[8] = 2112;
      *&v23[10] = v13;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:added %@:%@ to dictionary", buf, 0x26u);
    }

    v5 *= 2;
  }

  v14 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v19 = "+[WAEventRoamStatus roamFlagAsDictionary:]";
    v20 = 1024;
    v21 = 552;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bailing", buf, 0x12u);
  }

  objc_autoreleasePoolPop(context);
  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)akmsAsDictionary:(unsigned int)dictionary withPrefix:(id)prefix
{
  v21 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v6 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v7 = apple80211_authtype_uppertoStr();
  if (strcmp("unknown", v7))
  {
    v8 = 1;
    do
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
      v11 = [v9 stringWithFormat:@"%@_akms_%@", prefixCopy, v10];

      v12 = [MEMORY[0x1E696AD98] numberWithBool:(v8 & dictionary) != 0];
      [v6 setObject:v12 forKeyedSubscript:v11];

      v8 *= 2;
      v7 = apple80211_authtype_uppertoStr();
    }

    while (strcmp("unknown", v7));
  }

  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v18 = "+[WAEventRoamStatus akmsAsDictionary:withPrefix:]";
    v19 = 1024;
    v20 = 574;
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bailing", buf, 0x12u);
  }

  objc_autoreleasePoolPop(context);
  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

@end