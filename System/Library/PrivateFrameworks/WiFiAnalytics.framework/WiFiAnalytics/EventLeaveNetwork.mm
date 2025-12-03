@interface EventLeaveNetwork
+ (BOOL)processRecord:(id)record bssid:(id)bssid ssid:(id)ssid withPersistentContainer:(id)container andRunPostprocessing:(id)postprocessing;
@end

@implementation EventLeaveNetwork

+ (BOOL)processRecord:(id)record bssid:(id)bssid ssid:(id)ssid withPersistentContainer:(id)container andRunPostprocessing:(id)postprocessing
{
  v47 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  bssidCopy = bssid;
  ssidCopy = ssid;
  containerCopy = container;
  postprocessingCopy = postprocessing;
  if (!recordCopy)
  {
    v30 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v36 = "+[EventLeaveNetwork processRecord:bssid:ssid:withPersistentContainer:andRunPostprocessing:]";
      v37 = 1024;
      v38 = 31;
      _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_FAULT, "%{public}s::%d:no leaveRecord", buf, 0x12u);
    }

    v16 = 0;
    v29 = 0;
    goto LABEL_8;
  }

  v16 = [containerCopy bssForBssid:bssidCopy prefetchProperties:&unk_1F483E548 withError:0];
  if (!v16)
  {
    v29 = 0;
    goto LABEL_9;
  }

  date = [recordCopy date];
  [v16 setLastSeen:date];

  [recordCopy setBss:v16];
  network = [v16 network];
  [recordCopy setNetwork:network];

  v19 = [v16 lan];
  [recordCopy setLan:v19];

  v20 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    date2 = [recordCopy date];
    [v16 bssid];
    v33 = bssidCopy;
    v22 = v34 = containerCopy;
    network2 = [v16 network];
    [network2 ssid];
    v24 = postprocessingCopy;
    v26 = v25 = ssidCopy;
    v27 = [recordCopy lan];
    *buf = 136447490;
    v36 = "+[EventLeaveNetwork processRecord:bssid:ssid:withPersistentContainer:andRunPostprocessing:]";
    v37 = 1024;
    v38 = 41;
    v39 = 2112;
    v40 = date2;
    v41 = 2112;
    v42 = v22;
    v43 = 2112;
    v44 = v26;
    v45 = 2112;
    v46 = v27;
    _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Added Leave at [%@] to [%@][%@][%@]", buf, 0x3Au);

    ssidCopy = v25;
    postprocessingCopy = v24;

    bssidCopy = v33;
    containerCopy = v34;
  }

  date3 = [recordCopy date];
  [v16 setLastSeen:date3];

  v29 = [LinkChangePolicyHandler processLeaveEvent:recordCopy];
  if (postprocessingCopy)
  {
    v30 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v36 = "+[EventLeaveNetwork processRecord:bssid:ssid:withPersistentContainer:andRunPostprocessing:]";
      v37 = 1024;
      v38 = 48;
    }

LABEL_8:
  }

LABEL_9:

  v31 = *MEMORY[0x1E69E9840];
  return v29;
}

@end