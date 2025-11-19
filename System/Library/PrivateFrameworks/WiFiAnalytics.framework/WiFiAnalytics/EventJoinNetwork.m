@interface EventJoinNetwork
+ (BOOL)processRecord:(id)a3 bssid:(id)a4 ssid:(id)a5 withPersistentContainer:(id)a6 andRunPostprocessing:(id)a7;
@end

@implementation EventJoinNetwork

+ (BOOL)processRecord:(id)a3 bssid:(id)a4 ssid:(id)a5 withPersistentContainer:(id)a6 andRunPostprocessing:(id)a7
{
  v58 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = a5;
  v15 = a4;
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
    if (v13)
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
  v19 = [UniqueMO getOrCreateBSS:v15 andNetwork:v14 withHasUpdatedNetwork:&v47 on:v12];

  if (v19)
  {
    [v11 setBss:v19];
    v20 = [v19 network];
    [v11 setNetwork:v20];

    if (([v11 success] & 1) == 0)
    {
      v21 = [v19 lan];
      [v11 setLan:v21];
    }

    v22 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v11 date];
      v24 = [v19 bssid];
      v25 = [v19 network];
      v26 = [v25 ssid];
      v27 = [v19 lan];
      *buf = 136447490;
      v49 = "+[EventJoinNetwork processRecord:bssid:ssid:withPersistentContainer:andRunPostprocessing:]";
      v50 = 1024;
      *v51 = 44;
      *&v51[4] = 2112;
      *&v51[6] = v23;
      v52 = 2112;
      v53 = v24;
      v54 = 2112;
      v55 = v26;
      v56 = 2112;
      v57 = v27;
      _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added Join at [%@] to BSS[%@][%@][%@]", buf, 0x3Au);
    }

    v28 = [v11 date];
    [v19 setLastSeen:v28];

    [v19 setMostRecentChannel:{objc_msgSend(v11, "channel")}];
    [v19 setMostRecentBand:{objc_msgSend(v11, "band")}];
    v29 = [v11 apProfileID];
    [v19 setApProfileID:v29];

    v30 = [v11 networkIsHome];
    v31 = [v19 network];
    [v31 setIsHome:v30];

    v32 = [v11 networkIsWork];
    v33 = [v19 network];
    [v33 setIsWork:v32];

    v34 = [v11 networkAuthFlags];
    v35 = [v19 network];
    [v35 setAuthFlags:v34];

    v36 = ([v11 networkFlags] >> 21) & 1;
    v37 = [v19 network];
    [v37 setIsPublic:v36];

    v38 = [v19 network];
    [v12 setHasBandsForMO:v38 forBand:{objc_msgSend(v19, "mostRecentBand")}];

    v39 = [LinkChangePolicyHandler processJoinEvent:v11];
    if (v13)
    {
      v40 = [v12 viewContext];
      [v40 processPendingChanges];

      v41 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v49 = "+[EventJoinNetwork processRecord:bssid:ssid:withPersistentContainer:andRunPostprocessing:]";
        v50 = 1024;
        *v51 = 66;
        *&v51[4] = 2112;
        *&v51[6] = v11;
        _os_log_impl(&dword_1C8460000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Immediate Postprocessing of %@", buf, 0x1Cu);
      }

      [v13 signalPotentialNewIORChannels];
      [v13 updateRoamPoliciesForSourceBss:v19 andRoam:0 withReason:@"immediate processing of Join Record"];
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
    if (v13)
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