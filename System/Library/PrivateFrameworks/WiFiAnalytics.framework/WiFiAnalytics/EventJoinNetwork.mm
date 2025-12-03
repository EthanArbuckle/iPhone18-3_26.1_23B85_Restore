@interface EventJoinNetwork
+ (BOOL)processRecord:(id)record bssid:(id)bssid ssid:(id)ssid withPersistentContainer:(id)container andRunPostprocessing:(id)postprocessing;
@end

@implementation EventJoinNetwork

+ (BOOL)processRecord:(id)record bssid:(id)bssid ssid:(id)ssid withPersistentContainer:(id)container andRunPostprocessing:(id)postprocessing
{
  v58 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  containerCopy = container;
  postprocessingCopy = postprocessing;
  ssidCopy = ssid;
  bssidCopy = bssid;
  v16 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v49 = "+[EventJoinNetwork processRecord:bssid:ssid:withPersistentContainer:andRunPostprocessing:]";
    v50 = 1024;
    *v51 = 31;
    _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:", buf, 0x12u);
  }

  v17 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v17))
  {
    if (postprocessingCopy)
    {
      v18 = @"andRunPostprocessing";
    }

    else
    {
      v18 = &stru_1F481C4A0;
    }

    *buf = 138412290;
    v49 = v18;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WADeviceAnalyticsEventJoinNetwork processRecord", "%@", buf, 0xCu);
  }

  v47 = 0;
  v19 = [UniqueMO getOrCreateBSS:bssidCopy andNetwork:ssidCopy withHasUpdatedNetwork:&v47 on:containerCopy];

  if (v19)
  {
    [recordCopy setBss:v19];
    network = [v19 network];
    [recordCopy setNetwork:network];

    if (([recordCopy success] & 1) == 0)
    {
      v21 = [v19 lan];
      [recordCopy setLan:v21];
    }

    v22 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      date = [recordCopy date];
      bssid = [v19 bssid];
      network2 = [v19 network];
      ssid = [network2 ssid];
      v27 = [v19 lan];
      *buf = 136447490;
      v49 = "+[EventJoinNetwork processRecord:bssid:ssid:withPersistentContainer:andRunPostprocessing:]";
      v50 = 1024;
      *v51 = 44;
      *&v51[4] = 2112;
      *&v51[6] = date;
      v52 = 2112;
      v53 = bssid;
      v54 = 2112;
      v55 = ssid;
      v56 = 2112;
      v57 = v27;
      _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added Join at [%@] to BSS[%@][%@][%@]", buf, 0x3Au);
    }

    date2 = [recordCopy date];
    [v19 setLastSeen:date2];

    [v19 setMostRecentChannel:{objc_msgSend(recordCopy, "channel")}];
    [v19 setMostRecentBand:{objc_msgSend(recordCopy, "band")}];
    apProfileID = [recordCopy apProfileID];
    [v19 setApProfileID:apProfileID];

    networkIsHome = [recordCopy networkIsHome];
    network3 = [v19 network];
    [network3 setIsHome:networkIsHome];

    networkIsWork = [recordCopy networkIsWork];
    network4 = [v19 network];
    [network4 setIsWork:networkIsWork];

    networkAuthFlags = [recordCopy networkAuthFlags];
    network5 = [v19 network];
    [network5 setAuthFlags:networkAuthFlags];

    v36 = ([recordCopy networkFlags] >> 21) & 1;
    network6 = [v19 network];
    [network6 setIsPublic:v36];

    network7 = [v19 network];
    [containerCopy setHasBandsForMO:network7 forBand:{objc_msgSend(v19, "mostRecentBand")}];

    v39 = [LinkChangePolicyHandler processJoinEvent:recordCopy];
    if (postprocessingCopy)
    {
      viewContext = [containerCopy viewContext];
      [viewContext processPendingChanges];

      v41 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v49 = "+[EventJoinNetwork processRecord:bssid:ssid:withPersistentContainer:andRunPostprocessing:]";
        v50 = 1024;
        *v51 = 66;
        *&v51[4] = 2112;
        *&v51[6] = recordCopy;
        _os_log_impl(&dword_1C8460000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Immediate Postprocessing of %@", buf, 0x1Cu);
      }

      [postprocessingCopy signalPotentialNewIORChannels];
      [postprocessingCopy updateRoamPoliciesForSourceBss:v19 andRoam:0 withReason:@"immediate processing of Join Record"];
    }
  }

  else
  {
    v39 = 0;
  }

  v42 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v42))
  {
    v43 = @"FAILED";
    if (postprocessingCopy)
    {
      v44 = @"andRunPostprocessing";
    }

    else
    {
      v44 = &stru_1F481C4A0;
    }

    if (v39)
    {
      v43 = @"SUCCESSFUL";
    }

    *buf = 138412546;
    v49 = v44;
    v50 = 2112;
    *v51 = v43;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v42, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WADeviceAnalyticsEventJoinNetwork processRecord", "%@ - %@", buf, 0x16u);
  }

  v45 = *MEMORY[0x1E69E9840];
  return v39;
}

@end