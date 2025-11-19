@interface EventDHCP
+ (BOOL)processEvent:(id)a3 dhcpServerInfo:(id)a4 onBSS:(id)a5 andNetwork:(id)a6 withPersistentContainer:(id)a7;
+ (id)mostRecentJoinOn:(id)a3 ssid:(id)a4 before:(id)a5 withPersistentContainer:(id)a6;
+ (void)logChangesForBSS:(id)a3 withLAN:(id)a4;
@end

@implementation EventDHCP

+ (id)mostRecentJoinOn:(id)a3 ssid:(id)a4 before:(id)a5 withPersistentContainer:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9 && v10)
  {
    v13 = +[WADeviceAnalyticsJoinRecord entity];
    v22 = 0;
    v14 = [v12 mostRecentDatedEvent:v13 before:v11 withPrefetchedProperties:&unk_1F483E560 withError:&v22];
    v15 = v22;

    if (v15)
    {
      v21 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446722;
        v24 = "+[EventDHCP mostRecentJoinOn:ssid:before:withPersistentContainer:]";
        v25 = 1024;
        v26 = 38;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "%{public}s::%d:Error while fetching most recent join: %@", buf, 0x1Cu);
      }

      goto LABEL_18;
    }

    if (v14)
    {
      v15 = 0;
      goto LABEL_6;
    }

    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v24 = "+[EventDHCP mostRecentJoinOn:ssid:before:withPersistentContainer:]";
      v25 = 1024;
      v26 = 39;
      v18 = "%{public}s::%d:No most recent join found";
      v19 = v14;
      v20 = 18;
      goto LABEL_16;
    }
  }

  else
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v24 = "+[EventDHCP mostRecentJoinOn:ssid:before:withPersistentContainer:]";
      v25 = 1024;
      v26 = 33;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v18 = "%{public}s::%d:missing required parameter: bssid(%@) ssid(%@)";
      v19 = v14;
      v20 = 38;
LABEL_16:
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_FAULT, v18, buf, v20);
    }
  }

  v15 = 0;
LABEL_18:

  v14 = 0;
LABEL_6:

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (BOOL)processEvent:(id)a3 dhcpServerInfo:(id)a4 onBSS:(id)a5 andNetwork:(id)a6 withPersistentContainer:(id)a7
{
  v59 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = a4;
  v15 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WADeviceAnalyticsEventDHCP processEvent", "", buf, 2u);
  }

  v16 = [LANMO constraintsWithDhcpServerInfo:v14];

  v17 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v50 = "+[EventDHCP processEvent:dhcpServerInfo:onBSS:andNetwork:withPersistentContainer:]";
    v51 = 1024;
    v52 = 60;
    v53 = 2112;
    v54 = v16;
    _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEBUG, "%{public}s::%d:finding unique LAN for %@", buf, 0x1Cu);
  }

  v18 = +[LANMO entity];
  v19 = [v16 allKeys];
  v20 = [v13 uniqueObjectFor:v18 withConstraints:v16 allowCreate:1 prefetchProperties:v19];

  if (!v20)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v50 = "+[EventDHCP processEvent:dhcpServerInfo:onBSS:andNetwork:withPersistentContainer:]";
      v51 = 1024;
      v52 = 65;
      v53 = 2112;
      v54 = v16;
      v42 = "%{public}s::%d:Unable to obtain LANMO for %@";
LABEL_23:
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_FAULT, v42, buf, 0x1Cu);
    }

LABEL_24:
    v29 = 0;
    goto LABEL_28;
  }

  v21 = [v11 bss];
  v22 = [v21 bssid];
  v23 = [v12 isEqualToString:v22];

  v45 = v16;
  if (!v23)
  {
    v25 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v11 bss];
      v27 = [v26 bssid];
      *buf = 136446978;
      v50 = "+[EventDHCP processEvent:dhcpServerInfo:onBSS:andNetwork:withPersistentContainer:]";
      v51 = 1024;
      v52 = 75;
      v53 = 2112;
      v54 = v27;
      v55 = 2112;
      v56 = v12;
      _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:The most recent join's bssid(%@) differs from provided bssid: %@", buf, 0x26u);
    }

    v48 = 0;
    v24 = [v13 bssForBssid:v12 prefetchProperties:0 withError:&v48];
    v28 = v48;
    v29 = v28;
    if (v24 && !v28)
    {
      goto LABEL_13;
    }

    v43 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v50 = "+[EventDHCP processEvent:dhcpServerInfo:onBSS:andNetwork:withPersistentContainer:]";
      v51 = 1024;
      v52 = 77;
      v53 = 2112;
      v54 = v12;
      _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to fetch BSS for %@", buf, 0x1Cu);
    }

LABEL_28:
    v39 = 0;
    goto LABEL_18;
  }

  if (([v11 success] & 1) == 0)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v50 = "+[EventDHCP processEvent:dhcpServerInfo:onBSS:andNetwork:withPersistentContainer:]";
      v51 = 1024;
      v52 = 72;
      v53 = 2112;
      v54 = v11;
      v42 = "%{public}s::%d:Unexpected mostRecentJoin (%@) - how can we get a DHCP update if we failed to join?";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v24 = [v11 bss];
LABEL_13:
  [v11 setLan:v20];
  [a1 logChangesForBSS:v24 withLAN:v20];
  [v24 setLan:v20];
  v47 = 0;
  [v13 saveManagedObjectContextWithError:&v47];
  v30 = v47;
  v46 = v30;
  v31 = [v13 networkCountForLAN:v20 withError:&v46];
  v29 = v46;

  v32 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    [v11 bss];
    v44 = v13;
    v34 = v33 = v12;
    v35 = [v34 lan];
    v36 = [v35 bsses];
    v37 = [v36 count];
    *buf = 136447234;
    v50 = "+[EventDHCP processEvent:dhcpServerInfo:onBSS:andNetwork:withPersistentContainer:]";
    v51 = 1024;
    v52 = 88;
    v53 = 2112;
    v54 = v11;
    v55 = 2048;
    v56 = v31;
    v57 = 2048;
    v58 = v37;
    _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Updated LAN for %@ (networksCount:%lu bsses.count:%lu)", buf, 0x30u);

    v12 = v33;
    v13 = v44;
  }

  [v13 setHasBandsForMO:v20 forBand:{-[NSObject mostRecentBand](v24, "mostRecentBand")}];
  v38 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WADeviceAnalyticsEventDHCP processEvent", "", buf, 2u);
  }

  v39 = 1;
  v16 = v45;
LABEL_18:

  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

+ (void)logChangesForBSS:(id)a3 withLAN:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 lan];

  if (!v9)
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 network];
      v27 = 136447234;
      v28 = "+[EventDHCP logChangesForBSS:withLAN:]";
      v29 = 1024;
      v30 = 104;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = v8;
      v17 = "%{public}s::%d:New BSS[%@] with %@ in [%@]";
      v18 = v10;
      v19 = 48;
LABEL_23:
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEFAULT, v17, &v27, v19);
    }

LABEL_24:

    goto LABEL_25;
  }

  v10 = [v8 ipv4NetworkSignature];
  if (!v10)
  {
    v4 = [v7 lan];
    v11 = [v4 ipv4NetworkSignature];
    if (!v11)
    {

      goto LABEL_15;
    }

    v5 = v11;
  }

  v12 = [v7 lan];
  v13 = [v12 ipv4NetworkSignature];
  v14 = [v8 ipv4NetworkSignature];
  v15 = [v13 isEqualToString:v14];

  if (v10)
  {

    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (v15)
    {
      goto LABEL_15;
    }
  }

  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v7 network];
    v27 = 136446978;
    v28 = "+[EventDHCP logChangesForBSS:withLAN:]";
    v29 = 1024;
    v30 = 107;
    v31 = 2112;
    v32 = v7;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:BSS %@[%@] was known to belong to a LAN with a different ipv4NetworkSignature", &v27, 0x26u);
  }

LABEL_15:
  v21 = [v8 ipv6NetworkSignature];
  if (!v21)
  {
    v10 = [v7 lan];
    v5 = [v10 ipv6NetworkSignature];
    if (!v5)
    {
      goto LABEL_24;
    }
  }

  v22 = [v7 lan];
  v23 = [v22 ipv6NetworkSignature];
  v24 = [v8 ipv6NetworkSignature];
  v25 = [v23 isEqualToString:v24];

  if (v21)
  {

    if (v25)
    {
      goto LABEL_25;
    }

LABEL_21:
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 network];
      v27 = 136446978;
      v28 = "+[EventDHCP logChangesForBSS:withLAN:]";
      v29 = 1024;
      v30 = 110;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v16;
      v17 = "%{public}s::%d:BSS %@[%@] was known to belong to a LAN with a different ipv6NetworkSignature";
      v18 = v10;
      v19 = 38;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_25:

  v26 = *MEMORY[0x1E69E9840];
}

@end