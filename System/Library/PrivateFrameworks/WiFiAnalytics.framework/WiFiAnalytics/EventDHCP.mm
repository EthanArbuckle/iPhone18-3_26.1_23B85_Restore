@interface EventDHCP
+ (BOOL)processEvent:(id)event dhcpServerInfo:(id)info onBSS:(id)s andNetwork:(id)network withPersistentContainer:(id)container;
+ (id)mostRecentJoinOn:(id)on ssid:(id)ssid before:(id)before withPersistentContainer:(id)container;
+ (void)logChangesForBSS:(id)s withLAN:(id)n;
@end

@implementation EventDHCP

+ (id)mostRecentJoinOn:(id)on ssid:(id)ssid before:(id)before withPersistentContainer:(id)container
{
  v31 = *MEMORY[0x1E69E9840];
  onCopy = on;
  ssidCopy = ssid;
  beforeCopy = before;
  containerCopy = container;
  if (onCopy && ssidCopy)
  {
    v13 = +[WADeviceAnalyticsJoinRecord entity];
    v22 = 0;
    v14 = [containerCopy mostRecentDatedEvent:v13 before:beforeCopy withPrefetchedProperties:&unk_1F483E560 withError:&v22];
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
      v28 = onCopy;
      v29 = 2112;
      v30 = ssidCopy;
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

+ (BOOL)processEvent:(id)event dhcpServerInfo:(id)info onBSS:(id)s andNetwork:(id)network withPersistentContainer:(id)container
{
  v59 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  sCopy = s;
  containerCopy = container;
  infoCopy = info;
  v15 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WADeviceAnalyticsEventDHCP processEvent", "", buf, 2u);
  }

  v16 = [LANMO constraintsWithDhcpServerInfo:infoCopy];

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
  allKeys = [v16 allKeys];
  v20 = [containerCopy uniqueObjectFor:v18 withConstraints:v16 allowCreate:1 prefetchProperties:allKeys];

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

  v21 = [eventCopy bss];
  bssid = [v21 bssid];
  v23 = [sCopy isEqualToString:bssid];

  v45 = v16;
  if (!v23)
  {
    v25 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [eventCopy bss];
      bssid2 = [v26 bssid];
      *buf = 136446978;
      v50 = "+[EventDHCP processEvent:dhcpServerInfo:onBSS:andNetwork:withPersistentContainer:]";
      v51 = 1024;
      v52 = 75;
      v53 = 2112;
      v54 = bssid2;
      v55 = 2112;
      v56 = sCopy;
      _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:The most recent join's bssid(%@) differs from provided bssid: %@", buf, 0x26u);
    }

    v48 = 0;
    v24 = [containerCopy bssForBssid:sCopy prefetchProperties:0 withError:&v48];
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
      v54 = sCopy;
      _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to fetch BSS for %@", buf, 0x1Cu);
    }

LABEL_28:
    v39 = 0;
    goto LABEL_18;
  }

  if (([eventCopy success] & 1) == 0)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v50 = "+[EventDHCP processEvent:dhcpServerInfo:onBSS:andNetwork:withPersistentContainer:]";
      v51 = 1024;
      v52 = 72;
      v53 = 2112;
      v54 = eventCopy;
      v42 = "%{public}s::%d:Unexpected mostRecentJoin (%@) - how can we get a DHCP update if we failed to join?";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v24 = [eventCopy bss];
LABEL_13:
  [eventCopy setLan:v20];
  [self logChangesForBSS:v24 withLAN:v20];
  [v24 setLan:v20];
  v47 = 0;
  [containerCopy saveManagedObjectContextWithError:&v47];
  v30 = v47;
  v46 = v30;
  v31 = [containerCopy networkCountForLAN:v20 withError:&v46];
  v29 = v46;

  v32 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    [eventCopy bss];
    v44 = containerCopy;
    v34 = v33 = sCopy;
    v35 = [v34 lan];
    bsses = [v35 bsses];
    v37 = [bsses count];
    *buf = 136447234;
    v50 = "+[EventDHCP processEvent:dhcpServerInfo:onBSS:andNetwork:withPersistentContainer:]";
    v51 = 1024;
    v52 = 88;
    v53 = 2112;
    v54 = eventCopy;
    v55 = 2048;
    v56 = v31;
    v57 = 2048;
    v58 = v37;
    _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Updated LAN for %@ (networksCount:%lu bsses.count:%lu)", buf, 0x30u);

    sCopy = v33;
    containerCopy = v44;
  }

  [containerCopy setHasBandsForMO:v20 forBand:{-[NSObject mostRecentBand](v24, "mostRecentBand")}];
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

+ (void)logChangesForBSS:(id)s withLAN:(id)n
{
  v37 = *MEMORY[0x1E69E9840];
  sCopy = s;
  nCopy = n;
  v9 = [sCopy lan];

  if (!v9)
  {
    ipv4NetworkSignature = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(ipv4NetworkSignature, OS_LOG_TYPE_DEFAULT))
    {
      network = [sCopy network];
      v27 = 136447234;
      v28 = "+[EventDHCP logChangesForBSS:withLAN:]";
      v29 = 1024;
      v30 = 104;
      v31 = 2112;
      v32 = sCopy;
      v33 = 2112;
      v34 = network;
      v35 = 2112;
      v36 = nCopy;
      v17 = "%{public}s::%d:New BSS[%@] with %@ in [%@]";
      v18 = ipv4NetworkSignature;
      v19 = 48;
LABEL_23:
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEFAULT, v17, &v27, v19);
    }

LABEL_24:

    goto LABEL_25;
  }

  ipv4NetworkSignature = [nCopy ipv4NetworkSignature];
  if (!ipv4NetworkSignature)
  {
    v4 = [sCopy lan];
    ipv4NetworkSignature2 = [v4 ipv4NetworkSignature];
    if (!ipv4NetworkSignature2)
    {

      goto LABEL_15;
    }

    ipv6NetworkSignature2 = ipv4NetworkSignature2;
  }

  v12 = [sCopy lan];
  ipv4NetworkSignature3 = [v12 ipv4NetworkSignature];
  ipv4NetworkSignature4 = [nCopy ipv4NetworkSignature];
  v15 = [ipv4NetworkSignature3 isEqualToString:ipv4NetworkSignature4];

  if (ipv4NetworkSignature)
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

  ipv4NetworkSignature = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(ipv4NetworkSignature, OS_LOG_TYPE_DEFAULT))
  {
    network2 = [sCopy network];
    v27 = 136446978;
    v28 = "+[EventDHCP logChangesForBSS:withLAN:]";
    v29 = 1024;
    v30 = 107;
    v31 = 2112;
    v32 = sCopy;
    v33 = 2112;
    v34 = network2;
    _os_log_impl(&dword_1C8460000, ipv4NetworkSignature, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:BSS %@[%@] was known to belong to a LAN with a different ipv4NetworkSignature", &v27, 0x26u);
  }

LABEL_15:
  ipv6NetworkSignature = [nCopy ipv6NetworkSignature];
  if (!ipv6NetworkSignature)
  {
    ipv4NetworkSignature = [sCopy lan];
    ipv6NetworkSignature2 = [ipv4NetworkSignature ipv6NetworkSignature];
    if (!ipv6NetworkSignature2)
    {
      goto LABEL_24;
    }
  }

  v22 = [sCopy lan];
  ipv6NetworkSignature3 = [v22 ipv6NetworkSignature];
  ipv6NetworkSignature4 = [nCopy ipv6NetworkSignature];
  v25 = [ipv6NetworkSignature3 isEqualToString:ipv6NetworkSignature4];

  if (ipv6NetworkSignature)
  {

    if (v25)
    {
      goto LABEL_25;
    }

LABEL_21:
    ipv4NetworkSignature = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(ipv4NetworkSignature, OS_LOG_TYPE_DEFAULT))
    {
      network = [sCopy network];
      v27 = 136446978;
      v28 = "+[EventDHCP logChangesForBSS:withLAN:]";
      v29 = 1024;
      v30 = 110;
      v31 = 2112;
      v32 = sCopy;
      v33 = 2112;
      v34 = network;
      v17 = "%{public}s::%d:BSS %@[%@] was known to belong to a LAN with a different ipv6NetworkSignature";
      v18 = ipv4NetworkSignature;
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