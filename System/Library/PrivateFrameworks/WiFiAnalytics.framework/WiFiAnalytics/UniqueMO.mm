@interface UniqueMO
+ (id)defaultPropertiesToFetch;
+ (id)getOrCreateBSS:(id)s andNetwork:(id)network withHasUpdatedNetwork:(BOOL *)updatedNetwork on:(id)on;
- (id)description;
@end

@implementation UniqueMO

+ (id)defaultPropertiesToFetch
{
  v2 = MEMORY[0x1E695DFA8];
  entity = [self entity];
  attributesByName = [entity attributesByName];
  allKeys = [attributesByName allKeys];
  v6 = [v2 setWithArray:allKeys];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  entity = [(UniqueMO *)self entity];
  name = [entity name];
  v6 = [WAPersistentContainer getConstraintsValues:self];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"%@ for %@", name, v7];

  return v8;
}

+ (id)getOrCreateBSS:(id)s andNetwork:(id)network withHasUpdatedNetwork:(BOOL *)updatedNetwork on:(id)on
{
  v55[1] = *MEMORY[0x1E69E9840];
  sCopy = s;
  networkCopy = network;
  onCopy = on;
  if (updatedNetwork)
  {
    *updatedNetwork = 0;
  }

  v12 = [BSSMO formattedMACAddressNotation:sCopy as:6];
  v13 = WALogCategoryDeviceStoreHandle();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
      v44 = 1024;
      v45 = 52;
      v46 = 2112;
      v47 = sCopy;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid bssid: %@", buf, 0x1Cu);
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
    v44 = 1024;
    v45 = 54;
    v46 = 2112;
    v47 = v12;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:finding unique BSS for %@", buf, 0x1Cu);
  }

  v15 = +[BSSMO entity];
  v54 = @"bssid";
  v55[0] = v12;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v17 = [onCopy uniqueObjectFor:v15 withConstraints:v16 allowCreate:1 prefetchProperties:&unk_1F483E938];

  v18 = WALogCategoryDeviceStoreHandle();
  v19 = v18;
  if (!v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
      v44 = 1024;
      v45 = 59;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to obtain BSSMO for %@", buf, 0x1Cu);
    }

LABEL_28:
    v22 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
    v44 = 1024;
    v45 = 61;
    v46 = 2112;
    v47 = networkCopy;
    _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:finding unique Network for %@", buf, 0x1Cu);
  }

  v20 = +[NetworkMO entity];
  v52 = @"ssid";
  v53 = networkCopy;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v22 = [onCopy uniqueObjectFor:v20 withConstraints:v21 allowCreate:1 prefetchProperties:&unk_1F483E950];

  if (v22)
  {
    network = [v17 network];

    if (network)
    {
      updatedNetworkCopy = updatedNetwork;
      network2 = [v17 network];
      ssid = [network2 ssid];
      [v22 ssid];
      v26 = v12;
      v27 = onCopy;
      v28 = networkCopy;
      v30 = v29 = sCopy;
      v31 = [ssid isEqualToString:v30];

      sCopy = v29;
      networkCopy = v28;
      onCopy = v27;
      v12 = v26;

      if (v31)
      {
LABEL_20:
        [v17 setNetwork:v22];
        goto LABEL_21;
      }

      if (updatedNetworkCopy)
      {
        *updatedNetworkCopy = 1;
      }

      v32 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        bssid = [v17 bssid];
        network3 = [v17 network];
        ssid2 = [network3 ssid];
        *buf = 136447234;
        v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
        v44 = 1024;
        v45 = 74;
        v46 = 2112;
        v47 = bssid;
        v48 = 2112;
        v49 = ssid2;
        v50 = 2112;
        v51 = networkCopy;
        _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:BSS %@ was known to belong to network %@, but now belongs to %@", buf, 0x30u);

LABEL_18:
      }
    }

    else
    {
      v32 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        bssid = [v17 bssid];
        ssid3 = [v22 ssid];
        *buf = 136446978;
        v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
        v44 = 1024;
        v45 = 69;
        v46 = 2112;
        v47 = bssid;
        v48 = 2112;
        v49 = ssid3;
        _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added BSS[%@] to Network[%@]", buf, 0x26u);

        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  v40 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446722;
    v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
    v44 = 1024;
    v45 = 66;
    v46 = 2112;
    v47 = networkCopy;
    _os_log_impl(&dword_1C8460000, v40, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to obtain NetworkMO for %@", buf, 0x1Cu);
  }

  v22 = 0;
LABEL_21:
  v37 = v17;

  v38 = *MEMORY[0x1E69E9840];
  return v17;
}

@end