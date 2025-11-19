@interface EventLeaveNetwork
+ (BOOL)processRecord:(id)a3 bssid:(id)a4 ssid:(id)a5 withPersistentContainer:(id)a6 andRunPostprocessing:(id)a7;
@end

@implementation EventLeaveNetwork

+ (BOOL)processRecord:(id)a3 bssid:(id)a4 ssid:(id)a5 withPersistentContainer:(id)a6 andRunPostprocessing:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v11)
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

  v16 = [v14 bssForBssid:v12 prefetchProperties:&unk_1F483E548 withError:0];
  if (!v16)
  {
    v29 = 0;
    goto LABEL_9;
  }

  v17 = [v11 date];
  [v16 setLastSeen:v17];

  [v11 setBss:v16];
  v18 = [v16 network];
  [v11 setNetwork:v18];

  v19 = [v16 lan];
  [v11 setLan:v19];

  v20 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v11 date];
    [v16 bssid];
    v33 = v12;
    v22 = v34 = v14;
    v23 = [v16 network];
    [v23 ssid];
    v24 = v15;
    v26 = v25 = v13;
    v27 = [v11 lan];
    *buf = 136447490;
    v36 = "+[EventLeaveNetwork processRecord:bssid:ssid:withPersistentContainer:andRunPostprocessing:]";
    v37 = 1024;
    v38 = 41;
    v39 = 2112;
    v40 = v21;
    v41 = 2112;
    v42 = v22;
    v43 = 2112;
    v44 = v26;
    v45 = 2112;
    v46 = v27;
    _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Added Leave at [%@] to [%@][%@][%@]", buf, 0x3Au);

    v13 = v25;
    v15 = v24;

    v12 = v33;
    v14 = v34;
  }

  v28 = [v11 date];
  [v16 setLastSeen:v28];

  v29 = [LinkChangePolicyHandler processLeaveEvent:v11];
  if (v15)
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